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
(declare-sort T@Field_33242_53 0)
(declare-sort T@Field_33255_33256 0)
(declare-sort T@Field_43387_6609 0)
(declare-sort T@Field_43433_43434 0)
(declare-sort T@IEdgesDomainType 0)
(declare-sort T@Field_22317_101560 0)
(declare-sort T@Field_22317_101427 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_33203 0)) (((PolymorphicMapType_33203 (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| (Array T@Ref T@Field_43387_6609 Real)) (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| (Array T@Ref T@Field_43433_43434 Real)) (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| (Array T@Ref T@Field_33242_53 Real)) (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| (Array T@Ref T@Field_33255_33256 Real)) (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| (Array T@Ref T@Field_22317_101427 Real)) (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| (Array T@Ref T@Field_22317_101560 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_33731 0)) (((PolymorphicMapType_33731 (|PolymorphicMapType_33731_33242_53#PolymorphicMapType_33731| (Array T@Ref T@Field_33242_53 Bool)) (|PolymorphicMapType_33731_33242_33256#PolymorphicMapType_33731| (Array T@Ref T@Field_33255_33256 Bool)) (|PolymorphicMapType_33731_33242_6609#PolymorphicMapType_33731| (Array T@Ref T@Field_43387_6609 Bool)) (|PolymorphicMapType_33731_33242_43434#PolymorphicMapType_33731| (Array T@Ref T@Field_43433_43434 Bool)) (|PolymorphicMapType_33731_33242_101427#PolymorphicMapType_33731| (Array T@Ref T@Field_22317_101427 Bool)) (|PolymorphicMapType_33731_33242_102942#PolymorphicMapType_33731| (Array T@Ref T@Field_22317_101560 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_33182 0)) (((PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| (Array T@Ref T@Field_33242_53 Bool)) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| (Array T@Ref T@Field_33255_33256 T@Ref)) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| (Array T@Ref T@Field_43387_6609 Int)) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| (Array T@Ref T@Field_43433_43434 T@IEdgesDomainType)) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| (Array T@Ref T@Field_22317_101560 T@PolymorphicMapType_33731)) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| (Array T@Ref T@Field_22317_101427 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_33242_53)
(declare-fun val () T@Field_43387_6609)
(declare-fun edges () T@Field_43433_43434)
(declare-sort T@Seq_42779 0)
(declare-fun |Seq#Length_42779| (T@Seq_42779) Int)
(declare-fun |Seq#Drop_42779| (T@Seq_42779 Int) T@Seq_42779)
(declare-sort T@Seq_3824 0)
(declare-fun |Seq#Length_3824| (T@Seq_3824) Int)
(declare-fun |Seq#Drop_3824| (T@Seq_3824 Int) T@Seq_3824)
(declare-fun edge_lookup (T@IEdgesDomainType Int) T@Ref)
(declare-fun insert_edge (T@IEdgesDomainType Int T@Ref) T@IEdgesDomainType)
(declare-sort T@INodeMapDomainType 0)
(declare-fun lookup (T@INodeMapDomainType T@Ref) T@Ref)
(declare-fun insert_1 (T@INodeMapDomainType T@Ref T@Ref) T@INodeMapDomainType)
(declare-fun succHeap (T@PolymorphicMapType_33182 T@PolymorphicMapType_33182) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_33182 T@PolymorphicMapType_33182) Bool)
(declare-fun state (T@PolymorphicMapType_33182 T@PolymorphicMapType_33203) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_33203) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_33731)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_42779| (T@Seq_42779 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3824| (T@Seq_3824 Int) Int)
(declare-fun has_edge (T@IEdgesDomainType Int) Bool)
(declare-fun empty_edges () T@IEdgesDomainType)
(declare-fun has_node (T@INodeMapDomainType T@Ref) Bool)
(declare-fun empty_map () T@INodeMapDomainType)
(declare-fun |Seq#Empty_42779| () T@Seq_42779)
(declare-fun |Seq#Empty_3824| () T@Seq_3824)
(declare-fun |Seq#Update_42779| (T@Seq_42779 Int T@Ref) T@Seq_42779)
(declare-fun |Seq#Update_3824| (T@Seq_3824 Int Int) T@Seq_3824)
(declare-fun |Set#Union_6709| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Union_22345| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_6709| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_22336| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_6734| (Int) (Array Int Bool))
(declare-fun |Set#Singleton_22343| (T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#Take_42779| (T@Seq_42779 Int) T@Seq_42779)
(declare-fun |Seq#Take_3824| (T@Seq_3824 Int) T@Seq_3824)
(declare-fun |Seq#Contains_3824| (T@Seq_3824 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3824)
(declare-fun |Set#Card_6709| ((Array Int Bool)) Int)
(declare-fun |Set#Card_22336| ((Array T@Ref Bool)) Int)
(declare-fun |Seq#Contains_22310| (T@Seq_42779 T@Ref) Bool)
(declare-fun |Seq#Skolem_22310| (T@Seq_42779 T@Ref) Int)
(declare-fun |Seq#Skolem_3824| (T@Seq_3824 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_33182 T@PolymorphicMapType_33182 T@PolymorphicMapType_33203) Bool)
(declare-fun IsPredicateField_22317_101518 (T@Field_22317_101427) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_22317 (T@Field_22317_101427) T@Field_22317_101560)
(declare-fun HasDirectPerm_22317_101491 (T@PolymorphicMapType_33203 T@Ref T@Field_22317_101427) Bool)
(declare-fun IsWandField_22317_103469 (T@Field_22317_101427) Bool)
(declare-fun WandMaskField_22317 (T@Field_22317_101427) T@Field_22317_101560)
(declare-fun |Seq#Singleton_42779| (T@Ref) T@Seq_42779)
(declare-fun |Seq#Singleton_3824| (Int) T@Seq_3824)
(declare-fun |Seq#Append_42779| (T@Seq_42779 T@Seq_42779) T@Seq_42779)
(declare-fun |Seq#Append_3824| (T@Seq_3824 T@Seq_3824) T@Seq_3824)
(declare-fun dummyHeap () T@PolymorphicMapType_33182)
(declare-fun ZeroMask () T@PolymorphicMapType_33203)
(declare-fun InsidePredicate_33242_33242 (T@Field_22317_101427 T@FrameType T@Field_22317_101427 T@FrameType) Bool)
(declare-fun IsPredicateField_22315_6609 (T@Field_43387_6609) Bool)
(declare-fun IsWandField_22315_6609 (T@Field_43387_6609) Bool)
(declare-fun IsPredicateField_22317_22318 (T@Field_43433_43434) Bool)
(declare-fun IsWandField_22317_22318 (T@Field_43433_43434) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_22315_107603 (T@Field_22317_101560) Bool)
(declare-fun IsWandField_22315_107619 (T@Field_22317_101560) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_22315_33256 (T@Field_33255_33256) Bool)
(declare-fun IsWandField_22315_33256 (T@Field_33255_33256) Bool)
(declare-fun IsPredicateField_22315_53 (T@Field_33242_53) Bool)
(declare-fun IsWandField_22315_53 (T@Field_33242_53) Bool)
(declare-fun |Set#Equal_6709| ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun |Set#Equal_22345| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_22317_108140 (T@PolymorphicMapType_33203 T@Ref T@Field_22317_101560) Bool)
(declare-fun HasDirectPerm_22317_33256 (T@PolymorphicMapType_33203 T@Ref T@Field_33255_33256) Bool)
(declare-fun HasDirectPerm_22317_53 (T@PolymorphicMapType_33203 T@Ref T@Field_33242_53) Bool)
(declare-fun HasDirectPerm_22315_6609 (T@PolymorphicMapType_33203 T@Ref T@Field_43387_6609) Bool)
(declare-fun HasDirectPerm_22317_22318 (T@PolymorphicMapType_33203 T@Ref T@Field_43433_43434) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun edges_domain (T@IEdgesDomainType) (Array Int Bool))
(declare-fun sumMask (T@PolymorphicMapType_33203 T@PolymorphicMapType_33203 T@PolymorphicMapType_33203) Bool)
(declare-fun |Set#Difference_22336| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Difference_6770| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Seq#Equal_42779| (T@Seq_42779 T@Seq_42779) Bool)
(declare-fun |Seq#Equal_3824| (T@Seq_3824 T@Seq_3824) Bool)
(declare-fun |Set#UnionOne_6709| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun |Set#UnionOne_22336| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#ContainsTrigger_22306| (T@Seq_42779 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3824| (T@Seq_3824 Int) Bool)
(declare-fun map_domain (T@INodeMapDomainType) T@Seq_42779)
(declare-fun |Set#Empty_6709| () (Array Int Bool))
(declare-fun |Set#Empty_22336| () (Array T@Ref Bool))
(declare-fun |Set#Subset_22339| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Seq#SkolemDiff_42779| (T@Seq_42779 T@Seq_42779) Int)
(declare-fun |Seq#SkolemDiff_3824| (T@Seq_3824 T@Seq_3824) Int)
(assert (forall ((s T@Seq_42779) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_42779| s)) (= (|Seq#Length_42779| (|Seq#Drop_42779| s n)) (- (|Seq#Length_42779| s) n))) (=> (< (|Seq#Length_42779| s) n) (= (|Seq#Length_42779| (|Seq#Drop_42779| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_42779| (|Seq#Drop_42779| s n)) (|Seq#Length_42779| s))))
 :qid |stdinbpl.405:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_42779| (|Seq#Drop_42779| s n)))
 :pattern ( (|Seq#Length_42779| s) (|Seq#Drop_42779| s n))
)))
(assert (forall ((s@@0 T@Seq_3824) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3824| s@@0)) (= (|Seq#Length_3824| (|Seq#Drop_3824| s@@0 n@@0)) (- (|Seq#Length_3824| s@@0) n@@0))) (=> (< (|Seq#Length_3824| s@@0) n@@0) (= (|Seq#Length_3824| (|Seq#Drop_3824| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3824| (|Seq#Drop_3824| s@@0 n@@0)) (|Seq#Length_3824| s@@0))))
 :qid |stdinbpl.405:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3824| (|Seq#Drop_3824| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3824| s@@0) (|Seq#Drop_3824| s@@0 n@@0))
)))
(assert (forall ((e_1 T@IEdgesDomainType) (i Int) (node T@Ref) ) (! (= (edge_lookup (insert_edge e_1 i node) i) node)
 :qid |stdinbpl.886:15|
 :skolemid |118|
 :pattern ( (edge_lookup (insert_edge e_1 i node) i))
)))
(assert (forall ((node_map_1 T@INodeMapDomainType) (key_node_1 T@Ref) (val_node_1 T@Ref) ) (! (= (lookup (insert_1 node_map_1 key_node_1 val_node_1) key_node_1) val_node_1)
 :qid |stdinbpl.944:15|
 :skolemid |124|
 :pattern ( (lookup (insert_1 node_map_1 key_node_1 val_node_1) key_node_1))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_33182) (Heap1 T@PolymorphicMapType_33182) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_33182) (Mask T@PolymorphicMapType_33203) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_33182) (Heap1@@0 T@PolymorphicMapType_33182) (Heap2 T@PolymorphicMapType_33182) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_22317_101560) ) (!  (not (select (|PolymorphicMapType_33731_33242_102942#PolymorphicMapType_33731| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_33731_33242_102942#PolymorphicMapType_33731| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_22317_101427) ) (!  (not (select (|PolymorphicMapType_33731_33242_101427#PolymorphicMapType_33731| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_33731_33242_101427#PolymorphicMapType_33731| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_43433_43434) ) (!  (not (select (|PolymorphicMapType_33731_33242_43434#PolymorphicMapType_33731| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_33731_33242_43434#PolymorphicMapType_33731| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_43387_6609) ) (!  (not (select (|PolymorphicMapType_33731_33242_6609#PolymorphicMapType_33731| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_33731_33242_6609#PolymorphicMapType_33731| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_33255_33256) ) (!  (not (select (|PolymorphicMapType_33731_33242_33256#PolymorphicMapType_33731| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_33731_33242_33256#PolymorphicMapType_33731| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_33242_53) ) (!  (not (select (|PolymorphicMapType_33731_33242_53#PolymorphicMapType_33731| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_33731_33242_53#PolymorphicMapType_33731| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.769:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_42779) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_42779| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_42779| (|Seq#Drop_42779| s@@1 n@@1) j) (|Seq#Index_42779| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.426:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_42779| (|Seq#Drop_42779| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3824) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3824| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3824| (|Seq#Drop_3824| s@@2 n@@2) j@@0) (|Seq#Index_3824| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.426:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3824| (|Seq#Drop_3824| s@@2 n@@2) j@@0))
)))
(assert (forall ((i@@0 Int) ) (!  (not (has_edge empty_edges i@@0))
 :qid |stdinbpl.916:15|
 :skolemid |123|
 :pattern ( (has_edge empty_edges i@@0))
)))
(assert (forall ((node@@0 T@Ref) ) (!  (not (has_node empty_map node@@0))
 :qid |stdinbpl.974:15|
 :skolemid |129|
 :pattern ( (has_node empty_map node@@0))
)))
(assert (= (|Seq#Length_42779| |Seq#Empty_42779|) 0))
(assert (= (|Seq#Length_3824| |Seq#Empty_3824|) 0))
(assert (forall ((s@@3 T@Seq_42779) (i@@1 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_42779| s@@3))) (and (=> (= i@@1 n@@3) (= (|Seq#Index_42779| (|Seq#Update_42779| s@@3 i@@1 v) n@@3) v)) (=> (not (= i@@1 n@@3)) (= (|Seq#Index_42779| (|Seq#Update_42779| s@@3 i@@1 v) n@@3) (|Seq#Index_42779| s@@3 n@@3)))))
 :qid |stdinbpl.381:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_42779| (|Seq#Update_42779| s@@3 i@@1 v) n@@3))
 :pattern ( (|Seq#Index_42779| s@@3 n@@3) (|Seq#Update_42779| s@@3 i@@1 v))
)))
(assert (forall ((s@@4 T@Seq_3824) (i@@2 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3824| s@@4))) (and (=> (= i@@2 n@@4) (= (|Seq#Index_3824| (|Seq#Update_3824| s@@4 i@@2 v@@0) n@@4) v@@0)) (=> (not (= i@@2 n@@4)) (= (|Seq#Index_3824| (|Seq#Update_3824| s@@4 i@@2 v@@0) n@@4) (|Seq#Index_3824| s@@4 n@@4)))))
 :qid |stdinbpl.381:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3824| (|Seq#Update_3824| s@@4 i@@2 v@@0) n@@4))
 :pattern ( (|Seq#Index_3824| s@@4 n@@4) (|Seq#Update_3824| s@@4 i@@2 v@@0))
)))
(assert (forall ((a@@0 (Array Int Bool)) (b@@0 (Array Int Bool)) ) (! (= (|Set#Union_6709| (|Set#Union_6709| a@@0 b@@0) b@@0) (|Set#Union_6709| a@@0 b@@0))
 :qid |stdinbpl.721:18|
 :skolemid |74|
 :pattern ( (|Set#Union_6709| (|Set#Union_6709| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Union_22345| (|Set#Union_22345| a@@1 b@@1) b@@1) (|Set#Union_22345| a@@1 b@@1))
 :qid |stdinbpl.721:18|
 :skolemid |74|
 :pattern ( (|Set#Union_22345| (|Set#Union_22345| a@@1 b@@1) b@@1))
)))
(assert (forall ((a@@2 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (! (= (|Set#Intersection_6709| (|Set#Intersection_6709| a@@2 b@@2) b@@2) (|Set#Intersection_6709| a@@2 b@@2))
 :qid |stdinbpl.725:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_6709| (|Set#Intersection_6709| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_22336| (|Set#Intersection_22336| a@@3 b@@3) b@@3) (|Set#Intersection_22336| a@@3 b@@3))
 :qid |stdinbpl.725:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_22336| (|Set#Intersection_22336| a@@3 b@@3) b@@3))
)))
(assert (forall ((r Int) (o Int) ) (! (= (select (|Set#Singleton_6734| r) o) (= r o))
 :qid |stdinbpl.690:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_6734| r) o))
)))
(assert (forall ((r@@0 T@Ref) (o@@0 T@Ref) ) (! (= (select (|Set#Singleton_22343| r@@0) o@@0) (= r@@0 o@@0))
 :qid |stdinbpl.690:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_22343| r@@0) o@@0))
)))
(assert (forall ((s@@5 T@Seq_42779) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_42779| s@@5)) (= (|Seq#Length_42779| (|Seq#Take_42779| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_42779| s@@5) n@@5) (= (|Seq#Length_42779| (|Seq#Take_42779| s@@5 n@@5)) (|Seq#Length_42779| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_42779| (|Seq#Take_42779| s@@5 n@@5)) 0)))
 :qid |stdinbpl.392:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_42779| (|Seq#Take_42779| s@@5 n@@5)))
 :pattern ( (|Seq#Take_42779| s@@5 n@@5) (|Seq#Length_42779| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3824) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3824| s@@6)) (= (|Seq#Length_3824| (|Seq#Take_3824| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3824| s@@6) n@@6) (= (|Seq#Length_3824| (|Seq#Take_3824| s@@6 n@@6)) (|Seq#Length_3824| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3824| (|Seq#Take_3824| s@@6 n@@6)) 0)))
 :qid |stdinbpl.392:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3824| (|Seq#Take_3824| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3824| s@@6 n@@6) (|Seq#Length_3824| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3824| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.666:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3824| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((a@@4 (Array Int Bool)) (b@@4 (Array Int Bool)) ) (! (= (+ (|Set#Card_6709| (|Set#Union_6709| a@@4 b@@4)) (|Set#Card_6709| (|Set#Intersection_6709| a@@4 b@@4))) (+ (|Set#Card_6709| a@@4) (|Set#Card_6709| b@@4)))
 :qid |stdinbpl.729:18|
 :skolemid |78|
 :pattern ( (|Set#Card_6709| (|Set#Union_6709| a@@4 b@@4)))
 :pattern ( (|Set#Card_6709| (|Set#Intersection_6709| a@@4 b@@4)))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_22336| (|Set#Union_22345| a@@5 b@@5)) (|Set#Card_22336| (|Set#Intersection_22336| a@@5 b@@5))) (+ (|Set#Card_22336| a@@5) (|Set#Card_22336| b@@5)))
 :qid |stdinbpl.729:18|
 :skolemid |78|
 :pattern ( (|Set#Card_22336| (|Set#Union_22345| a@@5 b@@5)))
 :pattern ( (|Set#Card_22336| (|Set#Intersection_22336| a@@5 b@@5)))
)))
(assert (forall ((s@@7 T@Seq_42779) (x T@Ref) ) (!  (=> (|Seq#Contains_22310| s@@7 x) (and (and (<= 0 (|Seq#Skolem_22310| s@@7 x)) (< (|Seq#Skolem_22310| s@@7 x) (|Seq#Length_42779| s@@7))) (= (|Seq#Index_42779| s@@7 (|Seq#Skolem_22310| s@@7 x)) x)))
 :qid |stdinbpl.524:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_22310| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3824) (x@@0 Int) ) (!  (=> (|Seq#Contains_3824| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3824| s@@8 x@@0)) (< (|Seq#Skolem_3824| s@@8 x@@0) (|Seq#Length_3824| s@@8))) (= (|Seq#Index_3824| s@@8 (|Seq#Skolem_3824| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.524:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3824| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_42779) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_42779| s@@9 n@@7) s@@9))
 :qid |stdinbpl.508:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_42779| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3824) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3824| s@@10 n@@8) s@@10))
 :qid |stdinbpl.508:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3824| s@@10 n@@8))
)))
(assert (forall ((i@@3 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@3 j@@1) (- i@@3 j@@1))
 :qid |stdinbpl.361:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@3 j@@1))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@4 j@@2) (+ i@@4 j@@2))
 :qid |stdinbpl.359:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@4 j@@2))
)))
(assert (forall ((a@@6 Int) ) (!  (=> (<= 0 a@@6) (= (|Math#clip| a@@6) a@@6))
 :qid |stdinbpl.772:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@6))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_33182) (ExhaleHeap T@PolymorphicMapType_33182) (Mask@@0 T@PolymorphicMapType_33203) (pm_f_25 T@Field_22317_101427) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_22317_101491 Mask@@0 null pm_f_25) (IsPredicateField_22317_101518 pm_f_25)) (= (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@0) null (PredicateMaskField_22317 pm_f_25)) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap) null (PredicateMaskField_22317 pm_f_25)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_22317_101518 pm_f_25) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap) null (PredicateMaskField_22317 pm_f_25)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_33182) (ExhaleHeap@@0 T@PolymorphicMapType_33182) (Mask@@1 T@PolymorphicMapType_33203) (pm_f_25@@0 T@Field_22317_101427) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_22317_101491 Mask@@1 null pm_f_25@@0) (IsWandField_22317_103469 pm_f_25@@0)) (= (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@1) null (WandMaskField_22317 pm_f_25@@0)) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@0) null (WandMaskField_22317 pm_f_25@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_22317_103469 pm_f_25@@0) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@0) null (WandMaskField_22317 pm_f_25@@0)))
)))
(assert (forall ((e_1@@0 T@IEdgesDomainType) (i@@5 Int) ) (! (= (has_edge e_1@@0 i@@5) (not (= (edge_lookup e_1@@0 i@@5) null)))
 :qid |stdinbpl.904:15|
 :skolemid |121|
 :pattern ( (has_edge e_1@@0 i@@5))
 :pattern ( (edge_lookup e_1@@0 i@@5))
)))
(assert (forall ((node_map_1@@0 T@INodeMapDomainType) (node@@1 T@Ref) ) (! (= (has_node node_map_1@@0 node@@1) (not (= (lookup node_map_1@@0 node@@1) null)))
 :qid |stdinbpl.962:15|
 :skolemid |127|
 :pattern ( (has_node node_map_1@@0 node@@1))
 :pattern ( (lookup node_map_1@@0 node@@1))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_22310| (|Seq#Singleton_42779| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.649:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_22310| (|Seq#Singleton_42779| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3824| (|Seq#Singleton_3824| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.649:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3824| (|Seq#Singleton_3824| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_42779) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_42779| s@@11))) (= (|Seq#Index_42779| (|Seq#Take_42779| s@@11 n@@9) j@@3) (|Seq#Index_42779| s@@11 j@@3)))
 :qid |stdinbpl.400:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_42779| (|Seq#Take_42779| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_42779| s@@11 j@@3) (|Seq#Take_42779| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3824) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3824| s@@12))) (= (|Seq#Index_3824| (|Seq#Take_3824| s@@12 n@@10) j@@4) (|Seq#Index_3824| s@@12 j@@4)))
 :qid |stdinbpl.400:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3824| (|Seq#Take_3824| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3824| s@@12 j@@4) (|Seq#Take_3824| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_42779) (t T@Seq_42779) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_42779| s@@13))) (< n@@11 (|Seq#Length_42779| (|Seq#Append_42779| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_42779| s@@13)) (|Seq#Length_42779| s@@13)) n@@11) (= (|Seq#Take_42779| (|Seq#Append_42779| s@@13 t) n@@11) (|Seq#Append_42779| s@@13 (|Seq#Take_42779| t (|Seq#Sub| n@@11 (|Seq#Length_42779| s@@13)))))))
 :qid |stdinbpl.485:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_42779| (|Seq#Append_42779| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3824) (t@@0 T@Seq_3824) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3824| s@@14))) (< n@@12 (|Seq#Length_3824| (|Seq#Append_3824| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3824| s@@14)) (|Seq#Length_3824| s@@14)) n@@12) (= (|Seq#Take_3824| (|Seq#Append_3824| s@@14 t@@0) n@@12) (|Seq#Append_3824| s@@14 (|Seq#Take_3824| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3824| s@@14)))))))
 :qid |stdinbpl.485:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3824| (|Seq#Append_3824| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_33182) (ExhaleHeap@@1 T@PolymorphicMapType_33182) (Mask@@2 T@PolymorphicMapType_33203) (o_50 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@2) o_50 $allocated) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@1) o_50 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@1) o_50 $allocated))
)))
(assert (forall ((p T@Field_22317_101427) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_33242_33242 p v_1 p w))
 :qid |stdinbpl.303:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_33242_33242 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_42779) (s1 T@Seq_42779) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_42779|)) (not (= s1 |Seq#Empty_42779|))) (<= (|Seq#Length_42779| s0) n@@13)) (< n@@13 (|Seq#Length_42779| (|Seq#Append_42779| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_42779| s0)) (|Seq#Length_42779| s0)) n@@13) (= (|Seq#Index_42779| (|Seq#Append_42779| s0 s1) n@@13) (|Seq#Index_42779| s1 (|Seq#Sub| n@@13 (|Seq#Length_42779| s0))))))
 :qid |stdinbpl.372:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_42779| (|Seq#Append_42779| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3824) (s1@@0 T@Seq_3824) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3824|)) (not (= s1@@0 |Seq#Empty_3824|))) (<= (|Seq#Length_3824| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3824| (|Seq#Append_3824| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3824| s0@@0)) (|Seq#Length_3824| s0@@0)) n@@14) (= (|Seq#Index_3824| (|Seq#Append_3824| s0@@0 s1@@0) n@@14) (|Seq#Index_3824| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3824| s0@@0))))))
 :qid |stdinbpl.372:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3824| (|Seq#Append_3824| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_22315_6609 val)))
(assert  (not (IsWandField_22315_6609 val)))
(assert  (not (IsPredicateField_22317_22318 edges)))
(assert  (not (IsWandField_22317_22318 edges)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_33182) (ExhaleHeap@@2 T@PolymorphicMapType_33182) (Mask@@3 T@PolymorphicMapType_33203) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((e_1@@1 T@IEdgesDomainType) (i@@6 Int) (node@@2 T@Ref) ) (! (has_edge (insert_edge e_1@@1 i@@6 node@@2) i@@6)
 :qid |stdinbpl.898:15|
 :skolemid |120|
 :pattern ( (has_edge (insert_edge e_1@@1 i@@6 node@@2) i@@6))
)))
(assert (forall ((node_map_1@@1 T@INodeMapDomainType) (key_node_1@@0 T@Ref) (val_node_1@@0 T@Ref) ) (! (has_node (insert_1 node_map_1@@1 key_node_1@@0 val_node_1@@0) key_node_1@@0)
 :qid |stdinbpl.956:15|
 :skolemid |126|
 :pattern ( (has_node (insert_1 node_map_1@@1 key_node_1@@0 val_node_1@@0) key_node_1@@0))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_33203) (o_2@@5 T@Ref) (f_4@@5 T@Field_22317_101560) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_22315_107603 f_4@@5))) (not (IsWandField_22315_107619 f_4@@5))) (<= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_33203) (o_2@@6 T@Ref) (f_4@@6 T@Field_22317_101427) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_22317_101518 f_4@@6))) (not (IsWandField_22317_103469 f_4@@6))) (<= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_33203) (o_2@@7 T@Ref) (f_4@@7 T@Field_33255_33256) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_22315_33256 f_4@@7))) (not (IsWandField_22315_33256 f_4@@7))) (<= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_33203) (o_2@@8 T@Ref) (f_4@@8 T@Field_33242_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_22315_53 f_4@@8))) (not (IsWandField_22315_53 f_4@@8))) (<= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_33203) (o_2@@9 T@Ref) (f_4@@9 T@Field_43433_43434) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_22317_22318 f_4@@9))) (not (IsWandField_22317_22318 f_4@@9))) (<= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_33203) (o_2@@10 T@Ref) (f_4@@10 T@Field_43387_6609) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_22315_6609 f_4@@10))) (not (IsWandField_22315_6609 f_4@@10))) (<= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((a@@7 (Array Int Bool)) (b@@6 (Array Int Bool)) ) (! (= (|Set#Equal_6709| a@@7 b@@6) (forall ((o@@1 Int) ) (! (= (select a@@7 o@@1) (select b@@6 o@@1))
 :qid |stdinbpl.754:31|
 :skolemid |84|
 :pattern ( (select a@@7 o@@1))
 :pattern ( (select b@@6 o@@1))
)))
 :qid |stdinbpl.753:17|
 :skolemid |85|
 :pattern ( (|Set#Equal_6709| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) ) (! (= (|Set#Equal_22345| a@@8 b@@7) (forall ((o@@2 T@Ref) ) (! (= (select a@@8 o@@2) (select b@@7 o@@2))
 :qid |stdinbpl.754:31|
 :skolemid |84|
 :pattern ( (select a@@8 o@@2))
 :pattern ( (select b@@7 o@@2))
)))
 :qid |stdinbpl.753:17|
 :skolemid |85|
 :pattern ( (|Set#Equal_22345| a@@8 b@@7))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_33203) (o_2@@11 T@Ref) (f_4@@11 T@Field_22317_101560) ) (! (= (HasDirectPerm_22317_108140 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22317_108140 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_33203) (o_2@@12 T@Ref) (f_4@@12 T@Field_22317_101427) ) (! (= (HasDirectPerm_22317_101491 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22317_101491 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_33203) (o_2@@13 T@Ref) (f_4@@13 T@Field_33255_33256) ) (! (= (HasDirectPerm_22317_33256 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22317_33256 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_33203) (o_2@@14 T@Ref) (f_4@@14 T@Field_33242_53) ) (! (= (HasDirectPerm_22317_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22317_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_33203) (o_2@@15 T@Ref) (f_4@@15 T@Field_43387_6609) ) (! (= (HasDirectPerm_22315_6609 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22315_6609 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_33203) (o_2@@16 T@Ref) (f_4@@16 T@Field_43433_43434) ) (! (= (HasDirectPerm_22317_22318 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22317_22318 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.291:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3824| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.664:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3824| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_33182) (ExhaleHeap@@3 T@PolymorphicMapType_33182) (Mask@@16 T@PolymorphicMapType_33203) (o_50@@0 T@Ref) (f_51 T@Field_22317_101560) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_22317_108140 Mask@@16 o_50@@0 f_51) (= (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@4) o_50@@0 f_51) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@3) o_50@@0 f_51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@3) o_50@@0 f_51))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_33182) (ExhaleHeap@@4 T@PolymorphicMapType_33182) (Mask@@17 T@PolymorphicMapType_33203) (o_50@@1 T@Ref) (f_51@@0 T@Field_22317_101427) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_22317_101491 Mask@@17 o_50@@1 f_51@@0) (= (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@5) o_50@@1 f_51@@0) (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| ExhaleHeap@@4) o_50@@1 f_51@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| ExhaleHeap@@4) o_50@@1 f_51@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_33182) (ExhaleHeap@@5 T@PolymorphicMapType_33182) (Mask@@18 T@PolymorphicMapType_33203) (o_50@@2 T@Ref) (f_51@@1 T@Field_33255_33256) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_22317_33256 Mask@@18 o_50@@2 f_51@@1) (= (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@6) o_50@@2 f_51@@1) (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| ExhaleHeap@@5) o_50@@2 f_51@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| ExhaleHeap@@5) o_50@@2 f_51@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_33182) (ExhaleHeap@@6 T@PolymorphicMapType_33182) (Mask@@19 T@PolymorphicMapType_33203) (o_50@@3 T@Ref) (f_51@@2 T@Field_33242_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_22317_53 Mask@@19 o_50@@3 f_51@@2) (= (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@7) o_50@@3 f_51@@2) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@6) o_50@@3 f_51@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@6) o_50@@3 f_51@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_33182) (ExhaleHeap@@7 T@PolymorphicMapType_33182) (Mask@@20 T@PolymorphicMapType_33203) (o_50@@4 T@Ref) (f_51@@3 T@Field_43387_6609) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_22315_6609 Mask@@20 o_50@@4 f_51@@3) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@8) o_50@@4 f_51@@3) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@@7) o_50@@4 f_51@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@@7) o_50@@4 f_51@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_33182) (ExhaleHeap@@8 T@PolymorphicMapType_33182) (Mask@@21 T@PolymorphicMapType_33203) (o_50@@5 T@Ref) (f_51@@4 T@Field_43433_43434) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_22317_22318 Mask@@21 o_50@@5 f_51@@4) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@9) o_50@@5 f_51@@4) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@@8) o_50@@5 f_51@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@@8) o_50@@5 f_51@@4))
)))
(assert (forall ((s0@@1 T@Seq_42779) (s1@@1 T@Seq_42779) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_42779|)) (not (= s1@@1 |Seq#Empty_42779|))) (= (|Seq#Length_42779| (|Seq#Append_42779| s0@@1 s1@@1)) (+ (|Seq#Length_42779| s0@@1) (|Seq#Length_42779| s1@@1))))
 :qid |stdinbpl.341:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_42779| (|Seq#Append_42779| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3824) (s1@@2 T@Seq_3824) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3824|)) (not (= s1@@2 |Seq#Empty_3824|))) (= (|Seq#Length_3824| (|Seq#Append_3824| s0@@2 s1@@2)) (+ (|Seq#Length_3824| s0@@2) (|Seq#Length_3824| s1@@2))))
 :qid |stdinbpl.341:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3824| (|Seq#Append_3824| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_22317_101560) ) (! (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_22317_101427) ) (! (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_33255_33256) ) (! (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_33242_53) ) (! (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_43433_43434) ) (! (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_43387_6609) ) (! (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_42779) (t@@1 T@Seq_42779) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_42779| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_42779| s@@15)) (|Seq#Length_42779| s@@15)) n@@15) (= (|Seq#Drop_42779| (|Seq#Append_42779| s@@15 t@@1) n@@15) (|Seq#Drop_42779| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_42779| s@@15))))))
 :qid |stdinbpl.498:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_42779| (|Seq#Append_42779| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3824) (t@@2 T@Seq_3824) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3824| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3824| s@@16)) (|Seq#Length_3824| s@@16)) n@@16) (= (|Seq#Drop_3824| (|Seq#Append_3824| s@@16 t@@2) n@@16) (|Seq#Drop_3824| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3824| s@@16))))))
 :qid |stdinbpl.498:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3824| (|Seq#Append_3824| s@@16 t@@2) n@@16))
)))
(assert (forall ((e_1@@2 T@IEdgesDomainType) (i@@7 Int) ) (! (= (select (edges_domain e_1@@2) i@@7) (has_edge e_1@@2 i@@7))
 :qid |stdinbpl.910:15|
 :skolemid |122|
 :pattern ( (edges_domain e_1@@2) (has_edge e_1@@2 i@@7))
 :pattern ( (select (edges_domain e_1@@2) i@@7))
 :pattern ( (has_edge e_1@@2 i@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_33203) (SummandMask1 T@PolymorphicMapType_33203) (SummandMask2 T@PolymorphicMapType_33203) (o_2@@23 T@Ref) (f_4@@23 T@Field_22317_101560) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_33203) (SummandMask1@@0 T@PolymorphicMapType_33203) (SummandMask2@@0 T@PolymorphicMapType_33203) (o_2@@24 T@Ref) (f_4@@24 T@Field_22317_101427) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_33203) (SummandMask1@@1 T@PolymorphicMapType_33203) (SummandMask2@@1 T@PolymorphicMapType_33203) (o_2@@25 T@Ref) (f_4@@25 T@Field_33255_33256) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_33203) (SummandMask1@@2 T@PolymorphicMapType_33203) (SummandMask2@@2 T@PolymorphicMapType_33203) (o_2@@26 T@Ref) (f_4@@26 T@Field_33242_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_33203) (SummandMask1@@3 T@PolymorphicMapType_33203) (SummandMask2@@3 T@PolymorphicMapType_33203) (o_2@@27 T@Ref) (f_4@@27 T@Field_43433_43434) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_33203) (SummandMask1@@4 T@PolymorphicMapType_33203) (SummandMask2@@4 T@PolymorphicMapType_33203) (o_2@@28 T@Ref) (f_4@@28 T@Field_43387_6609) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((a@@9 (Array Int Bool)) (b@@8 (Array Int Bool)) (o@@3 Int) ) (! (= (select (|Set#Intersection_6709| a@@9 b@@8) o@@3)  (and (select a@@9 o@@3) (select b@@8 o@@3)))
 :qid |stdinbpl.718:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_6709| a@@9 b@@8) o@@3))
 :pattern ( (|Set#Intersection_6709| a@@9 b@@8) (select a@@9 o@@3))
 :pattern ( (|Set#Intersection_6709| a@@9 b@@8) (select b@@8 o@@3))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Intersection_22336| a@@10 b@@9) o@@4)  (and (select a@@10 o@@4) (select b@@9 o@@4)))
 :qid |stdinbpl.718:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_22336| a@@10 b@@9) o@@4))
 :pattern ( (|Set#Intersection_22336| a@@10 b@@9) (select a@@10 o@@4))
 :pattern ( (|Set#Intersection_22336| a@@10 b@@9) (select b@@9 o@@4))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3824| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3824| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.663:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3824| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Difference_22336| a@@11 b@@10) o@@5)  (and (select a@@11 o@@5) (not (select b@@10 o@@5))))
 :qid |stdinbpl.733:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_22336| a@@11 b@@10) o@@5))
 :pattern ( (|Set#Difference_22336| a@@11 b@@10) (select a@@11 o@@5))
)))
(assert (forall ((a@@12 (Array Int Bool)) (b@@11 (Array Int Bool)) (o@@6 Int) ) (! (= (select (|Set#Difference_6770| a@@12 b@@11) o@@6)  (and (select a@@12 o@@6) (not (select b@@11 o@@6))))
 :qid |stdinbpl.733:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_6770| a@@12 b@@11) o@@6))
 :pattern ( (|Set#Difference_6770| a@@12 b@@11) (select a@@12 o@@6))
)))
(assert (forall ((a@@13 T@Seq_42779) (b@@12 T@Seq_42779) ) (!  (=> (|Seq#Equal_42779| a@@13 b@@12) (= a@@13 b@@12))
 :qid |stdinbpl.636:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_42779| a@@13 b@@12))
)))
(assert (forall ((a@@14 T@Seq_3824) (b@@13 T@Seq_3824) ) (!  (=> (|Seq#Equal_3824| a@@14 b@@13) (= a@@14 b@@13))
 :qid |stdinbpl.636:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3824| a@@14 b@@13))
)))
(assert (forall ((a@@15 (Array Int Bool)) (b@@14 (Array Int Bool)) ) (!  (=> (|Set#Equal_6709| a@@15 b@@14) (= a@@15 b@@14))
 :qid |stdinbpl.755:17|
 :skolemid |86|
 :pattern ( (|Set#Equal_6709| a@@15 b@@14))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (b@@15 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_22345| a@@16 b@@15) (= a@@16 b@@15))
 :qid |stdinbpl.755:17|
 :skolemid |86|
 :pattern ( (|Set#Equal_22345| a@@16 b@@15))
)))
(assert (forall ((a@@17 (Array Int Bool)) (x@@3 Int) (y@@1 Int) ) (!  (=> (select a@@17 y@@1) (select (|Set#UnionOne_6709| a@@17 x@@3) y@@1))
 :qid |stdinbpl.698:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_6709| a@@17 x@@3) (select a@@17 y@@1))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) (y@@2 T@Ref) ) (!  (=> (select a@@18 y@@2) (select (|Set#UnionOne_22336| a@@18 x@@4) y@@2))
 :qid |stdinbpl.698:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_22336| a@@18 x@@4) (select a@@18 y@@2))
)))
(assert (forall ((a@@19 (Array Int Bool)) (b@@16 (Array Int Bool)) (y@@3 Int) ) (!  (=> (select a@@19 y@@3) (select (|Set#Union_6709| a@@19 b@@16) y@@3))
 :qid |stdinbpl.708:18|
 :skolemid |71|
 :pattern ( (|Set#Union_6709| a@@19 b@@16) (select a@@19 y@@3))
)))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@17 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (select a@@20 y@@4) (select (|Set#Union_22345| a@@20 b@@17) y@@4))
 :qid |stdinbpl.708:18|
 :skolemid |71|
 :pattern ( (|Set#Union_22345| a@@20 b@@17) (select a@@20 y@@4))
)))
(assert (forall ((a@@21 (Array Int Bool)) (b@@18 (Array Int Bool)) (y@@5 Int) ) (!  (=> (select b@@18 y@@5) (select (|Set#Union_6709| a@@21 b@@18) y@@5))
 :qid |stdinbpl.710:18|
 :skolemid |72|
 :pattern ( (|Set#Union_6709| a@@21 b@@18) (select b@@18 y@@5))
)))
(assert (forall ((a@@22 (Array T@Ref Bool)) (b@@19 (Array T@Ref Bool)) (y@@6 T@Ref) ) (!  (=> (select b@@19 y@@6) (select (|Set#Union_22345| a@@22 b@@19) y@@6))
 :qid |stdinbpl.710:18|
 :skolemid |72|
 :pattern ( (|Set#Union_22345| a@@22 b@@19) (select b@@19 y@@6))
)))
(assert (forall ((a@@23 (Array Int Bool)) (x@@5 Int) (o@@7 Int) ) (! (= (select (|Set#UnionOne_6709| a@@23 x@@5) o@@7)  (or (= o@@7 x@@5) (select a@@23 o@@7)))
 :qid |stdinbpl.694:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_6709| a@@23 x@@5) o@@7))
)))
(assert (forall ((a@@24 (Array T@Ref Bool)) (x@@6 T@Ref) (o@@8 T@Ref) ) (! (= (select (|Set#UnionOne_22336| a@@24 x@@6) o@@8)  (or (= o@@8 x@@6) (select a@@24 o@@8)))
 :qid |stdinbpl.694:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_22336| a@@24 x@@6) o@@8))
)))
(assert (forall ((a@@25 (Array T@Ref Bool)) (b@@20 (Array T@Ref Bool)) (y@@7 T@Ref) ) (!  (=> (select b@@20 y@@7) (not (select (|Set#Difference_22336| a@@25 b@@20) y@@7)))
 :qid |stdinbpl.735:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_22336| a@@25 b@@20) (select b@@20 y@@7))
)))
(assert (forall ((a@@26 (Array Int Bool)) (b@@21 (Array Int Bool)) (y@@8 Int) ) (!  (=> (select b@@21 y@@8) (not (select (|Set#Difference_6770| a@@26 b@@21) y@@8)))
 :qid |stdinbpl.735:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_6770| a@@26 b@@21) (select b@@21 y@@8))
)))
(assert (forall ((s@@17 T@Seq_42779) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_42779| s@@17))) (|Seq#ContainsTrigger_22306| s@@17 (|Seq#Index_42779| s@@17 i@@8)))
 :qid |stdinbpl.529:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_42779| s@@17 i@@8))
)))
(assert (forall ((s@@18 T@Seq_3824) (i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_3824| s@@18))) (|Seq#ContainsTrigger_3824| s@@18 (|Seq#Index_3824| s@@18 i@@9)))
 :qid |stdinbpl.529:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3824| s@@18 i@@9))
)))
(assert (forall ((a@@27 (Array Int Bool)) (b@@22 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_6709| (|Set#Difference_6770| a@@27 b@@22)) (|Set#Card_6709| (|Set#Difference_6770| b@@22 a@@27))) (|Set#Card_6709| (|Set#Intersection_6709| a@@27 b@@22))) (|Set#Card_6709| (|Set#Union_6709| a@@27 b@@22))) (= (|Set#Card_6709| (|Set#Difference_6770| a@@27 b@@22)) (- (|Set#Card_6709| a@@27) (|Set#Card_6709| (|Set#Intersection_6709| a@@27 b@@22)))))
 :qid |stdinbpl.737:18|
 :skolemid |81|
 :pattern ( (|Set#Card_6709| (|Set#Difference_6770| a@@27 b@@22)))
)))
(assert (forall ((a@@28 (Array T@Ref Bool)) (b@@23 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_22336| (|Set#Difference_22336| a@@28 b@@23)) (|Set#Card_22336| (|Set#Difference_22336| b@@23 a@@28))) (|Set#Card_22336| (|Set#Intersection_22336| a@@28 b@@23))) (|Set#Card_22336| (|Set#Union_22345| a@@28 b@@23))) (= (|Set#Card_22336| (|Set#Difference_22336| a@@28 b@@23)) (- (|Set#Card_22336| a@@28) (|Set#Card_22336| (|Set#Intersection_22336| a@@28 b@@23)))))
 :qid |stdinbpl.737:18|
 :skolemid |81|
 :pattern ( (|Set#Card_22336| (|Set#Difference_22336| a@@28 b@@23)))
)))
(assert (forall ((s0@@3 T@Seq_42779) (s1@@3 T@Seq_42779) ) (!  (and (=> (= s0@@3 |Seq#Empty_42779|) (= (|Seq#Append_42779| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_42779|) (= (|Seq#Append_42779| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.347:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_42779| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3824) (s1@@4 T@Seq_3824) ) (!  (and (=> (= s0@@4 |Seq#Empty_3824|) (= (|Seq#Append_3824| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3824|) (= (|Seq#Append_3824| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.347:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3824| s0@@4 s1@@4))
)))
(assert (forall ((node_map_1@@2 T@INodeMapDomainType) (key_1 T@Ref) ) (! (= (|Seq#Contains_22310| (map_domain node_map_1@@2) key_1) (has_node node_map_1@@2 key_1))
 :qid |stdinbpl.968:15|
 :skolemid |128|
 :pattern ( (map_domain node_map_1@@2) (has_node node_map_1@@2 key_1))
 :pattern ( (|Seq#ContainsTrigger_22306| (map_domain node_map_1@@2) key_1))
 :pattern ( (|Seq#Contains_22310| (map_domain node_map_1@@2) key_1))
 :pattern ( (has_node node_map_1@@2 key_1))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_42779| (|Seq#Singleton_42779| t@@3) 0) t@@3)
 :qid |stdinbpl.351:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_42779| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3824| (|Seq#Singleton_3824| t@@4) 0) t@@4)
 :qid |stdinbpl.351:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3824| t@@4))
)))
(assert (forall ((s@@19 T@Seq_42779) ) (! (<= 0 (|Seq#Length_42779| s@@19))
 :qid |stdinbpl.330:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_42779| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3824) ) (! (<= 0 (|Seq#Length_3824| s@@20))
 :qid |stdinbpl.330:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3824| s@@20))
)))
(assert (forall ((s@@21 (Array Int Bool)) ) (! (<= 0 (|Set#Card_6709| s@@21))
 :qid |stdinbpl.680:18|
 :skolemid |58|
 :pattern ( (|Set#Card_6709| s@@21))
)))
(assert (forall ((s@@22 (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_22336| s@@22))
 :qid |stdinbpl.680:18|
 :skolemid |58|
 :pattern ( (|Set#Card_22336| s@@22))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_33182) (ExhaleHeap@@9 T@PolymorphicMapType_33182) (Mask@@22 T@PolymorphicMapType_33203) (pm_f_25@@1 T@Field_22317_101427) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_22317_101491 Mask@@22 null pm_f_25@@1) (IsPredicateField_22317_101518 pm_f_25@@1)) (and (and (and (and (and (forall ((o2_25 T@Ref) (f_51@@5 T@Field_33242_53) ) (!  (=> (select (|PolymorphicMapType_33731_33242_53#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) null (PredicateMaskField_22317 pm_f_25@@1))) o2_25 f_51@@5) (= (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@10) o2_25 f_51@@5) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@9) o2_25 f_51@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@9) o2_25 f_51@@5))
)) (forall ((o2_25@@0 T@Ref) (f_51@@6 T@Field_33255_33256) ) (!  (=> (select (|PolymorphicMapType_33731_33242_33256#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) null (PredicateMaskField_22317 pm_f_25@@1))) o2_25@@0 f_51@@6) (= (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@10) o2_25@@0 f_51@@6) (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| ExhaleHeap@@9) o2_25@@0 f_51@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| ExhaleHeap@@9) o2_25@@0 f_51@@6))
))) (forall ((o2_25@@1 T@Ref) (f_51@@7 T@Field_43387_6609) ) (!  (=> (select (|PolymorphicMapType_33731_33242_6609#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) null (PredicateMaskField_22317 pm_f_25@@1))) o2_25@@1 f_51@@7) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@10) o2_25@@1 f_51@@7) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@@9) o2_25@@1 f_51@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@@9) o2_25@@1 f_51@@7))
))) (forall ((o2_25@@2 T@Ref) (f_51@@8 T@Field_43433_43434) ) (!  (=> (select (|PolymorphicMapType_33731_33242_43434#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) null (PredicateMaskField_22317 pm_f_25@@1))) o2_25@@2 f_51@@8) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@10) o2_25@@2 f_51@@8) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@@9) o2_25@@2 f_51@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@@9) o2_25@@2 f_51@@8))
))) (forall ((o2_25@@3 T@Ref) (f_51@@9 T@Field_22317_101427) ) (!  (=> (select (|PolymorphicMapType_33731_33242_101427#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) null (PredicateMaskField_22317 pm_f_25@@1))) o2_25@@3 f_51@@9) (= (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@10) o2_25@@3 f_51@@9) (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| ExhaleHeap@@9) o2_25@@3 f_51@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| ExhaleHeap@@9) o2_25@@3 f_51@@9))
))) (forall ((o2_25@@4 T@Ref) (f_51@@10 T@Field_22317_101560) ) (!  (=> (select (|PolymorphicMapType_33731_33242_102942#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) null (PredicateMaskField_22317 pm_f_25@@1))) o2_25@@4 f_51@@10) (= (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) o2_25@@4 f_51@@10) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@9) o2_25@@4 f_51@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@9) o2_25@@4 f_51@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_22317_101518 pm_f_25@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_33182) (ExhaleHeap@@10 T@PolymorphicMapType_33182) (Mask@@23 T@PolymorphicMapType_33203) (pm_f_25@@2 T@Field_22317_101427) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_22317_101491 Mask@@23 null pm_f_25@@2) (IsWandField_22317_103469 pm_f_25@@2)) (and (and (and (and (and (forall ((o2_25@@5 T@Ref) (f_51@@11 T@Field_33242_53) ) (!  (=> (select (|PolymorphicMapType_33731_33242_53#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) null (WandMaskField_22317 pm_f_25@@2))) o2_25@@5 f_51@@11) (= (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@11) o2_25@@5 f_51@@11) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@10) o2_25@@5 f_51@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@10) o2_25@@5 f_51@@11))
)) (forall ((o2_25@@6 T@Ref) (f_51@@12 T@Field_33255_33256) ) (!  (=> (select (|PolymorphicMapType_33731_33242_33256#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) null (WandMaskField_22317 pm_f_25@@2))) o2_25@@6 f_51@@12) (= (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@11) o2_25@@6 f_51@@12) (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| ExhaleHeap@@10) o2_25@@6 f_51@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| ExhaleHeap@@10) o2_25@@6 f_51@@12))
))) (forall ((o2_25@@7 T@Ref) (f_51@@13 T@Field_43387_6609) ) (!  (=> (select (|PolymorphicMapType_33731_33242_6609#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) null (WandMaskField_22317 pm_f_25@@2))) o2_25@@7 f_51@@13) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@11) o2_25@@7 f_51@@13) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@@10) o2_25@@7 f_51@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@@10) o2_25@@7 f_51@@13))
))) (forall ((o2_25@@8 T@Ref) (f_51@@14 T@Field_43433_43434) ) (!  (=> (select (|PolymorphicMapType_33731_33242_43434#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) null (WandMaskField_22317 pm_f_25@@2))) o2_25@@8 f_51@@14) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@11) o2_25@@8 f_51@@14) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@@10) o2_25@@8 f_51@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@@10) o2_25@@8 f_51@@14))
))) (forall ((o2_25@@9 T@Ref) (f_51@@15 T@Field_22317_101427) ) (!  (=> (select (|PolymorphicMapType_33731_33242_101427#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) null (WandMaskField_22317 pm_f_25@@2))) o2_25@@9 f_51@@15) (= (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@11) o2_25@@9 f_51@@15) (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| ExhaleHeap@@10) o2_25@@9 f_51@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| ExhaleHeap@@10) o2_25@@9 f_51@@15))
))) (forall ((o2_25@@10 T@Ref) (f_51@@16 T@Field_22317_101560) ) (!  (=> (select (|PolymorphicMapType_33731_33242_102942#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) null (WandMaskField_22317 pm_f_25@@2))) o2_25@@10 f_51@@16) (= (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) o2_25@@10 f_51@@16) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@10) o2_25@@10 f_51@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@10) o2_25@@10 f_51@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_22317_103469 pm_f_25@@2))
)))
(assert (forall ((a@@29 (Array Int Bool)) (x@@7 Int) ) (! (select (|Set#UnionOne_6709| a@@29 x@@7) x@@7)
 :qid |stdinbpl.696:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_6709| a@@29 x@@7))
)))
(assert (forall ((a@@30 (Array T@Ref Bool)) (x@@8 T@Ref) ) (! (select (|Set#UnionOne_22336| a@@30 x@@8) x@@8)
 :qid |stdinbpl.696:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_22336| a@@30 x@@8))
)))
(assert (forall ((s0@@5 T@Seq_42779) (s1@@5 T@Seq_42779) ) (!  (=> (|Seq#Equal_42779| s0@@5 s1@@5) (and (= (|Seq#Length_42779| s0@@5) (|Seq#Length_42779| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_42779| s0@@5))) (= (|Seq#Index_42779| s0@@5 j@@6) (|Seq#Index_42779| s1@@5 j@@6)))
 :qid |stdinbpl.626:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_42779| s0@@5 j@@6))
 :pattern ( (|Seq#Index_42779| s1@@5 j@@6))
))))
 :qid |stdinbpl.623:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_42779| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3824) (s1@@6 T@Seq_3824) ) (!  (=> (|Seq#Equal_3824| s0@@6 s1@@6) (and (= (|Seq#Length_3824| s0@@6) (|Seq#Length_3824| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3824| s0@@6))) (= (|Seq#Index_3824| s0@@6 j@@7) (|Seq#Index_3824| s1@@6 j@@7)))
 :qid |stdinbpl.626:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3824| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3824| s1@@6 j@@7))
))))
 :qid |stdinbpl.623:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3824| s0@@6 s1@@6))
)))
(assert (forall ((a@@31 (Array Int Bool)) (x@@9 Int) ) (!  (=> (select a@@31 x@@9) (= (|Set#Card_6709| (|Set#UnionOne_6709| a@@31 x@@9)) (|Set#Card_6709| a@@31)))
 :qid |stdinbpl.700:18|
 :skolemid |68|
 :pattern ( (|Set#Card_6709| (|Set#UnionOne_6709| a@@31 x@@9)))
)))
(assert (forall ((a@@32 (Array T@Ref Bool)) (x@@10 T@Ref) ) (!  (=> (select a@@32 x@@10) (= (|Set#Card_22336| (|Set#UnionOne_22336| a@@32 x@@10)) (|Set#Card_22336| a@@32)))
 :qid |stdinbpl.700:18|
 :skolemid |68|
 :pattern ( (|Set#Card_22336| (|Set#UnionOne_22336| a@@32 x@@10)))
)))
(assert (forall ((e_1@@3 T@IEdgesDomainType) (i@@10 Int) (node@@3 T@Ref) (j_9 Int) ) (!  (=> (not (= i@@10 j_9)) (= (edge_lookup e_1@@3 j_9) (edge_lookup (insert_edge e_1@@3 i@@10 node@@3) j_9)))
 :qid |stdinbpl.892:15|
 :skolemid |119|
 :pattern ( (edge_lookup e_1@@3 j_9) (insert_edge e_1@@3 i@@10 node@@3))
 :pattern ( (edge_lookup e_1@@3 j_9) (edge_lookup (insert_edge e_1@@3 i@@10 node@@3) j_9))
 :pattern ( (edge_lookup (insert_edge e_1@@3 i@@10 node@@3) j_9))
)))
(assert (forall ((node_map_1@@3 T@INodeMapDomainType) (key_node_1@@1 T@Ref) (val_node_1@@1 T@Ref) (node@@4 T@Ref) ) (!  (=> (not (= node@@4 key_node_1@@1)) (= (lookup node_map_1@@3 node@@4) (lookup (insert_1 node_map_1@@3 key_node_1@@1 val_node_1@@1) node@@4)))
 :qid |stdinbpl.950:15|
 :skolemid |125|
 :pattern ( (lookup node_map_1@@3 node@@4) (insert_1 node_map_1@@3 key_node_1@@1 val_node_1@@1))
 :pattern ( (lookup node_map_1@@3 node@@4) (lookup (insert_1 node_map_1@@3 key_node_1@@1 val_node_1@@1) node@@4))
 :pattern ( (lookup (insert_1 node_map_1@@3 key_node_1@@1 val_node_1@@1) node@@4))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_42779| (|Seq#Singleton_42779| t@@5)) 1)
 :qid |stdinbpl.338:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_42779| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3824| (|Seq#Singleton_3824| t@@6)) 1)
 :qid |stdinbpl.338:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3824| t@@6))
)))
(assert (forall ((r@@1 Int) ) (! (= (|Set#Card_6709| (|Set#Singleton_6734| r@@1)) 1)
 :qid |stdinbpl.691:18|
 :skolemid |64|
 :pattern ( (|Set#Card_6709| (|Set#Singleton_6734| r@@1)))
)))
(assert (forall ((r@@2 T@Ref) ) (! (= (|Set#Card_22336| (|Set#Singleton_22343| r@@2)) 1)
 :qid |stdinbpl.691:18|
 :skolemid |64|
 :pattern ( (|Set#Card_22336| (|Set#Singleton_22343| r@@2)))
)))
(assert (forall ((r@@3 Int) ) (! (select (|Set#Singleton_6734| r@@3) r@@3)
 :qid |stdinbpl.689:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_6734| r@@3))
)))
(assert (forall ((r@@4 T@Ref) ) (! (select (|Set#Singleton_22343| r@@4) r@@4)
 :qid |stdinbpl.689:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_22343| r@@4))
)))
(assert (forall ((a@@33 (Array Int Bool)) (b@@24 (Array Int Bool)) ) (! (= (|Set#Union_6709| a@@33 (|Set#Union_6709| a@@33 b@@24)) (|Set#Union_6709| a@@33 b@@24))
 :qid |stdinbpl.723:18|
 :skolemid |75|
 :pattern ( (|Set#Union_6709| a@@33 (|Set#Union_6709| a@@33 b@@24)))
)))
(assert (forall ((a@@34 (Array T@Ref Bool)) (b@@25 (Array T@Ref Bool)) ) (! (= (|Set#Union_22345| a@@34 (|Set#Union_22345| a@@34 b@@25)) (|Set#Union_22345| a@@34 b@@25))
 :qid |stdinbpl.723:18|
 :skolemid |75|
 :pattern ( (|Set#Union_22345| a@@34 (|Set#Union_22345| a@@34 b@@25)))
)))
(assert (forall ((a@@35 (Array Int Bool)) (b@@26 (Array Int Bool)) ) (! (= (|Set#Intersection_6709| a@@35 (|Set#Intersection_6709| a@@35 b@@26)) (|Set#Intersection_6709| a@@35 b@@26))
 :qid |stdinbpl.727:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_6709| a@@35 (|Set#Intersection_6709| a@@35 b@@26)))
)))
(assert (forall ((a@@36 (Array T@Ref Bool)) (b@@27 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_22336| a@@36 (|Set#Intersection_22336| a@@36 b@@27)) (|Set#Intersection_22336| a@@36 b@@27))
 :qid |stdinbpl.727:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_22336| a@@36 (|Set#Intersection_22336| a@@36 b@@27)))
)))
(assert (forall ((s@@23 T@Seq_42779) (t@@7 T@Seq_42779) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_42779| s@@23))) (= (|Seq#Take_42779| (|Seq#Append_42779| s@@23 t@@7) n@@17) (|Seq#Take_42779| s@@23 n@@17)))
 :qid |stdinbpl.480:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_42779| (|Seq#Append_42779| s@@23 t@@7) n@@17))
)))
(assert (forall ((s@@24 T@Seq_3824) (t@@8 T@Seq_3824) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3824| s@@24))) (= (|Seq#Take_3824| (|Seq#Append_3824| s@@24 t@@8) n@@18) (|Seq#Take_3824| s@@24 n@@18)))
 :qid |stdinbpl.480:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3824| (|Seq#Append_3824| s@@24 t@@8) n@@18))
)))
(assert (forall ((o@@9 Int) ) (!  (not (select |Set#Empty_6709| o@@9))
 :qid |stdinbpl.683:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_6709| o@@9))
)))
(assert (forall ((o@@10 T@Ref) ) (!  (not (select |Set#Empty_22336| o@@10))
 :qid |stdinbpl.683:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_22336| o@@10))
)))
(assert (forall ((s@@25 T@Seq_42779) (i@@11 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length_42779| s@@25))) (= (|Seq#Length_42779| (|Seq#Update_42779| s@@25 i@@11 v@@2)) (|Seq#Length_42779| s@@25)))
 :qid |stdinbpl.379:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_42779| (|Seq#Update_42779| s@@25 i@@11 v@@2)))
 :pattern ( (|Seq#Length_42779| s@@25) (|Seq#Update_42779| s@@25 i@@11 v@@2))
)))
(assert (forall ((s@@26 T@Seq_3824) (i@@12 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length_3824| s@@26))) (= (|Seq#Length_3824| (|Seq#Update_3824| s@@26 i@@12 v@@3)) (|Seq#Length_3824| s@@26)))
 :qid |stdinbpl.379:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3824| (|Seq#Update_3824| s@@26 i@@12 v@@3)))
 :pattern ( (|Seq#Length_3824| s@@26) (|Seq#Update_3824| s@@26 i@@12 v@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_33182) (o_39 T@Ref) (f_18 T@Field_22317_101427) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@12) (store (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@12) o_39 f_18 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@12) (store (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@12) o_39 f_18 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_33182) (o_39@@0 T@Ref) (f_18@@0 T@Field_22317_101560) (v@@5 T@PolymorphicMapType_33731) ) (! (succHeap Heap@@13 (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@13) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@13) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@13) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@13) (store (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@13) o_39@@0 f_18@@0 v@@5) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@13) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@13) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@13) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@13) (store (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@13) o_39@@0 f_18@@0 v@@5) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_33182) (o_39@@1 T@Ref) (f_18@@1 T@Field_43433_43434) (v@@6 T@IEdgesDomainType) ) (! (succHeap Heap@@14 (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@14) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@14) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@14) (store (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@14) o_39@@1 f_18@@1 v@@6) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@14) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@14) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@14) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@14) (store (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@14) o_39@@1 f_18@@1 v@@6) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@14) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_33182) (o_39@@2 T@Ref) (f_18@@2 T@Field_43387_6609) (v@@7 Int) ) (! (succHeap Heap@@15 (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@15) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@15) (store (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@15) o_39@@2 f_18@@2 v@@7) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@15) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@15) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@15) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@15) (store (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@15) o_39@@2 f_18@@2 v@@7) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@15) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@15) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_33182) (o_39@@3 T@Ref) (f_18@@3 T@Field_33255_33256) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@16) (store (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@16) o_39@@3 f_18@@3 v@@8) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@16) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@16) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@16) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@16) (store (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@16) o_39@@3 f_18@@3 v@@8) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@16) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@16) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@16) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_33182) (o_39@@4 T@Ref) (f_18@@4 T@Field_33242_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_33182 (store (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@17) o_39@@4 f_18@@4 v@@9) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_33182 (store (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@17) o_39@@4 f_18@@4 v@@9) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@17)))
)))
(assert (forall ((s@@27 T@Seq_42779) (t@@9 T@Seq_42779) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_42779| s@@27))) (= (|Seq#Drop_42779| (|Seq#Append_42779| s@@27 t@@9) n@@19) (|Seq#Append_42779| (|Seq#Drop_42779| s@@27 n@@19) t@@9)))
 :qid |stdinbpl.494:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_42779| (|Seq#Append_42779| s@@27 t@@9) n@@19))
)))
(assert (forall ((s@@28 T@Seq_3824) (t@@10 T@Seq_3824) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3824| s@@28))) (= (|Seq#Drop_3824| (|Seq#Append_3824| s@@28 t@@10) n@@20) (|Seq#Append_3824| (|Seq#Drop_3824| s@@28 n@@20) t@@10)))
 :qid |stdinbpl.494:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3824| (|Seq#Append_3824| s@@28 t@@10) n@@20))
)))
(assert (forall ((a@@37 Int) (b@@28 Int) ) (! (= (<= a@@37 b@@28) (= (|Math#min| a@@37 b@@28) a@@37))
 :qid |stdinbpl.767:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@37 b@@28))
)))
(assert (forall ((a@@38 Int) (b@@29 Int) ) (! (= (<= b@@29 a@@38) (= (|Math#min| a@@38 b@@29) b@@29))
 :qid |stdinbpl.768:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@38 b@@29))
)))
(assert (forall ((s@@29 T@Seq_42779) (n@@21 Int) (i@@13 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@13)) (< i@@13 (|Seq#Length_42779| s@@29))) (and (= (|Seq#Add| (|Seq#Sub| i@@13 n@@21) n@@21) i@@13) (= (|Seq#Index_42779| (|Seq#Drop_42779| s@@29 n@@21) (|Seq#Sub| i@@13 n@@21)) (|Seq#Index_42779| s@@29 i@@13))))
 :qid |stdinbpl.430:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_42779| s@@29 n@@21) (|Seq#Index_42779| s@@29 i@@13))
)))
(assert (forall ((s@@30 T@Seq_3824) (n@@22 Int) (i@@14 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@14)) (< i@@14 (|Seq#Length_3824| s@@30))) (and (= (|Seq#Add| (|Seq#Sub| i@@14 n@@22) n@@22) i@@14) (= (|Seq#Index_3824| (|Seq#Drop_3824| s@@30 n@@22) (|Seq#Sub| i@@14 n@@22)) (|Seq#Index_3824| s@@30 i@@14))))
 :qid |stdinbpl.430:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3824| s@@30 n@@22) (|Seq#Index_3824| s@@30 i@@14))
)))
(assert (forall ((s@@31 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_6709| s@@31) 0) (= s@@31 |Set#Empty_6709|)) (=> (not (= (|Set#Card_6709| s@@31) 0)) (exists ((x@@11 Int) ) (! (select s@@31 x@@11)
 :qid |stdinbpl.686:33|
 :skolemid |60|
))))
 :qid |stdinbpl.684:18|
 :skolemid |61|
 :pattern ( (|Set#Card_6709| s@@31))
)))
(assert (forall ((s@@32 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_22336| s@@32) 0) (= s@@32 |Set#Empty_22336|)) (=> (not (= (|Set#Card_22336| s@@32) 0)) (exists ((x@@12 T@Ref) ) (! (select s@@32 x@@12)
 :qid |stdinbpl.686:33|
 :skolemid |60|
))))
 :qid |stdinbpl.684:18|
 :skolemid |61|
 :pattern ( (|Set#Card_22336| s@@32))
)))
(assert (forall ((s0@@7 T@Seq_42779) (s1@@7 T@Seq_42779) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_42779|)) (not (= s1@@7 |Seq#Empty_42779|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_42779| s0@@7))) (= (|Seq#Index_42779| (|Seq#Append_42779| s0@@7 s1@@7) n@@23) (|Seq#Index_42779| s0@@7 n@@23)))
 :qid |stdinbpl.370:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_42779| (|Seq#Append_42779| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_42779| s0@@7 n@@23) (|Seq#Append_42779| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3824) (s1@@8 T@Seq_3824) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3824|)) (not (= s1@@8 |Seq#Empty_3824|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3824| s0@@8))) (= (|Seq#Index_3824| (|Seq#Append_3824| s0@@8 s1@@8) n@@24) (|Seq#Index_3824| s0@@8 n@@24)))
 :qid |stdinbpl.370:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3824| (|Seq#Append_3824| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3824| s0@@8 n@@24) (|Seq#Append_3824| s0@@8 s1@@8))
)))
(assert (forall ((a@@39 (Array T@Ref Bool)) (b@@30 (Array T@Ref Bool)) ) (! (= (|Set#Subset_22339| a@@39 b@@30) (forall ((o@@11 T@Ref) ) (!  (=> (select a@@39 o@@11) (select b@@30 o@@11))
 :qid |stdinbpl.746:32|
 :skolemid |82|
 :pattern ( (select a@@39 o@@11))
 :pattern ( (select b@@30 o@@11))
)))
 :qid |stdinbpl.745:17|
 :skolemid |83|
 :pattern ( (|Set#Subset_22339| a@@39 b@@30))
)))
(assert (forall ((s0@@9 T@Seq_42779) (s1@@9 T@Seq_42779) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_42779|)) (not (= s1@@9 |Seq#Empty_42779|))) (<= 0 m)) (< m (|Seq#Length_42779| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_42779| s0@@9)) (|Seq#Length_42779| s0@@9)) m) (= (|Seq#Index_42779| (|Seq#Append_42779| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_42779| s0@@9))) (|Seq#Index_42779| s1@@9 m))))
 :qid |stdinbpl.375:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_42779| s1@@9 m) (|Seq#Append_42779| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3824) (s1@@10 T@Seq_3824) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3824|)) (not (= s1@@10 |Seq#Empty_3824|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3824| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3824| s0@@10)) (|Seq#Length_3824| s0@@10)) m@@0) (= (|Seq#Index_3824| (|Seq#Append_3824| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3824| s0@@10))) (|Seq#Index_3824| s1@@10 m@@0))))
 :qid |stdinbpl.375:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3824| s1@@10 m@@0) (|Seq#Append_3824| s0@@10 s1@@10))
)))
(assert (forall ((a@@40 (Array Int Bool)) (x@@13 Int) ) (!  (=> (not (select a@@40 x@@13)) (= (|Set#Card_6709| (|Set#UnionOne_6709| a@@40 x@@13)) (+ (|Set#Card_6709| a@@40) 1)))
 :qid |stdinbpl.702:18|
 :skolemid |69|
 :pattern ( (|Set#Card_6709| (|Set#UnionOne_6709| a@@40 x@@13)))
)))
(assert (forall ((a@@41 (Array T@Ref Bool)) (x@@14 T@Ref) ) (!  (=> (not (select a@@41 x@@14)) (= (|Set#Card_22336| (|Set#UnionOne_22336| a@@41 x@@14)) (+ (|Set#Card_22336| a@@41) 1)))
 :qid |stdinbpl.702:18|
 :skolemid |69|
 :pattern ( (|Set#Card_22336| (|Set#UnionOne_22336| a@@41 x@@14)))
)))
(assert (forall ((o_39@@5 T@Ref) (f_45 T@Field_33255_33256) (Heap@@18 T@PolymorphicMapType_33182) ) (!  (=> (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@18) o_39@@5 $allocated) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@18) (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@18) o_39@@5 f_45) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@18) o_39@@5 f_45))
)))
(assert (forall ((s@@33 T@Seq_42779) (x@@15 T@Ref) (i@@15 Int) ) (!  (=> (and (and (<= 0 i@@15) (< i@@15 (|Seq#Length_42779| s@@33))) (= (|Seq#Index_42779| s@@33 i@@15) x@@15)) (|Seq#Contains_22310| s@@33 x@@15))
 :qid |stdinbpl.527:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_22310| s@@33 x@@15) (|Seq#Index_42779| s@@33 i@@15))
)))
(assert (forall ((s@@34 T@Seq_3824) (x@@16 Int) (i@@16 Int) ) (!  (=> (and (and (<= 0 i@@16) (< i@@16 (|Seq#Length_3824| s@@34))) (= (|Seq#Index_3824| s@@34 i@@16) x@@16)) (|Seq#Contains_3824| s@@34 x@@16))
 :qid |stdinbpl.527:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3824| s@@34 x@@16) (|Seq#Index_3824| s@@34 i@@16))
)))
(assert (forall ((s0@@11 T@Seq_42779) (s1@@11 T@Seq_42779) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_42779| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_42779| s0@@11 s1@@11))) (not (= (|Seq#Length_42779| s0@@11) (|Seq#Length_42779| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_42779| s0@@11 s1@@11))) (= (|Seq#Length_42779| s0@@11) (|Seq#Length_42779| s1@@11))) (= (|Seq#SkolemDiff_42779| s0@@11 s1@@11) (|Seq#SkolemDiff_42779| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_42779| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_42779| s0@@11 s1@@11) (|Seq#Length_42779| s0@@11))) (not (= (|Seq#Index_42779| s0@@11 (|Seq#SkolemDiff_42779| s0@@11 s1@@11)) (|Seq#Index_42779| s1@@11 (|Seq#SkolemDiff_42779| s0@@11 s1@@11))))))
 :qid |stdinbpl.631:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_42779| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3824) (s1@@12 T@Seq_3824) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3824| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3824| s0@@12 s1@@12))) (not (= (|Seq#Length_3824| s0@@12) (|Seq#Length_3824| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3824| s0@@12 s1@@12))) (= (|Seq#Length_3824| s0@@12) (|Seq#Length_3824| s1@@12))) (= (|Seq#SkolemDiff_3824| s0@@12 s1@@12) (|Seq#SkolemDiff_3824| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3824| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3824| s0@@12 s1@@12) (|Seq#Length_3824| s0@@12))) (not (= (|Seq#Index_3824| s0@@12 (|Seq#SkolemDiff_3824| s0@@12 s1@@12)) (|Seq#Index_3824| s1@@12 (|Seq#SkolemDiff_3824| s0@@12 s1@@12))))))
 :qid |stdinbpl.631:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3824| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_22317_101427) (v_1@@0 T@FrameType) (q T@Field_22317_101427) (w@@0 T@FrameType) (r@@5 T@Field_22317_101427) (u T@FrameType) ) (!  (=> (and (InsidePredicate_33242_33242 p@@1 v_1@@0 q w@@0) (InsidePredicate_33242_33242 q w@@0 r@@5 u)) (InsidePredicate_33242_33242 p@@1 v_1@@0 r@@5 u))
 :qid |stdinbpl.298:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_33242_33242 p@@1 v_1@@0 q w@@0) (InsidePredicate_33242_33242 q w@@0 r@@5 u))
)))
(assert (forall ((a@@42 Int) ) (!  (=> (< a@@42 0) (= (|Math#clip| a@@42) 0))
 :qid |stdinbpl.773:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@42))
)))
(assert (forall ((s@@35 T@Seq_42779) ) (!  (=> (= (|Seq#Length_42779| s@@35) 0) (= s@@35 |Seq#Empty_42779|))
 :qid |stdinbpl.334:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_42779| s@@35))
)))
(assert (forall ((s@@36 T@Seq_3824) ) (!  (=> (= (|Seq#Length_3824| s@@36) 0) (= s@@36 |Seq#Empty_3824|))
 :qid |stdinbpl.334:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3824| s@@36))
)))
(assert (forall ((s@@37 T@Seq_42779) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_42779| s@@37 n@@25) |Seq#Empty_42779|))
 :qid |stdinbpl.510:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_42779| s@@37 n@@25))
)))
(assert (forall ((s@@38 T@Seq_3824) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3824| s@@38 n@@26) |Seq#Empty_3824|))
 :qid |stdinbpl.510:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3824| s@@38 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@43 (Array Int Bool)) (b@@31 (Array Int Bool)) (o@@12 Int) ) (! (= (select (|Set#Union_6709| a@@43 b@@31) o@@12)  (or (select a@@43 o@@12) (select b@@31 o@@12)))
 :qid |stdinbpl.706:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_6709| a@@43 b@@31) o@@12))
)))
(assert (forall ((a@@44 (Array T@Ref Bool)) (b@@32 (Array T@Ref Bool)) (o@@13 T@Ref) ) (! (= (select (|Set#Union_22345| a@@44 b@@32) o@@13)  (or (select a@@44 o@@13) (select b@@32 o@@13)))
 :qid |stdinbpl.706:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_22345| a@@44 b@@32) o@@13))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_33182)
(declare-fun s1@@13 () (Array Int Bool))
(set-info :boogie-vc-id vpop)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (and (< 0 (|Set#Card_6709| s1@@13)) (state Heap@@19 ZeroMask))) (and (=> (= (ControlFlow 0 5) 1) anon3_Then_correct) (=> (= (ControlFlow 0 5) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
