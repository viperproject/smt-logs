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
(declare-fun lookup_1 (T@INodeMapDomainType T@Ref) T@Ref)
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
(assert (forall ((node_map_1 T@INodeMapDomainType) (key_node_1 T@Ref) (val_node_1 T@Ref) ) (! (= (lookup_1 (insert_1 node_map_1 key_node_1 val_node_1) key_node_1) val_node_1)
 :qid |stdinbpl.944:15|
 :skolemid |124|
 :pattern ( (lookup_1 (insert_1 node_map_1 key_node_1 val_node_1) key_node_1))
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
(assert (forall ((Heap@@0 T@PolymorphicMapType_33182) (ExhaleHeap T@PolymorphicMapType_33182) (Mask@@0 T@PolymorphicMapType_33203) (pm_f_17 T@Field_22317_101427) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_22317_101491 Mask@@0 null pm_f_17) (IsPredicateField_22317_101518 pm_f_17)) (= (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@0) null (PredicateMaskField_22317 pm_f_17)) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap) null (PredicateMaskField_22317 pm_f_17)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_22317_101518 pm_f_17) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap) null (PredicateMaskField_22317 pm_f_17)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_33182) (ExhaleHeap@@0 T@PolymorphicMapType_33182) (Mask@@1 T@PolymorphicMapType_33203) (pm_f_17@@0 T@Field_22317_101427) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_22317_101491 Mask@@1 null pm_f_17@@0) (IsWandField_22317_103469 pm_f_17@@0)) (= (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@1) null (WandMaskField_22317 pm_f_17@@0)) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@0) null (WandMaskField_22317 pm_f_17@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_22317_103469 pm_f_17@@0) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@0) null (WandMaskField_22317 pm_f_17@@0)))
)))
(assert (forall ((e_1@@0 T@IEdgesDomainType) (i@@5 Int) ) (! (= (has_edge e_1@@0 i@@5) (not (= (edge_lookup e_1@@0 i@@5) null)))
 :qid |stdinbpl.904:15|
 :skolemid |121|
 :pattern ( (has_edge e_1@@0 i@@5))
 :pattern ( (edge_lookup e_1@@0 i@@5))
)))
(assert (forall ((node_map_1@@0 T@INodeMapDomainType) (node@@1 T@Ref) ) (! (= (has_node node_map_1@@0 node@@1) (not (= (lookup_1 node_map_1@@0 node@@1) null)))
 :qid |stdinbpl.962:15|
 :skolemid |127|
 :pattern ( (has_node node_map_1@@0 node@@1))
 :pattern ( (lookup_1 node_map_1@@0 node@@1))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_33182) (ExhaleHeap@@1 T@PolymorphicMapType_33182) (Mask@@2 T@PolymorphicMapType_33203) (o_37 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@2) o_37 $allocated) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@1) o_37 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@1) o_37 $allocated))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_33182) (ExhaleHeap@@3 T@PolymorphicMapType_33182) (Mask@@16 T@PolymorphicMapType_33203) (o_37@@0 T@Ref) (f_18 T@Field_22317_101560) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_22317_108140 Mask@@16 o_37@@0 f_18) (= (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@4) o_37@@0 f_18) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@3) o_37@@0 f_18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@3) o_37@@0 f_18))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_33182) (ExhaleHeap@@4 T@PolymorphicMapType_33182) (Mask@@17 T@PolymorphicMapType_33203) (o_37@@1 T@Ref) (f_18@@0 T@Field_22317_101427) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_22317_101491 Mask@@17 o_37@@1 f_18@@0) (= (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@5) o_37@@1 f_18@@0) (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| ExhaleHeap@@4) o_37@@1 f_18@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| ExhaleHeap@@4) o_37@@1 f_18@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_33182) (ExhaleHeap@@5 T@PolymorphicMapType_33182) (Mask@@18 T@PolymorphicMapType_33203) (o_37@@2 T@Ref) (f_18@@1 T@Field_33255_33256) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_22317_33256 Mask@@18 o_37@@2 f_18@@1) (= (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@6) o_37@@2 f_18@@1) (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| ExhaleHeap@@5) o_37@@2 f_18@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| ExhaleHeap@@5) o_37@@2 f_18@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_33182) (ExhaleHeap@@6 T@PolymorphicMapType_33182) (Mask@@19 T@PolymorphicMapType_33203) (o_37@@3 T@Ref) (f_18@@2 T@Field_33242_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_22317_53 Mask@@19 o_37@@3 f_18@@2) (= (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@7) o_37@@3 f_18@@2) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@6) o_37@@3 f_18@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@6) o_37@@3 f_18@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_33182) (ExhaleHeap@@7 T@PolymorphicMapType_33182) (Mask@@20 T@PolymorphicMapType_33203) (o_37@@4 T@Ref) (f_18@@3 T@Field_43387_6609) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_22315_6609 Mask@@20 o_37@@4 f_18@@3) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@8) o_37@@4 f_18@@3) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@@7) o_37@@4 f_18@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@@7) o_37@@4 f_18@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_33182) (ExhaleHeap@@8 T@PolymorphicMapType_33182) (Mask@@21 T@PolymorphicMapType_33203) (o_37@@5 T@Ref) (f_18@@4 T@Field_43433_43434) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_22317_22318 Mask@@21 o_37@@5 f_18@@4) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@9) o_37@@5 f_18@@4) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@@8) o_37@@5 f_18@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@@8) o_37@@5 f_18@@4))
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
(assert (forall ((node_map_1@@2 T@INodeMapDomainType) (key_2 T@Ref) ) (! (= (|Seq#Contains_22310| (map_domain node_map_1@@2) key_2) (has_node node_map_1@@2 key_2))
 :qid |stdinbpl.968:15|
 :skolemid |128|
 :pattern ( (map_domain node_map_1@@2) (has_node node_map_1@@2 key_2))
 :pattern ( (|Seq#ContainsTrigger_22306| (map_domain node_map_1@@2) key_2))
 :pattern ( (|Seq#Contains_22310| (map_domain node_map_1@@2) key_2))
 :pattern ( (has_node node_map_1@@2 key_2))
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_33182) (ExhaleHeap@@9 T@PolymorphicMapType_33182) (Mask@@22 T@PolymorphicMapType_33203) (pm_f_17@@1 T@Field_22317_101427) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_22317_101491 Mask@@22 null pm_f_17@@1) (IsPredicateField_22317_101518 pm_f_17@@1)) (and (and (and (and (and (forall ((o2_17 T@Ref) (f_18@@5 T@Field_33242_53) ) (!  (=> (select (|PolymorphicMapType_33731_33242_53#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) null (PredicateMaskField_22317 pm_f_17@@1))) o2_17 f_18@@5) (= (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@10) o2_17 f_18@@5) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@9) o2_17 f_18@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@9) o2_17 f_18@@5))
)) (forall ((o2_17@@0 T@Ref) (f_18@@6 T@Field_33255_33256) ) (!  (=> (select (|PolymorphicMapType_33731_33242_33256#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) null (PredicateMaskField_22317 pm_f_17@@1))) o2_17@@0 f_18@@6) (= (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@10) o2_17@@0 f_18@@6) (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| ExhaleHeap@@9) o2_17@@0 f_18@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| ExhaleHeap@@9) o2_17@@0 f_18@@6))
))) (forall ((o2_17@@1 T@Ref) (f_18@@7 T@Field_43387_6609) ) (!  (=> (select (|PolymorphicMapType_33731_33242_6609#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) null (PredicateMaskField_22317 pm_f_17@@1))) o2_17@@1 f_18@@7) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@10) o2_17@@1 f_18@@7) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@@9) o2_17@@1 f_18@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@@9) o2_17@@1 f_18@@7))
))) (forall ((o2_17@@2 T@Ref) (f_18@@8 T@Field_43433_43434) ) (!  (=> (select (|PolymorphicMapType_33731_33242_43434#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) null (PredicateMaskField_22317 pm_f_17@@1))) o2_17@@2 f_18@@8) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@10) o2_17@@2 f_18@@8) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@@9) o2_17@@2 f_18@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@@9) o2_17@@2 f_18@@8))
))) (forall ((o2_17@@3 T@Ref) (f_18@@9 T@Field_22317_101427) ) (!  (=> (select (|PolymorphicMapType_33731_33242_101427#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) null (PredicateMaskField_22317 pm_f_17@@1))) o2_17@@3 f_18@@9) (= (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@10) o2_17@@3 f_18@@9) (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| ExhaleHeap@@9) o2_17@@3 f_18@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| ExhaleHeap@@9) o2_17@@3 f_18@@9))
))) (forall ((o2_17@@4 T@Ref) (f_18@@10 T@Field_22317_101560) ) (!  (=> (select (|PolymorphicMapType_33731_33242_102942#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) null (PredicateMaskField_22317 pm_f_17@@1))) o2_17@@4 f_18@@10) (= (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@10) o2_17@@4 f_18@@10) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@9) o2_17@@4 f_18@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@9) o2_17@@4 f_18@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_22317_101518 pm_f_17@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_33182) (ExhaleHeap@@10 T@PolymorphicMapType_33182) (Mask@@23 T@PolymorphicMapType_33203) (pm_f_17@@2 T@Field_22317_101427) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_22317_101491 Mask@@23 null pm_f_17@@2) (IsWandField_22317_103469 pm_f_17@@2)) (and (and (and (and (and (forall ((o2_17@@5 T@Ref) (f_18@@11 T@Field_33242_53) ) (!  (=> (select (|PolymorphicMapType_33731_33242_53#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) null (WandMaskField_22317 pm_f_17@@2))) o2_17@@5 f_18@@11) (= (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@11) o2_17@@5 f_18@@11) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@10) o2_17@@5 f_18@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@@10) o2_17@@5 f_18@@11))
)) (forall ((o2_17@@6 T@Ref) (f_18@@12 T@Field_33255_33256) ) (!  (=> (select (|PolymorphicMapType_33731_33242_33256#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) null (WandMaskField_22317 pm_f_17@@2))) o2_17@@6 f_18@@12) (= (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@11) o2_17@@6 f_18@@12) (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| ExhaleHeap@@10) o2_17@@6 f_18@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| ExhaleHeap@@10) o2_17@@6 f_18@@12))
))) (forall ((o2_17@@7 T@Ref) (f_18@@13 T@Field_43387_6609) ) (!  (=> (select (|PolymorphicMapType_33731_33242_6609#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) null (WandMaskField_22317 pm_f_17@@2))) o2_17@@7 f_18@@13) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@11) o2_17@@7 f_18@@13) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@@10) o2_17@@7 f_18@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@@10) o2_17@@7 f_18@@13))
))) (forall ((o2_17@@8 T@Ref) (f_18@@14 T@Field_43433_43434) ) (!  (=> (select (|PolymorphicMapType_33731_33242_43434#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) null (WandMaskField_22317 pm_f_17@@2))) o2_17@@8 f_18@@14) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@11) o2_17@@8 f_18@@14) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@@10) o2_17@@8 f_18@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@@10) o2_17@@8 f_18@@14))
))) (forall ((o2_17@@9 T@Ref) (f_18@@15 T@Field_22317_101427) ) (!  (=> (select (|PolymorphicMapType_33731_33242_101427#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) null (WandMaskField_22317 pm_f_17@@2))) o2_17@@9 f_18@@15) (= (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@11) o2_17@@9 f_18@@15) (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| ExhaleHeap@@10) o2_17@@9 f_18@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| ExhaleHeap@@10) o2_17@@9 f_18@@15))
))) (forall ((o2_17@@10 T@Ref) (f_18@@16 T@Field_22317_101560) ) (!  (=> (select (|PolymorphicMapType_33731_33242_102942#PolymorphicMapType_33731| (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) null (WandMaskField_22317 pm_f_17@@2))) o2_17@@10 f_18@@16) (= (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@11) o2_17@@10 f_18@@16) (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@10) o2_17@@10 f_18@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@@10) o2_17@@10 f_18@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_22317_103469 pm_f_17@@2))
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
(assert (forall ((e_1@@3 T@IEdgesDomainType) (i@@10 Int) (node@@3 T@Ref) (j@@8 Int) ) (!  (=> (not (= i@@10 j@@8)) (= (edge_lookup e_1@@3 j@@8) (edge_lookup (insert_edge e_1@@3 i@@10 node@@3) j@@8)))
 :qid |stdinbpl.892:15|
 :skolemid |119|
 :pattern ( (edge_lookup e_1@@3 j@@8) (insert_edge e_1@@3 i@@10 node@@3))
 :pattern ( (edge_lookup e_1@@3 j@@8) (edge_lookup (insert_edge e_1@@3 i@@10 node@@3) j@@8))
 :pattern ( (edge_lookup (insert_edge e_1@@3 i@@10 node@@3) j@@8))
)))
(assert (forall ((node_map_1@@3 T@INodeMapDomainType) (key_node_1@@1 T@Ref) (val_node_1@@1 T@Ref) (node@@4 T@Ref) ) (!  (=> (not (= node@@4 key_node_1@@1)) (= (lookup_1 node_map_1@@3 node@@4) (lookup_1 (insert_1 node_map_1@@3 key_node_1@@1 val_node_1@@1) node@@4)))
 :qid |stdinbpl.950:15|
 :skolemid |125|
 :pattern ( (lookup_1 node_map_1@@3 node@@4) (insert_1 node_map_1@@3 key_node_1@@1 val_node_1@@1))
 :pattern ( (lookup_1 node_map_1@@3 node@@4) (lookup_1 (insert_1 node_map_1@@3 key_node_1@@1 val_node_1@@1) node@@4))
 :pattern ( (lookup_1 (insert_1 node_map_1@@3 key_node_1@@1 val_node_1@@1) node@@4))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_33182) (o_36 T@Ref) (f_29 T@Field_22317_101427) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@12) (store (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@12) o_36 f_29 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@12) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@12) (store (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@12) o_36 f_29 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_33182) (o_36@@0 T@Ref) (f_29@@0 T@Field_22317_101560) (v@@5 T@PolymorphicMapType_33731) ) (! (succHeap Heap@@13 (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@13) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@13) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@13) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@13) (store (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@13) o_36@@0 f_29@@0 v@@5) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@13) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@13) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@13) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@13) (store (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@13) o_36@@0 f_29@@0 v@@5) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_33182) (o_36@@1 T@Ref) (f_29@@1 T@Field_43433_43434) (v@@6 T@IEdgesDomainType) ) (! (succHeap Heap@@14 (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@14) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@14) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@14) (store (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@14) o_36@@1 f_29@@1 v@@6) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@14) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@14) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@14) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@14) (store (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@14) o_36@@1 f_29@@1 v@@6) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@14) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_33182) (o_36@@2 T@Ref) (f_29@@2 T@Field_43387_6609) (v@@7 Int) ) (! (succHeap Heap@@15 (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@15) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@15) (store (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@15) o_36@@2 f_29@@2 v@@7) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@15) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@15) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@15) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@15) (store (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@15) o_36@@2 f_29@@2 v@@7) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@15) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@15) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_33182) (o_36@@3 T@Ref) (f_29@@3 T@Field_33255_33256) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@16) (store (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@16) o_36@@3 f_29@@3 v@@8) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@16) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@16) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@16) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@16) (store (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@16) o_36@@3 f_29@@3 v@@8) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@16) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@16) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@16) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_33182) (o_36@@4 T@Ref) (f_29@@4 T@Field_33242_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_33182 (store (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@17) o_36@@4 f_29@@4 v@@9) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_33182 (store (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@17) o_36@@4 f_29@@4 v@@9) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@17) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@17)))
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
(assert (forall ((o_36@@5 T@Ref) (f_50 T@Field_33255_33256) (Heap@@18 T@PolymorphicMapType_33182) ) (!  (=> (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@18) o_36@@5 $allocated) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@18) (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@18) o_36@@5 f_50) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@18) o_36@@5 f_50))
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
(declare-fun res_copy_nodes () (Array T@Ref Bool))
(declare-fun PostHeap@0 () T@PolymorphicMapType_33182)
(declare-fun QPMask@38 () T@PolymorphicMapType_33203)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) T@Ref)
(declare-fun QPMask@37 () T@PolymorphicMapType_33203)
(declare-fun res_node_map () T@INodeMapDomainType)
(declare-fun setOfRef () (Array T@Ref Bool))
(declare-fun node_map_image () (Array T@Ref Bool))
(declare-fun x_52 () T@Ref)
(declare-fun i_9 () Int)
(declare-fun Heap@@19 () T@PolymorphicMapType_33182)
(declare-fun x_18 () T@Ref)
(declare-fun QPMask@3 () T@PolymorphicMapType_33203)
(declare-fun rd () Real)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) T@Ref)
(declare-fun QPMask@36 () T@PolymorphicMapType_33203)
(declare-fun x_15 () T@Ref)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) T@Ref)
(declare-fun nodeCopy () T@Ref)
(declare-fun res_copy_nodes@1 () (Array T@Ref Bool))
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_33182)
(declare-fun QPMask@34 () T@PolymorphicMapType_33203)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) T@Ref)
(declare-fun QPMask@33 () T@PolymorphicMapType_33203)
(declare-fun res_node_map@1 () T@INodeMapDomainType)
(declare-fun r_45 () T@Ref)
(declare-fun j_21 () Int)
(declare-fun S@1 () (Array Int Bool))
(declare-fun this () T@Ref)
(declare-fun j_25 () Int)
(declare-fun x_31 () T@Ref)
(declare-fun qpRange18 (T@Ref) Bool)
(declare-fun invRecv18 (T@Ref) T@Ref)
(declare-fun QPMask@32 () T@PolymorphicMapType_33203)
(declare-fun x_53 () T@Ref)
(declare-fun qpRange17 (T@Ref) Bool)
(declare-fun invRecv17 (T@Ref) T@Ref)
(declare-fun QPMask@7 () T@PolymorphicMapType_33203)
(declare-fun freshObj@0 () T@Ref)
(declare-fun res_node_map@3 () T@INodeMapDomainType)
(declare-fun r_20_1 () T@Ref)
(declare-fun res_copy_nodes@3 () (Array T@Ref Bool))
(declare-fun neverTriggered35 (T@Ref) Bool)
(declare-fun Heap@3 () T@PolymorphicMapType_33182)
(declare-fun QPMask@30 () T@PolymorphicMapType_33203)
(declare-fun QPMask@29 () T@PolymorphicMapType_33203)
(declare-fun qpRange35 (T@Ref) Bool)
(declare-fun invRecv35 (T@Ref) T@Ref)
(declare-fun neverTriggered36 (T@Ref) Bool)
(declare-fun QPMask@31 () T@PolymorphicMapType_33203)
(declare-fun r_18_2 () T@Ref)
(declare-fun j_12_2 () Int)
(declare-fun S@2 () (Array Int Bool))
(declare-fun j_10_2 () Int)
(declare-fun x_78 () T@Ref)
(declare-fun dummyFunction_22318 (T@IEdgesDomainType) Bool)
(declare-fun neverTriggered34 (T@Ref) Bool)
(declare-fun QPMask@28 () T@PolymorphicMapType_33203)
(declare-fun qpRange34 (T@Ref) Bool)
(declare-fun invRecv34 (T@Ref) T@Ref)
(declare-fun x_75 () T@Ref)
(declare-fun neverTriggered27 (T@Ref) Bool)
(declare-fun QPMask@22 () T@PolymorphicMapType_33203)
(declare-fun QPMask@13 () T@PolymorphicMapType_33203)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) T@Ref)
(declare-fun neverTriggered28 (T@Ref) Bool)
(declare-fun QPMask@23 () T@PolymorphicMapType_33203)
(declare-fun qpRange28 (T@Ref) Bool)
(declare-fun invRecv28 (T@Ref) T@Ref)
(declare-fun ExhaleHeap@2 () T@PolymorphicMapType_33182)
(declare-fun newNode@0 () T@Ref)
(declare-fun arg_rd@0 () Real)
(declare-fun QPMask@24 () T@PolymorphicMapType_33203)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) T@Ref)
(declare-fun QPMask@25 () T@PolymorphicMapType_33203)
(declare-fun qpRange30 (T@Ref) Bool)
(declare-fun invRecv30 (T@Ref) T@Ref)
(declare-fun QPMask@26 () T@PolymorphicMapType_33203)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) T@Ref)
(declare-fun QPMask@27 () T@PolymorphicMapType_33203)
(declare-fun qpRange32 (T@Ref) Bool)
(declare-fun invRecv32 (T@Ref) T@Ref)
(declare-fun i_6_2@1 () Int)
(declare-fun dummyFunction_6609 (Int) Bool)
(declare-fun neverTriggered33 (T@Ref) Bool)
(declare-fun qpRange33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref) T@Ref)
(declare-fun x_62 () T@Ref)
(declare-fun x_60 () T@Ref)
(declare-fun i$0 () Int)
(declare-fun QPMask@8 () T@PolymorphicMapType_33203)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) T@Ref)
(declare-fun QPMask@9 () T@PolymorphicMapType_33203)
(declare-fun qpRange22 (T@Ref) Bool)
(declare-fun invRecv22 (T@Ref) T@Ref)
(declare-fun QPMask@10 () T@PolymorphicMapType_33203)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) T@Ref)
(declare-fun QPMask@11 () T@PolymorphicMapType_33203)
(declare-fun qpRange24 (T@Ref) Bool)
(declare-fun invRecv24 (T@Ref) T@Ref)
(declare-fun newNode () T@Ref)
(declare-fun nodeForId () T@Ref)
(declare-fun nodeForId@0 () T@Ref)
(declare-fun QPMask@12 () T@PolymorphicMapType_33203)
(declare-fun neverTriggered25 (T@Ref) Bool)
(declare-fun qpRange25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) T@Ref)
(declare-fun neverTriggered26 (T@Ref) Bool)
(declare-fun qpRange26 (T@Ref) Bool)
(declare-fun invRecv26 (T@Ref) T@Ref)
(declare-fun res_node_map@2 () T@INodeMapDomainType)
(declare-fun x_36_1 () T@Ref)
(declare-fun res_copy_nodes@2 () (Array T@Ref Bool))
(declare-fun neverTriggered11 (T@Ref) Bool)
(declare-fun Heap@2 () T@PolymorphicMapType_33182)
(declare-fun QPMask@20 () T@PolymorphicMapType_33203)
(declare-fun QPMask@19 () T@PolymorphicMapType_33203)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) T@Ref)
(declare-fun neverTriggered12 (T@Ref) Bool)
(declare-fun QPMask@21 () T@PolymorphicMapType_33203)
(declare-fun x_34_1 () T@Ref)
(declare-fun i_4_1 () Int)
(declare-fun x_32_1 () T@Ref)
(declare-fun neverTriggered10 (T@Ref) Bool)
(declare-fun QPMask@18 () T@PolymorphicMapType_33203)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) T@Ref)
(declare-fun x_29_1 () T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_33203)
(declare-fun nodeCopy@1 () T@Ref)
(declare-fun neverTriggered9 (T@Ref) Bool)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) T@Ref)
(declare-fun QPMask@14 () T@PolymorphicMapType_33203)
(declare-fun qpRange37 (T@Ref) Bool)
(declare-fun invRecv37 (T@Ref) T@Ref)
(declare-fun QPMask@15 () T@PolymorphicMapType_33203)
(declare-fun qpRange38 (T@Ref) Bool)
(declare-fun invRecv38 (T@Ref) T@Ref)
(declare-fun QPMask@16 () T@PolymorphicMapType_33203)
(declare-fun qpRange39 (T@Ref) Bool)
(declare-fun invRecv39 (T@Ref) T@Ref)
(declare-fun QPMask@17 () T@PolymorphicMapType_33203)
(declare-fun qpRange40 (T@Ref) Bool)
(declare-fun invRecv40 (T@Ref) T@Ref)
(declare-fun res_node_map@0 () T@INodeMapDomainType)
(declare-fun res_copy_nodes@0 () (Array T@Ref Bool))
(declare-fun neverTriggered15 (T@Ref) Bool)
(declare-fun Heap@1 () T@PolymorphicMapType_33182)
(declare-fun QPMask@6 () T@PolymorphicMapType_33203)
(declare-fun QPMask@5 () T@PolymorphicMapType_33203)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) T@Ref)
(declare-fun neverTriggered16 (T@Ref) Bool)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) T@Ref)
(declare-fun node_map_1@@4 () T@INodeMapDomainType)
(declare-fun nodeCopy@0 () T@Ref)
(declare-fun r_2 () T@Ref)
(declare-fun r_1 () T@Ref)
(declare-fun j_2_2 () Int)
(declare-fun S@0 () (Array Int Bool))
(declare-fun j@@9 () Int)
(declare-fun x_44_1 () T@Ref)
(declare-fun neverTriggered14 (T@Ref) Bool)
(declare-fun QPMask@4 () T@PolymorphicMapType_33203)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) T@Ref)
(declare-fun x_41 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_33182)
(declare-fun Mask@0 () T@PolymorphicMapType_33203)
(declare-fun Mask@1 () T@PolymorphicMapType_33203)
(declare-fun neverTriggered13 (T@Ref) Bool)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) T@Ref)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(declare-fun QPMask@2 () T@PolymorphicMapType_33203)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_33203)
(declare-fun x_27 () T@Ref)
(declare-fun i_4 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_33203)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id graph_copy_rec)
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
 (=> (= (ControlFlow 0 0) 272) (let ((anon162_Else_correct  (=> (= (ControlFlow 0 245) (- 0 244)) (forall ((x_27_1 T@Ref) (x_27_2 T@Ref) ) (!  (=> (and (and (and (and (not (= x_27_1 x_27_2)) (select res_copy_nodes x_27_1)) (select res_copy_nodes x_27_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_27_1 x_27_2)))
 :qid |stdinbpl.1484:15|
 :skolemid |182|
)))))
(let ((anon162_Then_correct true))
(let ((anon161_Else_correct  (and (=> (= (ControlFlow 0 246) (- 0 247)) (forall ((x_25_2 T@Ref) (x_25_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_25_2 x_25_3)) (select res_copy_nodes x_25_2)) (select res_copy_nodes x_25_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_25_2 x_25_3)))
 :qid |stdinbpl.1444:15|
 :skolemid |176|
))) (=> (forall ((x_25_2@@0 T@Ref) (x_25_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_25_2@@0 x_25_3@@0)) (select res_copy_nodes x_25_2@@0)) (select res_copy_nodes x_25_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_25_2@@0 x_25_3@@0)))
 :qid |stdinbpl.1444:15|
 :skolemid |176|
)) (=> (and (and (forall ((x_25_2@@1 T@Ref) ) (!  (=> (and (select res_copy_nodes x_25_2@@1) (< NoPerm FullPerm)) (and (qpRange7 x_25_2@@1) (= (invRecv7 x_25_2@@1) x_25_2@@1)))
 :qid |stdinbpl.1450:22|
 :skolemid |177|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| PostHeap@0) x_25_2@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@38) x_25_2@@1 val))
 :pattern ( (select res_copy_nodes x_25_2@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select res_copy_nodes (invRecv7 o_9)) (< NoPerm FullPerm)) (qpRange7 o_9)) (= (invRecv7 o_9) o_9))
 :qid |stdinbpl.1454:22|
 :skolemid |178|
 :pattern ( (invRecv7 o_9))
))) (and (forall ((x_25_2@@2 T@Ref) ) (!  (=> (select res_copy_nodes x_25_2@@2) (not (= x_25_2@@2 null)))
 :qid |stdinbpl.1460:22|
 :skolemid |179|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| PostHeap@0) x_25_2@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@38) x_25_2@@2 val))
 :pattern ( (select res_copy_nodes x_25_2@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select res_copy_nodes (invRecv7 o_9@@0)) (< NoPerm FullPerm)) (qpRange7 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv7 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@38) o_9@@0 val) (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@37) o_9@@0 val) FullPerm)))) (=> (not (and (and (select res_copy_nodes (invRecv7 o_9@@0)) (< NoPerm FullPerm)) (qpRange7 o_9@@0))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@38) o_9@@0 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@37) o_9@@0 val))))
 :qid |stdinbpl.1466:22|
 :skolemid |180|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@38) o_9@@0 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@37) o_9@@1 f_5) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@38) o_9@@1 f_5)))
 :qid |stdinbpl.1470:29|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@37) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@38) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@37) o_9@@2 f_5@@0) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@38) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1470:29|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@37) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@38) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_43387_6609) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@37) o_9@@3 f_5@@1) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@38) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1470:29|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@37) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@38) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@37) o_9@@4 f_5@@2) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@38) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1470:29|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@37) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@38) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@37) o_9@@5 f_5@@3) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@38) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1470:29|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@37) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@38) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@37) o_9@@6 f_5@@4) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@38) o_9@@6 f_5@@4)))
 :qid |stdinbpl.1470:29|
 :skolemid |181|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@37) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@38) o_9@@6 f_5@@4))
))) (and (state PostHeap@0 QPMask@38) (state PostHeap@0 QPMask@38))) (and (=> (= (ControlFlow 0 246) 243) anon162_Then_correct) (=> (= (ControlFlow 0 246) 245) anon162_Else_correct))))))))
(let ((anon161_Then_correct true))
(let ((anon160_Else_correct  (=> (and (forall ((x_23_2 T@Ref) ) (!  (=> (|Seq#Contains_22310| (map_domain res_node_map) x_23_2) (select res_copy_nodes (lookup_1 res_node_map x_23_2)))
 :qid |stdinbpl.1432:20|
 :skolemid |175|
 :pattern ( (|Seq#ContainsTrigger_22306| (map_domain res_node_map) x_23_2))
 :pattern ( (|Seq#Contains_22310| (map_domain res_node_map) x_23_2))
 :pattern ( (select res_copy_nodes (lookup_1 res_node_map x_23_2)))
)) (state PostHeap@0 QPMask@37)) (and (=> (= (ControlFlow 0 248) 242) anon161_Then_correct) (=> (= (ControlFlow 0 248) 246) anon161_Else_correct)))))
(let ((anon160_Then_correct true))
(let ((anon157_Else_correct  (=> (and (and (forall ((x_21_1 T@Ref) (i_3_2 Int) ) (!  (=> (and (select setOfRef x_21_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_21_1 edges)) i_3_2)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_21_1 edges) i_3_2)))
 :qid |stdinbpl.1420:20|
 :skolemid |174|
 :pattern ( (select setOfRef x_21_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_21_1 edges)) i_3_2))
 :pattern ( (select setOfRef x_21_1) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_21_1 edges) i_3_2))
 :pattern ( (select setOfRef x_21_1) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_21_1 edges) i_3_2)))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_21_1 edges)) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_21_1 edges) i_3_2))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_21_1 edges)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_21_1 edges) i_3_2)))
 :pattern ( (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_21_1 edges)) i_3_2))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_21_1 edges) i_3_2)))
)) (state PostHeap@0 QPMask@37)) (and (|Set#Equal_22345| res_copy_nodes (|Set#Union_22345| res_copy_nodes node_map_image)) (state PostHeap@0 QPMask@37))) (and (=> (= (ControlFlow 0 249) 241) anon160_Then_correct) (=> (= (ControlFlow 0 249) 248) anon160_Else_correct)))))
(let ((anon34_correct true))
(let ((anon159_Else_correct  (=> (and (not (and (select setOfRef x_52) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_52 edges)) i_9))) (= (ControlFlow 0 237) 234)) anon34_correct)))
(let ((anon159_Then_correct  (=> (and (select setOfRef x_52) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_52 edges)) i_9)) (and (=> (= (ControlFlow 0 235) (- 0 236)) (HasDirectPerm_22317_22318 QPMask@37 x_52 edges)) (=> (HasDirectPerm_22317_22318 QPMask@37 x_52 edges) (=> (= (ControlFlow 0 235) 234) anon34_correct))))))
(let ((anon158_Else_correct  (=> (not (select setOfRef x_52)) (and (=> (= (ControlFlow 0 240) 235) anon159_Then_correct) (=> (= (ControlFlow 0 240) 237) anon159_Else_correct)))))
(let ((anon158_Then_correct  (=> (select setOfRef x_52) (and (=> (= (ControlFlow 0 238) (- 0 239)) (HasDirectPerm_22317_22318 QPMask@37 x_52 edges)) (=> (HasDirectPerm_22317_22318 QPMask@37 x_52 edges) (and (=> (= (ControlFlow 0 238) 235) anon159_Then_correct) (=> (= (ControlFlow 0 238) 237) anon159_Else_correct)))))))
(let ((anon155_Else_correct  (=> (and (forall ((x_19_1 T@Ref) ) (!  (=> (select setOfRef x_19_1) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_19_1 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_19_1 edges)))
 :qid |stdinbpl.1402:20|
 :skolemid |173|
 :pattern ( (select setOfRef x_19_1))
)) (state PostHeap@0 QPMask@37)) (and (and (=> (= (ControlFlow 0 250) 249) anon157_Else_correct) (=> (= (ControlFlow 0 250) 238) anon158_Then_correct)) (=> (= (ControlFlow 0 250) 240) anon158_Else_correct)))))
(let ((anon28_correct true))
(let ((anon156_Else_correct  (=> (and (not (select setOfRef x_18)) (= (ControlFlow 0 233) 229)) anon28_correct)))
(let ((anon156_Then_correct  (=> (select setOfRef x_18) (and (=> (= (ControlFlow 0 230) (- 0 232)) (HasDirectPerm_22317_22318 QPMask@37 x_18 edges)) (=> (HasDirectPerm_22317_22318 QPMask@37 x_18 edges) (and (=> (= (ControlFlow 0 230) (- 0 231)) (HasDirectPerm_22317_22318 QPMask@3 x_18 edges)) (=> (HasDirectPerm_22317_22318 QPMask@3 x_18 edges) (=> (= (ControlFlow 0 230) 229) anon28_correct))))))))
(let ((anon154_Else_correct  (and (=> (= (ControlFlow 0 251) (- 0 253)) (forall ((x_17 T@Ref) (x_17_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_17 x_17_1)) (select setOfRef x_17)) (select setOfRef x_17_1)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_17 x_17_1)))
 :qid |stdinbpl.1352:15|
 :skolemid |166|
))) (=> (forall ((x_17@@0 T@Ref) (x_17_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_17@@0 x_17_1@@0)) (select setOfRef x_17@@0)) (select setOfRef x_17_1@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_17@@0 x_17_1@@0)))
 :qid |stdinbpl.1352:15|
 :skolemid |166|
)) (=> (and (forall ((x_17@@1 T@Ref) ) (!  (=> (and (select setOfRef x_17@@1) (< NoPerm rd)) (and (qpRange6 x_17@@1) (= (invRecv6 x_17@@1) x_17@@1)))
 :qid |stdinbpl.1358:22|
 :skolemid |167|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_17@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@37) x_17@@1 edges))
 :pattern ( (select setOfRef x_17@@1))
)) (forall ((o_9@@7 T@Ref) ) (!  (=> (and (and (select setOfRef (invRecv6 o_9@@7)) (< NoPerm rd)) (qpRange6 o_9@@7)) (= (invRecv6 o_9@@7) o_9@@7))
 :qid |stdinbpl.1362:22|
 :skolemid |168|
 :pattern ( (invRecv6 o_9@@7))
))) (and (=> (= (ControlFlow 0 251) (- 0 252)) (forall ((x_17@@2 T@Ref) ) (!  (=> (select setOfRef x_17@@2) (>= rd NoPerm))
 :qid |stdinbpl.1368:15|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_17@@2 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@37) x_17@@2 edges))
 :pattern ( (select setOfRef x_17@@2))
))) (=> (forall ((x_17@@3 T@Ref) ) (!  (=> (select setOfRef x_17@@3) (>= rd NoPerm))
 :qid |stdinbpl.1368:15|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_17@@3 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@37) x_17@@3 edges))
 :pattern ( (select setOfRef x_17@@3))
)) (=> (and (forall ((x_17@@4 T@Ref) ) (!  (=> (and (select setOfRef x_17@@4) (> rd NoPerm)) (not (= x_17@@4 null)))
 :qid |stdinbpl.1374:22|
 :skolemid |170|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| PostHeap@0) x_17@@4 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@37) x_17@@4 edges))
 :pattern ( (select setOfRef x_17@@4))
)) (forall ((o_9@@8 T@Ref) ) (!  (and (=> (and (and (select setOfRef (invRecv6 o_9@@8)) (< NoPerm rd)) (qpRange6 o_9@@8)) (and (=> (< NoPerm rd) (= (invRecv6 o_9@@8) o_9@@8)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@37) o_9@@8 edges) (+ (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@36) o_9@@8 edges) rd)))) (=> (not (and (and (select setOfRef (invRecv6 o_9@@8)) (< NoPerm rd)) (qpRange6 o_9@@8))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@37) o_9@@8 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@36) o_9@@8 edges))))
 :qid |stdinbpl.1380:22|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@37) o_9@@8 edges))
))) (=> (and (and (and (and (and (and (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@36) o_9@@9 f_5@@5) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@37) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1384:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@36) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@37) o_9@@9 f_5@@5))
)) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@36) o_9@@10 f_5@@6) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@37) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1384:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@36) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@37) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@36) o_9@@11 f_5@@7) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@37) o_9@@11 f_5@@7)))
 :qid |stdinbpl.1384:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@36) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@37) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_43433_43434) ) (!  (=> (not (= f_5@@8 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@36) o_9@@12 f_5@@8) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@37) o_9@@12 f_5@@8)))
 :qid |stdinbpl.1384:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@36) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@37) o_9@@12 f_5@@8))
))) (forall ((o_9@@13 T@Ref) (f_5@@9 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@36) o_9@@13 f_5@@9) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@37) o_9@@13 f_5@@9)))
 :qid |stdinbpl.1384:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@36) o_9@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@37) o_9@@13 f_5@@9))
))) (forall ((o_9@@14 T@Ref) (f_5@@10 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@36) o_9@@14 f_5@@10) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@37) o_9@@14 f_5@@10)))
 :qid |stdinbpl.1384:29|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@36) o_9@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@37) o_9@@14 f_5@@10))
))) (and (state PostHeap@0 QPMask@37) (state PostHeap@0 QPMask@37))) (and (and (=> (= (ControlFlow 0 251) 250) anon155_Else_correct) (=> (= (ControlFlow 0 251) 230) anon156_Then_correct)) (=> (= (ControlFlow 0 251) 233) anon156_Else_correct)))))))))))
(let ((anon154_Then_correct true))
(let ((anon152_Else_correct  (=> (and (forall ((x_15_2 T@Ref) ) (!  (=> (select setOfRef x_15_2) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| PostHeap@0) x_15_2 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_15_2 val)))
 :qid |stdinbpl.1340:20|
 :skolemid |165|
 :pattern ( (select setOfRef x_15_2))
)) (state PostHeap@0 QPMask@36)) (and (=> (= (ControlFlow 0 254) 228) anon154_Then_correct) (=> (= (ControlFlow 0 254) 251) anon154_Else_correct)))))
(let ((anon22_correct true))
(let ((anon153_Else_correct  (=> (and (not (select setOfRef x_15)) (= (ControlFlow 0 227) 223)) anon22_correct)))
(let ((anon153_Then_correct  (=> (select setOfRef x_15) (and (=> (= (ControlFlow 0 224) (- 0 226)) (HasDirectPerm_22315_6609 QPMask@36 x_15 val)) (=> (HasDirectPerm_22315_6609 QPMask@36 x_15 val) (and (=> (= (ControlFlow 0 224) (- 0 225)) (HasDirectPerm_22315_6609 QPMask@3 x_15 val)) (=> (HasDirectPerm_22315_6609 QPMask@3 x_15 val) (=> (= (ControlFlow 0 224) 223) anon22_correct))))))))
(let ((anon151_Else_correct  (and (=> (= (ControlFlow 0 255) (- 0 257)) (forall ((x_13_2 T@Ref) (x_13_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_13_2 x_13_3)) (select setOfRef x_13_2)) (select setOfRef x_13_3)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_13_2 x_13_3)))
 :qid |stdinbpl.1290:15|
 :skolemid |158|
))) (=> (forall ((x_13_2@@0 T@Ref) (x_13_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_13_2@@0 x_13_3@@0)) (select setOfRef x_13_2@@0)) (select setOfRef x_13_3@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_13_2@@0 x_13_3@@0)))
 :qid |stdinbpl.1290:15|
 :skolemid |158|
)) (=> (and (forall ((x_13_2@@1 T@Ref) ) (!  (=> (and (select setOfRef x_13_2@@1) (< NoPerm rd)) (and (qpRange5 x_13_2@@1) (= (invRecv5 x_13_2@@1) x_13_2@@1)))
 :qid |stdinbpl.1296:22|
 :skolemid |159|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| PostHeap@0) x_13_2@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@36) x_13_2@@1 val))
 :pattern ( (select setOfRef x_13_2@@1))
)) (forall ((o_9@@15 T@Ref) ) (!  (=> (and (and (select setOfRef (invRecv5 o_9@@15)) (< NoPerm rd)) (qpRange5 o_9@@15)) (= (invRecv5 o_9@@15) o_9@@15))
 :qid |stdinbpl.1300:22|
 :skolemid |160|
 :pattern ( (invRecv5 o_9@@15))
))) (and (=> (= (ControlFlow 0 255) (- 0 256)) (forall ((x_13_2@@2 T@Ref) ) (!  (=> (select setOfRef x_13_2@@2) (>= rd NoPerm))
 :qid |stdinbpl.1306:15|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| PostHeap@0) x_13_2@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@36) x_13_2@@2 val))
 :pattern ( (select setOfRef x_13_2@@2))
))) (=> (forall ((x_13_2@@3 T@Ref) ) (!  (=> (select setOfRef x_13_2@@3) (>= rd NoPerm))
 :qid |stdinbpl.1306:15|
 :skolemid |161|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| PostHeap@0) x_13_2@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@36) x_13_2@@3 val))
 :pattern ( (select setOfRef x_13_2@@3))
)) (=> (and (forall ((x_13_2@@4 T@Ref) ) (!  (=> (and (select setOfRef x_13_2@@4) (> rd NoPerm)) (not (= x_13_2@@4 null)))
 :qid |stdinbpl.1312:22|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| PostHeap@0) x_13_2@@4 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@36) x_13_2@@4 val))
 :pattern ( (select setOfRef x_13_2@@4))
)) (forall ((o_9@@16 T@Ref) ) (!  (and (=> (and (and (select setOfRef (invRecv5 o_9@@16)) (< NoPerm rd)) (qpRange5 o_9@@16)) (and (=> (< NoPerm rd) (= (invRecv5 o_9@@16) o_9@@16)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@36) o_9@@16 val) (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_9@@16 val) rd)))) (=> (not (and (and (select setOfRef (invRecv5 o_9@@16)) (< NoPerm rd)) (qpRange5 o_9@@16))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@36) o_9@@16 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_9@@16 val))))
 :qid |stdinbpl.1318:22|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@36) o_9@@16 val))
))) (=> (and (and (and (and (and (and (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| ZeroMask) o_9@@17 f_5@@11) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@36) o_9@@17 f_5@@11)))
 :qid |stdinbpl.1322:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| ZeroMask) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@36) o_9@@17 f_5@@11))
)) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| ZeroMask) o_9@@18 f_5@@12) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@36) o_9@@18 f_5@@12)))
 :qid |stdinbpl.1322:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| ZeroMask) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@36) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_43387_6609) ) (!  (=> (not (= f_5@@13 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_9@@19 f_5@@13) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@36) o_9@@19 f_5@@13)))
 :qid |stdinbpl.1322:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@36) o_9@@19 f_5@@13))
))) (forall ((o_9@@20 T@Ref) (f_5@@14 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| ZeroMask) o_9@@20 f_5@@14) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@36) o_9@@20 f_5@@14)))
 :qid |stdinbpl.1322:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| ZeroMask) o_9@@20 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@36) o_9@@20 f_5@@14))
))) (forall ((o_9@@21 T@Ref) (f_5@@15 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| ZeroMask) o_9@@21 f_5@@15) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@36) o_9@@21 f_5@@15)))
 :qid |stdinbpl.1322:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| ZeroMask) o_9@@21 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@36) o_9@@21 f_5@@15))
))) (forall ((o_9@@22 T@Ref) (f_5@@16 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| ZeroMask) o_9@@22 f_5@@16) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@36) o_9@@22 f_5@@16)))
 :qid |stdinbpl.1322:29|
 :skolemid |164|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| ZeroMask) o_9@@22 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@36) o_9@@22 f_5@@16))
))) (and (state PostHeap@0 QPMask@36) (state PostHeap@0 QPMask@36))) (and (and (=> (= (ControlFlow 0 255) 254) anon152_Else_correct) (=> (= (ControlFlow 0 255) 224) anon153_Then_correct)) (=> (= (ControlFlow 0 255) 227) anon153_Else_correct)))))))))))
(let ((anon151_Then_correct true))
(let ((anon150_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (not (= nodeCopy null))) (=> (and (and (select res_copy_nodes nodeCopy) (state PostHeap@0 ZeroMask)) (and (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef res_copy_nodes)) 0) (state PostHeap@0 ZeroMask))) (and (=> (= (ControlFlow 0 258) 222) anon151_Then_correct) (=> (= (ControlFlow 0 258) 255) anon151_Else_correct))))))
(let ((anon188_Else_correct  (=> (= (ControlFlow 0 183) (- 0 182)) (forall ((r_13 T@Ref) (r_13_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_13 r_13_1)) (select res_copy_nodes@1 r_13)) (select res_copy_nodes@1 r_13_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_13 r_13_1)))
 :qid |stdinbpl.2054:23|
 :skolemid |244|
)))))
(let ((anon188_Then_correct true))
(let ((anon187_Else_correct  (and (=> (= (ControlFlow 0 184) (- 0 185)) (forall ((r_11_1 T@Ref) (r_11_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_11_1 r_11_2)) (select res_copy_nodes@1 r_11_1)) (select res_copy_nodes@1 r_11_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_11_1 r_11_2)))
 :qid |stdinbpl.2014:23|
 :skolemid |238|
))) (=> (forall ((r_11_1@@0 T@Ref) (r_11_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_11_1@@0 r_11_2@@0)) (select res_copy_nodes@1 r_11_1@@0)) (select res_copy_nodes@1 r_11_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_11_1@@0 r_11_2@@0)))
 :qid |stdinbpl.2014:23|
 :skolemid |238|
)) (=> (and (and (forall ((r_11_1@@1 T@Ref) ) (!  (=> (and (select res_copy_nodes@1 r_11_1@@1) (< NoPerm FullPerm)) (and (qpRange19 r_11_1@@1) (= (invRecv19 r_11_1@@1) r_11_1@@1)))
 :qid |stdinbpl.2020:30|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) r_11_1@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@34) r_11_1@@1 val))
 :pattern ( (select res_copy_nodes@1 r_11_1@@1))
)) (forall ((o_9@@23 T@Ref) ) (!  (=> (and (and (select res_copy_nodes@1 (invRecv19 o_9@@23)) (< NoPerm FullPerm)) (qpRange19 o_9@@23)) (= (invRecv19 o_9@@23) o_9@@23))
 :qid |stdinbpl.2024:30|
 :skolemid |240|
 :pattern ( (invRecv19 o_9@@23))
))) (and (forall ((r_11_1@@2 T@Ref) ) (!  (=> (select res_copy_nodes@1 r_11_1@@2) (not (= r_11_1@@2 null)))
 :qid |stdinbpl.2030:30|
 :skolemid |241|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) r_11_1@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@34) r_11_1@@2 val))
 :pattern ( (select res_copy_nodes@1 r_11_1@@2))
)) (forall ((o_9@@24 T@Ref) ) (!  (and (=> (and (and (select res_copy_nodes@1 (invRecv19 o_9@@24)) (< NoPerm FullPerm)) (qpRange19 o_9@@24)) (and (=> (< NoPerm FullPerm) (= (invRecv19 o_9@@24) o_9@@24)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@34) o_9@@24 val) (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@33) o_9@@24 val) FullPerm)))) (=> (not (and (and (select res_copy_nodes@1 (invRecv19 o_9@@24)) (< NoPerm FullPerm)) (qpRange19 o_9@@24))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@34) o_9@@24 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@33) o_9@@24 val))))
 :qid |stdinbpl.2036:30|
 :skolemid |242|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@34) o_9@@24 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@33) o_9@@25 f_5@@17) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@34) o_9@@25 f_5@@17)))
 :qid |stdinbpl.2040:37|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@33) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@34) o_9@@25 f_5@@17))
)) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@33) o_9@@26 f_5@@18) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@34) o_9@@26 f_5@@18)))
 :qid |stdinbpl.2040:37|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@33) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@34) o_9@@26 f_5@@18))
))) (forall ((o_9@@27 T@Ref) (f_5@@19 T@Field_43387_6609) ) (!  (=> (not (= f_5@@19 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@33) o_9@@27 f_5@@19) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@34) o_9@@27 f_5@@19)))
 :qid |stdinbpl.2040:37|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@33) o_9@@27 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@34) o_9@@27 f_5@@19))
))) (forall ((o_9@@28 T@Ref) (f_5@@20 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@33) o_9@@28 f_5@@20) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@34) o_9@@28 f_5@@20)))
 :qid |stdinbpl.2040:37|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@33) o_9@@28 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@34) o_9@@28 f_5@@20))
))) (forall ((o_9@@29 T@Ref) (f_5@@21 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@33) o_9@@29 f_5@@21) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@34) o_9@@29 f_5@@21)))
 :qid |stdinbpl.2040:37|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@33) o_9@@29 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@34) o_9@@29 f_5@@21))
))) (forall ((o_9@@30 T@Ref) (f_5@@22 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@33) o_9@@30 f_5@@22) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@34) o_9@@30 f_5@@22)))
 :qid |stdinbpl.2040:37|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@33) o_9@@30 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@34) o_9@@30 f_5@@22))
))) (and (state ExhaleHeap@0 QPMask@34) (state ExhaleHeap@0 QPMask@34))) (and (=> (= (ControlFlow 0 184) 181) anon188_Then_correct) (=> (= (ControlFlow 0 184) 183) anon188_Else_correct))))))))
(let ((anon187_Then_correct true))
(let ((anon186_Else_correct  (=> (and (forall ((r_9 T@Ref) ) (!  (=> (|Seq#Contains_22310| (map_domain res_node_map@1) r_9) (select res_copy_nodes@1 (lookup_1 res_node_map@1 r_9)))
 :qid |stdinbpl.2002:28|
 :skolemid |237|
 :pattern ( (|Seq#ContainsTrigger_22306| (map_domain res_node_map@1) r_9))
 :pattern ( (|Seq#Contains_22310| (map_domain res_node_map@1) r_9))
 :pattern ( (select res_copy_nodes@1 (lookup_1 res_node_map@1 r_9)))
)) (state ExhaleHeap@0 QPMask@33)) (and (=> (= (ControlFlow 0 186) 180) anon187_Then_correct) (=> (= (ControlFlow 0 186) 184) anon187_Else_correct)))))
(let ((anon186_Then_correct true))
(let ((anon183_Else_correct  (=> (and (forall ((r_7 T@Ref) (j_7_1 Int) ) (!  (=> (and (select setOfRef r_7) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_7 edges)) j_7_1)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_7 edges) j_7_1)))
 :qid |stdinbpl.1988:28|
 :skolemid |236|
 :pattern ( (select setOfRef r_7) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_7 edges)) j_7_1))
 :pattern ( (select setOfRef r_7) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_7 edges) j_7_1))
 :pattern ( (select setOfRef r_7) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_7 edges) j_7_1)))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_7 edges)) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_7 edges) j_7_1))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_7 edges)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_7 edges) j_7_1)))
 :pattern ( (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_7 edges)) j_7_1))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_7 edges) j_7_1)))
)) (state ExhaleHeap@0 QPMask@33)) (=> (and (and (|Set#Subset_22339| node_map_image res_copy_nodes@1) (state ExhaleHeap@0 QPMask@33)) (and (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef res_copy_nodes@1)) 0) (state ExhaleHeap@0 QPMask@33))) (and (=> (= (ControlFlow 0 187) 179) anon186_Then_correct) (=> (= (ControlFlow 0 187) 186) anon186_Else_correct))))))
(let ((anon86_correct true))
(let ((anon185_Else_correct  (=> (and (not (and (select setOfRef r_45) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_45 edges)) j_21))) (= (ControlFlow 0 175) 172)) anon86_correct)))
(let ((anon185_Then_correct  (=> (and (select setOfRef r_45) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_45 edges)) j_21)) (and (=> (= (ControlFlow 0 173) (- 0 174)) (HasDirectPerm_22317_22318 QPMask@33 r_45 edges)) (=> (HasDirectPerm_22317_22318 QPMask@33 r_45 edges) (=> (= (ControlFlow 0 173) 172) anon86_correct))))))
(let ((anon184_Else_correct  (=> (not (select setOfRef r_45)) (and (=> (= (ControlFlow 0 178) 173) anon185_Then_correct) (=> (= (ControlFlow 0 178) 175) anon185_Else_correct)))))
(let ((anon184_Then_correct  (=> (select setOfRef r_45) (and (=> (= (ControlFlow 0 176) (- 0 177)) (HasDirectPerm_22317_22318 QPMask@33 r_45 edges)) (=> (HasDirectPerm_22317_22318 QPMask@33 r_45 edges) (and (=> (= (ControlFlow 0 176) 173) anon185_Then_correct) (=> (= (ControlFlow 0 176) 175) anon185_Else_correct)))))))
(let ((anon181_Else_correct  (=> (and (forall ((j_5 Int) ) (!  (=> (select S@1 j_5) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) this edges) j_5)))
 :qid |stdinbpl.1970:28|
 :skolemid |235|
 :pattern ( (select S@1 j_5))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) this edges) j_5)))
)) (state ExhaleHeap@0 QPMask@33)) (and (and (=> (= (ControlFlow 0 188) 187) anon183_Else_correct) (=> (= (ControlFlow 0 188) 176) anon184_Then_correct)) (=> (= (ControlFlow 0 188) 178) anon184_Else_correct)))))
(let ((anon80_correct true))
(let ((anon182_Else_correct  (=> (and (not (select S@1 j_25)) (= (ControlFlow 0 171) 168)) anon80_correct)))
(let ((anon182_Then_correct  (=> (select S@1 j_25) (and (=> (= (ControlFlow 0 169) (- 0 170)) (HasDirectPerm_22317_22318 QPMask@33 this edges)) (=> (HasDirectPerm_22317_22318 QPMask@33 this edges) (=> (= (ControlFlow 0 169) 168) anon80_correct))))))
(let ((anon179_Else_correct  (=> (and (forall ((x_53_1 T@Ref) ) (!  (=> (select setOfRef x_53_1) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_53_1 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_53_1 edges)))
 :qid |stdinbpl.1956:28|
 :skolemid |234|
 :pattern ( (select setOfRef x_53_1))
)) (state ExhaleHeap@0 QPMask@33)) (and (and (=> (= (ControlFlow 0 189) 188) anon181_Else_correct) (=> (= (ControlFlow 0 189) 169) anon182_Then_correct)) (=> (= (ControlFlow 0 189) 171) anon182_Else_correct)))))
(let ((anon76_correct true))
(let ((anon180_Else_correct  (=> (and (not (select setOfRef x_31)) (= (ControlFlow 0 167) 163)) anon76_correct)))
(let ((anon180_Then_correct  (=> (select setOfRef x_31) (and (=> (= (ControlFlow 0 164) (- 0 166)) (HasDirectPerm_22317_22318 QPMask@33 x_31 edges)) (=> (HasDirectPerm_22317_22318 QPMask@33 x_31 edges) (and (=> (= (ControlFlow 0 164) (- 0 165)) (HasDirectPerm_22317_22318 QPMask@3 x_31 edges)) (=> (HasDirectPerm_22317_22318 QPMask@3 x_31 edges) (=> (= (ControlFlow 0 164) 163) anon76_correct))))))))
(let ((anon178_Else_correct  (and (=> (= (ControlFlow 0 190) (- 0 192)) (forall ((x_51 T@Ref) (x_51_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_51 x_51_1)) (select setOfRef x_51)) (select setOfRef x_51_1)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_51 x_51_1)))
 :qid |stdinbpl.1906:23|
 :skolemid |227|
))) (=> (forall ((x_51@@0 T@Ref) (x_51_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_51@@0 x_51_1@@0)) (select setOfRef x_51@@0)) (select setOfRef x_51_1@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_51@@0 x_51_1@@0)))
 :qid |stdinbpl.1906:23|
 :skolemid |227|
)) (=> (and (forall ((x_51@@1 T@Ref) ) (!  (=> (and (select setOfRef x_51@@1) (< NoPerm rd)) (and (qpRange18 x_51@@1) (= (invRecv18 x_51@@1) x_51@@1)))
 :qid |stdinbpl.1912:30|
 :skolemid |228|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_51@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@33) x_51@@1 edges))
 :pattern ( (select setOfRef x_51@@1))
)) (forall ((o_9@@31 T@Ref) ) (!  (=> (and (and (select setOfRef (invRecv18 o_9@@31)) (< NoPerm rd)) (qpRange18 o_9@@31)) (= (invRecv18 o_9@@31) o_9@@31))
 :qid |stdinbpl.1916:30|
 :skolemid |229|
 :pattern ( (invRecv18 o_9@@31))
))) (and (=> (= (ControlFlow 0 190) (- 0 191)) (forall ((x_51@@2 T@Ref) ) (!  (=> (select setOfRef x_51@@2) (>= rd NoPerm))
 :qid |stdinbpl.1922:23|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_51@@2 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@33) x_51@@2 edges))
 :pattern ( (select setOfRef x_51@@2))
))) (=> (forall ((x_51@@3 T@Ref) ) (!  (=> (select setOfRef x_51@@3) (>= rd NoPerm))
 :qid |stdinbpl.1922:23|
 :skolemid |230|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_51@@3 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@33) x_51@@3 edges))
 :pattern ( (select setOfRef x_51@@3))
)) (=> (and (forall ((x_51@@4 T@Ref) ) (!  (=> (and (select setOfRef x_51@@4) (> rd NoPerm)) (not (= x_51@@4 null)))
 :qid |stdinbpl.1928:30|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_51@@4 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@33) x_51@@4 edges))
 :pattern ( (select setOfRef x_51@@4))
)) (forall ((o_9@@32 T@Ref) ) (!  (and (=> (and (and (select setOfRef (invRecv18 o_9@@32)) (< NoPerm rd)) (qpRange18 o_9@@32)) (and (=> (< NoPerm rd) (= (invRecv18 o_9@@32) o_9@@32)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@33) o_9@@32 edges) (+ (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@32) o_9@@32 edges) rd)))) (=> (not (and (and (select setOfRef (invRecv18 o_9@@32)) (< NoPerm rd)) (qpRange18 o_9@@32))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@33) o_9@@32 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@32) o_9@@32 edges))))
 :qid |stdinbpl.1934:30|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@33) o_9@@32 edges))
))) (=> (and (and (and (and (and (and (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@32) o_9@@33 f_5@@23) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@33) o_9@@33 f_5@@23)))
 :qid |stdinbpl.1938:37|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@32) o_9@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@33) o_9@@33 f_5@@23))
)) (forall ((o_9@@34 T@Ref) (f_5@@24 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@32) o_9@@34 f_5@@24) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@33) o_9@@34 f_5@@24)))
 :qid |stdinbpl.1938:37|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@32) o_9@@34 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@33) o_9@@34 f_5@@24))
))) (forall ((o_9@@35 T@Ref) (f_5@@25 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@32) o_9@@35 f_5@@25) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@33) o_9@@35 f_5@@25)))
 :qid |stdinbpl.1938:37|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@32) o_9@@35 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@33) o_9@@35 f_5@@25))
))) (forall ((o_9@@36 T@Ref) (f_5@@26 T@Field_43433_43434) ) (!  (=> (not (= f_5@@26 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@32) o_9@@36 f_5@@26) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@33) o_9@@36 f_5@@26)))
 :qid |stdinbpl.1938:37|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@32) o_9@@36 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@33) o_9@@36 f_5@@26))
))) (forall ((o_9@@37 T@Ref) (f_5@@27 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@32) o_9@@37 f_5@@27) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@33) o_9@@37 f_5@@27)))
 :qid |stdinbpl.1938:37|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@32) o_9@@37 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@33) o_9@@37 f_5@@27))
))) (forall ((o_9@@38 T@Ref) (f_5@@28 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@32) o_9@@38 f_5@@28) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@33) o_9@@38 f_5@@28)))
 :qid |stdinbpl.1938:37|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@32) o_9@@38 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@33) o_9@@38 f_5@@28))
))) (and (state ExhaleHeap@0 QPMask@33) (state ExhaleHeap@0 QPMask@33))) (and (and (=> (= (ControlFlow 0 190) 189) anon179_Else_correct) (=> (= (ControlFlow 0 190) 164) anon180_Then_correct)) (=> (= (ControlFlow 0 190) 167) anon180_Else_correct)))))))))))
(let ((anon178_Then_correct true))
(let ((anon176_Else_correct  (=> (and (forall ((x_49_1 T@Ref) ) (!  (=> (select setOfRef x_49_1) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_49_1 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_49_1 val)))
 :qid |stdinbpl.1894:28|
 :skolemid |226|
 :pattern ( (select setOfRef x_49_1))
)) (state ExhaleHeap@0 QPMask@32)) (and (=> (= (ControlFlow 0 193) 162) anon178_Then_correct) (=> (= (ControlFlow 0 193) 190) anon178_Else_correct)))))
(let ((anon70_correct true))
(let ((anon177_Else_correct  (=> (and (not (select setOfRef x_53)) (= (ControlFlow 0 161) 157)) anon70_correct)))
(let ((anon177_Then_correct  (=> (select setOfRef x_53) (and (=> (= (ControlFlow 0 158) (- 0 160)) (HasDirectPerm_22315_6609 QPMask@32 x_53 val)) (=> (HasDirectPerm_22315_6609 QPMask@32 x_53 val) (and (=> (= (ControlFlow 0 158) (- 0 159)) (HasDirectPerm_22315_6609 QPMask@3 x_53 val)) (=> (HasDirectPerm_22315_6609 QPMask@3 x_53 val) (=> (= (ControlFlow 0 158) 157) anon70_correct))))))))
(let ((anon175_Else_correct  (and (=> (= (ControlFlow 0 194) (- 0 196)) (forall ((x_47 T@Ref) (x_47_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_47 x_47_1)) (select setOfRef x_47)) (select setOfRef x_47_1)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_47 x_47_1)))
 :qid |stdinbpl.1844:23|
 :skolemid |219|
))) (=> (forall ((x_47@@0 T@Ref) (x_47_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_47@@0 x_47_1@@0)) (select setOfRef x_47@@0)) (select setOfRef x_47_1@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_47@@0 x_47_1@@0)))
 :qid |stdinbpl.1844:23|
 :skolemid |219|
)) (=> (and (forall ((x_47@@1 T@Ref) ) (!  (=> (and (select setOfRef x_47@@1) (< NoPerm rd)) (and (qpRange17 x_47@@1) (= (invRecv17 x_47@@1) x_47@@1)))
 :qid |stdinbpl.1850:30|
 :skolemid |220|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_47@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@32) x_47@@1 val))
 :pattern ( (select setOfRef x_47@@1))
)) (forall ((o_9@@39 T@Ref) ) (!  (=> (and (and (select setOfRef (invRecv17 o_9@@39)) (< NoPerm rd)) (qpRange17 o_9@@39)) (= (invRecv17 o_9@@39) o_9@@39))
 :qid |stdinbpl.1854:30|
 :skolemid |221|
 :pattern ( (invRecv17 o_9@@39))
))) (and (=> (= (ControlFlow 0 194) (- 0 195)) (forall ((x_47@@2 T@Ref) ) (!  (=> (select setOfRef x_47@@2) (>= rd NoPerm))
 :qid |stdinbpl.1860:23|
 :skolemid |222|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_47@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@32) x_47@@2 val))
 :pattern ( (select setOfRef x_47@@2))
))) (=> (forall ((x_47@@3 T@Ref) ) (!  (=> (select setOfRef x_47@@3) (>= rd NoPerm))
 :qid |stdinbpl.1860:23|
 :skolemid |222|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_47@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@32) x_47@@3 val))
 :pattern ( (select setOfRef x_47@@3))
)) (=> (and (forall ((x_47@@4 T@Ref) ) (!  (=> (and (select setOfRef x_47@@4) (> rd NoPerm)) (not (= x_47@@4 null)))
 :qid |stdinbpl.1866:30|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_47@@4 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@32) x_47@@4 val))
 :pattern ( (select setOfRef x_47@@4))
)) (forall ((o_9@@40 T@Ref) ) (!  (and (=> (and (and (select setOfRef (invRecv17 o_9@@40)) (< NoPerm rd)) (qpRange17 o_9@@40)) (and (=> (< NoPerm rd) (= (invRecv17 o_9@@40) o_9@@40)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@32) o_9@@40 val) (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@7) o_9@@40 val) rd)))) (=> (not (and (and (select setOfRef (invRecv17 o_9@@40)) (< NoPerm rd)) (qpRange17 o_9@@40))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@32) o_9@@40 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@7) o_9@@40 val))))
 :qid |stdinbpl.1872:30|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@32) o_9@@40 val))
))) (=> (and (and (and (and (and (and (forall ((o_9@@41 T@Ref) (f_5@@29 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@7) o_9@@41 f_5@@29) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@32) o_9@@41 f_5@@29)))
 :qid |stdinbpl.1876:37|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@7) o_9@@41 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@32) o_9@@41 f_5@@29))
)) (forall ((o_9@@42 T@Ref) (f_5@@30 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@7) o_9@@42 f_5@@30) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@32) o_9@@42 f_5@@30)))
 :qid |stdinbpl.1876:37|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@7) o_9@@42 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@32) o_9@@42 f_5@@30))
))) (forall ((o_9@@43 T@Ref) (f_5@@31 T@Field_43387_6609) ) (!  (=> (not (= f_5@@31 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@7) o_9@@43 f_5@@31) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@32) o_9@@43 f_5@@31)))
 :qid |stdinbpl.1876:37|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@7) o_9@@43 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@32) o_9@@43 f_5@@31))
))) (forall ((o_9@@44 T@Ref) (f_5@@32 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@7) o_9@@44 f_5@@32) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@32) o_9@@44 f_5@@32)))
 :qid |stdinbpl.1876:37|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@7) o_9@@44 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@32) o_9@@44 f_5@@32))
))) (forall ((o_9@@45 T@Ref) (f_5@@33 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@7) o_9@@45 f_5@@33) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@32) o_9@@45 f_5@@33)))
 :qid |stdinbpl.1876:37|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@7) o_9@@45 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@32) o_9@@45 f_5@@33))
))) (forall ((o_9@@46 T@Ref) (f_5@@34 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@7) o_9@@46 f_5@@34) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@32) o_9@@46 f_5@@34)))
 :qid |stdinbpl.1876:37|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@7) o_9@@46 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@32) o_9@@46 f_5@@34))
))) (and (state ExhaleHeap@0 QPMask@32) (state ExhaleHeap@0 QPMask@32))) (and (and (=> (= (ControlFlow 0 194) 193) anon176_Else_correct) (=> (= (ControlFlow 0 194) 158) anon177_Then_correct)) (=> (= (ControlFlow 0 194) 161) anon177_Else_correct)))))))))))
(let ((anon175_Then_correct true))
(let ((anon174_Then_correct  (=> (and (and (select res_copy_nodes@1 freshObj@0) (state ExhaleHeap@0 QPMask@7)) (and (select setOfRef this) (state ExhaleHeap@0 QPMask@7))) (and (=> (= (ControlFlow 0 197) 156) anon175_Then_correct) (=> (= (ControlFlow 0 197) 194) anon175_Else_correct)))))
(let ((anon122_correct true))
(let ((anon203_Else_correct  (=> (and (not (|Seq#Contains_22310| (map_domain res_node_map@3) r_20_1)) (= (ControlFlow 0 108) 105)) anon122_correct)))
(let ((anon203_Then_correct  (=> (|Seq#Contains_22310| (map_domain res_node_map@3) r_20_1) (and (=> (= (ControlFlow 0 106) (- 0 107)) (select res_copy_nodes@3 (lookup_1 res_node_map@3 r_20_1))) (=> (select res_copy_nodes@3 (lookup_1 res_node_map@3 r_20_1)) (=> (= (ControlFlow 0 106) 105) anon122_correct))))))
(let ((anon202_Else_correct  (=> (forall ((r_21_1 T@Ref) ) (!  (=> (|Seq#Contains_22310| (map_domain res_node_map@3) r_21_1) (select res_copy_nodes@3 (lookup_1 res_node_map@3 r_21_1)))
 :qid |stdinbpl.2864:28|
 :skolemid |357|
 :pattern ( (|Seq#ContainsTrigger_22306| (map_domain res_node_map@3) r_21_1))
 :pattern ( (|Seq#Contains_22310| (map_domain res_node_map@3) r_21_1))
 :pattern ( (select res_copy_nodes@3 (lookup_1 res_node_map@3 r_21_1)))
)) (and (=> (= (ControlFlow 0 101) (- 0 104)) (forall ((r_22_1 T@Ref) (r_22_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_22_1 r_22_2)) (select res_copy_nodes@3 r_22_1)) (select res_copy_nodes@3 r_22_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_22_1 r_22_2)))
 :qid |stdinbpl.2875:25|
 :skolemid |358|
 :pattern ( (neverTriggered35 r_22_1) (neverTriggered35 r_22_2))
))) (=> (forall ((r_22_1@@0 T@Ref) (r_22_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_22_1@@0 r_22_2@@0)) (select res_copy_nodes@3 r_22_1@@0)) (select res_copy_nodes@3 r_22_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_22_1@@0 r_22_2@@0)))
 :qid |stdinbpl.2875:25|
 :skolemid |358|
 :pattern ( (neverTriggered35 r_22_1@@0) (neverTriggered35 r_22_2@@0))
)) (and (=> (= (ControlFlow 0 101) (- 0 103)) (forall ((r_22_1@@1 T@Ref) ) (!  (=> (select res_copy_nodes@3 r_22_1@@1) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@29) r_22_1@@1 val) FullPerm))
 :qid |stdinbpl.2882:25|
 :skolemid |359|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@3) r_22_1@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@30) r_22_1@@1 val))
 :pattern ( (select res_copy_nodes@3 r_22_1@@1))
))) (=> (forall ((r_22_1@@2 T@Ref) ) (!  (=> (select res_copy_nodes@3 r_22_1@@2) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@29) r_22_1@@2 val) FullPerm))
 :qid |stdinbpl.2882:25|
 :skolemid |359|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@3) r_22_1@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@30) r_22_1@@2 val))
 :pattern ( (select res_copy_nodes@3 r_22_1@@2))
)) (=> (forall ((r_22_1@@3 T@Ref) ) (!  (=> (and (select res_copy_nodes@3 r_22_1@@3) (< NoPerm FullPerm)) (and (qpRange35 r_22_1@@3) (= (invRecv35 r_22_1@@3) r_22_1@@3)))
 :qid |stdinbpl.2888:30|
 :skolemid |360|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@3) r_22_1@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@30) r_22_1@@3 val))
 :pattern ( (select res_copy_nodes@3 r_22_1@@3))
)) (=> (and (forall ((o_9@@47 T@Ref) ) (!  (=> (and (select res_copy_nodes@3 (invRecv35 o_9@@47)) (and (< NoPerm FullPerm) (qpRange35 o_9@@47))) (= (invRecv35 o_9@@47) o_9@@47))
 :qid |stdinbpl.2892:30|
 :skolemid |361|
 :pattern ( (invRecv35 o_9@@47))
)) (forall ((o_9@@48 T@Ref) ) (!  (and (=> (and (select res_copy_nodes@3 (invRecv35 o_9@@48)) (and (< NoPerm FullPerm) (qpRange35 o_9@@48))) (and (= (invRecv35 o_9@@48) o_9@@48) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@30) o_9@@48 val) (- (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@29) o_9@@48 val) FullPerm)))) (=> (not (and (select res_copy_nodes@3 (invRecv35 o_9@@48)) (and (< NoPerm FullPerm) (qpRange35 o_9@@48)))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@30) o_9@@48 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@29) o_9@@48 val))))
 :qid |stdinbpl.2898:30|
 :skolemid |362|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@30) o_9@@48 val))
))) (=> (and (and (and (and (and (forall ((o_9@@49 T@Ref) (f_5@@35 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@29) o_9@@49 f_5@@35) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@30) o_9@@49 f_5@@35)))
 :qid |stdinbpl.2904:37|
 :skolemid |363|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@30) o_9@@49 f_5@@35))
)) (forall ((o_9@@50 T@Ref) (f_5@@36 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@29) o_9@@50 f_5@@36) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@30) o_9@@50 f_5@@36)))
 :qid |stdinbpl.2904:37|
 :skolemid |363|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@30) o_9@@50 f_5@@36))
))) (forall ((o_9@@51 T@Ref) (f_5@@37 T@Field_43387_6609) ) (!  (=> (not (= f_5@@37 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@29) o_9@@51 f_5@@37) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@30) o_9@@51 f_5@@37)))
 :qid |stdinbpl.2904:37|
 :skolemid |363|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@30) o_9@@51 f_5@@37))
))) (forall ((o_9@@52 T@Ref) (f_5@@38 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@29) o_9@@52 f_5@@38) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@30) o_9@@52 f_5@@38)))
 :qid |stdinbpl.2904:37|
 :skolemid |363|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@30) o_9@@52 f_5@@38))
))) (forall ((o_9@@53 T@Ref) (f_5@@39 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@29) o_9@@53 f_5@@39) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@30) o_9@@53 f_5@@39)))
 :qid |stdinbpl.2904:37|
 :skolemid |363|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@30) o_9@@53 f_5@@39))
))) (forall ((o_9@@54 T@Ref) (f_5@@40 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@29) o_9@@54 f_5@@40) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@30) o_9@@54 f_5@@40)))
 :qid |stdinbpl.2904:37|
 :skolemid |363|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@30) o_9@@54 f_5@@40))
))) (and (=> (= (ControlFlow 0 101) (- 0 102)) (forall ((r_23 T@Ref) (r_23_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_23 r_23_1)) (select res_copy_nodes@3 r_23)) (select res_copy_nodes@3 r_23_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_23 r_23_1)))
 :qid |stdinbpl.2916:25|
 :skolemid |364|
 :pattern ( (neverTriggered36 r_23) (neverTriggered36 r_23_1))
))) (=> (forall ((r_23@@0 T@Ref) (r_23_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_23@@0 r_23_1@@0)) (select res_copy_nodes@3 r_23@@0)) (select res_copy_nodes@3 r_23_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_23@@0 r_23_1@@0)))
 :qid |stdinbpl.2916:25|
 :skolemid |364|
 :pattern ( (neverTriggered36 r_23@@0) (neverTriggered36 r_23_1@@0))
)) (=> (= (ControlFlow 0 101) (- 0 100)) (forall ((r_23@@1 T@Ref) ) (!  (=> (select res_copy_nodes@3 r_23@@1) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@30) r_23@@1 edges) FullPerm))
 :qid |stdinbpl.2923:25|
 :skolemid |365|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_23@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@31) r_23@@1 edges))
 :pattern ( (select res_copy_nodes@3 r_23@@1))
)))))))))))))))
(let ((anon200_Else_correct  (=> (forall ((r_19_1 T@Ref) (j_13_1 Int) ) (!  (=> (and (select setOfRef r_19_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_19_1 edges)) j_13_1)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_19_1 edges) j_13_1)))
 :qid |stdinbpl.2849:28|
 :skolemid |356|
 :pattern ( (select setOfRef r_19_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_19_1 edges)) j_13_1))
 :pattern ( (select setOfRef r_19_1) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_19_1 edges) j_13_1))
 :pattern ( (select setOfRef r_19_1) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_19_1 edges) j_13_1)))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_19_1 edges)) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_19_1 edges) j_13_1))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_19_1 edges)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_19_1 edges) j_13_1)))
 :pattern ( (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_19_1 edges)) j_13_1))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_19_1 edges) j_13_1)))
)) (and (=> (= (ControlFlow 0 109) (- 0 111)) (|Set#Subset_22339| node_map_image res_copy_nodes@3)) (=> (|Set#Subset_22339| node_map_image res_copy_nodes@3) (and (=> (= (ControlFlow 0 109) (- 0 110)) (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef res_copy_nodes@3)) 0)) (=> (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef res_copy_nodes@3)) 0) (and (and (=> (= (ControlFlow 0 109) 101) anon202_Else_correct) (=> (= (ControlFlow 0 109) 106) anon203_Then_correct)) (=> (= (ControlFlow 0 109) 108) anon203_Else_correct)))))))))
(let ((anon118_correct true))
(let ((anon201_Else_correct  (=> (and (not (and (select setOfRef r_18_2) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_18_2 edges)) j_12_2))) (= (ControlFlow 0 99) 96)) anon118_correct)))
(let ((anon201_Then_correct  (=> (and (select setOfRef r_18_2) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_18_2 edges)) j_12_2)) (and (=> (= (ControlFlow 0 97) (- 0 98)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_18_2 edges) j_12_2))) (=> (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) r_18_2 edges) j_12_2)) (=> (= (ControlFlow 0 97) 96) anon118_correct))))))
(let ((anon198_Else_correct  (=> (forall ((j_11_1_1 Int) ) (!  (=> (select S@2 j_11_1_1) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) this edges) j_11_1_1)))
 :qid |stdinbpl.2838:28|
 :skolemid |355|
 :pattern ( (select S@2 j_11_1_1))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) this edges) j_11_1_1)))
)) (and (and (=> (= (ControlFlow 0 112) 109) anon200_Else_correct) (=> (= (ControlFlow 0 112) 97) anon201_Then_correct)) (=> (= (ControlFlow 0 112) 99) anon201_Else_correct)))))
(let ((anon114_correct true))
(let ((anon199_Else_correct  (=> (and (not (select S@2 j_10_2)) (= (ControlFlow 0 95) 92)) anon114_correct)))
(let ((anon199_Then_correct  (=> (select S@2 j_10_2) (and (=> (= (ControlFlow 0 93) (- 0 94)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) this edges) j_10_2))) (=> (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) this edges) j_10_2)) (=> (= (ControlFlow 0 93) 92) anon114_correct))))))
(let ((anon196_Else_correct  (=> (forall ((x_79_1 T@Ref) ) (!  (=> (select setOfRef x_79_1) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) x_79_1 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_79_1 edges)))
 :qid |stdinbpl.2827:28|
 :skolemid |354|
 :pattern ( (select setOfRef x_79_1))
)) (and (and (=> (= (ControlFlow 0 113) 112) anon198_Else_correct) (=> (= (ControlFlow 0 113) 93) anon199_Then_correct)) (=> (= (ControlFlow 0 113) 95) anon199_Else_correct)))))
(let ((anon110_correct true))
(let ((anon197_Else_correct  (=> (and (not (select setOfRef x_78)) (= (ControlFlow 0 91) 88)) anon110_correct)))
(let ((anon197_Then_correct  (=> (select setOfRef x_78) (and (=> (= (ControlFlow 0 89) (- 0 90)) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) x_78 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_78 edges))) (=> (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) x_78 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_78 edges)) (=> (= (ControlFlow 0 89) 88) anon110_correct))))))
(let ((anon194_Else_correct  (=> (forall ((x_76_1 T@Ref) ) (!  (=> (select setOfRef x_76_1) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@3) x_76_1 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_76_1 val)))
 :qid |stdinbpl.2771:28|
 :skolemid |346|
 :pattern ( (select setOfRef x_76_1))
)) (and (=> (= (ControlFlow 0 114) (- 0 117)) (forall ((x_77 T@Ref) ) (!  (=> (and (select setOfRef x_77) (dummyFunction_22318 (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) x_77 edges))) (>= rd NoPerm))
 :qid |stdinbpl.2779:25|
 :skolemid |347|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) x_77 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@29) x_77 edges))
 :pattern ( (select setOfRef x_77))
))) (=> (forall ((x_77@@0 T@Ref) ) (!  (=> (and (select setOfRef x_77@@0) (dummyFunction_22318 (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) x_77@@0 edges))) (>= rd NoPerm))
 :qid |stdinbpl.2779:25|
 :skolemid |347|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) x_77@@0 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@29) x_77@@0 edges))
 :pattern ( (select setOfRef x_77@@0))
)) (and (=> (= (ControlFlow 0 114) (- 0 116)) (forall ((x_77@@1 T@Ref) (x_77_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_77@@1 x_77_1)) (select setOfRef x_77@@1)) (select setOfRef x_77_1)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_77@@1 x_77_1)))
 :qid |stdinbpl.2786:25|
 :skolemid |348|
 :pattern ( (neverTriggered34 x_77@@1) (neverTriggered34 x_77_1))
))) (=> (forall ((x_77@@2 T@Ref) (x_77_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_77@@2 x_77_1@@0)) (select setOfRef x_77@@2)) (select setOfRef x_77_1@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_77@@2 x_77_1@@0)))
 :qid |stdinbpl.2786:25|
 :skolemid |348|
 :pattern ( (neverTriggered34 x_77@@2) (neverTriggered34 x_77_1@@0))
)) (and (=> (= (ControlFlow 0 114) (- 0 115)) (forall ((x_77@@3 T@Ref) ) (!  (=> (select setOfRef x_77@@3) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@28) x_77@@3 edges) rd))
 :qid |stdinbpl.2793:25|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) x_77@@3 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@29) x_77@@3 edges))
 :pattern ( (select setOfRef x_77@@3))
))) (=> (forall ((x_77@@4 T@Ref) ) (!  (=> (select setOfRef x_77@@4) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@28) x_77@@4 edges) rd))
 :qid |stdinbpl.2793:25|
 :skolemid |349|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) x_77@@4 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@29) x_77@@4 edges))
 :pattern ( (select setOfRef x_77@@4))
)) (=> (forall ((x_77@@5 T@Ref) ) (!  (=> (and (select setOfRef x_77@@5) (< NoPerm rd)) (and (qpRange34 x_77@@5) (= (invRecv34 x_77@@5) x_77@@5)))
 :qid |stdinbpl.2799:30|
 :skolemid |350|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@3) x_77@@5 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@29) x_77@@5 edges))
 :pattern ( (select setOfRef x_77@@5))
)) (=> (and (forall ((o_9@@55 T@Ref) ) (!  (=> (and (select setOfRef (invRecv34 o_9@@55)) (and (< NoPerm rd) (qpRange34 o_9@@55))) (= (invRecv34 o_9@@55) o_9@@55))
 :qid |stdinbpl.2803:30|
 :skolemid |351|
 :pattern ( (invRecv34 o_9@@55))
)) (forall ((o_9@@56 T@Ref) ) (!  (and (=> (and (select setOfRef (invRecv34 o_9@@56)) (and (< NoPerm rd) (qpRange34 o_9@@56))) (and (= (invRecv34 o_9@@56) o_9@@56) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@29) o_9@@56 edges) (- (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@28) o_9@@56 edges) rd)))) (=> (not (and (select setOfRef (invRecv34 o_9@@56)) (and (< NoPerm rd) (qpRange34 o_9@@56)))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@29) o_9@@56 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@28) o_9@@56 edges))))
 :qid |stdinbpl.2809:30|
 :skolemid |352|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@29) o_9@@56 edges))
))) (=> (and (and (and (and (and (forall ((o_9@@57 T@Ref) (f_5@@41 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@28) o_9@@57 f_5@@41) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@29) o_9@@57 f_5@@41)))
 :qid |stdinbpl.2815:37|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@29) o_9@@57 f_5@@41))
)) (forall ((o_9@@58 T@Ref) (f_5@@42 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@28) o_9@@58 f_5@@42) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@29) o_9@@58 f_5@@42)))
 :qid |stdinbpl.2815:37|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@29) o_9@@58 f_5@@42))
))) (forall ((o_9@@59 T@Ref) (f_5@@43 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@28) o_9@@59 f_5@@43) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@29) o_9@@59 f_5@@43)))
 :qid |stdinbpl.2815:37|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@29) o_9@@59 f_5@@43))
))) (forall ((o_9@@60 T@Ref) (f_5@@44 T@Field_43433_43434) ) (!  (=> (not (= f_5@@44 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@28) o_9@@60 f_5@@44) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@29) o_9@@60 f_5@@44)))
 :qid |stdinbpl.2815:37|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@29) o_9@@60 f_5@@44))
))) (forall ((o_9@@61 T@Ref) (f_5@@45 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@28) o_9@@61 f_5@@45) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@29) o_9@@61 f_5@@45)))
 :qid |stdinbpl.2815:37|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@29) o_9@@61 f_5@@45))
))) (forall ((o_9@@62 T@Ref) (f_5@@46 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@28) o_9@@62 f_5@@46) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@29) o_9@@62 f_5@@46)))
 :qid |stdinbpl.2815:37|
 :skolemid |353|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@29) o_9@@62 f_5@@46))
))) (and (and (=> (= (ControlFlow 0 114) 113) anon196_Else_correct) (=> (= (ControlFlow 0 114) 89) anon197_Then_correct)) (=> (= (ControlFlow 0 114) 91) anon197_Else_correct))))))))))))))
(let ((anon106_correct true))
(let ((anon195_Else_correct  (=> (and (not (select setOfRef x_75)) (= (ControlFlow 0 87) 84)) anon106_correct)))
(let ((anon195_Then_correct  (=> (select setOfRef x_75) (and (=> (= (ControlFlow 0 85) (- 0 86)) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@3) x_75 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_75 val))) (=> (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@3) x_75 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_75 val)) (=> (= (ControlFlow 0 85) 84) anon106_correct))))))
(let ((anon192_Else_correct  (=> (forall ((x_63_1 T@Ref) ) (!  (=> (|Seq#Contains_22310| (map_domain res_node_map@1) x_63_1) (select res_copy_nodes@1 (lookup_1 res_node_map@1 x_63_1)))
 :qid |stdinbpl.2436:34|
 :skolemid |296|
 :pattern ( (|Seq#ContainsTrigger_22306| (map_domain res_node_map@1) x_63_1))
 :pattern ( (|Seq#Contains_22310| (map_domain res_node_map@1) x_63_1))
 :pattern ( (select res_copy_nodes@1 (lookup_1 res_node_map@1 x_63_1)))
)) (and (=> (= (ControlFlow 0 118) (- 0 135)) (forall ((x_64 T@Ref) (x_64_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_64 x_64_1)) (select res_copy_nodes@1 x_64)) (select res_copy_nodes@1 x_64_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_64 x_64_1)))
 :qid |stdinbpl.2447:31|
 :skolemid |297|
 :pattern ( (neverTriggered27 x_64) (neverTriggered27 x_64_1))
))) (=> (forall ((x_64@@0 T@Ref) (x_64_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_64@@0 x_64_1@@0)) (select res_copy_nodes@1 x_64@@0)) (select res_copy_nodes@1 x_64_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_64@@0 x_64_1@@0)))
 :qid |stdinbpl.2447:31|
 :skolemid |297|
 :pattern ( (neverTriggered27 x_64@@0) (neverTriggered27 x_64_1@@0))
)) (and (=> (= (ControlFlow 0 118) (- 0 134)) (forall ((x_64@@1 T@Ref) ) (!  (=> (select res_copy_nodes@1 x_64@@1) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@13) x_64@@1 val) FullPerm))
 :qid |stdinbpl.2454:31|
 :skolemid |298|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_64@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@22) x_64@@1 val))
 :pattern ( (select res_copy_nodes@1 x_64@@1))
))) (=> (forall ((x_64@@2 T@Ref) ) (!  (=> (select res_copy_nodes@1 x_64@@2) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@13) x_64@@2 val) FullPerm))
 :qid |stdinbpl.2454:31|
 :skolemid |298|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_64@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@22) x_64@@2 val))
 :pattern ( (select res_copy_nodes@1 x_64@@2))
)) (=> (forall ((x_64@@3 T@Ref) ) (!  (=> (and (select res_copy_nodes@1 x_64@@3) (< NoPerm FullPerm)) (and (qpRange27 x_64@@3) (= (invRecv27 x_64@@3) x_64@@3)))
 :qid |stdinbpl.2460:36|
 :skolemid |299|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_64@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@22) x_64@@3 val))
 :pattern ( (select res_copy_nodes@1 x_64@@3))
)) (=> (and (forall ((o_9@@63 T@Ref) ) (!  (=> (and (select res_copy_nodes@1 (invRecv27 o_9@@63)) (and (< NoPerm FullPerm) (qpRange27 o_9@@63))) (= (invRecv27 o_9@@63) o_9@@63))
 :qid |stdinbpl.2464:36|
 :skolemid |300|
 :pattern ( (invRecv27 o_9@@63))
)) (forall ((o_9@@64 T@Ref) ) (!  (and (=> (and (select res_copy_nodes@1 (invRecv27 o_9@@64)) (and (< NoPerm FullPerm) (qpRange27 o_9@@64))) (and (= (invRecv27 o_9@@64) o_9@@64) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@22) o_9@@64 val) (- (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@13) o_9@@64 val) FullPerm)))) (=> (not (and (select res_copy_nodes@1 (invRecv27 o_9@@64)) (and (< NoPerm FullPerm) (qpRange27 o_9@@64)))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@22) o_9@@64 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@13) o_9@@64 val))))
 :qid |stdinbpl.2470:36|
 :skolemid |301|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@22) o_9@@64 val))
))) (=> (and (and (and (and (and (forall ((o_9@@65 T@Ref) (f_5@@47 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@13) o_9@@65 f_5@@47) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@22) o_9@@65 f_5@@47)))
 :qid |stdinbpl.2476:43|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@22) o_9@@65 f_5@@47))
)) (forall ((o_9@@66 T@Ref) (f_5@@48 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@13) o_9@@66 f_5@@48) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@22) o_9@@66 f_5@@48)))
 :qid |stdinbpl.2476:43|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@22) o_9@@66 f_5@@48))
))) (forall ((o_9@@67 T@Ref) (f_5@@49 T@Field_43387_6609) ) (!  (=> (not (= f_5@@49 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@13) o_9@@67 f_5@@49) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@22) o_9@@67 f_5@@49)))
 :qid |stdinbpl.2476:43|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@22) o_9@@67 f_5@@49))
))) (forall ((o_9@@68 T@Ref) (f_5@@50 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@13) o_9@@68 f_5@@50) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@22) o_9@@68 f_5@@50)))
 :qid |stdinbpl.2476:43|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@22) o_9@@68 f_5@@50))
))) (forall ((o_9@@69 T@Ref) (f_5@@51 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@13) o_9@@69 f_5@@51) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@22) o_9@@69 f_5@@51)))
 :qid |stdinbpl.2476:43|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@22) o_9@@69 f_5@@51))
))) (forall ((o_9@@70 T@Ref) (f_5@@52 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@13) o_9@@70 f_5@@52) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@22) o_9@@70 f_5@@52)))
 :qid |stdinbpl.2476:43|
 :skolemid |302|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@22) o_9@@70 f_5@@52))
))) (and (=> (= (ControlFlow 0 118) (- 0 133)) (forall ((x_65 T@Ref) (x_65_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_65 x_65_1)) (select res_copy_nodes@1 x_65)) (select res_copy_nodes@1 x_65_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_65 x_65_1)))
 :qid |stdinbpl.2488:31|
 :skolemid |303|
 :pattern ( (neverTriggered28 x_65) (neverTriggered28 x_65_1))
))) (=> (forall ((x_65@@0 T@Ref) (x_65_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_65@@0 x_65_1@@0)) (select res_copy_nodes@1 x_65@@0)) (select res_copy_nodes@1 x_65_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_65@@0 x_65_1@@0)))
 :qid |stdinbpl.2488:31|
 :skolemid |303|
 :pattern ( (neverTriggered28 x_65@@0) (neverTriggered28 x_65_1@@0))
)) (and (=> (= (ControlFlow 0 118) (- 0 132)) (forall ((x_65@@1 T@Ref) ) (!  (=> (select res_copy_nodes@1 x_65@@1) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@22) x_65@@1 edges) FullPerm))
 :qid |stdinbpl.2495:31|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_65@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@23) x_65@@1 edges))
 :pattern ( (select res_copy_nodes@1 x_65@@1))
))) (=> (forall ((x_65@@2 T@Ref) ) (!  (=> (select res_copy_nodes@1 x_65@@2) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@22) x_65@@2 edges) FullPerm))
 :qid |stdinbpl.2495:31|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_65@@2 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@23) x_65@@2 edges))
 :pattern ( (select res_copy_nodes@1 x_65@@2))
)) (=> (forall ((x_65@@3 T@Ref) ) (!  (=> (and (select res_copy_nodes@1 x_65@@3) (< NoPerm FullPerm)) (and (qpRange28 x_65@@3) (= (invRecv28 x_65@@3) x_65@@3)))
 :qid |stdinbpl.2501:36|
 :skolemid |305|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_65@@3 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@23) x_65@@3 edges))
 :pattern ( (select res_copy_nodes@1 x_65@@3))
)) (=> (and (forall ((o_9@@71 T@Ref) ) (!  (=> (and (select res_copy_nodes@1 (invRecv28 o_9@@71)) (and (< NoPerm FullPerm) (qpRange28 o_9@@71))) (= (invRecv28 o_9@@71) o_9@@71))
 :qid |stdinbpl.2505:36|
 :skolemid |306|
 :pattern ( (invRecv28 o_9@@71))
)) (forall ((o_9@@72 T@Ref) ) (!  (and (=> (and (select res_copy_nodes@1 (invRecv28 o_9@@72)) (and (< NoPerm FullPerm) (qpRange28 o_9@@72))) (and (= (invRecv28 o_9@@72) o_9@@72) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@23) o_9@@72 edges) (- (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@22) o_9@@72 edges) FullPerm)))) (=> (not (and (select res_copy_nodes@1 (invRecv28 o_9@@72)) (and (< NoPerm FullPerm) (qpRange28 o_9@@72)))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@23) o_9@@72 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@22) o_9@@72 edges))))
 :qid |stdinbpl.2511:36|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@23) o_9@@72 edges))
))) (=> (and (and (and (and (and (and (forall ((o_9@@73 T@Ref) (f_5@@53 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@22) o_9@@73 f_5@@53) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@23) o_9@@73 f_5@@53)))
 :qid |stdinbpl.2517:43|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@23) o_9@@73 f_5@@53))
)) (forall ((o_9@@74 T@Ref) (f_5@@54 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@22) o_9@@74 f_5@@54) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@23) o_9@@74 f_5@@54)))
 :qid |stdinbpl.2517:43|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@23) o_9@@74 f_5@@54))
))) (forall ((o_9@@75 T@Ref) (f_5@@55 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@22) o_9@@75 f_5@@55) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@23) o_9@@75 f_5@@55)))
 :qid |stdinbpl.2517:43|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@23) o_9@@75 f_5@@55))
))) (forall ((o_9@@76 T@Ref) (f_5@@56 T@Field_43433_43434) ) (!  (=> (not (= f_5@@56 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@22) o_9@@76 f_5@@56) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@23) o_9@@76 f_5@@56)))
 :qid |stdinbpl.2517:43|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@23) o_9@@76 f_5@@56))
))) (forall ((o_9@@77 T@Ref) (f_5@@57 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@22) o_9@@77 f_5@@57) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@23) o_9@@77 f_5@@57)))
 :qid |stdinbpl.2517:43|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@23) o_9@@77 f_5@@57))
))) (forall ((o_9@@78 T@Ref) (f_5@@58 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@22) o_9@@78 f_5@@58) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@23) o_9@@78 f_5@@58)))
 :qid |stdinbpl.2517:43|
 :skolemid |308|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@23) o_9@@78 f_5@@58))
))) (and (and (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@2 QPMask@23) (not (= newNode@0 null))) (and (select res_copy_nodes@3 newNode@0) (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef res_copy_nodes@3)) 0)))) (and (=> (= (ControlFlow 0 118) (- 0 131)) (forall ((x_66 T@Ref) (x_66_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_66 x_66_1)) (select setOfRef x_66)) (select setOfRef x_66_1)) (< NoPerm arg_rd@0)) (< NoPerm arg_rd@0)) (not (= x_66 x_66_1)))
 :qid |stdinbpl.2536:29|
 :skolemid |309|
))) (=> (forall ((x_66@@0 T@Ref) (x_66_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_66@@0 x_66_1@@0)) (select setOfRef x_66@@0)) (select setOfRef x_66_1@@0)) (< NoPerm arg_rd@0)) (< NoPerm arg_rd@0)) (not (= x_66@@0 x_66_1@@0)))
 :qid |stdinbpl.2536:29|
 :skolemid |309|
)) (=> (and (forall ((x_66@@1 T@Ref) ) (!  (=> (and (select setOfRef x_66@@1) (< NoPerm arg_rd@0)) (and (qpRange29 x_66@@1) (= (invRecv29 x_66@@1) x_66@@1)))
 :qid |stdinbpl.2542:36|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@2) x_66@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@24) x_66@@1 val))
 :pattern ( (select setOfRef x_66@@1))
)) (forall ((o_9@@79 T@Ref) ) (!  (=> (and (and (select setOfRef (invRecv29 o_9@@79)) (< NoPerm arg_rd@0)) (qpRange29 o_9@@79)) (= (invRecv29 o_9@@79) o_9@@79))
 :qid |stdinbpl.2546:36|
 :skolemid |311|
 :pattern ( (invRecv29 o_9@@79))
))) (and (=> (= (ControlFlow 0 118) (- 0 130)) (forall ((x_66@@2 T@Ref) ) (!  (=> (select setOfRef x_66@@2) (>= arg_rd@0 NoPerm))
 :qid |stdinbpl.2552:29|
 :skolemid |312|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@2) x_66@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@24) x_66@@2 val))
 :pattern ( (select setOfRef x_66@@2))
))) (=> (forall ((x_66@@3 T@Ref) ) (!  (=> (select setOfRef x_66@@3) (>= arg_rd@0 NoPerm))
 :qid |stdinbpl.2552:29|
 :skolemid |312|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@2) x_66@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@24) x_66@@3 val))
 :pattern ( (select setOfRef x_66@@3))
)) (=> (and (forall ((x_66@@4 T@Ref) ) (!  (=> (and (select setOfRef x_66@@4) (> arg_rd@0 NoPerm)) (not (= x_66@@4 null)))
 :qid |stdinbpl.2558:36|
 :skolemid |313|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@2) x_66@@4 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@24) x_66@@4 val))
 :pattern ( (select setOfRef x_66@@4))
)) (forall ((o_9@@80 T@Ref) ) (!  (and (=> (and (and (select setOfRef (invRecv29 o_9@@80)) (< NoPerm arg_rd@0)) (qpRange29 o_9@@80)) (and (=> (< NoPerm arg_rd@0) (= (invRecv29 o_9@@80) o_9@@80)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@24) o_9@@80 val) (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@23) o_9@@80 val) arg_rd@0)))) (=> (not (and (and (select setOfRef (invRecv29 o_9@@80)) (< NoPerm arg_rd@0)) (qpRange29 o_9@@80))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@24) o_9@@80 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@23) o_9@@80 val))))
 :qid |stdinbpl.2564:36|
 :skolemid |314|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@24) o_9@@80 val))
))) (=> (and (and (and (and (and (and (forall ((o_9@@81 T@Ref) (f_5@@59 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@23) o_9@@81 f_5@@59) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@24) o_9@@81 f_5@@59)))
 :qid |stdinbpl.2568:43|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@23) o_9@@81 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@24) o_9@@81 f_5@@59))
)) (forall ((o_9@@82 T@Ref) (f_5@@60 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@23) o_9@@82 f_5@@60) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@24) o_9@@82 f_5@@60)))
 :qid |stdinbpl.2568:43|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@23) o_9@@82 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@24) o_9@@82 f_5@@60))
))) (forall ((o_9@@83 T@Ref) (f_5@@61 T@Field_43387_6609) ) (!  (=> (not (= f_5@@61 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@23) o_9@@83 f_5@@61) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@24) o_9@@83 f_5@@61)))
 :qid |stdinbpl.2568:43|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@23) o_9@@83 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@24) o_9@@83 f_5@@61))
))) (forall ((o_9@@84 T@Ref) (f_5@@62 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@23) o_9@@84 f_5@@62) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@24) o_9@@84 f_5@@62)))
 :qid |stdinbpl.2568:43|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@23) o_9@@84 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@24) o_9@@84 f_5@@62))
))) (forall ((o_9@@85 T@Ref) (f_5@@63 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@23) o_9@@85 f_5@@63) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@24) o_9@@85 f_5@@63)))
 :qid |stdinbpl.2568:43|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@23) o_9@@85 f_5@@63))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@24) o_9@@85 f_5@@63))
))) (forall ((o_9@@86 T@Ref) (f_5@@64 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@23) o_9@@86 f_5@@64) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@24) o_9@@86 f_5@@64)))
 :qid |stdinbpl.2568:43|
 :skolemid |315|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@23) o_9@@86 f_5@@64))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@24) o_9@@86 f_5@@64))
))) (and (state ExhaleHeap@2 QPMask@24) (forall ((x_67 T@Ref) ) (!  (=> (select setOfRef x_67) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@2) x_67 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_67 val)))
 :qid |stdinbpl.2574:34|
 :skolemid |316|
 :pattern ( (select setOfRef x_67))
)))) (and (=> (= (ControlFlow 0 118) (- 0 129)) (forall ((x_68 T@Ref) (x_68_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_68 x_68_1)) (select setOfRef x_68)) (select setOfRef x_68_1)) (< NoPerm arg_rd@0)) (< NoPerm arg_rd@0)) (not (= x_68 x_68_1)))
 :qid |stdinbpl.2580:29|
 :skolemid |317|
))) (=> (forall ((x_68@@0 T@Ref) (x_68_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_68@@0 x_68_1@@0)) (select setOfRef x_68@@0)) (select setOfRef x_68_1@@0)) (< NoPerm arg_rd@0)) (< NoPerm arg_rd@0)) (not (= x_68@@0 x_68_1@@0)))
 :qid |stdinbpl.2580:29|
 :skolemid |317|
)) (=> (and (forall ((x_68@@1 T@Ref) ) (!  (=> (and (select setOfRef x_68@@1) (< NoPerm arg_rd@0)) (and (qpRange30 x_68@@1) (= (invRecv30 x_68@@1) x_68@@1)))
 :qid |stdinbpl.2586:36|
 :skolemid |318|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_68@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@25) x_68@@1 edges))
 :pattern ( (select setOfRef x_68@@1))
)) (forall ((o_9@@87 T@Ref) ) (!  (=> (and (and (select setOfRef (invRecv30 o_9@@87)) (< NoPerm arg_rd@0)) (qpRange30 o_9@@87)) (= (invRecv30 o_9@@87) o_9@@87))
 :qid |stdinbpl.2590:36|
 :skolemid |319|
 :pattern ( (invRecv30 o_9@@87))
))) (and (=> (= (ControlFlow 0 118) (- 0 128)) (forall ((x_68@@2 T@Ref) ) (!  (=> (select setOfRef x_68@@2) (>= arg_rd@0 NoPerm))
 :qid |stdinbpl.2596:29|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_68@@2 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@25) x_68@@2 edges))
 :pattern ( (select setOfRef x_68@@2))
))) (=> (forall ((x_68@@3 T@Ref) ) (!  (=> (select setOfRef x_68@@3) (>= arg_rd@0 NoPerm))
 :qid |stdinbpl.2596:29|
 :skolemid |320|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_68@@3 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@25) x_68@@3 edges))
 :pattern ( (select setOfRef x_68@@3))
)) (=> (and (forall ((x_68@@4 T@Ref) ) (!  (=> (and (select setOfRef x_68@@4) (> arg_rd@0 NoPerm)) (not (= x_68@@4 null)))
 :qid |stdinbpl.2602:36|
 :skolemid |321|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_68@@4 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@25) x_68@@4 edges))
 :pattern ( (select setOfRef x_68@@4))
)) (forall ((o_9@@88 T@Ref) ) (!  (and (=> (and (and (select setOfRef (invRecv30 o_9@@88)) (< NoPerm arg_rd@0)) (qpRange30 o_9@@88)) (and (=> (< NoPerm arg_rd@0) (= (invRecv30 o_9@@88) o_9@@88)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@25) o_9@@88 edges) (+ (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@24) o_9@@88 edges) arg_rd@0)))) (=> (not (and (and (select setOfRef (invRecv30 o_9@@88)) (< NoPerm arg_rd@0)) (qpRange30 o_9@@88))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@25) o_9@@88 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@24) o_9@@88 edges))))
 :qid |stdinbpl.2608:36|
 :skolemid |322|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@25) o_9@@88 edges))
))) (=> (and (and (and (and (and (and (and (forall ((o_9@@89 T@Ref) (f_5@@65 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@24) o_9@@89 f_5@@65) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@25) o_9@@89 f_5@@65)))
 :qid |stdinbpl.2612:43|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@24) o_9@@89 f_5@@65))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@25) o_9@@89 f_5@@65))
)) (forall ((o_9@@90 T@Ref) (f_5@@66 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@24) o_9@@90 f_5@@66) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@25) o_9@@90 f_5@@66)))
 :qid |stdinbpl.2612:43|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@24) o_9@@90 f_5@@66))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@25) o_9@@90 f_5@@66))
))) (forall ((o_9@@91 T@Ref) (f_5@@67 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@24) o_9@@91 f_5@@67) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@25) o_9@@91 f_5@@67)))
 :qid |stdinbpl.2612:43|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@24) o_9@@91 f_5@@67))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@25) o_9@@91 f_5@@67))
))) (forall ((o_9@@92 T@Ref) (f_5@@68 T@Field_43433_43434) ) (!  (=> (not (= f_5@@68 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@24) o_9@@92 f_5@@68) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@25) o_9@@92 f_5@@68)))
 :qid |stdinbpl.2612:43|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@24) o_9@@92 f_5@@68))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@25) o_9@@92 f_5@@68))
))) (forall ((o_9@@93 T@Ref) (f_5@@69 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@24) o_9@@93 f_5@@69) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@25) o_9@@93 f_5@@69)))
 :qid |stdinbpl.2612:43|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@24) o_9@@93 f_5@@69))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@25) o_9@@93 f_5@@69))
))) (forall ((o_9@@94 T@Ref) (f_5@@70 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@24) o_9@@94 f_5@@70) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@25) o_9@@94 f_5@@70)))
 :qid |stdinbpl.2612:43|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@24) o_9@@94 f_5@@70))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@25) o_9@@94 f_5@@70))
))) (state ExhaleHeap@2 QPMask@25)) (and (and (forall ((x_69 T@Ref) ) (!  (=> (select setOfRef x_69) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_69 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_69 edges)))
 :qid |stdinbpl.2618:34|
 :skolemid |324|
 :pattern ( (select setOfRef x_69))
)) (forall ((x_70 T@Ref) (i$0_2_1 Int) ) (!  (=> (and (select setOfRef x_70) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_70 edges)) i$0_2_1)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_70 edges) i$0_2_1)))
 :qid |stdinbpl.2622:34|
 :skolemid |325|
 :pattern ( (select setOfRef x_70) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_70 edges)) i$0_2_1))
 :pattern ( (select setOfRef x_70) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_70 edges) i$0_2_1))
 :pattern ( (select setOfRef x_70) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_70 edges) i$0_2_1)))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_70 edges)) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_70 edges) i$0_2_1))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_70 edges)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_70 edges) i$0_2_1)))
 :pattern ( (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_70 edges)) i$0_2_1))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_70 edges) i$0_2_1)))
))) (and (|Set#Equal_22345| res_copy_nodes@3 (|Set#Union_22345| res_copy_nodes@3 res_copy_nodes@1)) (forall ((x_71 T@Ref) ) (!  (=> (|Seq#Contains_22310| (map_domain res_node_map@3) x_71) (select res_copy_nodes@3 (lookup_1 res_node_map@3 x_71)))
 :qid |stdinbpl.2627:34|
 :skolemid |326|
 :pattern ( (|Seq#ContainsTrigger_22306| (map_domain res_node_map@3) x_71))
 :pattern ( (|Seq#Contains_22310| (map_domain res_node_map@3) x_71))
 :pattern ( (select res_copy_nodes@3 (lookup_1 res_node_map@3 x_71)))
))))) (and (=> (= (ControlFlow 0 118) (- 0 127)) (forall ((x_72 T@Ref) (x_72_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_72 x_72_1)) (select res_copy_nodes@3 x_72)) (select res_copy_nodes@3 x_72_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_72 x_72_1)))
 :qid |stdinbpl.2633:29|
 :skolemid |327|
))) (=> (forall ((x_72@@0 T@Ref) (x_72_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_72@@0 x_72_1@@0)) (select res_copy_nodes@3 x_72@@0)) (select res_copy_nodes@3 x_72_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_72@@0 x_72_1@@0)))
 :qid |stdinbpl.2633:29|
 :skolemid |327|
)) (=> (and (and (forall ((x_72@@1 T@Ref) ) (!  (=> (and (select res_copy_nodes@3 x_72@@1) (< NoPerm FullPerm)) (and (qpRange31 x_72@@1) (= (invRecv31 x_72@@1) x_72@@1)))
 :qid |stdinbpl.2639:36|
 :skolemid |328|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@2) x_72@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@26) x_72@@1 val))
 :pattern ( (select res_copy_nodes@3 x_72@@1))
)) (forall ((o_9@@95 T@Ref) ) (!  (=> (and (and (select res_copy_nodes@3 (invRecv31 o_9@@95)) (< NoPerm FullPerm)) (qpRange31 o_9@@95)) (= (invRecv31 o_9@@95) o_9@@95))
 :qid |stdinbpl.2643:36|
 :skolemid |329|
 :pattern ( (invRecv31 o_9@@95))
))) (and (forall ((x_72@@2 T@Ref) ) (!  (=> (select res_copy_nodes@3 x_72@@2) (not (= x_72@@2 null)))
 :qid |stdinbpl.2649:36|
 :skolemid |330|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@2) x_72@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@26) x_72@@2 val))
 :pattern ( (select res_copy_nodes@3 x_72@@2))
)) (forall ((o_9@@96 T@Ref) ) (!  (and (=> (and (and (select res_copy_nodes@3 (invRecv31 o_9@@96)) (< NoPerm FullPerm)) (qpRange31 o_9@@96)) (and (=> (< NoPerm FullPerm) (= (invRecv31 o_9@@96) o_9@@96)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@26) o_9@@96 val) (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@25) o_9@@96 val) FullPerm)))) (=> (not (and (and (select res_copy_nodes@3 (invRecv31 o_9@@96)) (< NoPerm FullPerm)) (qpRange31 o_9@@96))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@26) o_9@@96 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@25) o_9@@96 val))))
 :qid |stdinbpl.2655:36|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@26) o_9@@96 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@97 T@Ref) (f_5@@71 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@25) o_9@@97 f_5@@71) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@26) o_9@@97 f_5@@71)))
 :qid |stdinbpl.2659:43|
 :skolemid |332|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@25) o_9@@97 f_5@@71))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@26) o_9@@97 f_5@@71))
)) (forall ((o_9@@98 T@Ref) (f_5@@72 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@25) o_9@@98 f_5@@72) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@26) o_9@@98 f_5@@72)))
 :qid |stdinbpl.2659:43|
 :skolemid |332|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@25) o_9@@98 f_5@@72))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@26) o_9@@98 f_5@@72))
))) (forall ((o_9@@99 T@Ref) (f_5@@73 T@Field_43387_6609) ) (!  (=> (not (= f_5@@73 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@25) o_9@@99 f_5@@73) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@26) o_9@@99 f_5@@73)))
 :qid |stdinbpl.2659:43|
 :skolemid |332|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@25) o_9@@99 f_5@@73))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@26) o_9@@99 f_5@@73))
))) (forall ((o_9@@100 T@Ref) (f_5@@74 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@25) o_9@@100 f_5@@74) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@26) o_9@@100 f_5@@74)))
 :qid |stdinbpl.2659:43|
 :skolemid |332|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@25) o_9@@100 f_5@@74))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@26) o_9@@100 f_5@@74))
))) (forall ((o_9@@101 T@Ref) (f_5@@75 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@25) o_9@@101 f_5@@75) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@26) o_9@@101 f_5@@75)))
 :qid |stdinbpl.2659:43|
 :skolemid |332|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@25) o_9@@101 f_5@@75))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@26) o_9@@101 f_5@@75))
))) (forall ((o_9@@102 T@Ref) (f_5@@76 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@25) o_9@@102 f_5@@76) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@26) o_9@@102 f_5@@76)))
 :qid |stdinbpl.2659:43|
 :skolemid |332|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@25) o_9@@102 f_5@@76))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@26) o_9@@102 f_5@@76))
))) (state ExhaleHeap@2 QPMask@26)) (and (=> (= (ControlFlow 0 118) (- 0 126)) (forall ((x_73 T@Ref) (x_73_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_73 x_73_1)) (select res_copy_nodes@3 x_73)) (select res_copy_nodes@3 x_73_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_73 x_73_1)))
 :qid |stdinbpl.2667:29|
 :skolemid |333|
))) (=> (forall ((x_73@@0 T@Ref) (x_73_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_73@@0 x_73_1@@0)) (select res_copy_nodes@3 x_73@@0)) (select res_copy_nodes@3 x_73_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_73@@0 x_73_1@@0)))
 :qid |stdinbpl.2667:29|
 :skolemid |333|
)) (=> (and (and (forall ((x_73@@1 T@Ref) ) (!  (=> (and (select res_copy_nodes@3 x_73@@1) (< NoPerm FullPerm)) (and (qpRange32 x_73@@1) (= (invRecv32 x_73@@1) x_73@@1)))
 :qid |stdinbpl.2673:36|
 :skolemid |334|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_73@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@27) x_73@@1 edges))
 :pattern ( (select res_copy_nodes@3 x_73@@1))
)) (forall ((o_9@@103 T@Ref) ) (!  (=> (and (and (select res_copy_nodes@3 (invRecv32 o_9@@103)) (< NoPerm FullPerm)) (qpRange32 o_9@@103)) (= (invRecv32 o_9@@103) o_9@@103))
 :qid |stdinbpl.2677:36|
 :skolemid |335|
 :pattern ( (invRecv32 o_9@@103))
))) (and (forall ((x_73@@2 T@Ref) ) (!  (=> (select res_copy_nodes@3 x_73@@2) (not (= x_73@@2 null)))
 :qid |stdinbpl.2683:36|
 :skolemid |336|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) x_73@@2 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@27) x_73@@2 edges))
 :pattern ( (select res_copy_nodes@3 x_73@@2))
)) (forall ((o_9@@104 T@Ref) ) (!  (and (=> (and (and (select res_copy_nodes@3 (invRecv32 o_9@@104)) (< NoPerm FullPerm)) (qpRange32 o_9@@104)) (and (=> (< NoPerm FullPerm) (= (invRecv32 o_9@@104) o_9@@104)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@27) o_9@@104 edges) (+ (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@26) o_9@@104 edges) FullPerm)))) (=> (not (and (and (select res_copy_nodes@3 (invRecv32 o_9@@104)) (< NoPerm FullPerm)) (qpRange32 o_9@@104))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@27) o_9@@104 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@26) o_9@@104 edges))))
 :qid |stdinbpl.2689:36|
 :skolemid |337|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@27) o_9@@104 edges))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@105 T@Ref) (f_5@@77 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@26) o_9@@105 f_5@@77) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@27) o_9@@105 f_5@@77)))
 :qid |stdinbpl.2693:43|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@26) o_9@@105 f_5@@77))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@27) o_9@@105 f_5@@77))
)) (forall ((o_9@@106 T@Ref) (f_5@@78 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@26) o_9@@106 f_5@@78) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@27) o_9@@106 f_5@@78)))
 :qid |stdinbpl.2693:43|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@26) o_9@@106 f_5@@78))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@27) o_9@@106 f_5@@78))
))) (forall ((o_9@@107 T@Ref) (f_5@@79 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@26) o_9@@107 f_5@@79) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@27) o_9@@107 f_5@@79)))
 :qid |stdinbpl.2693:43|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@26) o_9@@107 f_5@@79))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@27) o_9@@107 f_5@@79))
))) (forall ((o_9@@108 T@Ref) (f_5@@80 T@Field_43433_43434) ) (!  (=> (not (= f_5@@80 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@26) o_9@@108 f_5@@80) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@27) o_9@@108 f_5@@80)))
 :qid |stdinbpl.2693:43|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@26) o_9@@108 f_5@@80))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@27) o_9@@108 f_5@@80))
))) (forall ((o_9@@109 T@Ref) (f_5@@81 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@26) o_9@@109 f_5@@81) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@27) o_9@@109 f_5@@81)))
 :qid |stdinbpl.2693:43|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@26) o_9@@109 f_5@@81))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@27) o_9@@109 f_5@@81))
))) (forall ((o_9@@110 T@Ref) (f_5@@82 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@26) o_9@@110 f_5@@82) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@27) o_9@@110 f_5@@82)))
 :qid |stdinbpl.2693:43|
 :skolemid |338|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@26) o_9@@110 f_5@@82))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@27) o_9@@110 f_5@@82))
))) (and (and (state ExhaleHeap@2 QPMask@27) (state ExhaleHeap@2 QPMask@27)) (and (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@2) newNode@0 $allocated) (state ExhaleHeap@2 QPMask@27)))) (and (=> (= (ControlFlow 0 118) (- 0 125)) (HasDirectPerm_22317_22318 QPMask@27 freshObj@0 edges)) (=> (HasDirectPerm_22317_22318 QPMask@27 freshObj@0 edges) (and (=> (= (ControlFlow 0 118) (- 0 124)) (= FullPerm (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@27) freshObj@0 edges))) (=> (= FullPerm (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@27) freshObj@0 edges)) (=> (and (= Heap@3 (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@2) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| ExhaleHeap@2) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@2) (store (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) freshObj@0 edges (insert_edge (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@2) freshObj@0 edges) i_6_2@1 newNode@0)) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| ExhaleHeap@2) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| ExhaleHeap@2))) (state Heap@3 QPMask@27)) (and (=> (= (ControlFlow 0 118) (- 0 123)) (select res_copy_nodes@3 freshObj@0)) (=> (select res_copy_nodes@3 freshObj@0) (and (=> (= (ControlFlow 0 118) (- 0 122)) (select setOfRef this)) (=> (select setOfRef this) (and (=> (= (ControlFlow 0 118) (- 0 121)) (forall ((x_74 T@Ref) ) (!  (=> (and (select setOfRef x_74) (dummyFunction_6609 (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@3) x_74 val))) (>= rd NoPerm))
 :qid |stdinbpl.2723:25|
 :skolemid |339|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@3) x_74 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@28) x_74 val))
 :pattern ( (select setOfRef x_74))
))) (=> (forall ((x_74@@0 T@Ref) ) (!  (=> (and (select setOfRef x_74@@0) (dummyFunction_6609 (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@3) x_74@@0 val))) (>= rd NoPerm))
 :qid |stdinbpl.2723:25|
 :skolemid |339|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@3) x_74@@0 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@28) x_74@@0 val))
 :pattern ( (select setOfRef x_74@@0))
)) (and (=> (= (ControlFlow 0 118) (- 0 120)) (forall ((x_74@@1 T@Ref) (x_74_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_74@@1 x_74_1)) (select setOfRef x_74@@1)) (select setOfRef x_74_1)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_74@@1 x_74_1)))
 :qid |stdinbpl.2730:25|
 :skolemid |340|
 :pattern ( (neverTriggered33 x_74@@1) (neverTriggered33 x_74_1))
))) (=> (forall ((x_74@@2 T@Ref) (x_74_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_74@@2 x_74_1@@0)) (select setOfRef x_74@@2)) (select setOfRef x_74_1@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_74@@2 x_74_1@@0)))
 :qid |stdinbpl.2730:25|
 :skolemid |340|
 :pattern ( (neverTriggered33 x_74@@2) (neverTriggered33 x_74_1@@0))
)) (and (=> (= (ControlFlow 0 118) (- 0 119)) (forall ((x_74@@3 T@Ref) ) (!  (=> (select setOfRef x_74@@3) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@27) x_74@@3 val) rd))
 :qid |stdinbpl.2737:25|
 :skolemid |341|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@3) x_74@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@28) x_74@@3 val))
 :pattern ( (select setOfRef x_74@@3))
))) (=> (forall ((x_74@@4 T@Ref) ) (!  (=> (select setOfRef x_74@@4) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@27) x_74@@4 val) rd))
 :qid |stdinbpl.2737:25|
 :skolemid |341|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@3) x_74@@4 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@28) x_74@@4 val))
 :pattern ( (select setOfRef x_74@@4))
)) (=> (forall ((x_74@@5 T@Ref) ) (!  (=> (and (select setOfRef x_74@@5) (< NoPerm rd)) (and (qpRange33 x_74@@5) (= (invRecv33 x_74@@5) x_74@@5)))
 :qid |stdinbpl.2743:30|
 :skolemid |342|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@3) x_74@@5 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@28) x_74@@5 val))
 :pattern ( (select setOfRef x_74@@5))
)) (=> (and (forall ((o_9@@111 T@Ref) ) (!  (=> (and (select setOfRef (invRecv33 o_9@@111)) (and (< NoPerm rd) (qpRange33 o_9@@111))) (= (invRecv33 o_9@@111) o_9@@111))
 :qid |stdinbpl.2747:30|
 :skolemid |343|
 :pattern ( (invRecv33 o_9@@111))
)) (forall ((o_9@@112 T@Ref) ) (!  (and (=> (and (select setOfRef (invRecv33 o_9@@112)) (and (< NoPerm rd) (qpRange33 o_9@@112))) (and (= (invRecv33 o_9@@112) o_9@@112) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@28) o_9@@112 val) (- (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@27) o_9@@112 val) rd)))) (=> (not (and (select setOfRef (invRecv33 o_9@@112)) (and (< NoPerm rd) (qpRange33 o_9@@112)))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@28) o_9@@112 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@27) o_9@@112 val))))
 :qid |stdinbpl.2753:30|
 :skolemid |344|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@28) o_9@@112 val))
))) (=> (and (and (and (and (and (forall ((o_9@@113 T@Ref) (f_5@@83 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@27) o_9@@113 f_5@@83) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@28) o_9@@113 f_5@@83)))
 :qid |stdinbpl.2759:37|
 :skolemid |345|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@28) o_9@@113 f_5@@83))
)) (forall ((o_9@@114 T@Ref) (f_5@@84 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@27) o_9@@114 f_5@@84) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@28) o_9@@114 f_5@@84)))
 :qid |stdinbpl.2759:37|
 :skolemid |345|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@28) o_9@@114 f_5@@84))
))) (forall ((o_9@@115 T@Ref) (f_5@@85 T@Field_43387_6609) ) (!  (=> (not (= f_5@@85 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@27) o_9@@115 f_5@@85) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@28) o_9@@115 f_5@@85)))
 :qid |stdinbpl.2759:37|
 :skolemid |345|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@28) o_9@@115 f_5@@85))
))) (forall ((o_9@@116 T@Ref) (f_5@@86 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@27) o_9@@116 f_5@@86) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@28) o_9@@116 f_5@@86)))
 :qid |stdinbpl.2759:37|
 :skolemid |345|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@28) o_9@@116 f_5@@86))
))) (forall ((o_9@@117 T@Ref) (f_5@@87 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@27) o_9@@117 f_5@@87) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@28) o_9@@117 f_5@@87)))
 :qid |stdinbpl.2759:37|
 :skolemid |345|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@28) o_9@@117 f_5@@87))
))) (forall ((o_9@@118 T@Ref) (f_5@@88 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@27) o_9@@118 f_5@@88) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@28) o_9@@118 f_5@@88)))
 :qid |stdinbpl.2759:37|
 :skolemid |345|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@28) o_9@@118 f_5@@88))
))) (and (and (=> (= (ControlFlow 0 118) 114) anon194_Else_correct) (=> (= (ControlFlow 0 118) 85) anon195_Then_correct)) (=> (= (ControlFlow 0 118) 87) anon195_Else_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon102_correct true))
(let ((anon193_Else_correct  (=> (and (not (|Seq#Contains_22310| (map_domain res_node_map@1) x_62)) (= (ControlFlow 0 83) 80)) anon102_correct)))
(let ((anon193_Then_correct  (=> (|Seq#Contains_22310| (map_domain res_node_map@1) x_62) (and (=> (= (ControlFlow 0 81) (- 0 82)) (select res_copy_nodes@1 (lookup_1 res_node_map@1 x_62))) (=> (select res_copy_nodes@1 (lookup_1 res_node_map@1 x_62)) (=> (= (ControlFlow 0 81) 80) anon102_correct))))))
(let ((anon190_Else_correct  (=> (forall ((x_61_1 T@Ref) (i$0_1_1 Int) ) (!  (=> (and (select setOfRef x_61_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_61_1 edges)) i$0_1_1)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_61_1 edges) i$0_1_1)))
 :qid |stdinbpl.2425:34|
 :skolemid |295|
 :pattern ( (select setOfRef x_61_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_61_1 edges)) i$0_1_1))
 :pattern ( (select setOfRef x_61_1) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_61_1 edges) i$0_1_1))
 :pattern ( (select setOfRef x_61_1) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_61_1 edges) i$0_1_1)))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_61_1 edges)) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_61_1 edges) i$0_1_1))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_61_1 edges)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_61_1 edges) i$0_1_1)))
 :pattern ( (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_61_1 edges)) i$0_1_1))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_61_1 edges) i$0_1_1)))
)) (and (and (=> (= (ControlFlow 0 136) 118) anon192_Else_correct) (=> (= (ControlFlow 0 136) 81) anon193_Then_correct)) (=> (= (ControlFlow 0 136) 83) anon193_Else_correct)))))
(let ((anon98_correct true))
(let ((anon191_Else_correct  (=> (and (not (and (select setOfRef x_60) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_60 edges)) i$0))) (= (ControlFlow 0 79) 76)) anon98_correct)))
(let ((anon191_Then_correct  (=> (and (select setOfRef x_60) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_60 edges)) i$0)) (and (=> (= (ControlFlow 0 77) (- 0 78)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_60 edges) i$0))) (=> (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_60 edges) i$0)) (=> (= (ControlFlow 0 77) 76) anon98_correct))))))
(let ((anon189_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (=> (and (select res_copy_nodes@1 freshObj@0) (select setOfRef this)) (and (=> (= (ControlFlow 0 137) (- 0 155)) (forall ((x_54 T@Ref) (x_54_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_54 x_54_1)) (select setOfRef x_54)) (select setOfRef x_54_1)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_54 x_54_1)))
 :qid |stdinbpl.2102:23|
 :skolemid |250|
))) (=> (forall ((x_54@@0 T@Ref) (x_54_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_54@@0 x_54_1@@0)) (select setOfRef x_54@@0)) (select setOfRef x_54_1@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_54@@0 x_54_1@@0)))
 :qid |stdinbpl.2102:23|
 :skolemid |250|
)) (=> (and (forall ((x_54@@1 T@Ref) ) (!  (=> (and (select setOfRef x_54@@1) (< NoPerm rd)) (and (qpRange21 x_54@@1) (= (invRecv21 x_54@@1) x_54@@1)))
 :qid |stdinbpl.2108:30|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_54@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@8) x_54@@1 val))
 :pattern ( (select setOfRef x_54@@1))
)) (forall ((o_9@@119 T@Ref) ) (!  (=> (and (and (select setOfRef (invRecv21 o_9@@119)) (< NoPerm rd)) (qpRange21 o_9@@119)) (= (invRecv21 o_9@@119) o_9@@119))
 :qid |stdinbpl.2112:30|
 :skolemid |252|
 :pattern ( (invRecv21 o_9@@119))
))) (and (=> (= (ControlFlow 0 137) (- 0 154)) (forall ((x_54@@2 T@Ref) ) (!  (=> (select setOfRef x_54@@2) (>= rd NoPerm))
 :qid |stdinbpl.2118:23|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_54@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@8) x_54@@2 val))
 :pattern ( (select setOfRef x_54@@2))
))) (=> (forall ((x_54@@3 T@Ref) ) (!  (=> (select setOfRef x_54@@3) (>= rd NoPerm))
 :qid |stdinbpl.2118:23|
 :skolemid |253|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_54@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@8) x_54@@3 val))
 :pattern ( (select setOfRef x_54@@3))
)) (=> (and (forall ((x_54@@4 T@Ref) ) (!  (=> (and (select setOfRef x_54@@4) (> rd NoPerm)) (not (= x_54@@4 null)))
 :qid |stdinbpl.2124:30|
 :skolemid |254|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_54@@4 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@8) x_54@@4 val))
 :pattern ( (select setOfRef x_54@@4))
)) (forall ((o_9@@120 T@Ref) ) (!  (and (=> (and (and (select setOfRef (invRecv21 o_9@@120)) (< NoPerm rd)) (qpRange21 o_9@@120)) (and (=> (< NoPerm rd) (= (invRecv21 o_9@@120) o_9@@120)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@8) o_9@@120 val) (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_9@@120 val) rd)))) (=> (not (and (and (select setOfRef (invRecv21 o_9@@120)) (< NoPerm rd)) (qpRange21 o_9@@120))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@8) o_9@@120 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_9@@120 val))))
 :qid |stdinbpl.2130:30|
 :skolemid |255|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@8) o_9@@120 val))
))) (=> (and (and (and (and (and (and (forall ((o_9@@121 T@Ref) (f_5@@89 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| ZeroMask) o_9@@121 f_5@@89) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@8) o_9@@121 f_5@@89)))
 :qid |stdinbpl.2134:37|
 :skolemid |256|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| ZeroMask) o_9@@121 f_5@@89))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@8) o_9@@121 f_5@@89))
)) (forall ((o_9@@122 T@Ref) (f_5@@90 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| ZeroMask) o_9@@122 f_5@@90) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@8) o_9@@122 f_5@@90)))
 :qid |stdinbpl.2134:37|
 :skolemid |256|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| ZeroMask) o_9@@122 f_5@@90))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@8) o_9@@122 f_5@@90))
))) (forall ((o_9@@123 T@Ref) (f_5@@91 T@Field_43387_6609) ) (!  (=> (not (= f_5@@91 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_9@@123 f_5@@91) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@8) o_9@@123 f_5@@91)))
 :qid |stdinbpl.2134:37|
 :skolemid |256|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_9@@123 f_5@@91))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@8) o_9@@123 f_5@@91))
))) (forall ((o_9@@124 T@Ref) (f_5@@92 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| ZeroMask) o_9@@124 f_5@@92) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@8) o_9@@124 f_5@@92)))
 :qid |stdinbpl.2134:37|
 :skolemid |256|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| ZeroMask) o_9@@124 f_5@@92))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@8) o_9@@124 f_5@@92))
))) (forall ((o_9@@125 T@Ref) (f_5@@93 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| ZeroMask) o_9@@125 f_5@@93) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@8) o_9@@125 f_5@@93)))
 :qid |stdinbpl.2134:37|
 :skolemid |256|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| ZeroMask) o_9@@125 f_5@@93))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@8) o_9@@125 f_5@@93))
))) (forall ((o_9@@126 T@Ref) (f_5@@94 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| ZeroMask) o_9@@126 f_5@@94) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@8) o_9@@126 f_5@@94)))
 :qid |stdinbpl.2134:37|
 :skolemid |256|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| ZeroMask) o_9@@126 f_5@@94))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@8) o_9@@126 f_5@@94))
))) (and (state ExhaleHeap@0 QPMask@8) (forall ((x_55 T@Ref) ) (!  (=> (select setOfRef x_55) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_55 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_55 val)))
 :qid |stdinbpl.2140:28|
 :skolemid |257|
 :pattern ( (select setOfRef x_55))
)))) (and (=> (= (ControlFlow 0 137) (- 0 153)) (forall ((x_56 T@Ref) (x_56_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_56 x_56_1)) (select setOfRef x_56)) (select setOfRef x_56_1)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_56 x_56_1)))
 :qid |stdinbpl.2146:23|
 :skolemid |258|
))) (=> (forall ((x_56@@0 T@Ref) (x_56_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_56@@0 x_56_1@@0)) (select setOfRef x_56@@0)) (select setOfRef x_56_1@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_56@@0 x_56_1@@0)))
 :qid |stdinbpl.2146:23|
 :skolemid |258|
)) (=> (and (forall ((x_56@@1 T@Ref) ) (!  (=> (and (select setOfRef x_56@@1) (< NoPerm rd)) (and (qpRange22 x_56@@1) (= (invRecv22 x_56@@1) x_56@@1)))
 :qid |stdinbpl.2152:30|
 :skolemid |259|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_56@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@9) x_56@@1 edges))
 :pattern ( (select setOfRef x_56@@1))
)) (forall ((o_9@@127 T@Ref) ) (!  (=> (and (and (select setOfRef (invRecv22 o_9@@127)) (< NoPerm rd)) (qpRange22 o_9@@127)) (= (invRecv22 o_9@@127) o_9@@127))
 :qid |stdinbpl.2156:30|
 :skolemid |260|
 :pattern ( (invRecv22 o_9@@127))
))) (and (=> (= (ControlFlow 0 137) (- 0 152)) (forall ((x_56@@2 T@Ref) ) (!  (=> (select setOfRef x_56@@2) (>= rd NoPerm))
 :qid |stdinbpl.2162:23|
 :skolemid |261|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_56@@2 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@9) x_56@@2 edges))
 :pattern ( (select setOfRef x_56@@2))
))) (=> (forall ((x_56@@3 T@Ref) ) (!  (=> (select setOfRef x_56@@3) (>= rd NoPerm))
 :qid |stdinbpl.2162:23|
 :skolemid |261|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_56@@3 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@9) x_56@@3 edges))
 :pattern ( (select setOfRef x_56@@3))
)) (=> (and (forall ((x_56@@4 T@Ref) ) (!  (=> (and (select setOfRef x_56@@4) (> rd NoPerm)) (not (= x_56@@4 null)))
 :qid |stdinbpl.2168:30|
 :skolemid |262|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_56@@4 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@9) x_56@@4 edges))
 :pattern ( (select setOfRef x_56@@4))
)) (forall ((o_9@@128 T@Ref) ) (!  (and (=> (and (and (select setOfRef (invRecv22 o_9@@128)) (< NoPerm rd)) (qpRange22 o_9@@128)) (and (=> (< NoPerm rd) (= (invRecv22 o_9@@128) o_9@@128)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@9) o_9@@128 edges) (+ (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@8) o_9@@128 edges) rd)))) (=> (not (and (and (select setOfRef (invRecv22 o_9@@128)) (< NoPerm rd)) (qpRange22 o_9@@128))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@9) o_9@@128 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@8) o_9@@128 edges))))
 :qid |stdinbpl.2174:30|
 :skolemid |263|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@9) o_9@@128 edges))
))) (=> (and (and (and (and (and (and (and (and (forall ((o_9@@129 T@Ref) (f_5@@95 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@8) o_9@@129 f_5@@95) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@9) o_9@@129 f_5@@95)))
 :qid |stdinbpl.2178:37|
 :skolemid |264|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@8) o_9@@129 f_5@@95))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@9) o_9@@129 f_5@@95))
)) (forall ((o_9@@130 T@Ref) (f_5@@96 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@8) o_9@@130 f_5@@96) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@9) o_9@@130 f_5@@96)))
 :qid |stdinbpl.2178:37|
 :skolemid |264|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@8) o_9@@130 f_5@@96))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@9) o_9@@130 f_5@@96))
))) (forall ((o_9@@131 T@Ref) (f_5@@97 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@8) o_9@@131 f_5@@97) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@9) o_9@@131 f_5@@97)))
 :qid |stdinbpl.2178:37|
 :skolemid |264|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@8) o_9@@131 f_5@@97))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@9) o_9@@131 f_5@@97))
))) (forall ((o_9@@132 T@Ref) (f_5@@98 T@Field_43433_43434) ) (!  (=> (not (= f_5@@98 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@8) o_9@@132 f_5@@98) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@9) o_9@@132 f_5@@98)))
 :qid |stdinbpl.2178:37|
 :skolemid |264|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@8) o_9@@132 f_5@@98))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@9) o_9@@132 f_5@@98))
))) (forall ((o_9@@133 T@Ref) (f_5@@99 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@8) o_9@@133 f_5@@99) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@9) o_9@@133 f_5@@99)))
 :qid |stdinbpl.2178:37|
 :skolemid |264|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@8) o_9@@133 f_5@@99))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@9) o_9@@133 f_5@@99))
))) (forall ((o_9@@134 T@Ref) (f_5@@100 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@8) o_9@@134 f_5@@100) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@9) o_9@@134 f_5@@100)))
 :qid |stdinbpl.2178:37|
 :skolemid |264|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@8) o_9@@134 f_5@@100))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@9) o_9@@134 f_5@@100))
))) (state ExhaleHeap@0 QPMask@9)) (and (forall ((x_57 T@Ref) ) (!  (=> (select setOfRef x_57) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_57 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_57 edges)))
 :qid |stdinbpl.2184:28|
 :skolemid |265|
 :pattern ( (select setOfRef x_57))
)) (forall ((j_8_2 Int) ) (!  (=> (select S@1 j_8_2) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) this edges) j_8_2)))
 :qid |stdinbpl.2188:28|
 :skolemid |266|
 :pattern ( (select S@1 j_8_2))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) this edges) j_8_2)))
)))) (and (and (forall ((r_14_1 T@Ref) (j_9_1 Int) ) (!  (=> (and (select setOfRef r_14_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_14_1 edges)) j_9_1)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_14_1 edges) j_9_1)))
 :qid |stdinbpl.2192:28|
 :skolemid |267|
 :pattern ( (select setOfRef r_14_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_14_1 edges)) j_9_1))
 :pattern ( (select setOfRef r_14_1) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_14_1 edges) j_9_1))
 :pattern ( (select setOfRef r_14_1) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_14_1 edges) j_9_1)))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_14_1 edges)) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_14_1 edges) j_9_1))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_14_1 edges)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_14_1 edges) j_9_1)))
 :pattern ( (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_14_1 edges)) j_9_1))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_14_1 edges) j_9_1)))
)) (|Set#Subset_22339| node_map_image res_copy_nodes@1)) (and (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef res_copy_nodes@1)) 0) (forall ((r_15 T@Ref) ) (!  (=> (|Seq#Contains_22310| (map_domain res_node_map@1) r_15) (select res_copy_nodes@1 (lookup_1 res_node_map@1 r_15)))
 :qid |stdinbpl.2198:28|
 :skolemid |268|
 :pattern ( (|Seq#ContainsTrigger_22306| (map_domain res_node_map@1) r_15))
 :pattern ( (|Seq#Contains_22310| (map_domain res_node_map@1) r_15))
 :pattern ( (select res_copy_nodes@1 (lookup_1 res_node_map@1 r_15)))
))))) (and (=> (= (ControlFlow 0 137) (- 0 151)) (forall ((r_16_1 T@Ref) (r_16_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_16_1 r_16_2)) (select res_copy_nodes@1 r_16_1)) (select res_copy_nodes@1 r_16_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_16_1 r_16_2)))
 :qid |stdinbpl.2204:23|
 :skolemid |269|
))) (=> (forall ((r_16_1@@0 T@Ref) (r_16_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_16_1@@0 r_16_2@@0)) (select res_copy_nodes@1 r_16_1@@0)) (select res_copy_nodes@1 r_16_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_16_1@@0 r_16_2@@0)))
 :qid |stdinbpl.2204:23|
 :skolemid |269|
)) (=> (and (and (forall ((r_16_1@@1 T@Ref) ) (!  (=> (and (select res_copy_nodes@1 r_16_1@@1) (< NoPerm FullPerm)) (and (qpRange23 r_16_1@@1) (= (invRecv23 r_16_1@@1) r_16_1@@1)))
 :qid |stdinbpl.2210:30|
 :skolemid |270|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) r_16_1@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@10) r_16_1@@1 val))
 :pattern ( (select res_copy_nodes@1 r_16_1@@1))
)) (forall ((o_9@@135 T@Ref) ) (!  (=> (and (and (select res_copy_nodes@1 (invRecv23 o_9@@135)) (< NoPerm FullPerm)) (qpRange23 o_9@@135)) (= (invRecv23 o_9@@135) o_9@@135))
 :qid |stdinbpl.2214:30|
 :skolemid |271|
 :pattern ( (invRecv23 o_9@@135))
))) (and (forall ((r_16_1@@2 T@Ref) ) (!  (=> (select res_copy_nodes@1 r_16_1@@2) (not (= r_16_1@@2 null)))
 :qid |stdinbpl.2220:30|
 :skolemid |272|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) r_16_1@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@10) r_16_1@@2 val))
 :pattern ( (select res_copy_nodes@1 r_16_1@@2))
)) (forall ((o_9@@136 T@Ref) ) (!  (and (=> (and (and (select res_copy_nodes@1 (invRecv23 o_9@@136)) (< NoPerm FullPerm)) (qpRange23 o_9@@136)) (and (=> (< NoPerm FullPerm) (= (invRecv23 o_9@@136) o_9@@136)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@10) o_9@@136 val) (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@9) o_9@@136 val) FullPerm)))) (=> (not (and (and (select res_copy_nodes@1 (invRecv23 o_9@@136)) (< NoPerm FullPerm)) (qpRange23 o_9@@136))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@10) o_9@@136 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@9) o_9@@136 val))))
 :qid |stdinbpl.2226:30|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@10) o_9@@136 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@137 T@Ref) (f_5@@101 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@9) o_9@@137 f_5@@101) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@10) o_9@@137 f_5@@101)))
 :qid |stdinbpl.2230:37|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@9) o_9@@137 f_5@@101))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@10) o_9@@137 f_5@@101))
)) (forall ((o_9@@138 T@Ref) (f_5@@102 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@9) o_9@@138 f_5@@102) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@10) o_9@@138 f_5@@102)))
 :qid |stdinbpl.2230:37|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@9) o_9@@138 f_5@@102))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@10) o_9@@138 f_5@@102))
))) (forall ((o_9@@139 T@Ref) (f_5@@103 T@Field_43387_6609) ) (!  (=> (not (= f_5@@103 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@9) o_9@@139 f_5@@103) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@10) o_9@@139 f_5@@103)))
 :qid |stdinbpl.2230:37|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@9) o_9@@139 f_5@@103))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@10) o_9@@139 f_5@@103))
))) (forall ((o_9@@140 T@Ref) (f_5@@104 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@9) o_9@@140 f_5@@104) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@10) o_9@@140 f_5@@104)))
 :qid |stdinbpl.2230:37|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@9) o_9@@140 f_5@@104))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@10) o_9@@140 f_5@@104))
))) (forall ((o_9@@141 T@Ref) (f_5@@105 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@9) o_9@@141 f_5@@105) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@10) o_9@@141 f_5@@105)))
 :qid |stdinbpl.2230:37|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@9) o_9@@141 f_5@@105))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@10) o_9@@141 f_5@@105))
))) (forall ((o_9@@142 T@Ref) (f_5@@106 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@9) o_9@@142 f_5@@106) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@10) o_9@@142 f_5@@106)))
 :qid |stdinbpl.2230:37|
 :skolemid |274|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@9) o_9@@142 f_5@@106))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@10) o_9@@142 f_5@@106))
))) (state ExhaleHeap@0 QPMask@10)) (and (=> (= (ControlFlow 0 137) (- 0 150)) (forall ((r_17 T@Ref) (r_17_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_17 r_17_1)) (select res_copy_nodes@1 r_17)) (select res_copy_nodes@1 r_17_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_17 r_17_1)))
 :qid |stdinbpl.2238:23|
 :skolemid |275|
))) (=> (forall ((r_17@@0 T@Ref) (r_17_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_17@@0 r_17_1@@0)) (select res_copy_nodes@1 r_17@@0)) (select res_copy_nodes@1 r_17_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_17@@0 r_17_1@@0)))
 :qid |stdinbpl.2238:23|
 :skolemid |275|
)) (=> (and (and (forall ((r_17@@1 T@Ref) ) (!  (=> (and (select res_copy_nodes@1 r_17@@1) (< NoPerm FullPerm)) (and (qpRange24 r_17@@1) (= (invRecv24 r_17@@1) r_17@@1)))
 :qid |stdinbpl.2244:30|
 :skolemid |276|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_17@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@11) r_17@@1 edges))
 :pattern ( (select res_copy_nodes@1 r_17@@1))
)) (forall ((o_9@@143 T@Ref) ) (!  (=> (and (and (select res_copy_nodes@1 (invRecv24 o_9@@143)) (< NoPerm FullPerm)) (qpRange24 o_9@@143)) (= (invRecv24 o_9@@143) o_9@@143))
 :qid |stdinbpl.2248:30|
 :skolemid |277|
 :pattern ( (invRecv24 o_9@@143))
))) (and (forall ((r_17@@2 T@Ref) ) (!  (=> (select res_copy_nodes@1 r_17@@2) (not (= r_17@@2 null)))
 :qid |stdinbpl.2254:30|
 :skolemid |278|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_17@@2 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@11) r_17@@2 edges))
 :pattern ( (select res_copy_nodes@1 r_17@@2))
)) (forall ((o_9@@144 T@Ref) ) (!  (and (=> (and (and (select res_copy_nodes@1 (invRecv24 o_9@@144)) (< NoPerm FullPerm)) (qpRange24 o_9@@144)) (and (=> (< NoPerm FullPerm) (= (invRecv24 o_9@@144) o_9@@144)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@11) o_9@@144 edges) (+ (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@10) o_9@@144 edges) FullPerm)))) (=> (not (and (and (select res_copy_nodes@1 (invRecv24 o_9@@144)) (< NoPerm FullPerm)) (qpRange24 o_9@@144))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@11) o_9@@144 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@10) o_9@@144 edges))))
 :qid |stdinbpl.2260:30|
 :skolemid |279|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@11) o_9@@144 edges))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@145 T@Ref) (f_5@@107 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@10) o_9@@145 f_5@@107) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@11) o_9@@145 f_5@@107)))
 :qid |stdinbpl.2264:37|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@10) o_9@@145 f_5@@107))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@11) o_9@@145 f_5@@107))
)) (forall ((o_9@@146 T@Ref) (f_5@@108 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@10) o_9@@146 f_5@@108) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@11) o_9@@146 f_5@@108)))
 :qid |stdinbpl.2264:37|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@10) o_9@@146 f_5@@108))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@11) o_9@@146 f_5@@108))
))) (forall ((o_9@@147 T@Ref) (f_5@@109 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@10) o_9@@147 f_5@@109) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@11) o_9@@147 f_5@@109)))
 :qid |stdinbpl.2264:37|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@10) o_9@@147 f_5@@109))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@11) o_9@@147 f_5@@109))
))) (forall ((o_9@@148 T@Ref) (f_5@@110 T@Field_43433_43434) ) (!  (=> (not (= f_5@@110 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@10) o_9@@148 f_5@@110) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@11) o_9@@148 f_5@@110)))
 :qid |stdinbpl.2264:37|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@10) o_9@@148 f_5@@110))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@11) o_9@@148 f_5@@110))
))) (forall ((o_9@@149 T@Ref) (f_5@@111 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@10) o_9@@149 f_5@@111) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@11) o_9@@149 f_5@@111)))
 :qid |stdinbpl.2264:37|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@10) o_9@@149 f_5@@111))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@11) o_9@@149 f_5@@111))
))) (forall ((o_9@@150 T@Ref) (f_5@@112 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@10) o_9@@150 f_5@@112) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@11) o_9@@150 f_5@@112)))
 :qid |stdinbpl.2264:37|
 :skolemid |280|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@10) o_9@@150 f_5@@112))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@11) o_9@@150 f_5@@112))
))) (and (state ExhaleHeap@0 QPMask@11) (state ExhaleHeap@0 QPMask@11))) (and (and (> (|Set#Card_6709| S@1) 0) (state ExhaleHeap@0 QPMask@11)) (and (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@0) newNode $allocated) (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| ExhaleHeap@0) nodeForId $allocated)))) (and (=> (= (ControlFlow 0 137) (- 0 149)) (< 0 (|Set#Card_6709| S@1))) (=> (< 0 (|Set#Card_6709| S@1)) (=> (and (and (select S@1 i_6_2@1) (|Set#Equal_6709| S@2 (|Set#Difference_6770| S@1 (|Set#Singleton_6734| i_6_2@1)))) (and (state ExhaleHeap@0 QPMask@11) (state ExhaleHeap@0 QPMask@11))) (and (=> (= (ControlFlow 0 137) (- 0 148)) (HasDirectPerm_22317_22318 QPMask@11 this edges)) (=> (HasDirectPerm_22317_22318 QPMask@11 this edges) (=> (= nodeForId@0 (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) this edges) i_6_2@1)) (=> (and (state ExhaleHeap@0 QPMask@11) (= arg_rd@0 (/ rd (to_real 2)))) (and (=> (= (ControlFlow 0 137) (- 0 147)) (< NoPerm arg_rd@0)) (=> (< NoPerm arg_rd@0) (and (=> (= (ControlFlow 0 137) (- 0 146)) (not (= nodeForId@0 null))) (=> (not (= nodeForId@0 null)) (and (=> (= (ControlFlow 0 137) (- 0 145)) (select setOfRef nodeForId@0)) (=> (select setOfRef nodeForId@0) (and (=> (= (ControlFlow 0 137) (- 0 144)) (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef res_copy_nodes@1)) 0)) (=> (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef res_copy_nodes@1)) 0) (and (=> (= (ControlFlow 0 137) (- 0 143)) (forall ((x_58 T@Ref) ) (!  (=> (and (select setOfRef x_58) (dummyFunction_6609 (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_58 val))) (>= arg_rd@0 NoPerm))
 :qid |stdinbpl.2332:31|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_58 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@12) x_58 val))
 :pattern ( (select setOfRef x_58))
))) (=> (forall ((x_58@@0 T@Ref) ) (!  (=> (and (select setOfRef x_58@@0) (dummyFunction_6609 (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_58@@0 val))) (>= arg_rd@0 NoPerm))
 :qid |stdinbpl.2332:31|
 :skolemid |281|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_58@@0 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@12) x_58@@0 val))
 :pattern ( (select setOfRef x_58@@0))
)) (and (=> (= (ControlFlow 0 137) (- 0 142)) (forall ((x_58@@1 T@Ref) (x_58_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_58@@1 x_58_1)) (select setOfRef x_58@@1)) (select setOfRef x_58_1)) (< NoPerm arg_rd@0)) (< NoPerm arg_rd@0)) (not (= x_58@@1 x_58_1)))
 :qid |stdinbpl.2339:31|
 :skolemid |282|
 :pattern ( (neverTriggered25 x_58@@1) (neverTriggered25 x_58_1))
))) (=> (forall ((x_58@@2 T@Ref) (x_58_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_58@@2 x_58_1@@0)) (select setOfRef x_58@@2)) (select setOfRef x_58_1@@0)) (< NoPerm arg_rd@0)) (< NoPerm arg_rd@0)) (not (= x_58@@2 x_58_1@@0)))
 :qid |stdinbpl.2339:31|
 :skolemid |282|
 :pattern ( (neverTriggered25 x_58@@2) (neverTriggered25 x_58_1@@0))
)) (and (=> (= (ControlFlow 0 137) (- 0 141)) (forall ((x_58@@3 T@Ref) ) (!  (=> (select setOfRef x_58@@3) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@11) x_58@@3 val) arg_rd@0))
 :qid |stdinbpl.2346:31|
 :skolemid |283|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_58@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@12) x_58@@3 val))
 :pattern ( (select setOfRef x_58@@3))
))) (=> (forall ((x_58@@4 T@Ref) ) (!  (=> (select setOfRef x_58@@4) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@11) x_58@@4 val) arg_rd@0))
 :qid |stdinbpl.2346:31|
 :skolemid |283|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_58@@4 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@12) x_58@@4 val))
 :pattern ( (select setOfRef x_58@@4))
)) (=> (forall ((x_58@@5 T@Ref) ) (!  (=> (and (select setOfRef x_58@@5) (< NoPerm arg_rd@0)) (and (qpRange25 x_58@@5) (= (invRecv25 x_58@@5) x_58@@5)))
 :qid |stdinbpl.2352:36|
 :skolemid |284|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_58@@5 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@12) x_58@@5 val))
 :pattern ( (select setOfRef x_58@@5))
)) (=> (and (forall ((o_9@@151 T@Ref) ) (!  (=> (and (select setOfRef (invRecv25 o_9@@151)) (and (< NoPerm arg_rd@0) (qpRange25 o_9@@151))) (= (invRecv25 o_9@@151) o_9@@151))
 :qid |stdinbpl.2356:36|
 :skolemid |285|
 :pattern ( (invRecv25 o_9@@151))
)) (forall ((o_9@@152 T@Ref) ) (!  (and (=> (and (select setOfRef (invRecv25 o_9@@152)) (and (< NoPerm arg_rd@0) (qpRange25 o_9@@152))) (and (= (invRecv25 o_9@@152) o_9@@152) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@12) o_9@@152 val) (- (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@11) o_9@@152 val) arg_rd@0)))) (=> (not (and (select setOfRef (invRecv25 o_9@@152)) (and (< NoPerm arg_rd@0) (qpRange25 o_9@@152)))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@12) o_9@@152 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@11) o_9@@152 val))))
 :qid |stdinbpl.2362:36|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@12) o_9@@152 val))
))) (=> (and (and (and (and (and (forall ((o_9@@153 T@Ref) (f_5@@113 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@11) o_9@@153 f_5@@113) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@12) o_9@@153 f_5@@113)))
 :qid |stdinbpl.2368:43|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@12) o_9@@153 f_5@@113))
)) (forall ((o_9@@154 T@Ref) (f_5@@114 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@11) o_9@@154 f_5@@114) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@12) o_9@@154 f_5@@114)))
 :qid |stdinbpl.2368:43|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@12) o_9@@154 f_5@@114))
))) (forall ((o_9@@155 T@Ref) (f_5@@115 T@Field_43387_6609) ) (!  (=> (not (= f_5@@115 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@11) o_9@@155 f_5@@115) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@12) o_9@@155 f_5@@115)))
 :qid |stdinbpl.2368:43|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@12) o_9@@155 f_5@@115))
))) (forall ((o_9@@156 T@Ref) (f_5@@116 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@11) o_9@@156 f_5@@116) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@12) o_9@@156 f_5@@116)))
 :qid |stdinbpl.2368:43|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@12) o_9@@156 f_5@@116))
))) (forall ((o_9@@157 T@Ref) (f_5@@117 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@11) o_9@@157 f_5@@117) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@12) o_9@@157 f_5@@117)))
 :qid |stdinbpl.2368:43|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@12) o_9@@157 f_5@@117))
))) (forall ((o_9@@158 T@Ref) (f_5@@118 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@11) o_9@@158 f_5@@118) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@12) o_9@@158 f_5@@118)))
 :qid |stdinbpl.2368:43|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@12) o_9@@158 f_5@@118))
))) (and (=> (= (ControlFlow 0 137) (- 0 140)) (forall ((x_59 T@Ref) ) (!  (=> (and (select setOfRef x_59) (dummyFunction_22318 (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_59 edges))) (>= arg_rd@0 NoPerm))
 :qid |stdinbpl.2377:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_59 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@13) x_59 edges))
 :pattern ( (select setOfRef x_59))
))) (=> (forall ((x_59@@0 T@Ref) ) (!  (=> (and (select setOfRef x_59@@0) (dummyFunction_22318 (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_59@@0 edges))) (>= arg_rd@0 NoPerm))
 :qid |stdinbpl.2377:31|
 :skolemid |288|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_59@@0 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@13) x_59@@0 edges))
 :pattern ( (select setOfRef x_59@@0))
)) (and (=> (= (ControlFlow 0 137) (- 0 139)) (forall ((x_59@@1 T@Ref) (x_59_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_59@@1 x_59_1)) (select setOfRef x_59@@1)) (select setOfRef x_59_1)) (< NoPerm arg_rd@0)) (< NoPerm arg_rd@0)) (not (= x_59@@1 x_59_1)))
 :qid |stdinbpl.2384:31|
 :skolemid |289|
 :pattern ( (neverTriggered26 x_59@@1) (neverTriggered26 x_59_1))
))) (=> (forall ((x_59@@2 T@Ref) (x_59_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_59@@2 x_59_1@@0)) (select setOfRef x_59@@2)) (select setOfRef x_59_1@@0)) (< NoPerm arg_rd@0)) (< NoPerm arg_rd@0)) (not (= x_59@@2 x_59_1@@0)))
 :qid |stdinbpl.2384:31|
 :skolemid |289|
 :pattern ( (neverTriggered26 x_59@@2) (neverTriggered26 x_59_1@@0))
)) (and (=> (= (ControlFlow 0 137) (- 0 138)) (forall ((x_59@@3 T@Ref) ) (!  (=> (select setOfRef x_59@@3) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@12) x_59@@3 edges) arg_rd@0))
 :qid |stdinbpl.2391:31|
 :skolemid |290|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_59@@3 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@13) x_59@@3 edges))
 :pattern ( (select setOfRef x_59@@3))
))) (=> (forall ((x_59@@4 T@Ref) ) (!  (=> (select setOfRef x_59@@4) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@12) x_59@@4 edges) arg_rd@0))
 :qid |stdinbpl.2391:31|
 :skolemid |290|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_59@@4 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@13) x_59@@4 edges))
 :pattern ( (select setOfRef x_59@@4))
)) (=> (forall ((x_59@@5 T@Ref) ) (!  (=> (and (select setOfRef x_59@@5) (< NoPerm arg_rd@0)) (and (qpRange26 x_59@@5) (= (invRecv26 x_59@@5) x_59@@5)))
 :qid |stdinbpl.2397:36|
 :skolemid |291|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_59@@5 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@13) x_59@@5 edges))
 :pattern ( (select setOfRef x_59@@5))
)) (=> (and (forall ((o_9@@159 T@Ref) ) (!  (=> (and (select setOfRef (invRecv26 o_9@@159)) (and (< NoPerm arg_rd@0) (qpRange26 o_9@@159))) (= (invRecv26 o_9@@159) o_9@@159))
 :qid |stdinbpl.2401:36|
 :skolemid |292|
 :pattern ( (invRecv26 o_9@@159))
)) (forall ((o_9@@160 T@Ref) ) (!  (and (=> (and (select setOfRef (invRecv26 o_9@@160)) (and (< NoPerm arg_rd@0) (qpRange26 o_9@@160))) (and (= (invRecv26 o_9@@160) o_9@@160) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@13) o_9@@160 edges) (- (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@12) o_9@@160 edges) arg_rd@0)))) (=> (not (and (select setOfRef (invRecv26 o_9@@160)) (and (< NoPerm arg_rd@0) (qpRange26 o_9@@160)))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@13) o_9@@160 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@12) o_9@@160 edges))))
 :qid |stdinbpl.2407:36|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@13) o_9@@160 edges))
))) (=> (and (and (and (and (and (forall ((o_9@@161 T@Ref) (f_5@@119 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@12) o_9@@161 f_5@@119) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@13) o_9@@161 f_5@@119)))
 :qid |stdinbpl.2413:43|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@13) o_9@@161 f_5@@119))
)) (forall ((o_9@@162 T@Ref) (f_5@@120 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@12) o_9@@162 f_5@@120) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@13) o_9@@162 f_5@@120)))
 :qid |stdinbpl.2413:43|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@13) o_9@@162 f_5@@120))
))) (forall ((o_9@@163 T@Ref) (f_5@@121 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@12) o_9@@163 f_5@@121) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@13) o_9@@163 f_5@@121)))
 :qid |stdinbpl.2413:43|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@13) o_9@@163 f_5@@121))
))) (forall ((o_9@@164 T@Ref) (f_5@@122 T@Field_43433_43434) ) (!  (=> (not (= f_5@@122 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@12) o_9@@164 f_5@@122) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@13) o_9@@164 f_5@@122)))
 :qid |stdinbpl.2413:43|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@13) o_9@@164 f_5@@122))
))) (forall ((o_9@@165 T@Ref) (f_5@@123 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@12) o_9@@165 f_5@@123) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@13) o_9@@165 f_5@@123)))
 :qid |stdinbpl.2413:43|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@13) o_9@@165 f_5@@123))
))) (forall ((o_9@@166 T@Ref) (f_5@@124 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@12) o_9@@166 f_5@@124) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@13) o_9@@166 f_5@@124)))
 :qid |stdinbpl.2413:43|
 :skolemid |294|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@13) o_9@@166 f_5@@124))
))) (and (and (=> (= (ControlFlow 0 137) 136) anon190_Else_correct) (=> (= (ControlFlow 0 137) 77) anon191_Then_correct)) (=> (= (ControlFlow 0 137) 79) anon191_Else_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon140_correct true))
(let ((anon211_Else_correct  (=> (and (not (|Seq#Contains_22310| (map_domain res_node_map@2) x_36_1)) (= (ControlFlow 0 53) 50)) anon140_correct)))
(let ((anon211_Then_correct  (=> (|Seq#Contains_22310| (map_domain res_node_map@2) x_36_1) (and (=> (= (ControlFlow 0 51) (- 0 52)) (select res_copy_nodes@2 (lookup_1 res_node_map@2 x_36_1))) (=> (select res_copy_nodes@2 (lookup_1 res_node_map@2 x_36_1)) (=> (= (ControlFlow 0 51) 50) anon140_correct))))))
(let ((anon210_Else_correct  (=> (forall ((x_37_1_1 T@Ref) ) (!  (=> (|Seq#Contains_22310| (map_domain res_node_map@2) x_37_1_1) (select res_copy_nodes@2 (lookup_1 res_node_map@2 x_37_1_1)))
 :qid |stdinbpl.3279:20|
 :skolemid |418|
 :pattern ( (|Seq#ContainsTrigger_22306| (map_domain res_node_map@2) x_37_1_1))
 :pattern ( (|Seq#Contains_22310| (map_domain res_node_map@2) x_37_1_1))
 :pattern ( (select res_copy_nodes@2 (lookup_1 res_node_map@2 x_37_1_1)))
)) (and (=> (= (ControlFlow 0 46) (- 0 49)) (forall ((x_38_1 T@Ref) (x_38_2 T@Ref) ) (!  (=> (and (and (and (and (not (= x_38_1 x_38_2)) (select res_copy_nodes@2 x_38_1)) (select res_copy_nodes@2 x_38_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_38_1 x_38_2)))
 :qid |stdinbpl.3290:17|
 :skolemid |419|
 :pattern ( (neverTriggered11 x_38_1) (neverTriggered11 x_38_2))
))) (=> (forall ((x_38_1@@0 T@Ref) (x_38_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_38_1@@0 x_38_2@@0)) (select res_copy_nodes@2 x_38_1@@0)) (select res_copy_nodes@2 x_38_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_38_1@@0 x_38_2@@0)))
 :qid |stdinbpl.3290:17|
 :skolemid |419|
 :pattern ( (neverTriggered11 x_38_1@@0) (neverTriggered11 x_38_2@@0))
)) (and (=> (= (ControlFlow 0 46) (- 0 48)) (forall ((x_38_1@@1 T@Ref) ) (!  (=> (select res_copy_nodes@2 x_38_1@@1) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@19) x_38_1@@1 val) FullPerm))
 :qid |stdinbpl.3297:17|
 :skolemid |420|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@2) x_38_1@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@20) x_38_1@@1 val))
 :pattern ( (select res_copy_nodes@2 x_38_1@@1))
))) (=> (forall ((x_38_1@@2 T@Ref) ) (!  (=> (select res_copy_nodes@2 x_38_1@@2) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@19) x_38_1@@2 val) FullPerm))
 :qid |stdinbpl.3297:17|
 :skolemid |420|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@2) x_38_1@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@20) x_38_1@@2 val))
 :pattern ( (select res_copy_nodes@2 x_38_1@@2))
)) (=> (forall ((x_38_1@@3 T@Ref) ) (!  (=> (and (select res_copy_nodes@2 x_38_1@@3) (< NoPerm FullPerm)) (and (qpRange11 x_38_1@@3) (= (invRecv11 x_38_1@@3) x_38_1@@3)))
 :qid |stdinbpl.3303:22|
 :skolemid |421|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@2) x_38_1@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@20) x_38_1@@3 val))
 :pattern ( (select res_copy_nodes@2 x_38_1@@3))
)) (=> (and (forall ((o_9@@167 T@Ref) ) (!  (=> (and (select res_copy_nodes@2 (invRecv11 o_9@@167)) (and (< NoPerm FullPerm) (qpRange11 o_9@@167))) (= (invRecv11 o_9@@167) o_9@@167))
 :qid |stdinbpl.3307:22|
 :skolemid |422|
 :pattern ( (invRecv11 o_9@@167))
)) (forall ((o_9@@168 T@Ref) ) (!  (and (=> (and (select res_copy_nodes@2 (invRecv11 o_9@@168)) (and (< NoPerm FullPerm) (qpRange11 o_9@@168))) (and (= (invRecv11 o_9@@168) o_9@@168) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@20) o_9@@168 val) (- (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@19) o_9@@168 val) FullPerm)))) (=> (not (and (select res_copy_nodes@2 (invRecv11 o_9@@168)) (and (< NoPerm FullPerm) (qpRange11 o_9@@168)))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@20) o_9@@168 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@19) o_9@@168 val))))
 :qid |stdinbpl.3313:22|
 :skolemid |423|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@20) o_9@@168 val))
))) (=> (and (and (and (and (and (forall ((o_9@@169 T@Ref) (f_5@@125 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@19) o_9@@169 f_5@@125) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@20) o_9@@169 f_5@@125)))
 :qid |stdinbpl.3319:29|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@20) o_9@@169 f_5@@125))
)) (forall ((o_9@@170 T@Ref) (f_5@@126 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@19) o_9@@170 f_5@@126) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@20) o_9@@170 f_5@@126)))
 :qid |stdinbpl.3319:29|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@20) o_9@@170 f_5@@126))
))) (forall ((o_9@@171 T@Ref) (f_5@@127 T@Field_43387_6609) ) (!  (=> (not (= f_5@@127 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@19) o_9@@171 f_5@@127) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@20) o_9@@171 f_5@@127)))
 :qid |stdinbpl.3319:29|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@20) o_9@@171 f_5@@127))
))) (forall ((o_9@@172 T@Ref) (f_5@@128 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@19) o_9@@172 f_5@@128) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@20) o_9@@172 f_5@@128)))
 :qid |stdinbpl.3319:29|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@20) o_9@@172 f_5@@128))
))) (forall ((o_9@@173 T@Ref) (f_5@@129 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@19) o_9@@173 f_5@@129) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@20) o_9@@173 f_5@@129)))
 :qid |stdinbpl.3319:29|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@20) o_9@@173 f_5@@129))
))) (forall ((o_9@@174 T@Ref) (f_5@@130 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@19) o_9@@174 f_5@@130) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@20) o_9@@174 f_5@@130)))
 :qid |stdinbpl.3319:29|
 :skolemid |424|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@20) o_9@@174 f_5@@130))
))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (forall ((x_39 T@Ref) (x_39_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_39 x_39_1)) (select res_copy_nodes@2 x_39)) (select res_copy_nodes@2 x_39_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_39 x_39_1)))
 :qid |stdinbpl.3331:17|
 :skolemid |425|
 :pattern ( (neverTriggered12 x_39) (neverTriggered12 x_39_1))
))) (=> (forall ((x_39@@0 T@Ref) (x_39_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_39@@0 x_39_1@@0)) (select res_copy_nodes@2 x_39@@0)) (select res_copy_nodes@2 x_39_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_39@@0 x_39_1@@0)))
 :qid |stdinbpl.3331:17|
 :skolemid |425|
 :pattern ( (neverTriggered12 x_39@@0) (neverTriggered12 x_39_1@@0))
)) (=> (= (ControlFlow 0 46) (- 0 45)) (forall ((x_39@@1 T@Ref) ) (!  (=> (select res_copy_nodes@2 x_39@@1) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@20) x_39@@1 edges) FullPerm))
 :qid |stdinbpl.3338:17|
 :skolemid |426|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_39@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@21) x_39@@1 edges))
 :pattern ( (select res_copy_nodes@2 x_39@@1))
)))))))))))))))
(let ((anon208_Else_correct  (=> (forall ((x_35_1_1 T@Ref) (i_5_1_1 Int) ) (!  (=> (and (select setOfRef x_35_1_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_35_1_1 edges)) i_5_1_1)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_35_1_1 edges) i_5_1_1)))
 :qid |stdinbpl.3266:20|
 :skolemid |417|
 :pattern ( (select setOfRef x_35_1_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_35_1_1 edges)) i_5_1_1))
 :pattern ( (select setOfRef x_35_1_1) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_35_1_1 edges) i_5_1_1))
 :pattern ( (select setOfRef x_35_1_1) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_35_1_1 edges) i_5_1_1)))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_35_1_1 edges)) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_35_1_1 edges) i_5_1_1))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_35_1_1 edges)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_35_1_1 edges) i_5_1_1)))
 :pattern ( (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_35_1_1 edges)) i_5_1_1))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_35_1_1 edges) i_5_1_1)))
)) (and (=> (= (ControlFlow 0 54) (- 0 55)) (|Set#Equal_22345| res_copy_nodes@2 (|Set#Union_22345| res_copy_nodes@2 node_map_image))) (=> (|Set#Equal_22345| res_copy_nodes@2 (|Set#Union_22345| res_copy_nodes@2 node_map_image)) (and (and (=> (= (ControlFlow 0 54) 46) anon210_Else_correct) (=> (= (ControlFlow 0 54) 51) anon211_Then_correct)) (=> (= (ControlFlow 0 54) 53) anon211_Else_correct)))))))
(let ((anon136_correct true))
(let ((anon209_Else_correct  (=> (and (not (and (select setOfRef x_34_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_34_1 edges)) i_4_1))) (= (ControlFlow 0 44) 41)) anon136_correct)))
(let ((anon209_Then_correct  (=> (and (select setOfRef x_34_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_34_1 edges)) i_4_1)) (and (=> (= (ControlFlow 0 42) (- 0 43)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_34_1 edges) i_4_1))) (=> (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_34_1 edges) i_4_1)) (=> (= (ControlFlow 0 42) 41) anon136_correct))))))
(let ((anon206_Else_correct  (=> (forall ((x_33_1_1 T@Ref) ) (!  (=> (select setOfRef x_33_1_1) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_33_1_1 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_33_1_1 edges)))
 :qid |stdinbpl.3255:20|
 :skolemid |416|
 :pattern ( (select setOfRef x_33_1_1))
)) (and (and (=> (= (ControlFlow 0 56) 54) anon208_Else_correct) (=> (= (ControlFlow 0 56) 42) anon209_Then_correct)) (=> (= (ControlFlow 0 56) 44) anon209_Else_correct)))))
(let ((anon132_correct true))
(let ((anon207_Else_correct  (=> (and (not (select setOfRef x_32_1)) (= (ControlFlow 0 40) 37)) anon132_correct)))
(let ((anon207_Then_correct  (=> (select setOfRef x_32_1) (and (=> (= (ControlFlow 0 38) (- 0 39)) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_32_1 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_32_1 edges))) (=> (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_32_1 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_32_1 edges)) (=> (= (ControlFlow 0 38) 37) anon132_correct))))))
(let ((anon204_Else_correct  (=> (forall ((x_30_1 T@Ref) ) (!  (=> (select setOfRef x_30_1) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@2) x_30_1 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_30_1 val)))
 :qid |stdinbpl.3199:20|
 :skolemid |408|
 :pattern ( (select setOfRef x_30_1))
)) (and (=> (= (ControlFlow 0 57) (- 0 60)) (forall ((x_31_1 T@Ref) ) (!  (=> (and (select setOfRef x_31_1) (dummyFunction_22318 (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_31_1 edges))) (>= rd NoPerm))
 :qid |stdinbpl.3207:17|
 :skolemid |409|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_31_1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@19) x_31_1 edges))
 :pattern ( (select setOfRef x_31_1))
))) (=> (forall ((x_31_1@@0 T@Ref) ) (!  (=> (and (select setOfRef x_31_1@@0) (dummyFunction_22318 (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_31_1@@0 edges))) (>= rd NoPerm))
 :qid |stdinbpl.3207:17|
 :skolemid |409|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_31_1@@0 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@19) x_31_1@@0 edges))
 :pattern ( (select setOfRef x_31_1@@0))
)) (and (=> (= (ControlFlow 0 57) (- 0 59)) (forall ((x_31_1@@1 T@Ref) (x_31_2 T@Ref) ) (!  (=> (and (and (and (and (not (= x_31_1@@1 x_31_2)) (select setOfRef x_31_1@@1)) (select setOfRef x_31_2)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_31_1@@1 x_31_2)))
 :qid |stdinbpl.3214:17|
 :skolemid |410|
 :pattern ( (neverTriggered10 x_31_1@@1) (neverTriggered10 x_31_2))
))) (=> (forall ((x_31_1@@2 T@Ref) (x_31_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_31_1@@2 x_31_2@@0)) (select setOfRef x_31_1@@2)) (select setOfRef x_31_2@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_31_1@@2 x_31_2@@0)))
 :qid |stdinbpl.3214:17|
 :skolemid |410|
 :pattern ( (neverTriggered10 x_31_1@@2) (neverTriggered10 x_31_2@@0))
)) (and (=> (= (ControlFlow 0 57) (- 0 58)) (forall ((x_31_1@@3 T@Ref) ) (!  (=> (select setOfRef x_31_1@@3) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@18) x_31_1@@3 edges) rd))
 :qid |stdinbpl.3221:17|
 :skolemid |411|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_31_1@@3 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@19) x_31_1@@3 edges))
 :pattern ( (select setOfRef x_31_1@@3))
))) (=> (forall ((x_31_1@@4 T@Ref) ) (!  (=> (select setOfRef x_31_1@@4) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@18) x_31_1@@4 edges) rd))
 :qid |stdinbpl.3221:17|
 :skolemid |411|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_31_1@@4 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@19) x_31_1@@4 edges))
 :pattern ( (select setOfRef x_31_1@@4))
)) (=> (forall ((x_31_1@@5 T@Ref) ) (!  (=> (and (select setOfRef x_31_1@@5) (< NoPerm rd)) (and (qpRange10 x_31_1@@5) (= (invRecv10 x_31_1@@5) x_31_1@@5)))
 :qid |stdinbpl.3227:22|
 :skolemid |412|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@2) x_31_1@@5 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@19) x_31_1@@5 edges))
 :pattern ( (select setOfRef x_31_1@@5))
)) (=> (and (forall ((o_9@@175 T@Ref) ) (!  (=> (and (select setOfRef (invRecv10 o_9@@175)) (and (< NoPerm rd) (qpRange10 o_9@@175))) (= (invRecv10 o_9@@175) o_9@@175))
 :qid |stdinbpl.3231:22|
 :skolemid |413|
 :pattern ( (invRecv10 o_9@@175))
)) (forall ((o_9@@176 T@Ref) ) (!  (and (=> (and (select setOfRef (invRecv10 o_9@@176)) (and (< NoPerm rd) (qpRange10 o_9@@176))) (and (= (invRecv10 o_9@@176) o_9@@176) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@19) o_9@@176 edges) (- (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@18) o_9@@176 edges) rd)))) (=> (not (and (select setOfRef (invRecv10 o_9@@176)) (and (< NoPerm rd) (qpRange10 o_9@@176)))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@19) o_9@@176 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@18) o_9@@176 edges))))
 :qid |stdinbpl.3237:22|
 :skolemid |414|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@19) o_9@@176 edges))
))) (=> (and (and (and (and (and (forall ((o_9@@177 T@Ref) (f_5@@131 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@18) o_9@@177 f_5@@131) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@19) o_9@@177 f_5@@131)))
 :qid |stdinbpl.3243:29|
 :skolemid |415|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@19) o_9@@177 f_5@@131))
)) (forall ((o_9@@178 T@Ref) (f_5@@132 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@18) o_9@@178 f_5@@132) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@19) o_9@@178 f_5@@132)))
 :qid |stdinbpl.3243:29|
 :skolemid |415|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@19) o_9@@178 f_5@@132))
))) (forall ((o_9@@179 T@Ref) (f_5@@133 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@18) o_9@@179 f_5@@133) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@19) o_9@@179 f_5@@133)))
 :qid |stdinbpl.3243:29|
 :skolemid |415|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@19) o_9@@179 f_5@@133))
))) (forall ((o_9@@180 T@Ref) (f_5@@134 T@Field_43433_43434) ) (!  (=> (not (= f_5@@134 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@18) o_9@@180 f_5@@134) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@19) o_9@@180 f_5@@134)))
 :qid |stdinbpl.3243:29|
 :skolemid |415|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@19) o_9@@180 f_5@@134))
))) (forall ((o_9@@181 T@Ref) (f_5@@135 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@18) o_9@@181 f_5@@135) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@19) o_9@@181 f_5@@135)))
 :qid |stdinbpl.3243:29|
 :skolemid |415|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@19) o_9@@181 f_5@@135))
))) (forall ((o_9@@182 T@Ref) (f_5@@136 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@18) o_9@@182 f_5@@136) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@19) o_9@@182 f_5@@136)))
 :qid |stdinbpl.3243:29|
 :skolemid |415|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@19) o_9@@182 f_5@@136))
))) (and (and (=> (= (ControlFlow 0 57) 56) anon206_Else_correct) (=> (= (ControlFlow 0 57) 38) anon207_Then_correct)) (=> (= (ControlFlow 0 57) 40) anon207_Else_correct))))))))))))))
(let ((anon128_correct true))
(let ((anon205_Else_correct  (=> (and (not (select setOfRef x_29_1)) (= (ControlFlow 0 36) 33)) anon128_correct)))
(let ((anon205_Then_correct  (=> (select setOfRef x_29_1) (and (=> (= (ControlFlow 0 34) (- 0 35)) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@2) x_29_1 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_29_1 val))) (=> (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@2) x_29_1 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_29_1 val)) (=> (= (ControlFlow 0 34) 33) anon128_correct))))))
(let ((anon125_correct  (=> (state Heap@2 Mask@2) (and (=> (= (ControlFlow 0 61) (- 0 67)) (not (= nodeCopy@1 null))) (=> (not (= nodeCopy@1 null)) (and (=> (= (ControlFlow 0 61) (- 0 66)) (select res_copy_nodes@2 nodeCopy@1)) (=> (select res_copy_nodes@2 nodeCopy@1) (and (=> (= (ControlFlow 0 61) (- 0 65)) (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef res_copy_nodes@2)) 0)) (=> (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef res_copy_nodes@2)) 0) (and (=> (= (ControlFlow 0 61) (- 0 64)) (forall ((x_28_1 T@Ref) ) (!  (=> (and (select setOfRef x_28_1) (dummyFunction_6609 (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@2) x_28_1 val))) (>= rd NoPerm))
 :qid |stdinbpl.3151:17|
 :skolemid |401|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@2) x_28_1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@18) x_28_1 val))
 :pattern ( (select setOfRef x_28_1))
))) (=> (forall ((x_28_1@@0 T@Ref) ) (!  (=> (and (select setOfRef x_28_1@@0) (dummyFunction_6609 (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@2) x_28_1@@0 val))) (>= rd NoPerm))
 :qid |stdinbpl.3151:17|
 :skolemid |401|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@2) x_28_1@@0 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@18) x_28_1@@0 val))
 :pattern ( (select setOfRef x_28_1@@0))
)) (and (=> (= (ControlFlow 0 61) (- 0 63)) (forall ((x_28_1@@1 T@Ref) (x_28_2 T@Ref) ) (!  (=> (and (and (and (and (not (= x_28_1@@1 x_28_2)) (select setOfRef x_28_1@@1)) (select setOfRef x_28_2)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_28_1@@1 x_28_2)))
 :qid |stdinbpl.3158:17|
 :skolemid |402|
 :pattern ( (neverTriggered9 x_28_1@@1) (neverTriggered9 x_28_2))
))) (=> (forall ((x_28_1@@2 T@Ref) (x_28_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_28_1@@2 x_28_2@@0)) (select setOfRef x_28_1@@2)) (select setOfRef x_28_2@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_28_1@@2 x_28_2@@0)))
 :qid |stdinbpl.3158:17|
 :skolemid |402|
 :pattern ( (neverTriggered9 x_28_1@@2) (neverTriggered9 x_28_2@@0))
)) (and (=> (= (ControlFlow 0 61) (- 0 62)) (forall ((x_28_1@@3 T@Ref) ) (!  (=> (select setOfRef x_28_1@@3) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@2) x_28_1@@3 val) rd))
 :qid |stdinbpl.3165:17|
 :skolemid |403|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@2) x_28_1@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@18) x_28_1@@3 val))
 :pattern ( (select setOfRef x_28_1@@3))
))) (=> (forall ((x_28_1@@4 T@Ref) ) (!  (=> (select setOfRef x_28_1@@4) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@2) x_28_1@@4 val) rd))
 :qid |stdinbpl.3165:17|
 :skolemid |403|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@2) x_28_1@@4 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@18) x_28_1@@4 val))
 :pattern ( (select setOfRef x_28_1@@4))
)) (=> (forall ((x_28_1@@5 T@Ref) ) (!  (=> (and (select setOfRef x_28_1@@5) (< NoPerm rd)) (and (qpRange9 x_28_1@@5) (= (invRecv9 x_28_1@@5) x_28_1@@5)))
 :qid |stdinbpl.3171:22|
 :skolemid |404|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@2) x_28_1@@5 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@18) x_28_1@@5 val))
 :pattern ( (select setOfRef x_28_1@@5))
)) (=> (and (forall ((o_9@@183 T@Ref) ) (!  (=> (and (select setOfRef (invRecv9 o_9@@183)) (and (< NoPerm rd) (qpRange9 o_9@@183))) (= (invRecv9 o_9@@183) o_9@@183))
 :qid |stdinbpl.3175:22|
 :skolemid |405|
 :pattern ( (invRecv9 o_9@@183))
)) (forall ((o_9@@184 T@Ref) ) (!  (and (=> (and (select setOfRef (invRecv9 o_9@@184)) (and (< NoPerm rd) (qpRange9 o_9@@184))) (and (= (invRecv9 o_9@@184) o_9@@184) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@18) o_9@@184 val) (- (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@2) o_9@@184 val) rd)))) (=> (not (and (select setOfRef (invRecv9 o_9@@184)) (and (< NoPerm rd) (qpRange9 o_9@@184)))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@18) o_9@@184 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@2) o_9@@184 val))))
 :qid |stdinbpl.3181:22|
 :skolemid |406|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@18) o_9@@184 val))
))) (=> (and (and (and (and (and (forall ((o_9@@185 T@Ref) (f_5@@137 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| Mask@2) o_9@@185 f_5@@137) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@18) o_9@@185 f_5@@137)))
 :qid |stdinbpl.3187:29|
 :skolemid |407|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@18) o_9@@185 f_5@@137))
)) (forall ((o_9@@186 T@Ref) (f_5@@138 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| Mask@2) o_9@@186 f_5@@138) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@18) o_9@@186 f_5@@138)))
 :qid |stdinbpl.3187:29|
 :skolemid |407|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@18) o_9@@186 f_5@@138))
))) (forall ((o_9@@187 T@Ref) (f_5@@139 T@Field_43387_6609) ) (!  (=> (not (= f_5@@139 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@2) o_9@@187 f_5@@139) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@18) o_9@@187 f_5@@139)))
 :qid |stdinbpl.3187:29|
 :skolemid |407|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@18) o_9@@187 f_5@@139))
))) (forall ((o_9@@188 T@Ref) (f_5@@140 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| Mask@2) o_9@@188 f_5@@140) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@18) o_9@@188 f_5@@140)))
 :qid |stdinbpl.3187:29|
 :skolemid |407|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@18) o_9@@188 f_5@@140))
))) (forall ((o_9@@189 T@Ref) (f_5@@141 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| Mask@2) o_9@@189 f_5@@141) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@18) o_9@@189 f_5@@141)))
 :qid |stdinbpl.3187:29|
 :skolemid |407|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@18) o_9@@189 f_5@@141))
))) (forall ((o_9@@190 T@Ref) (f_5@@142 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| Mask@2) o_9@@190 f_5@@142) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@18) o_9@@190 f_5@@142)))
 :qid |stdinbpl.3187:29|
 :skolemid |407|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@18) o_9@@190 f_5@@142))
))) (and (and (=> (= (ControlFlow 0 61) 57) anon204_Else_correct) (=> (= (ControlFlow 0 61) 34) anon205_Then_correct)) (=> (= (ControlFlow 0 61) 36) anon205_Else_correct))))))))))))))))))))
(let ((anon189_Else_correct  (=> (and (and (not (> (|Set#Card_6709| S@1) 0)) (state ExhaleHeap@0 QPMask@7)) (and (select res_copy_nodes@1 freshObj@0) (select setOfRef this))) (and (=> (= (ControlFlow 0 69) (- 0 75)) (forall ((x_80 T@Ref) (x_80_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_80 x_80_1)) (select setOfRef x_80)) (select setOfRef x_80_1)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_80 x_80_1)))
 :qid |stdinbpl.2965:21|
 :skolemid |370|
))) (=> (forall ((x_80@@0 T@Ref) (x_80_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_80@@0 x_80_1@@0)) (select setOfRef x_80@@0)) (select setOfRef x_80_1@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_80@@0 x_80_1@@0)))
 :qid |stdinbpl.2965:21|
 :skolemid |370|
)) (=> (and (forall ((x_80@@1 T@Ref) ) (!  (=> (and (select setOfRef x_80@@1) (< NoPerm rd)) (and (qpRange37 x_80@@1) (= (invRecv37 x_80@@1) x_80@@1)))
 :qid |stdinbpl.2971:28|
 :skolemid |371|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_80@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@14) x_80@@1 val))
 :pattern ( (select setOfRef x_80@@1))
)) (forall ((o_9@@191 T@Ref) ) (!  (=> (and (and (select setOfRef (invRecv37 o_9@@191)) (< NoPerm rd)) (qpRange37 o_9@@191)) (= (invRecv37 o_9@@191) o_9@@191))
 :qid |stdinbpl.2975:28|
 :skolemid |372|
 :pattern ( (invRecv37 o_9@@191))
))) (and (=> (= (ControlFlow 0 69) (- 0 74)) (forall ((x_80@@2 T@Ref) ) (!  (=> (select setOfRef x_80@@2) (>= rd NoPerm))
 :qid |stdinbpl.2981:21|
 :skolemid |373|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_80@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@14) x_80@@2 val))
 :pattern ( (select setOfRef x_80@@2))
))) (=> (forall ((x_80@@3 T@Ref) ) (!  (=> (select setOfRef x_80@@3) (>= rd NoPerm))
 :qid |stdinbpl.2981:21|
 :skolemid |373|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_80@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@14) x_80@@3 val))
 :pattern ( (select setOfRef x_80@@3))
)) (=> (and (forall ((x_80@@4 T@Ref) ) (!  (=> (and (select setOfRef x_80@@4) (> rd NoPerm)) (not (= x_80@@4 null)))
 :qid |stdinbpl.2987:28|
 :skolemid |374|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_80@@4 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@14) x_80@@4 val))
 :pattern ( (select setOfRef x_80@@4))
)) (forall ((o_9@@192 T@Ref) ) (!  (and (=> (and (and (select setOfRef (invRecv37 o_9@@192)) (< NoPerm rd)) (qpRange37 o_9@@192)) (and (=> (< NoPerm rd) (= (invRecv37 o_9@@192) o_9@@192)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@14) o_9@@192 val) (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@7) o_9@@192 val) rd)))) (=> (not (and (and (select setOfRef (invRecv37 o_9@@192)) (< NoPerm rd)) (qpRange37 o_9@@192))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@14) o_9@@192 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@7) o_9@@192 val))))
 :qid |stdinbpl.2993:28|
 :skolemid |375|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@14) o_9@@192 val))
))) (=> (and (and (and (and (and (and (forall ((o_9@@193 T@Ref) (f_5@@143 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@7) o_9@@193 f_5@@143) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@14) o_9@@193 f_5@@143)))
 :qid |stdinbpl.2997:35|
 :skolemid |376|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@7) o_9@@193 f_5@@143))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@14) o_9@@193 f_5@@143))
)) (forall ((o_9@@194 T@Ref) (f_5@@144 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@7) o_9@@194 f_5@@144) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@14) o_9@@194 f_5@@144)))
 :qid |stdinbpl.2997:35|
 :skolemid |376|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@7) o_9@@194 f_5@@144))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@14) o_9@@194 f_5@@144))
))) (forall ((o_9@@195 T@Ref) (f_5@@145 T@Field_43387_6609) ) (!  (=> (not (= f_5@@145 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@7) o_9@@195 f_5@@145) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@14) o_9@@195 f_5@@145)))
 :qid |stdinbpl.2997:35|
 :skolemid |376|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@7) o_9@@195 f_5@@145))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@14) o_9@@195 f_5@@145))
))) (forall ((o_9@@196 T@Ref) (f_5@@146 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@7) o_9@@196 f_5@@146) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@14) o_9@@196 f_5@@146)))
 :qid |stdinbpl.2997:35|
 :skolemid |376|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@7) o_9@@196 f_5@@146))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@14) o_9@@196 f_5@@146))
))) (forall ((o_9@@197 T@Ref) (f_5@@147 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@7) o_9@@197 f_5@@147) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@14) o_9@@197 f_5@@147)))
 :qid |stdinbpl.2997:35|
 :skolemid |376|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@7) o_9@@197 f_5@@147))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@14) o_9@@197 f_5@@147))
))) (forall ((o_9@@198 T@Ref) (f_5@@148 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@7) o_9@@198 f_5@@148) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@14) o_9@@198 f_5@@148)))
 :qid |stdinbpl.2997:35|
 :skolemid |376|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@7) o_9@@198 f_5@@148))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@14) o_9@@198 f_5@@148))
))) (and (state ExhaleHeap@0 QPMask@14) (forall ((x_81 T@Ref) ) (!  (=> (select setOfRef x_81) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) x_81 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_81 val)))
 :qid |stdinbpl.3003:26|
 :skolemid |377|
 :pattern ( (select setOfRef x_81))
)))) (and (=> (= (ControlFlow 0 69) (- 0 73)) (forall ((x_82 T@Ref) (x_82_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_82 x_82_1)) (select setOfRef x_82)) (select setOfRef x_82_1)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_82 x_82_1)))
 :qid |stdinbpl.3009:21|
 :skolemid |378|
))) (=> (forall ((x_82@@0 T@Ref) (x_82_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_82@@0 x_82_1@@0)) (select setOfRef x_82@@0)) (select setOfRef x_82_1@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_82@@0 x_82_1@@0)))
 :qid |stdinbpl.3009:21|
 :skolemid |378|
)) (=> (and (forall ((x_82@@1 T@Ref) ) (!  (=> (and (select setOfRef x_82@@1) (< NoPerm rd)) (and (qpRange38 x_82@@1) (= (invRecv38 x_82@@1) x_82@@1)))
 :qid |stdinbpl.3015:28|
 :skolemid |379|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_82@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@15) x_82@@1 edges))
 :pattern ( (select setOfRef x_82@@1))
)) (forall ((o_9@@199 T@Ref) ) (!  (=> (and (and (select setOfRef (invRecv38 o_9@@199)) (< NoPerm rd)) (qpRange38 o_9@@199)) (= (invRecv38 o_9@@199) o_9@@199))
 :qid |stdinbpl.3019:28|
 :skolemid |380|
 :pattern ( (invRecv38 o_9@@199))
))) (and (=> (= (ControlFlow 0 69) (- 0 72)) (forall ((x_82@@2 T@Ref) ) (!  (=> (select setOfRef x_82@@2) (>= rd NoPerm))
 :qid |stdinbpl.3025:21|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_82@@2 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@15) x_82@@2 edges))
 :pattern ( (select setOfRef x_82@@2))
))) (=> (forall ((x_82@@3 T@Ref) ) (!  (=> (select setOfRef x_82@@3) (>= rd NoPerm))
 :qid |stdinbpl.3025:21|
 :skolemid |381|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_82@@3 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@15) x_82@@3 edges))
 :pattern ( (select setOfRef x_82@@3))
)) (=> (and (forall ((x_82@@4 T@Ref) ) (!  (=> (and (select setOfRef x_82@@4) (> rd NoPerm)) (not (= x_82@@4 null)))
 :qid |stdinbpl.3031:28|
 :skolemid |382|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_82@@4 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@15) x_82@@4 edges))
 :pattern ( (select setOfRef x_82@@4))
)) (forall ((o_9@@200 T@Ref) ) (!  (and (=> (and (and (select setOfRef (invRecv38 o_9@@200)) (< NoPerm rd)) (qpRange38 o_9@@200)) (and (=> (< NoPerm rd) (= (invRecv38 o_9@@200) o_9@@200)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@15) o_9@@200 edges) (+ (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@14) o_9@@200 edges) rd)))) (=> (not (and (and (select setOfRef (invRecv38 o_9@@200)) (< NoPerm rd)) (qpRange38 o_9@@200))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@15) o_9@@200 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@14) o_9@@200 edges))))
 :qid |stdinbpl.3037:28|
 :skolemid |383|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@15) o_9@@200 edges))
))) (=> (and (and (and (and (and (and (and (and (forall ((o_9@@201 T@Ref) (f_5@@149 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@14) o_9@@201 f_5@@149) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@15) o_9@@201 f_5@@149)))
 :qid |stdinbpl.3041:35|
 :skolemid |384|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@14) o_9@@201 f_5@@149))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@15) o_9@@201 f_5@@149))
)) (forall ((o_9@@202 T@Ref) (f_5@@150 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@14) o_9@@202 f_5@@150) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@15) o_9@@202 f_5@@150)))
 :qid |stdinbpl.3041:35|
 :skolemid |384|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@14) o_9@@202 f_5@@150))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@15) o_9@@202 f_5@@150))
))) (forall ((o_9@@203 T@Ref) (f_5@@151 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@14) o_9@@203 f_5@@151) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@15) o_9@@203 f_5@@151)))
 :qid |stdinbpl.3041:35|
 :skolemid |384|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@14) o_9@@203 f_5@@151))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@15) o_9@@203 f_5@@151))
))) (forall ((o_9@@204 T@Ref) (f_5@@152 T@Field_43433_43434) ) (!  (=> (not (= f_5@@152 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@14) o_9@@204 f_5@@152) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@15) o_9@@204 f_5@@152)))
 :qid |stdinbpl.3041:35|
 :skolemid |384|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@14) o_9@@204 f_5@@152))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@15) o_9@@204 f_5@@152))
))) (forall ((o_9@@205 T@Ref) (f_5@@153 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@14) o_9@@205 f_5@@153) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@15) o_9@@205 f_5@@153)))
 :qid |stdinbpl.3041:35|
 :skolemid |384|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@14) o_9@@205 f_5@@153))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@15) o_9@@205 f_5@@153))
))) (forall ((o_9@@206 T@Ref) (f_5@@154 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@14) o_9@@206 f_5@@154) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@15) o_9@@206 f_5@@154)))
 :qid |stdinbpl.3041:35|
 :skolemid |384|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@14) o_9@@206 f_5@@154))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@15) o_9@@206 f_5@@154))
))) (state ExhaleHeap@0 QPMask@15)) (and (forall ((x_83 T@Ref) ) (!  (=> (select setOfRef x_83) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) x_83 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_83 edges)))
 :qid |stdinbpl.3047:26|
 :skolemid |385|
 :pattern ( (select setOfRef x_83))
)) (forall ((j_14_2 Int) ) (!  (=> (select S@1 j_14_2) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) this edges) j_14_2)))
 :qid |stdinbpl.3051:26|
 :skolemid |386|
 :pattern ( (select S@1 j_14_2))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) this edges) j_14_2)))
)))) (and (and (forall ((r_24_1 T@Ref) (j_15_2 Int) ) (!  (=> (and (select setOfRef r_24_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_24_1 edges)) j_15_2)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_24_1 edges) j_15_2)))
 :qid |stdinbpl.3055:26|
 :skolemid |387|
 :pattern ( (select setOfRef r_24_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_24_1 edges)) j_15_2))
 :pattern ( (select setOfRef r_24_1) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_24_1 edges) j_15_2))
 :pattern ( (select setOfRef r_24_1) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_24_1 edges) j_15_2)))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_24_1 edges)) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_24_1 edges) j_15_2))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_24_1 edges)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_24_1 edges) j_15_2)))
 :pattern ( (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_24_1 edges)) j_15_2))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_24_1 edges) j_15_2)))
)) (|Set#Subset_22339| node_map_image res_copy_nodes@1)) (and (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef res_copy_nodes@1)) 0) (forall ((r_25 T@Ref) ) (!  (=> (|Seq#Contains_22310| (map_domain res_node_map@1) r_25) (select res_copy_nodes@1 (lookup_1 res_node_map@1 r_25)))
 :qid |stdinbpl.3061:26|
 :skolemid |388|
 :pattern ( (|Seq#ContainsTrigger_22306| (map_domain res_node_map@1) r_25))
 :pattern ( (|Seq#Contains_22310| (map_domain res_node_map@1) r_25))
 :pattern ( (select res_copy_nodes@1 (lookup_1 res_node_map@1 r_25)))
))))) (and (=> (= (ControlFlow 0 69) (- 0 71)) (forall ((r_26_1 T@Ref) (r_26_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_26_1 r_26_2)) (select res_copy_nodes@1 r_26_1)) (select res_copy_nodes@1 r_26_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_26_1 r_26_2)))
 :qid |stdinbpl.3067:21|
 :skolemid |389|
))) (=> (forall ((r_26_1@@0 T@Ref) (r_26_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_26_1@@0 r_26_2@@0)) (select res_copy_nodes@1 r_26_1@@0)) (select res_copy_nodes@1 r_26_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_26_1@@0 r_26_2@@0)))
 :qid |stdinbpl.3067:21|
 :skolemid |389|
)) (=> (and (and (forall ((r_26_1@@1 T@Ref) ) (!  (=> (and (select res_copy_nodes@1 r_26_1@@1) (< NoPerm FullPerm)) (and (qpRange39 r_26_1@@1) (= (invRecv39 r_26_1@@1) r_26_1@@1)))
 :qid |stdinbpl.3073:28|
 :skolemid |390|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) r_26_1@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@16) r_26_1@@1 val))
 :pattern ( (select res_copy_nodes@1 r_26_1@@1))
)) (forall ((o_9@@207 T@Ref) ) (!  (=> (and (and (select res_copy_nodes@1 (invRecv39 o_9@@207)) (< NoPerm FullPerm)) (qpRange39 o_9@@207)) (= (invRecv39 o_9@@207) o_9@@207))
 :qid |stdinbpl.3077:28|
 :skolemid |391|
 :pattern ( (invRecv39 o_9@@207))
))) (and (forall ((r_26_1@@2 T@Ref) ) (!  (=> (select res_copy_nodes@1 r_26_1@@2) (not (= r_26_1@@2 null)))
 :qid |stdinbpl.3083:28|
 :skolemid |392|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| ExhaleHeap@0) r_26_1@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@16) r_26_1@@2 val))
 :pattern ( (select res_copy_nodes@1 r_26_1@@2))
)) (forall ((o_9@@208 T@Ref) ) (!  (and (=> (and (and (select res_copy_nodes@1 (invRecv39 o_9@@208)) (< NoPerm FullPerm)) (qpRange39 o_9@@208)) (and (=> (< NoPerm FullPerm) (= (invRecv39 o_9@@208) o_9@@208)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@16) o_9@@208 val) (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@15) o_9@@208 val) FullPerm)))) (=> (not (and (and (select res_copy_nodes@1 (invRecv39 o_9@@208)) (< NoPerm FullPerm)) (qpRange39 o_9@@208))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@16) o_9@@208 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@15) o_9@@208 val))))
 :qid |stdinbpl.3089:28|
 :skolemid |393|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@16) o_9@@208 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@209 T@Ref) (f_5@@155 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@15) o_9@@209 f_5@@155) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@16) o_9@@209 f_5@@155)))
 :qid |stdinbpl.3093:35|
 :skolemid |394|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@15) o_9@@209 f_5@@155))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@16) o_9@@209 f_5@@155))
)) (forall ((o_9@@210 T@Ref) (f_5@@156 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@15) o_9@@210 f_5@@156) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@16) o_9@@210 f_5@@156)))
 :qid |stdinbpl.3093:35|
 :skolemid |394|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@15) o_9@@210 f_5@@156))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@16) o_9@@210 f_5@@156))
))) (forall ((o_9@@211 T@Ref) (f_5@@157 T@Field_43387_6609) ) (!  (=> (not (= f_5@@157 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@15) o_9@@211 f_5@@157) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@16) o_9@@211 f_5@@157)))
 :qid |stdinbpl.3093:35|
 :skolemid |394|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@15) o_9@@211 f_5@@157))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@16) o_9@@211 f_5@@157))
))) (forall ((o_9@@212 T@Ref) (f_5@@158 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@15) o_9@@212 f_5@@158) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@16) o_9@@212 f_5@@158)))
 :qid |stdinbpl.3093:35|
 :skolemid |394|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@15) o_9@@212 f_5@@158))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@16) o_9@@212 f_5@@158))
))) (forall ((o_9@@213 T@Ref) (f_5@@159 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@15) o_9@@213 f_5@@159) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@16) o_9@@213 f_5@@159)))
 :qid |stdinbpl.3093:35|
 :skolemid |394|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@15) o_9@@213 f_5@@159))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@16) o_9@@213 f_5@@159))
))) (forall ((o_9@@214 T@Ref) (f_5@@160 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@15) o_9@@214 f_5@@160) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@16) o_9@@214 f_5@@160)))
 :qid |stdinbpl.3093:35|
 :skolemid |394|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@15) o_9@@214 f_5@@160))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@16) o_9@@214 f_5@@160))
))) (state ExhaleHeap@0 QPMask@16)) (and (=> (= (ControlFlow 0 69) (- 0 70)) (forall ((r_27 T@Ref) (r_27_1 T@Ref) ) (!  (=> (and (and (and (and (not (= r_27 r_27_1)) (select res_copy_nodes@1 r_27)) (select res_copy_nodes@1 r_27_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_27 r_27_1)))
 :qid |stdinbpl.3101:21|
 :skolemid |395|
))) (=> (forall ((r_27@@0 T@Ref) (r_27_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_27@@0 r_27_1@@0)) (select res_copy_nodes@1 r_27@@0)) (select res_copy_nodes@1 r_27_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_27@@0 r_27_1@@0)))
 :qid |stdinbpl.3101:21|
 :skolemid |395|
)) (=> (and (and (forall ((r_27@@1 T@Ref) ) (!  (=> (and (select res_copy_nodes@1 r_27@@1) (< NoPerm FullPerm)) (and (qpRange40 r_27@@1) (= (invRecv40 r_27@@1) r_27@@1)))
 :qid |stdinbpl.3107:28|
 :skolemid |396|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_27@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@17) r_27@@1 edges))
 :pattern ( (select res_copy_nodes@1 r_27@@1))
)) (forall ((o_9@@215 T@Ref) ) (!  (=> (and (and (select res_copy_nodes@1 (invRecv40 o_9@@215)) (< NoPerm FullPerm)) (qpRange40 o_9@@215)) (= (invRecv40 o_9@@215) o_9@@215))
 :qid |stdinbpl.3111:28|
 :skolemid |397|
 :pattern ( (invRecv40 o_9@@215))
))) (and (forall ((r_27@@2 T@Ref) ) (!  (=> (select res_copy_nodes@1 r_27@@2) (not (= r_27@@2 null)))
 :qid |stdinbpl.3117:28|
 :skolemid |398|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| ExhaleHeap@0) r_27@@2 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@17) r_27@@2 edges))
 :pattern ( (select res_copy_nodes@1 r_27@@2))
)) (forall ((o_9@@216 T@Ref) ) (!  (and (=> (and (and (select res_copy_nodes@1 (invRecv40 o_9@@216)) (< NoPerm FullPerm)) (qpRange40 o_9@@216)) (and (=> (< NoPerm FullPerm) (= (invRecv40 o_9@@216) o_9@@216)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@17) o_9@@216 edges) (+ (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@16) o_9@@216 edges) FullPerm)))) (=> (not (and (and (select res_copy_nodes@1 (invRecv40 o_9@@216)) (< NoPerm FullPerm)) (qpRange40 o_9@@216))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@17) o_9@@216 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@16) o_9@@216 edges))))
 :qid |stdinbpl.3123:28|
 :skolemid |399|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@17) o_9@@216 edges))
)))) (=> (and (and (and (and (and (and (and (forall ((o_9@@217 T@Ref) (f_5@@161 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@16) o_9@@217 f_5@@161) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@17) o_9@@217 f_5@@161)))
 :qid |stdinbpl.3127:35|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@16) o_9@@217 f_5@@161))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@17) o_9@@217 f_5@@161))
)) (forall ((o_9@@218 T@Ref) (f_5@@162 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@16) o_9@@218 f_5@@162) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@17) o_9@@218 f_5@@162)))
 :qid |stdinbpl.3127:35|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@16) o_9@@218 f_5@@162))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@17) o_9@@218 f_5@@162))
))) (forall ((o_9@@219 T@Ref) (f_5@@163 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@16) o_9@@219 f_5@@163) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@17) o_9@@219 f_5@@163)))
 :qid |stdinbpl.3127:35|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@16) o_9@@219 f_5@@163))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@17) o_9@@219 f_5@@163))
))) (forall ((o_9@@220 T@Ref) (f_5@@164 T@Field_43433_43434) ) (!  (=> (not (= f_5@@164 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@16) o_9@@220 f_5@@164) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@17) o_9@@220 f_5@@164)))
 :qid |stdinbpl.3127:35|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@16) o_9@@220 f_5@@164))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@17) o_9@@220 f_5@@164))
))) (forall ((o_9@@221 T@Ref) (f_5@@165 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@16) o_9@@221 f_5@@165) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@17) o_9@@221 f_5@@165)))
 :qid |stdinbpl.3127:35|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@16) o_9@@221 f_5@@165))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@17) o_9@@221 f_5@@165))
))) (forall ((o_9@@222 T@Ref) (f_5@@166 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@16) o_9@@222 f_5@@166) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@17) o_9@@222 f_5@@166)))
 :qid |stdinbpl.3127:35|
 :skolemid |400|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@16) o_9@@222 f_5@@166))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@17) o_9@@222 f_5@@166))
))) (state ExhaleHeap@0 QPMask@17)) (and (and (and (state ExhaleHeap@0 QPMask@17) (state ExhaleHeap@0 QPMask@17)) (and (= Heap@2 ExhaleHeap@0) (= Mask@2 QPMask@17))) (and (and (= nodeCopy@1 freshObj@0) (= res_node_map@2 res_node_map@1)) (and (= res_copy_nodes@2 res_copy_nodes@1) (= (ControlFlow 0 69) 61))))) anon125_correct)))))))))))))))))))))))))
(let ((anon172_Else_correct  (=> (forall ((r_3_1 T@Ref) ) (!  (=> (|Seq#Contains_22310| (map_domain res_node_map@0) r_3_1) (select res_copy_nodes@0 (lookup_1 res_node_map@0 r_3_1)))
 :qid |stdinbpl.1737:28|
 :skolemid |206|
 :pattern ( (|Seq#ContainsTrigger_22306| (map_domain res_node_map@0) r_3_1))
 :pattern ( (|Seq#Contains_22310| (map_domain res_node_map@0) r_3_1))
 :pattern ( (select res_copy_nodes@0 (lookup_1 res_node_map@0 r_3_1)))
)) (and (=> (= (ControlFlow 0 198) (- 0 202)) (forall ((r_4_1 T@Ref) (r_4_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_4_1 r_4_2)) (select res_copy_nodes@0 r_4_1)) (select res_copy_nodes@0 r_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_4_1 r_4_2)))
 :qid |stdinbpl.1748:25|
 :skolemid |207|
 :pattern ( (neverTriggered15 r_4_1) (neverTriggered15 r_4_2))
))) (=> (forall ((r_4_1@@0 T@Ref) (r_4_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_4_1@@0 r_4_2@@0)) (select res_copy_nodes@0 r_4_1@@0)) (select res_copy_nodes@0 r_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_4_1@@0 r_4_2@@0)))
 :qid |stdinbpl.1748:25|
 :skolemid |207|
 :pattern ( (neverTriggered15 r_4_1@@0) (neverTriggered15 r_4_2@@0))
)) (and (=> (= (ControlFlow 0 198) (- 0 201)) (forall ((r_4_1@@1 T@Ref) ) (!  (=> (select res_copy_nodes@0 r_4_1@@1) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@5) r_4_1@@1 val) FullPerm))
 :qid |stdinbpl.1755:25|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@1) r_4_1@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@6) r_4_1@@1 val))
 :pattern ( (select res_copy_nodes@0 r_4_1@@1))
))) (=> (forall ((r_4_1@@2 T@Ref) ) (!  (=> (select res_copy_nodes@0 r_4_1@@2) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@5) r_4_1@@2 val) FullPerm))
 :qid |stdinbpl.1755:25|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@1) r_4_1@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@6) r_4_1@@2 val))
 :pattern ( (select res_copy_nodes@0 r_4_1@@2))
)) (=> (forall ((r_4_1@@3 T@Ref) ) (!  (=> (and (select res_copy_nodes@0 r_4_1@@3) (< NoPerm FullPerm)) (and (qpRange15 r_4_1@@3) (= (invRecv15 r_4_1@@3) r_4_1@@3)))
 :qid |stdinbpl.1761:30|
 :skolemid |209|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@1) r_4_1@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@6) r_4_1@@3 val))
 :pattern ( (select res_copy_nodes@0 r_4_1@@3))
)) (=> (and (forall ((o_9@@223 T@Ref) ) (!  (=> (and (select res_copy_nodes@0 (invRecv15 o_9@@223)) (and (< NoPerm FullPerm) (qpRange15 o_9@@223))) (= (invRecv15 o_9@@223) o_9@@223))
 :qid |stdinbpl.1765:30|
 :skolemid |210|
 :pattern ( (invRecv15 o_9@@223))
)) (forall ((o_9@@224 T@Ref) ) (!  (and (=> (and (select res_copy_nodes@0 (invRecv15 o_9@@224)) (and (< NoPerm FullPerm) (qpRange15 o_9@@224))) (and (= (invRecv15 o_9@@224) o_9@@224) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@6) o_9@@224 val) (- (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@5) o_9@@224 val) FullPerm)))) (=> (not (and (select res_copy_nodes@0 (invRecv15 o_9@@224)) (and (< NoPerm FullPerm) (qpRange15 o_9@@224)))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@6) o_9@@224 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@5) o_9@@224 val))))
 :qid |stdinbpl.1771:30|
 :skolemid |211|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@6) o_9@@224 val))
))) (=> (and (and (and (and (and (forall ((o_9@@225 T@Ref) (f_5@@167 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@5) o_9@@225 f_5@@167) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@6) o_9@@225 f_5@@167)))
 :qid |stdinbpl.1777:37|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@6) o_9@@225 f_5@@167))
)) (forall ((o_9@@226 T@Ref) (f_5@@168 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@5) o_9@@226 f_5@@168) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@6) o_9@@226 f_5@@168)))
 :qid |stdinbpl.1777:37|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@6) o_9@@226 f_5@@168))
))) (forall ((o_9@@227 T@Ref) (f_5@@169 T@Field_43387_6609) ) (!  (=> (not (= f_5@@169 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@5) o_9@@227 f_5@@169) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@6) o_9@@227 f_5@@169)))
 :qid |stdinbpl.1777:37|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@6) o_9@@227 f_5@@169))
))) (forall ((o_9@@228 T@Ref) (f_5@@170 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@5) o_9@@228 f_5@@170) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@6) o_9@@228 f_5@@170)))
 :qid |stdinbpl.1777:37|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@6) o_9@@228 f_5@@170))
))) (forall ((o_9@@229 T@Ref) (f_5@@171 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@5) o_9@@229 f_5@@171) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@6) o_9@@229 f_5@@171)))
 :qid |stdinbpl.1777:37|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@6) o_9@@229 f_5@@171))
))) (forall ((o_9@@230 T@Ref) (f_5@@172 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@5) o_9@@230 f_5@@172) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@6) o_9@@230 f_5@@172)))
 :qid |stdinbpl.1777:37|
 :skolemid |212|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@6) o_9@@230 f_5@@172))
))) (and (=> (= (ControlFlow 0 198) (- 0 200)) (forall ((r_5_1 T@Ref) (r_5_2 T@Ref) ) (!  (=> (and (and (and (and (not (= r_5_1 r_5_2)) (select res_copy_nodes@0 r_5_1)) (select res_copy_nodes@0 r_5_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_5_1 r_5_2)))
 :qid |stdinbpl.1789:25|
 :skolemid |213|
 :pattern ( (neverTriggered16 r_5_1) (neverTriggered16 r_5_2))
))) (=> (forall ((r_5_1@@0 T@Ref) (r_5_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= r_5_1@@0 r_5_2@@0)) (select res_copy_nodes@0 r_5_1@@0)) (select res_copy_nodes@0 r_5_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= r_5_1@@0 r_5_2@@0)))
 :qid |stdinbpl.1789:25|
 :skolemid |213|
 :pattern ( (neverTriggered16 r_5_1@@0) (neverTriggered16 r_5_2@@0))
)) (and (=> (= (ControlFlow 0 198) (- 0 199)) (forall ((r_5_1@@1 T@Ref) ) (!  (=> (select res_copy_nodes@0 r_5_1@@1) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@6) r_5_1@@1 edges) FullPerm))
 :qid |stdinbpl.1796:25|
 :skolemid |214|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_5_1@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@7) r_5_1@@1 edges))
 :pattern ( (select res_copy_nodes@0 r_5_1@@1))
))) (=> (forall ((r_5_1@@2 T@Ref) ) (!  (=> (select res_copy_nodes@0 r_5_1@@2) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@6) r_5_1@@2 edges) FullPerm))
 :qid |stdinbpl.1796:25|
 :skolemid |214|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_5_1@@2 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@7) r_5_1@@2 edges))
 :pattern ( (select res_copy_nodes@0 r_5_1@@2))
)) (=> (forall ((r_5_1@@3 T@Ref) ) (!  (=> (and (select res_copy_nodes@0 r_5_1@@3) (< NoPerm FullPerm)) (and (qpRange16 r_5_1@@3) (= (invRecv16 r_5_1@@3) r_5_1@@3)))
 :qid |stdinbpl.1802:30|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_5_1@@3 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@7) r_5_1@@3 edges))
 :pattern ( (select res_copy_nodes@0 r_5_1@@3))
)) (=> (and (forall ((o_9@@231 T@Ref) ) (!  (=> (and (select res_copy_nodes@0 (invRecv16 o_9@@231)) (and (< NoPerm FullPerm) (qpRange16 o_9@@231))) (= (invRecv16 o_9@@231) o_9@@231))
 :qid |stdinbpl.1806:30|
 :skolemid |216|
 :pattern ( (invRecv16 o_9@@231))
)) (forall ((o_9@@232 T@Ref) ) (!  (and (=> (and (select res_copy_nodes@0 (invRecv16 o_9@@232)) (and (< NoPerm FullPerm) (qpRange16 o_9@@232))) (and (= (invRecv16 o_9@@232) o_9@@232) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@7) o_9@@232 edges) (- (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@6) o_9@@232 edges) FullPerm)))) (=> (not (and (select res_copy_nodes@0 (invRecv16 o_9@@232)) (and (< NoPerm FullPerm) (qpRange16 o_9@@232)))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@7) o_9@@232 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@6) o_9@@232 edges))))
 :qid |stdinbpl.1812:30|
 :skolemid |217|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@7) o_9@@232 edges))
))) (=> (and (and (and (and (and (and (forall ((o_9@@233 T@Ref) (f_5@@173 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@6) o_9@@233 f_5@@173) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@7) o_9@@233 f_5@@173)))
 :qid |stdinbpl.1818:37|
 :skolemid |218|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@7) o_9@@233 f_5@@173))
)) (forall ((o_9@@234 T@Ref) (f_5@@174 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@6) o_9@@234 f_5@@174) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@7) o_9@@234 f_5@@174)))
 :qid |stdinbpl.1818:37|
 :skolemid |218|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@7) o_9@@234 f_5@@174))
))) (forall ((o_9@@235 T@Ref) (f_5@@175 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@6) o_9@@235 f_5@@175) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@7) o_9@@235 f_5@@175)))
 :qid |stdinbpl.1818:37|
 :skolemid |218|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@7) o_9@@235 f_5@@175))
))) (forall ((o_9@@236 T@Ref) (f_5@@176 T@Field_43433_43434) ) (!  (=> (not (= f_5@@176 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@6) o_9@@236 f_5@@176) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@7) o_9@@236 f_5@@176)))
 :qid |stdinbpl.1818:37|
 :skolemid |218|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@7) o_9@@236 f_5@@176))
))) (forall ((o_9@@237 T@Ref) (f_5@@177 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@6) o_9@@237 f_5@@177) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@7) o_9@@237 f_5@@177)))
 :qid |stdinbpl.1818:37|
 :skolemid |218|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@7) o_9@@237 f_5@@177))
))) (forall ((o_9@@238 T@Ref) (f_5@@178 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@6) o_9@@238 f_5@@178) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@7) o_9@@238 f_5@@178)))
 :qid |stdinbpl.1818:37|
 :skolemid |218|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@7) o_9@@238 f_5@@178))
))) (IdenticalOnKnownLocations Heap@1 ExhaleHeap@0 QPMask@7)) (and (and (=> (= (ControlFlow 0 198) 197) anon174_Then_correct) (=> (= (ControlFlow 0 198) 137) anon189_Then_correct)) (=> (= (ControlFlow 0 198) 69) anon189_Else_correct)))))))))))))))))))
(let ((anon163_Then_correct  (=> (has_node node_map_1@@4 this) (=> (and (= nodeCopy@0 (lookup_1 node_map_1@@4 this)) (state Heap@@19 QPMask@3)) (=> (and (and (and (state Heap@@19 QPMask@3) (state Heap@@19 QPMask@3)) (and (= Heap@2 Heap@@19) (= Mask@2 QPMask@3))) (and (and (= nodeCopy@1 nodeCopy@0) (= res_node_map@2 node_map_1@@4)) (and (= res_copy_nodes@2 node_map_image) (= (ControlFlow 0 68) 61)))) anon125_correct)))))
(let ((anon63_correct true))
(let ((anon173_Else_correct  (=> (and (not (|Seq#Contains_22310| (map_domain res_node_map@0) r_2)) (= (ControlFlow 0 32) 29)) anon63_correct)))
(let ((anon173_Then_correct  (=> (|Seq#Contains_22310| (map_domain res_node_map@0) r_2) (and (=> (= (ControlFlow 0 30) (- 0 31)) (select res_copy_nodes@0 (lookup_1 res_node_map@0 r_2))) (=> (select res_copy_nodes@0 (lookup_1 res_node_map@0 r_2)) (=> (= (ControlFlow 0 30) 29) anon63_correct))))))
(let ((anon170_Else_correct  (=> (forall ((r_1_1_1 T@Ref) (j_3_1_1 Int) ) (!  (=> (and (select setOfRef r_1_1_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1_1_1 edges)) j_3_1_1)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1_1_1 edges) j_3_1_1)))
 :qid |stdinbpl.1722:28|
 :skolemid |205|
 :pattern ( (select setOfRef r_1_1_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1_1_1 edges)) j_3_1_1))
 :pattern ( (select setOfRef r_1_1_1) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1_1_1 edges) j_3_1_1))
 :pattern ( (select setOfRef r_1_1_1) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1_1_1 edges) j_3_1_1)))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1_1_1 edges)) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1_1_1 edges) j_3_1_1))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1_1_1 edges)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1_1_1 edges) j_3_1_1)))
 :pattern ( (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1_1_1 edges)) j_3_1_1))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1_1_1 edges) j_3_1_1)))
)) (and (=> (= (ControlFlow 0 203) (- 0 205)) (|Set#Subset_22339| node_map_image res_copy_nodes@0)) (=> (|Set#Subset_22339| node_map_image res_copy_nodes@0) (and (=> (= (ControlFlow 0 203) (- 0 204)) (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef res_copy_nodes@0)) 0)) (=> (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef res_copy_nodes@0)) 0) (and (and (=> (= (ControlFlow 0 203) 198) anon172_Else_correct) (=> (= (ControlFlow 0 203) 30) anon173_Then_correct)) (=> (= (ControlFlow 0 203) 32) anon173_Else_correct)))))))))
(let ((anon59_correct true))
(let ((anon171_Else_correct  (=> (and (not (and (select setOfRef r_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1 edges)) j_2_2))) (= (ControlFlow 0 28) 25)) anon59_correct)))
(let ((anon171_Then_correct  (=> (and (select setOfRef r_1) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1 edges)) j_2_2)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1 edges) j_2_2))) (=> (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) r_1 edges) j_2_2)) (=> (= (ControlFlow 0 26) 25) anon59_correct))))))
(let ((anon168_Else_correct  (=> (forall ((j_1_1_1 Int) ) (!  (=> (select S@0 j_1_1_1) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) this edges) j_1_1_1)))
 :qid |stdinbpl.1711:28|
 :skolemid |204|
 :pattern ( (select S@0 j_1_1_1))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) this edges) j_1_1_1)))
)) (and (and (=> (= (ControlFlow 0 206) 203) anon170_Else_correct) (=> (= (ControlFlow 0 206) 26) anon171_Then_correct)) (=> (= (ControlFlow 0 206) 28) anon171_Else_correct)))))
(let ((anon55_correct true))
(let ((anon169_Else_correct  (=> (and (not (select S@0 j@@9)) (= (ControlFlow 0 24) 21)) anon55_correct)))
(let ((anon169_Then_correct  (=> (select S@0 j@@9) (and (=> (= (ControlFlow 0 22) (- 0 23)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) this edges) j@@9))) (=> (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) this edges) j@@9)) (=> (= (ControlFlow 0 22) 21) anon55_correct))))))
(let ((anon166_Else_correct  (=> (forall ((x_45_1 T@Ref) ) (!  (=> (select setOfRef x_45_1) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) x_45_1 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_45_1 edges)))
 :qid |stdinbpl.1700:28|
 :skolemid |203|
 :pattern ( (select setOfRef x_45_1))
)) (and (and (=> (= (ControlFlow 0 207) 206) anon168_Else_correct) (=> (= (ControlFlow 0 207) 22) anon169_Then_correct)) (=> (= (ControlFlow 0 207) 24) anon169_Else_correct)))))
(let ((anon51_correct true))
(let ((anon167_Else_correct  (=> (and (not (select setOfRef x_44_1)) (= (ControlFlow 0 20) 17)) anon51_correct)))
(let ((anon167_Then_correct  (=> (select setOfRef x_44_1) (and (=> (= (ControlFlow 0 18) (- 0 19)) (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) x_44_1 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_44_1 edges))) (=> (= (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) x_44_1 edges) (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_44_1 edges)) (=> (= (ControlFlow 0 18) 17) anon51_correct))))))
(let ((anon164_Else_correct  (=> (forall ((x_42_1 T@Ref) ) (!  (=> (select setOfRef x_42_1) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@1) x_42_1 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_42_1 val)))
 :qid |stdinbpl.1644:28|
 :skolemid |195|
 :pattern ( (select setOfRef x_42_1))
)) (and (=> (= (ControlFlow 0 208) (- 0 211)) (forall ((x_43 T@Ref) ) (!  (=> (and (select setOfRef x_43) (dummyFunction_22318 (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) x_43 edges))) (>= rd NoPerm))
 :qid |stdinbpl.1652:25|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) x_43 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@5) x_43 edges))
 :pattern ( (select setOfRef x_43))
))) (=> (forall ((x_43@@0 T@Ref) ) (!  (=> (and (select setOfRef x_43@@0) (dummyFunction_22318 (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) x_43@@0 edges))) (>= rd NoPerm))
 :qid |stdinbpl.1652:25|
 :skolemid |196|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) x_43@@0 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@5) x_43@@0 edges))
 :pattern ( (select setOfRef x_43@@0))
)) (and (=> (= (ControlFlow 0 208) (- 0 210)) (forall ((x_43@@1 T@Ref) (x_43_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_43@@1 x_43_1)) (select setOfRef x_43@@1)) (select setOfRef x_43_1)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_43@@1 x_43_1)))
 :qid |stdinbpl.1659:25|
 :skolemid |197|
 :pattern ( (neverTriggered14 x_43@@1) (neverTriggered14 x_43_1))
))) (=> (forall ((x_43@@2 T@Ref) (x_43_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_43@@2 x_43_1@@0)) (select setOfRef x_43@@2)) (select setOfRef x_43_1@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_43@@2 x_43_1@@0)))
 :qid |stdinbpl.1659:25|
 :skolemid |197|
 :pattern ( (neverTriggered14 x_43@@2) (neverTriggered14 x_43_1@@0))
)) (and (=> (= (ControlFlow 0 208) (- 0 209)) (forall ((x_43@@3 T@Ref) ) (!  (=> (select setOfRef x_43@@3) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@4) x_43@@3 edges) rd))
 :qid |stdinbpl.1666:25|
 :skolemid |198|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) x_43@@3 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@5) x_43@@3 edges))
 :pattern ( (select setOfRef x_43@@3))
))) (=> (forall ((x_43@@4 T@Ref) ) (!  (=> (select setOfRef x_43@@4) (>= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@4) x_43@@4 edges) rd))
 :qid |stdinbpl.1666:25|
 :skolemid |198|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) x_43@@4 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@5) x_43@@4 edges))
 :pattern ( (select setOfRef x_43@@4))
)) (=> (forall ((x_43@@5 T@Ref) ) (!  (=> (and (select setOfRef x_43@@5) (< NoPerm rd)) (and (qpRange14 x_43@@5) (= (invRecv14 x_43@@5) x_43@@5)))
 :qid |stdinbpl.1672:30|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) x_43@@5 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@5) x_43@@5 edges))
 :pattern ( (select setOfRef x_43@@5))
)) (=> (and (forall ((o_9@@239 T@Ref) ) (!  (=> (and (select setOfRef (invRecv14 o_9@@239)) (and (< NoPerm rd) (qpRange14 o_9@@239))) (= (invRecv14 o_9@@239) o_9@@239))
 :qid |stdinbpl.1676:30|
 :skolemid |200|
 :pattern ( (invRecv14 o_9@@239))
)) (forall ((o_9@@240 T@Ref) ) (!  (and (=> (and (select setOfRef (invRecv14 o_9@@240)) (and (< NoPerm rd) (qpRange14 o_9@@240))) (and (= (invRecv14 o_9@@240) o_9@@240) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@5) o_9@@240 edges) (- (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@4) o_9@@240 edges) rd)))) (=> (not (and (select setOfRef (invRecv14 o_9@@240)) (and (< NoPerm rd) (qpRange14 o_9@@240)))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@5) o_9@@240 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@4) o_9@@240 edges))))
 :qid |stdinbpl.1682:30|
 :skolemid |201|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@5) o_9@@240 edges))
))) (=> (and (and (and (and (and (forall ((o_9@@241 T@Ref) (f_5@@179 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@4) o_9@@241 f_5@@179) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@5) o_9@@241 f_5@@179)))
 :qid |stdinbpl.1688:37|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@5) o_9@@241 f_5@@179))
)) (forall ((o_9@@242 T@Ref) (f_5@@180 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@4) o_9@@242 f_5@@180) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@5) o_9@@242 f_5@@180)))
 :qid |stdinbpl.1688:37|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@5) o_9@@242 f_5@@180))
))) (forall ((o_9@@243 T@Ref) (f_5@@181 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@4) o_9@@243 f_5@@181) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@5) o_9@@243 f_5@@181)))
 :qid |stdinbpl.1688:37|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@5) o_9@@243 f_5@@181))
))) (forall ((o_9@@244 T@Ref) (f_5@@182 T@Field_43433_43434) ) (!  (=> (not (= f_5@@182 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@4) o_9@@244 f_5@@182) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@5) o_9@@244 f_5@@182)))
 :qid |stdinbpl.1688:37|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@5) o_9@@244 f_5@@182))
))) (forall ((o_9@@245 T@Ref) (f_5@@183 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@4) o_9@@245 f_5@@183) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@5) o_9@@245 f_5@@183)))
 :qid |stdinbpl.1688:37|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@5) o_9@@245 f_5@@183))
))) (forall ((o_9@@246 T@Ref) (f_5@@184 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@4) o_9@@246 f_5@@184) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@5) o_9@@246 f_5@@184)))
 :qid |stdinbpl.1688:37|
 :skolemid |202|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@5) o_9@@246 f_5@@184))
))) (and (and (=> (= (ControlFlow 0 208) 207) anon166_Else_correct) (=> (= (ControlFlow 0 208) 18) anon167_Then_correct)) (=> (= (ControlFlow 0 208) 20) anon167_Else_correct))))))))))))))
(let ((anon47_correct true))
(let ((anon165_Else_correct  (=> (and (not (select setOfRef x_41)) (= (ControlFlow 0 16) 13)) anon47_correct)))
(let ((anon165_Then_correct  (=> (select setOfRef x_41) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@1) x_41 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_41 val))) (=> (= (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@1) x_41 val) (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_41 val)) (=> (= (ControlFlow 0 14) 13) anon47_correct))))))
(let ((anon163_Else_correct  (=> (not (has_node node_map_1@@4 this)) (=> (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@19) freshObj@0 $allocated))) (=> (and (and (= Heap@0 (PolymorphicMapType_33182 (store (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@19) freshObj@0 $allocated true) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@@19) (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@@19) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@@19))) (= Mask@0 (PolymorphicMapType_33203 (store (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@3) freshObj@0 val (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@3) freshObj@0 val) FullPerm)) (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@3) (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@3) (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@3) (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@3) (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@3)))) (and (= Mask@1 (PolymorphicMapType_33203 (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@0) (store (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| Mask@0) freshObj@0 edges (+ (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| Mask@0) freshObj@0 edges) FullPerm)) (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| Mask@0) (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| Mask@0) (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| Mask@0) (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| Mask@0))) (state Heap@0 Mask@1))) (and (=> (= (ControlFlow 0 212) (- 0 221)) (HasDirectPerm_22315_6609 Mask@1 this val)) (=> (HasDirectPerm_22315_6609 Mask@1 this val) (and (=> (= (ControlFlow 0 212) (- 0 220)) (= FullPerm (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@1) freshObj@0 val))) (=> (= FullPerm (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@1) freshObj@0 val)) (=> (and (= Heap@1 (PolymorphicMapType_33182 (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@0) (|PolymorphicMapType_33182_21709_21710#PolymorphicMapType_33182| Heap@0) (store (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@0) freshObj@0 val (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@0) this val)) (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@0) (|PolymorphicMapType_33182_22317_101604#PolymorphicMapType_33182| Heap@0) (|PolymorphicMapType_33182_33242_101427#PolymorphicMapType_33182| Heap@0))) (state Heap@1 Mask@1)) (=> (and (and (= res_node_map@0 (insert_1 node_map_1@@4 this freshObj@0)) (state Heap@1 Mask@1)) (and (= res_copy_nodes@0 (|Set#Union_22345| node_map_image (|Set#Singleton_22343| freshObj@0))) (state Heap@1 Mask@1))) (and (=> (= (ControlFlow 0 212) (- 0 219)) (|Set#Equal_22345| (|Set#Union_22345| (|Set#Intersection_22336| setOfRef node_map_image) (|Set#Intersection_22336| setOfRef (|Set#Singleton_22343| freshObj@0))) (|Set#Intersection_22336| setOfRef res_copy_nodes@0))) (=> (|Set#Equal_22345| (|Set#Union_22345| (|Set#Intersection_22336| setOfRef node_map_image) (|Set#Intersection_22336| setOfRef (|Set#Singleton_22343| freshObj@0))) (|Set#Intersection_22336| setOfRef res_copy_nodes@0)) (=> (state Heap@1 Mask@1) (and (=> (= (ControlFlow 0 212) (- 0 218)) (HasDirectPerm_22317_22318 Mask@1 this edges)) (=> (HasDirectPerm_22317_22318 Mask@1 this edges) (=> (and (= S@0 (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@1) this edges))) (state Heap@1 Mask@1)) (and (=> (= (ControlFlow 0 212) (- 0 217)) (select res_copy_nodes@0 freshObj@0)) (=> (select res_copy_nodes@0 freshObj@0) (and (=> (= (ControlFlow 0 212) (- 0 216)) (select setOfRef this)) (=> (select setOfRef this) (and (=> (= (ControlFlow 0 212) (- 0 215)) (forall ((x_40_1 T@Ref) ) (!  (=> (and (select setOfRef x_40_1) (dummyFunction_6609 (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@1) x_40_1 val))) (>= rd NoPerm))
 :qid |stdinbpl.1596:25|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@1) x_40_1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@4) x_40_1 val))
 :pattern ( (select setOfRef x_40_1))
))) (=> (forall ((x_40_1@@0 T@Ref) ) (!  (=> (and (select setOfRef x_40_1@@0) (dummyFunction_6609 (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@1) x_40_1@@0 val))) (>= rd NoPerm))
 :qid |stdinbpl.1596:25|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@1) x_40_1@@0 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@4) x_40_1@@0 val))
 :pattern ( (select setOfRef x_40_1@@0))
)) (and (=> (= (ControlFlow 0 212) (- 0 214)) (forall ((x_40_1@@1 T@Ref) (x_40_2 T@Ref) ) (!  (=> (and (and (and (and (not (= x_40_1@@1 x_40_2)) (select setOfRef x_40_1@@1)) (select setOfRef x_40_2)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_40_1@@1 x_40_2)))
 :qid |stdinbpl.1603:25|
 :skolemid |189|
 :pattern ( (neverTriggered13 x_40_1@@1) (neverTriggered13 x_40_2))
))) (=> (forall ((x_40_1@@2 T@Ref) (x_40_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_40_1@@2 x_40_2@@0)) (select setOfRef x_40_1@@2)) (select setOfRef x_40_2@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_40_1@@2 x_40_2@@0)))
 :qid |stdinbpl.1603:25|
 :skolemid |189|
 :pattern ( (neverTriggered13 x_40_1@@2) (neverTriggered13 x_40_2@@0))
)) (and (=> (= (ControlFlow 0 212) (- 0 213)) (forall ((x_40_1@@3 T@Ref) ) (!  (=> (select setOfRef x_40_1@@3) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@1) x_40_1@@3 val) rd))
 :qid |stdinbpl.1610:25|
 :skolemid |190|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@1) x_40_1@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@4) x_40_1@@3 val))
 :pattern ( (select setOfRef x_40_1@@3))
))) (=> (forall ((x_40_1@@4 T@Ref) ) (!  (=> (select setOfRef x_40_1@@4) (>= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@1) x_40_1@@4 val) rd))
 :qid |stdinbpl.1610:25|
 :skolemid |190|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@1) x_40_1@@4 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@4) x_40_1@@4 val))
 :pattern ( (select setOfRef x_40_1@@4))
)) (=> (forall ((x_40_1@@5 T@Ref) ) (!  (=> (and (select setOfRef x_40_1@@5) (< NoPerm rd)) (and (qpRange13 x_40_1@@5) (= (invRecv13 x_40_1@@5) x_40_1@@5)))
 :qid |stdinbpl.1616:30|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@1) x_40_1@@5 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@4) x_40_1@@5 val))
 :pattern ( (select setOfRef x_40_1@@5))
)) (=> (and (forall ((o_9@@247 T@Ref) ) (!  (=> (and (select setOfRef (invRecv13 o_9@@247)) (and (< NoPerm rd) (qpRange13 o_9@@247))) (= (invRecv13 o_9@@247) o_9@@247))
 :qid |stdinbpl.1620:30|
 :skolemid |192|
 :pattern ( (invRecv13 o_9@@247))
)) (forall ((o_9@@248 T@Ref) ) (!  (and (=> (and (select setOfRef (invRecv13 o_9@@248)) (and (< NoPerm rd) (qpRange13 o_9@@248))) (and (= (invRecv13 o_9@@248) o_9@@248) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@4) o_9@@248 val) (- (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@1) o_9@@248 val) rd)))) (=> (not (and (select setOfRef (invRecv13 o_9@@248)) (and (< NoPerm rd) (qpRange13 o_9@@248)))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@4) o_9@@248 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@1) o_9@@248 val))))
 :qid |stdinbpl.1626:30|
 :skolemid |193|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@4) o_9@@248 val))
))) (=> (and (and (and (and (and (forall ((o_9@@249 T@Ref) (f_5@@185 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| Mask@1) o_9@@249 f_5@@185) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@4) o_9@@249 f_5@@185)))
 :qid |stdinbpl.1632:37|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@4) o_9@@249 f_5@@185))
)) (forall ((o_9@@250 T@Ref) (f_5@@186 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| Mask@1) o_9@@250 f_5@@186) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@4) o_9@@250 f_5@@186)))
 :qid |stdinbpl.1632:37|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@4) o_9@@250 f_5@@186))
))) (forall ((o_9@@251 T@Ref) (f_5@@187 T@Field_43387_6609) ) (!  (=> (not (= f_5@@187 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| Mask@1) o_9@@251 f_5@@187) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@4) o_9@@251 f_5@@187)))
 :qid |stdinbpl.1632:37|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@4) o_9@@251 f_5@@187))
))) (forall ((o_9@@252 T@Ref) (f_5@@188 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| Mask@1) o_9@@252 f_5@@188) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@4) o_9@@252 f_5@@188)))
 :qid |stdinbpl.1632:37|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@4) o_9@@252 f_5@@188))
))) (forall ((o_9@@253 T@Ref) (f_5@@189 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| Mask@1) o_9@@253 f_5@@189) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@4) o_9@@253 f_5@@189)))
 :qid |stdinbpl.1632:37|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@4) o_9@@253 f_5@@189))
))) (forall ((o_9@@254 T@Ref) (f_5@@190 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| Mask@1) o_9@@254 f_5@@190) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@4) o_9@@254 f_5@@190)))
 :qid |stdinbpl.1632:37|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@4) o_9@@254 f_5@@190))
))) (and (and (=> (= (ControlFlow 0 212) 208) anon164_Else_correct) (=> (= (ControlFlow 0 212) 14) anon165_Then_correct)) (=> (= (ControlFlow 0 212) 16) anon165_Else_correct))))))))))))))))))))))))))))))))
(let ((anon149_Else_correct  (and (=> (= (ControlFlow 0 259) (- 0 260)) (forall ((x_11 T@Ref) (x_11_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_11 x_11_1)) (select node_map_image x_11)) (select node_map_image x_11_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_11 x_11_1)))
 :qid |stdinbpl.1234:15|
 :skolemid |152|
))) (=> (forall ((x_11@@0 T@Ref) (x_11_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_11@@0 x_11_1@@0)) (select node_map_image x_11@@0)) (select node_map_image x_11_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_11@@0 x_11_1@@0)))
 :qid |stdinbpl.1234:15|
 :skolemid |152|
)) (=> (and (and (forall ((x_11@@1 T@Ref) ) (!  (=> (and (select node_map_image x_11@@1) (< NoPerm FullPerm)) (and (qpRange4 x_11@@1) (= (invRecv4 x_11@@1) x_11@@1)))
 :qid |stdinbpl.1240:22|
 :skolemid |153|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_11@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@3) x_11@@1 edges))
 :pattern ( (select node_map_image x_11@@1))
)) (forall ((o_9@@255 T@Ref) ) (!  (=> (and (and (select node_map_image (invRecv4 o_9@@255)) (< NoPerm FullPerm)) (qpRange4 o_9@@255)) (= (invRecv4 o_9@@255) o_9@@255))
 :qid |stdinbpl.1244:22|
 :skolemid |154|
 :pattern ( (invRecv4 o_9@@255))
))) (and (forall ((x_11@@2 T@Ref) ) (!  (=> (select node_map_image x_11@@2) (not (= x_11@@2 null)))
 :qid |stdinbpl.1250:22|
 :skolemid |155|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_11@@2 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@3) x_11@@2 edges))
 :pattern ( (select node_map_image x_11@@2))
)) (forall ((o_9@@256 T@Ref) ) (!  (and (=> (and (and (select node_map_image (invRecv4 o_9@@256)) (< NoPerm FullPerm)) (qpRange4 o_9@@256)) (and (=> (< NoPerm FullPerm) (= (invRecv4 o_9@@256) o_9@@256)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@3) o_9@@256 edges) (+ (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@2) o_9@@256 edges) FullPerm)))) (=> (not (and (and (select node_map_image (invRecv4 o_9@@256)) (< NoPerm FullPerm)) (qpRange4 o_9@@256))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@3) o_9@@256 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@2) o_9@@256 edges))))
 :qid |stdinbpl.1256:22|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@3) o_9@@256 edges))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@257 T@Ref) (f_5@@191 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@2) o_9@@257 f_5@@191) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@3) o_9@@257 f_5@@191)))
 :qid |stdinbpl.1260:29|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@2) o_9@@257 f_5@@191))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@3) o_9@@257 f_5@@191))
)) (forall ((o_9@@258 T@Ref) (f_5@@192 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@2) o_9@@258 f_5@@192) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@3) o_9@@258 f_5@@192)))
 :qid |stdinbpl.1260:29|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@2) o_9@@258 f_5@@192))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@3) o_9@@258 f_5@@192))
))) (forall ((o_9@@259 T@Ref) (f_5@@193 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@2) o_9@@259 f_5@@193) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@3) o_9@@259 f_5@@193)))
 :qid |stdinbpl.1260:29|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@2) o_9@@259 f_5@@193))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@3) o_9@@259 f_5@@193))
))) (forall ((o_9@@260 T@Ref) (f_5@@194 T@Field_43433_43434) ) (!  (=> (not (= f_5@@194 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@2) o_9@@260 f_5@@194) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@3) o_9@@260 f_5@@194)))
 :qid |stdinbpl.1260:29|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@2) o_9@@260 f_5@@194))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@3) o_9@@260 f_5@@194))
))) (forall ((o_9@@261 T@Ref) (f_5@@195 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@2) o_9@@261 f_5@@195) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@3) o_9@@261 f_5@@195)))
 :qid |stdinbpl.1260:29|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@2) o_9@@261 f_5@@195))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@3) o_9@@261 f_5@@195))
))) (forall ((o_9@@262 T@Ref) (f_5@@196 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@2) o_9@@262 f_5@@196) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@3) o_9@@262 f_5@@196)))
 :qid |stdinbpl.1260:29|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@2) o_9@@262 f_5@@196))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@3) o_9@@262 f_5@@196))
))) (and (state Heap@@19 QPMask@3) (state Heap@@19 QPMask@3))) (and (and (=> (= (ControlFlow 0 259) 258) anon150_Then_correct) (=> (= (ControlFlow 0 259) 68) anon163_Then_correct)) (=> (= (ControlFlow 0 259) 212) anon163_Else_correct))))))))
(let ((anon149_Then_correct true))
(let ((anon148_Else_correct  (and (=> (= (ControlFlow 0 261) (- 0 262)) (forall ((x_9 T@Ref) (x_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_9 x_9_1)) (select node_map_image x_9)) (select node_map_image x_9_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_9 x_9_1)))
 :qid |stdinbpl.1194:15|
 :skolemid |146|
))) (=> (forall ((x_9@@0 T@Ref) (x_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_9@@0 x_9_1@@0)) (select node_map_image x_9@@0)) (select node_map_image x_9_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_9@@0 x_9_1@@0)))
 :qid |stdinbpl.1194:15|
 :skolemid |146|
)) (=> (and (and (forall ((x_9@@1 T@Ref) ) (!  (=> (and (select node_map_image x_9@@1) (< NoPerm FullPerm)) (and (qpRange3 x_9@@1) (= (invRecv3 x_9@@1) x_9@@1)))
 :qid |stdinbpl.1200:22|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_9@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@2) x_9@@1 val))
 :pattern ( (select node_map_image x_9@@1))
)) (forall ((o_9@@263 T@Ref) ) (!  (=> (and (and (select node_map_image (invRecv3 o_9@@263)) (< NoPerm FullPerm)) (qpRange3 o_9@@263)) (= (invRecv3 o_9@@263) o_9@@263))
 :qid |stdinbpl.1204:22|
 :skolemid |148|
 :pattern ( (invRecv3 o_9@@263))
))) (and (forall ((x_9@@2 T@Ref) ) (!  (=> (select node_map_image x_9@@2) (not (= x_9@@2 null)))
 :qid |stdinbpl.1210:22|
 :skolemid |149|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_9@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@2) x_9@@2 val))
 :pattern ( (select node_map_image x_9@@2))
)) (forall ((o_9@@264 T@Ref) ) (!  (and (=> (and (and (select node_map_image (invRecv3 o_9@@264)) (< NoPerm FullPerm)) (qpRange3 o_9@@264)) (and (=> (< NoPerm FullPerm) (= (invRecv3 o_9@@264) o_9@@264)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@2) o_9@@264 val) (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@1) o_9@@264 val) FullPerm)))) (=> (not (and (and (select node_map_image (invRecv3 o_9@@264)) (< NoPerm FullPerm)) (qpRange3 o_9@@264))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@2) o_9@@264 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@1) o_9@@264 val))))
 :qid |stdinbpl.1216:22|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@2) o_9@@264 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@265 T@Ref) (f_5@@197 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@1) o_9@@265 f_5@@197) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@2) o_9@@265 f_5@@197)))
 :qid |stdinbpl.1220:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@1) o_9@@265 f_5@@197))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@2) o_9@@265 f_5@@197))
)) (forall ((o_9@@266 T@Ref) (f_5@@198 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@1) o_9@@266 f_5@@198) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@2) o_9@@266 f_5@@198)))
 :qid |stdinbpl.1220:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@1) o_9@@266 f_5@@198))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@2) o_9@@266 f_5@@198))
))) (forall ((o_9@@267 T@Ref) (f_5@@199 T@Field_43387_6609) ) (!  (=> (not (= f_5@@199 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@1) o_9@@267 f_5@@199) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@2) o_9@@267 f_5@@199)))
 :qid |stdinbpl.1220:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@1) o_9@@267 f_5@@199))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@2) o_9@@267 f_5@@199))
))) (forall ((o_9@@268 T@Ref) (f_5@@200 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@1) o_9@@268 f_5@@200) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@2) o_9@@268 f_5@@200)))
 :qid |stdinbpl.1220:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@1) o_9@@268 f_5@@200))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@2) o_9@@268 f_5@@200))
))) (forall ((o_9@@269 T@Ref) (f_5@@201 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@1) o_9@@269 f_5@@201) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@2) o_9@@269 f_5@@201)))
 :qid |stdinbpl.1220:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@1) o_9@@269 f_5@@201))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@2) o_9@@269 f_5@@201))
))) (forall ((o_9@@270 T@Ref) (f_5@@202 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@1) o_9@@270 f_5@@202) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@2) o_9@@270 f_5@@202)))
 :qid |stdinbpl.1220:29|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@1) o_9@@270 f_5@@202))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@2) o_9@@270 f_5@@202))
))) (and (state Heap@@19 QPMask@2) (state Heap@@19 QPMask@2))) (and (=> (= (ControlFlow 0 261) 12) anon149_Then_correct) (=> (= (ControlFlow 0 261) 259) anon149_Else_correct))))))))
(let ((anon148_Then_correct true))
(let ((anon147_Else_correct  (=> (and (forall ((x_7 T@Ref) ) (!  (=> (|Seq#Contains_22310| (map_domain node_map_1@@4) x_7) (select node_map_image (lookup_1 node_map_1@@4 x_7)))
 :qid |stdinbpl.1182:20|
 :skolemid |145|
 :pattern ( (|Seq#ContainsTrigger_22306| (map_domain node_map_1@@4) x_7))
 :pattern ( (|Seq#Contains_22310| (map_domain node_map_1@@4) x_7))
 :pattern ( (select node_map_image (lookup_1 node_map_1@@4 x_7)))
)) (state Heap@@19 QPMask@1)) (and (=> (= (ControlFlow 0 263) 11) anon148_Then_correct) (=> (= (ControlFlow 0 263) 261) anon148_Else_correct)))))
(let ((anon147_Then_correct true))
(let ((anon144_Else_correct  (=> (and (forall ((x_5 T@Ref) (i_1 Int) ) (!  (=> (and (select setOfRef x_5) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_5 edges)) i_1)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_5 edges) i_1)))
 :qid |stdinbpl.1172:20|
 :skolemid |144|
 :pattern ( (select setOfRef x_5) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_5 edges)) i_1))
 :pattern ( (select setOfRef x_5) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_5 edges) i_1))
 :pattern ( (select setOfRef x_5) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_5 edges) i_1)))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_5 edges)) (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_5 edges) i_1))
 :pattern ( (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_5 edges)) (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_5 edges) i_1)))
 :pattern ( (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_5 edges)) i_1))
 :pattern ( (select setOfRef (edge_lookup (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_5 edges) i_1)))
)) (state Heap@@19 QPMask@1)) (and (=> (= (ControlFlow 0 264) 10) anon147_Then_correct) (=> (= (ControlFlow 0 264) 263) anon147_Else_correct)))))
(let ((anon9_correct true))
(let ((anon146_Else_correct  (=> (and (not (and (select setOfRef x_27) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_27 edges)) i_4))) (= (ControlFlow 0 6) 3)) anon9_correct)))
(let ((anon146_Then_correct  (=> (and (select setOfRef x_27) (select (edges_domain (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_27 edges)) i_4)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_22317_22318 QPMask@1 x_27 edges)) (=> (HasDirectPerm_22317_22318 QPMask@1 x_27 edges) (=> (= (ControlFlow 0 4) 3) anon9_correct))))))
(let ((anon145_Else_correct  (=> (not (select setOfRef x_27)) (and (=> (= (ControlFlow 0 9) 4) anon146_Then_correct) (=> (= (ControlFlow 0 9) 6) anon146_Else_correct)))))
(let ((anon145_Then_correct  (=> (select setOfRef x_27) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_22317_22318 QPMask@1 x_27 edges)) (=> (HasDirectPerm_22317_22318 QPMask@1 x_27 edges) (and (=> (= (ControlFlow 0 7) 4) anon146_Then_correct) (=> (= (ControlFlow 0 7) 6) anon146_Else_correct)))))))
(let ((anon143_Else_correct  (and (=> (= (ControlFlow 0 265) (- 0 267)) (forall ((x_3 T@Ref) (x_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3 x_3_1)) (select setOfRef x_3)) (select setOfRef x_3_1)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_3 x_3_1)))
 :qid |stdinbpl.1120:15|
 :skolemid |137|
))) (=> (forall ((x_3@@0 T@Ref) (x_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3@@0 x_3_1@@0)) (select setOfRef x_3@@0)) (select setOfRef x_3_1@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_3@@0 x_3_1@@0)))
 :qid |stdinbpl.1120:15|
 :skolemid |137|
)) (=> (and (forall ((x_3@@1 T@Ref) ) (!  (=> (and (select setOfRef x_3@@1) (< NoPerm rd)) (and (qpRange2 x_3@@1) (= (invRecv2 x_3@@1) x_3@@1)))
 :qid |stdinbpl.1126:22|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_3@@1 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@1) x_3@@1 edges))
 :pattern ( (select setOfRef x_3@@1))
)) (forall ((o_9@@271 T@Ref) ) (!  (=> (and (and (select setOfRef (invRecv2 o_9@@271)) (< NoPerm rd)) (qpRange2 o_9@@271)) (= (invRecv2 o_9@@271) o_9@@271))
 :qid |stdinbpl.1130:22|
 :skolemid |139|
 :pattern ( (invRecv2 o_9@@271))
))) (and (=> (= (ControlFlow 0 265) (- 0 266)) (forall ((x_3@@2 T@Ref) ) (!  (=> (select setOfRef x_3@@2) (>= rd NoPerm))
 :qid |stdinbpl.1136:15|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_3@@2 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@1) x_3@@2 edges))
 :pattern ( (select setOfRef x_3@@2))
))) (=> (forall ((x_3@@3 T@Ref) ) (!  (=> (select setOfRef x_3@@3) (>= rd NoPerm))
 :qid |stdinbpl.1136:15|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_3@@3 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@1) x_3@@3 edges))
 :pattern ( (select setOfRef x_3@@3))
)) (=> (and (forall ((x_3@@4 T@Ref) ) (!  (=> (and (select setOfRef x_3@@4) (> rd NoPerm)) (not (= x_3@@4 null)))
 :qid |stdinbpl.1142:22|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_33182_22317_22318#PolymorphicMapType_33182| Heap@@19) x_3@@4 edges))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@1) x_3@@4 edges))
 :pattern ( (select setOfRef x_3@@4))
)) (forall ((o_9@@272 T@Ref) ) (!  (and (=> (and (and (select setOfRef (invRecv2 o_9@@272)) (< NoPerm rd)) (qpRange2 o_9@@272)) (and (=> (< NoPerm rd) (= (invRecv2 o_9@@272) o_9@@272)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@1) o_9@@272 edges) (+ (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@0) o_9@@272 edges) rd)))) (=> (not (and (and (select setOfRef (invRecv2 o_9@@272)) (< NoPerm rd)) (qpRange2 o_9@@272))) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@1) o_9@@272 edges) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@0) o_9@@272 edges))))
 :qid |stdinbpl.1148:22|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@1) o_9@@272 edges))
))) (=> (and (and (and (and (and (and (forall ((o_9@@273 T@Ref) (f_5@@203 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@0) o_9@@273 f_5@@203) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@1) o_9@@273 f_5@@203)))
 :qid |stdinbpl.1152:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@0) o_9@@273 f_5@@203))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@1) o_9@@273 f_5@@203))
)) (forall ((o_9@@274 T@Ref) (f_5@@204 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@0) o_9@@274 f_5@@204) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@1) o_9@@274 f_5@@204)))
 :qid |stdinbpl.1152:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@0) o_9@@274 f_5@@204))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@1) o_9@@274 f_5@@204))
))) (forall ((o_9@@275 T@Ref) (f_5@@205 T@Field_43387_6609) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@0) o_9@@275 f_5@@205) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@1) o_9@@275 f_5@@205)))
 :qid |stdinbpl.1152:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@0) o_9@@275 f_5@@205))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@1) o_9@@275 f_5@@205))
))) (forall ((o_9@@276 T@Ref) (f_5@@206 T@Field_43433_43434) ) (!  (=> (not (= f_5@@206 edges)) (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@0) o_9@@276 f_5@@206) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@1) o_9@@276 f_5@@206)))
 :qid |stdinbpl.1152:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@0) o_9@@276 f_5@@206))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@1) o_9@@276 f_5@@206))
))) (forall ((o_9@@277 T@Ref) (f_5@@207 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@0) o_9@@277 f_5@@207) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@1) o_9@@277 f_5@@207)))
 :qid |stdinbpl.1152:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@0) o_9@@277 f_5@@207))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@1) o_9@@277 f_5@@207))
))) (forall ((o_9@@278 T@Ref) (f_5@@208 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@0) o_9@@278 f_5@@208) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@1) o_9@@278 f_5@@208)))
 :qid |stdinbpl.1152:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@0) o_9@@278 f_5@@208))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@1) o_9@@278 f_5@@208))
))) (and (state Heap@@19 QPMask@1) (state Heap@@19 QPMask@1))) (and (and (=> (= (ControlFlow 0 265) 264) anon144_Else_correct) (=> (= (ControlFlow 0 265) 7) anon145_Then_correct)) (=> (= (ControlFlow 0 265) 9) anon145_Else_correct)))))))))))
(let ((anon143_Then_correct true))
(let ((anon142_Else_correct  (and (=> (= (ControlFlow 0 268) (- 0 270)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select setOfRef x_1)) (select setOfRef x_1_1)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.1074:15|
 :skolemid |130|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select setOfRef x_1@@0)) (select setOfRef x_1_1@@0)) (< NoPerm rd)) (< NoPerm rd)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.1074:15|
 :skolemid |130|
)) (=> (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select setOfRef x_1@@1) (< NoPerm rd)) (and (qpRange1 x_1@@1) (= (invRecv1 x_1@@1) x_1@@1)))
 :qid |stdinbpl.1080:22|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_1@@1 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@0) x_1@@1 val))
 :pattern ( (select setOfRef x_1@@1))
)) (forall ((o_9@@279 T@Ref) ) (!  (=> (and (and (select setOfRef (invRecv1 o_9@@279)) (< NoPerm rd)) (qpRange1 o_9@@279)) (= (invRecv1 o_9@@279) o_9@@279))
 :qid |stdinbpl.1084:22|
 :skolemid |132|
 :pattern ( (invRecv1 o_9@@279))
))) (and (=> (= (ControlFlow 0 268) (- 0 269)) (forall ((x_1@@2 T@Ref) ) (!  (=> (select setOfRef x_1@@2) (>= rd NoPerm))
 :qid |stdinbpl.1090:15|
 :skolemid |133|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_1@@2 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@0) x_1@@2 val))
 :pattern ( (select setOfRef x_1@@2))
))) (=> (forall ((x_1@@3 T@Ref) ) (!  (=> (select setOfRef x_1@@3) (>= rd NoPerm))
 :qid |stdinbpl.1090:15|
 :skolemid |133|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_1@@3 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@0) x_1@@3 val))
 :pattern ( (select setOfRef x_1@@3))
)) (=> (and (forall ((x_1@@4 T@Ref) ) (!  (=> (and (select setOfRef x_1@@4) (> rd NoPerm)) (not (= x_1@@4 null)))
 :qid |stdinbpl.1096:22|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_33182_22315_6609#PolymorphicMapType_33182| Heap@@19) x_1@@4 val))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@0) x_1@@4 val))
 :pattern ( (select setOfRef x_1@@4))
)) (forall ((o_9@@280 T@Ref) ) (!  (and (=> (and (and (select setOfRef (invRecv1 o_9@@280)) (< NoPerm rd)) (qpRange1 o_9@@280)) (and (=> (< NoPerm rd) (= (invRecv1 o_9@@280) o_9@@280)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@0) o_9@@280 val) (+ (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_9@@280 val) rd)))) (=> (not (and (and (select setOfRef (invRecv1 o_9@@280)) (< NoPerm rd)) (qpRange1 o_9@@280))) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@0) o_9@@280 val) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_9@@280 val))))
 :qid |stdinbpl.1102:22|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@0) o_9@@280 val))
))) (=> (and (and (and (and (and (and (forall ((o_9@@281 T@Ref) (f_5@@209 T@Field_33242_53) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| ZeroMask) o_9@@281 f_5@@209) (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@0) o_9@@281 f_5@@209)))
 :qid |stdinbpl.1106:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| ZeroMask) o_9@@281 f_5@@209))
 :pattern ( (select (|PolymorphicMapType_33203_22315_53#PolymorphicMapType_33203| QPMask@0) o_9@@281 f_5@@209))
)) (forall ((o_9@@282 T@Ref) (f_5@@210 T@Field_33255_33256) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| ZeroMask) o_9@@282 f_5@@210) (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@0) o_9@@282 f_5@@210)))
 :qid |stdinbpl.1106:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| ZeroMask) o_9@@282 f_5@@210))
 :pattern ( (select (|PolymorphicMapType_33203_22315_33256#PolymorphicMapType_33203| QPMask@0) o_9@@282 f_5@@210))
))) (forall ((o_9@@283 T@Ref) (f_5@@211 T@Field_43387_6609) ) (!  (=> (not (= f_5@@211 val)) (= (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_9@@283 f_5@@211) (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@0) o_9@@283 f_5@@211)))
 :qid |stdinbpl.1106:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| ZeroMask) o_9@@283 f_5@@211))
 :pattern ( (select (|PolymorphicMapType_33203_22315_6609#PolymorphicMapType_33203| QPMask@0) o_9@@283 f_5@@211))
))) (forall ((o_9@@284 T@Ref) (f_5@@212 T@Field_43433_43434) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| ZeroMask) o_9@@284 f_5@@212) (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@0) o_9@@284 f_5@@212)))
 :qid |stdinbpl.1106:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| ZeroMask) o_9@@284 f_5@@212))
 :pattern ( (select (|PolymorphicMapType_33203_22317_22318#PolymorphicMapType_33203| QPMask@0) o_9@@284 f_5@@212))
))) (forall ((o_9@@285 T@Ref) (f_5@@213 T@Field_22317_101427) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| ZeroMask) o_9@@285 f_5@@213) (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@0) o_9@@285 f_5@@213)))
 :qid |stdinbpl.1106:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| ZeroMask) o_9@@285 f_5@@213))
 :pattern ( (select (|PolymorphicMapType_33203_22315_101427#PolymorphicMapType_33203| QPMask@0) o_9@@285 f_5@@213))
))) (forall ((o_9@@286 T@Ref) (f_5@@214 T@Field_22317_101560) ) (!  (=> true (= (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| ZeroMask) o_9@@286 f_5@@214) (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@0) o_9@@286 f_5@@214)))
 :qid |stdinbpl.1106:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| ZeroMask) o_9@@286 f_5@@214))
 :pattern ( (select (|PolymorphicMapType_33203_22315_106254#PolymorphicMapType_33203| QPMask@0) o_9@@286 f_5@@214))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (=> (= (ControlFlow 0 268) 2) anon143_Then_correct) (=> (= (ControlFlow 0 268) 265) anon143_Else_correct)))))))))))
(let ((anon142_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@19 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_33182_21706_53#PolymorphicMapType_33182| Heap@@19) this $allocated)) (=> (and (and (and (< NoPerm rd) (state Heap@@19 ZeroMask)) (and (not (= this null)) (state Heap@@19 ZeroMask))) (and (and (select setOfRef this) (state Heap@@19 ZeroMask)) (and (= (|Set#Card_22336| (|Set#Intersection_22336| setOfRef node_map_image)) 0) (state Heap@@19 ZeroMask)))) (and (=> (= (ControlFlow 0 271) 1) anon142_Then_correct) (=> (= (ControlFlow 0 271) 268) anon142_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 272) 271) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
