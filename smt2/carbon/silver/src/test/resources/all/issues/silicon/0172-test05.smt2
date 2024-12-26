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
(declare-sort T@Field_77466_53 0)
(declare-sort T@Field_77479_77480 0)
(declare-sort T@Field_80889_80890 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_80792_1186 0)
(declare-sort T@Field_80902_80907 0)
(declare-sort T@Field_143710_143711 0)
(declare-sort T@Field_143723_143728 0)
(declare-sort T@Field_34701_34706 0)
(declare-sort T@Field_34701_80907 0)
(declare-sort T@Field_34705_34702 0)
(declare-sort T@Field_34705_1186 0)
(declare-sort T@Field_34705_53 0)
(declare-sort T@Field_34773_34702 0)
(declare-sort T@Field_34773_1186 0)
(declare-sort T@Field_34773_53 0)
(declare-datatypes ((T@PolymorphicMapType_77427 0)) (((PolymorphicMapType_77427 (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| (Array T@Ref T@Field_80792_1186 Real)) (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| (Array T@Ref T@Field_77479_77480 Real)) (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| (Array T@Ref T@Field_80889_80890 Real)) (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| (Array T@Ref T@Field_143710_143711 Real)) (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| (Array T@Ref T@Field_34701_34706 Real)) (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| (Array T@Ref T@Field_77466_53 Real)) (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| (Array T@Ref T@Field_34701_80907 Real)) (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| (Array T@Ref T@Field_34705_1186 Real)) (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| (Array T@Ref T@Field_34705_34702 Real)) (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| (Array T@Ref T@Field_34705_53 Real)) (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| (Array T@Ref T@Field_80902_80907 Real)) (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| (Array T@Ref T@Field_34773_1186 Real)) (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| (Array T@Ref T@Field_34773_34702 Real)) (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| (Array T@Ref T@Field_34773_53 Real)) (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| (Array T@Ref T@Field_143723_143728 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_77955 0)) (((PolymorphicMapType_77955 (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (Array T@Ref T@Field_80792_1186 Bool)) (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (Array T@Ref T@Field_77479_77480 Bool)) (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (Array T@Ref T@Field_77466_53 Bool)) (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (Array T@Ref T@Field_34701_34706 Bool)) (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (Array T@Ref T@Field_34701_80907 Bool)) (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (Array T@Ref T@Field_34705_1186 Bool)) (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (Array T@Ref T@Field_34705_34702 Bool)) (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (Array T@Ref T@Field_34705_53 Bool)) (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (Array T@Ref T@Field_80889_80890 Bool)) (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (Array T@Ref T@Field_80902_80907 Bool)) (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (Array T@Ref T@Field_34773_1186 Bool)) (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (Array T@Ref T@Field_34773_34702 Bool)) (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (Array T@Ref T@Field_34773_53 Bool)) (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (Array T@Ref T@Field_143710_143711 Bool)) (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (Array T@Ref T@Field_143723_143728 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_77406 0)) (((PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| (Array T@Ref T@Field_77466_53 Bool)) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| (Array T@Ref T@Field_77479_77480 T@Ref)) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| (Array T@Ref T@Field_80889_80890 T@FrameType)) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| (Array T@Ref T@Field_80792_1186 Int)) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| (Array T@Ref T@Field_80902_80907 T@PolymorphicMapType_77955)) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| (Array T@Ref T@Field_143710_143711 T@FrameType)) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| (Array T@Ref T@Field_143723_143728 T@PolymorphicMapType_77955)) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| (Array T@Ref T@Field_34701_34706 T@FrameType)) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| (Array T@Ref T@Field_34701_80907 T@PolymorphicMapType_77955)) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| (Array T@Ref T@Field_34705_34702 T@Ref)) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| (Array T@Ref T@Field_34705_1186 Int)) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| (Array T@Ref T@Field_34705_53 Bool)) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| (Array T@Ref T@Field_34773_34702 T@Ref)) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| (Array T@Ref T@Field_34773_1186 Int)) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| (Array T@Ref T@Field_34773_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_77466_53)
(declare-fun data () T@Field_80792_1186)
(declare-fun next () T@Field_77479_77480)
(declare-fun succHeap (T@PolymorphicMapType_77406 T@PolymorphicMapType_77406) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_77406 T@PolymorphicMapType_77406) Bool)
(declare-fun state (T@PolymorphicMapType_77406 T@PolymorphicMapType_77427) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_77427) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_77955)
(declare-fun LL (T@Ref Int) T@Field_80889_80890)
(declare-fun IsPredicateField_34705_34706 (T@Field_80889_80890) Bool)
(declare-fun LL2 (T@Ref Int) T@Field_143710_143711)
(declare-fun IsPredicateField_34773_34774 (T@Field_143710_143711) Bool)
(declare-fun |LL#trigger_34705| (T@PolymorphicMapType_77406 T@Field_80889_80890) Bool)
(declare-fun |LL#everUsed_34705| (T@Field_80889_80890) Bool)
(declare-fun |LL2#trigger_34773| (T@PolymorphicMapType_77406 T@Field_143710_143711) Bool)
(declare-fun |LL2#everUsed_34773| (T@Field_143710_143711) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_77406 T@PolymorphicMapType_77406 T@PolymorphicMapType_77427) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_34773 (T@Field_143710_143711) T@Field_143723_143728)
(declare-fun HasDirectPerm_34773_34774 (T@PolymorphicMapType_77427 T@Ref T@Field_143710_143711) Bool)
(declare-fun PredicateMaskField_34705 (T@Field_80889_80890) T@Field_80902_80907)
(declare-fun HasDirectPerm_34705_34706 (T@PolymorphicMapType_77427 T@Ref T@Field_80889_80890) Bool)
(declare-fun IsPredicateField_34701_342591 (T@Field_34701_34706) Bool)
(declare-fun PredicateMaskField_34701 (T@Field_34701_34706) T@Field_34701_80907)
(declare-fun HasDirectPerm_34701_34706 (T@PolymorphicMapType_77427 T@Ref T@Field_34701_34706) Bool)
(declare-fun IsWandField_34773_348272 (T@Field_143710_143711) Bool)
(declare-fun WandMaskField_34773 (T@Field_143710_143711) T@Field_143723_143728)
(declare-fun IsWandField_34705_347915 (T@Field_80889_80890) Bool)
(declare-fun WandMaskField_34705 (T@Field_80889_80890) T@Field_80902_80907)
(declare-fun IsWandField_34701_347558 (T@Field_34701_34706) Bool)
(declare-fun WandMaskField_34701 (T@Field_34701_34706) T@Field_34701_80907)
(declare-fun |LL#sm| (T@Ref Int) T@Field_80902_80907)
(declare-fun |LL2#sm| (T@Ref Int) T@Field_143723_143728)
(declare-fun dummyHeap () T@PolymorphicMapType_77406)
(declare-fun ZeroMask () T@PolymorphicMapType_77427)
(declare-fun InsidePredicate_77466_77466 (T@Field_34701_34706 T@FrameType T@Field_34701_34706 T@FrameType) Bool)
(declare-fun InsidePredicate_34773_34773 (T@Field_143710_143711 T@FrameType T@Field_143710_143711 T@FrameType) Bool)
(declare-fun InsidePredicate_34705_34705 (T@Field_80889_80890 T@FrameType T@Field_80889_80890 T@FrameType) Bool)
(declare-fun IsPredicateField_34699_1186 (T@Field_80792_1186) Bool)
(declare-fun IsWandField_34699_1186 (T@Field_80792_1186) Bool)
(declare-fun IsPredicateField_34701_34702 (T@Field_77479_77480) Bool)
(declare-fun IsWandField_34701_34702 (T@Field_77479_77480) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_34773_358561 (T@Field_143723_143728) Bool)
(declare-fun IsWandField_34773_358577 (T@Field_143723_143728) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_34773_53 (T@Field_34773_53) Bool)
(declare-fun IsWandField_34773_53 (T@Field_34773_53) Bool)
(declare-fun IsPredicateField_34773_34702 (T@Field_34773_34702) Bool)
(declare-fun IsWandField_34773_34702 (T@Field_34773_34702) Bool)
(declare-fun IsPredicateField_34773_1186 (T@Field_34773_1186) Bool)
(declare-fun IsWandField_34773_1186 (T@Field_34773_1186) Bool)
(declare-fun IsPredicateField_34705_357730 (T@Field_80902_80907) Bool)
(declare-fun IsWandField_34705_357746 (T@Field_80902_80907) Bool)
(declare-fun IsPredicateField_34705_53 (T@Field_34705_53) Bool)
(declare-fun IsWandField_34705_53 (T@Field_34705_53) Bool)
(declare-fun IsPredicateField_34705_34702 (T@Field_34705_34702) Bool)
(declare-fun IsWandField_34705_34702 (T@Field_34705_34702) Bool)
(declare-fun IsPredicateField_34705_1186 (T@Field_34705_1186) Bool)
(declare-fun IsWandField_34705_1186 (T@Field_34705_1186) Bool)
(declare-fun IsPredicateField_34699_356899 (T@Field_34701_80907) Bool)
(declare-fun IsWandField_34699_356915 (T@Field_34701_80907) Bool)
(declare-fun IsPredicateField_34699_53 (T@Field_77466_53) Bool)
(declare-fun IsWandField_34699_53 (T@Field_77466_53) Bool)
(declare-fun HasDirectPerm_34773_342346 (T@PolymorphicMapType_77427 T@Ref T@Field_143723_143728) Bool)
(declare-fun HasDirectPerm_34773_53 (T@PolymorphicMapType_77427 T@Ref T@Field_34773_53) Bool)
(declare-fun HasDirectPerm_34773_1186 (T@PolymorphicMapType_77427 T@Ref T@Field_34773_1186) Bool)
(declare-fun HasDirectPerm_34773_34702 (T@PolymorphicMapType_77427 T@Ref T@Field_34773_34702) Bool)
(declare-fun HasDirectPerm_34705_341248 (T@PolymorphicMapType_77427 T@Ref T@Field_80902_80907) Bool)
(declare-fun HasDirectPerm_34705_53 (T@PolymorphicMapType_77427 T@Ref T@Field_34705_53) Bool)
(declare-fun HasDirectPerm_34705_1186 (T@PolymorphicMapType_77427 T@Ref T@Field_34705_1186) Bool)
(declare-fun HasDirectPerm_34705_34702 (T@PolymorphicMapType_77427 T@Ref T@Field_34705_34702) Bool)
(declare-fun HasDirectPerm_34701_340107 (T@PolymorphicMapType_77427 T@Ref T@Field_34701_80907) Bool)
(declare-fun HasDirectPerm_34701_53 (T@PolymorphicMapType_77427 T@Ref T@Field_77466_53) Bool)
(declare-fun HasDirectPerm_34699_1186 (T@PolymorphicMapType_77427 T@Ref T@Field_80792_1186) Bool)
(declare-fun HasDirectPerm_34701_34702 (T@PolymorphicMapType_77427 T@Ref T@Field_77479_77480) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_77427 T@PolymorphicMapType_77427 T@PolymorphicMapType_77427) Bool)
(declare-fun getPredWandId_34705_34706 (T@Field_80889_80890) Int)
(declare-fun getPredWandId_34773_34774 (T@Field_143710_143711) Int)
(declare-fun InsidePredicate_77466_34773 (T@Field_34701_34706 T@FrameType T@Field_143710_143711 T@FrameType) Bool)
(declare-fun InsidePredicate_77466_34705 (T@Field_34701_34706 T@FrameType T@Field_80889_80890 T@FrameType) Bool)
(declare-fun InsidePredicate_34773_77466 (T@Field_143710_143711 T@FrameType T@Field_34701_34706 T@FrameType) Bool)
(declare-fun InsidePredicate_34773_34705 (T@Field_143710_143711 T@FrameType T@Field_80889_80890 T@FrameType) Bool)
(declare-fun InsidePredicate_34705_77466 (T@Field_80889_80890 T@FrameType T@Field_34701_34706 T@FrameType) Bool)
(declare-fun InsidePredicate_34705_34773 (T@Field_80889_80890 T@FrameType T@Field_143710_143711 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_77406) (Heap1 T@PolymorphicMapType_77406) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_77406) (Mask T@PolymorphicMapType_77427) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_77406) (Heap1@@0 T@PolymorphicMapType_77406) (Heap2 T@PolymorphicMapType_77406) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_143723_143728) ) (!  (not (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_143710_143711) ) (!  (not (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_34773_53) ) (!  (not (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_34773_34702) ) (!  (not (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_34773_1186) ) (!  (not (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_80902_80907) ) (!  (not (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_80889_80890) ) (!  (not (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_34705_53) ) (!  (not (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_34705_34702) ) (!  (not (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_34705_1186) ) (!  (not (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_34701_80907) ) (!  (not (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_34701_34706) ) (!  (not (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_77466_53) ) (!  (not (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_77479_77480) ) (!  (not (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_80792_1186) ) (!  (not (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((x T@Ref) (i Int) ) (! (IsPredicateField_34705_34706 (LL x i))
 :qid |stdinbpl.198:15|
 :skolemid |23|
 :pattern ( (LL x i))
)))
(assert (forall ((x@@0 T@Ref) (i@@0 Int) ) (! (IsPredicateField_34773_34774 (LL2 x@@0 i@@0))
 :qid |stdinbpl.776:15|
 :skolemid |47|
 :pattern ( (LL2 x@@0 i@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_77406) (x@@1 T@Ref) (i@@1 Int) ) (! (|LL#everUsed_34705| (LL x@@1 i@@1))
 :qid |stdinbpl.217:15|
 :skolemid |27|
 :pattern ( (|LL#trigger_34705| Heap@@0 (LL x@@1 i@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_77406) (x@@2 T@Ref) (i@@2 Int) ) (! (|LL2#everUsed_34773| (LL2 x@@2 i@@2))
 :qid |stdinbpl.795:15|
 :skolemid |51|
 :pattern ( (|LL2#trigger_34773| Heap@@1 (LL2 x@@2 i@@2)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_77406) (ExhaleHeap T@PolymorphicMapType_77406) (Mask@@0 T@PolymorphicMapType_77427) (pm_f_58 T@Field_143710_143711) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_34773_34774 Mask@@0 null pm_f_58) (IsPredicateField_34773_34774 pm_f_58)) (= (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@2) null (PredicateMaskField_34773 pm_f_58)) (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap) null (PredicateMaskField_34773 pm_f_58)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_34773_34774 pm_f_58) (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap) null (PredicateMaskField_34773 pm_f_58)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_77406) (ExhaleHeap@@0 T@PolymorphicMapType_77406) (Mask@@1 T@PolymorphicMapType_77427) (pm_f_58@@0 T@Field_80889_80890) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_34705_34706 Mask@@1 null pm_f_58@@0) (IsPredicateField_34705_34706 pm_f_58@@0)) (= (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@3) null (PredicateMaskField_34705 pm_f_58@@0)) (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@0) null (PredicateMaskField_34705 pm_f_58@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_34705_34706 pm_f_58@@0) (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@0) null (PredicateMaskField_34705 pm_f_58@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_77406) (ExhaleHeap@@1 T@PolymorphicMapType_77406) (Mask@@2 T@PolymorphicMapType_77427) (pm_f_58@@1 T@Field_34701_34706) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_34701_34706 Mask@@2 null pm_f_58@@1) (IsPredicateField_34701_342591 pm_f_58@@1)) (= (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@4) null (PredicateMaskField_34701 pm_f_58@@1)) (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@1) null (PredicateMaskField_34701 pm_f_58@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_34701_342591 pm_f_58@@1) (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@1) null (PredicateMaskField_34701 pm_f_58@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_77406) (ExhaleHeap@@2 T@PolymorphicMapType_77406) (Mask@@3 T@PolymorphicMapType_77427) (pm_f_58@@2 T@Field_143710_143711) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_34773_34774 Mask@@3 null pm_f_58@@2) (IsWandField_34773_348272 pm_f_58@@2)) (= (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@5) null (WandMaskField_34773 pm_f_58@@2)) (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@2) null (WandMaskField_34773 pm_f_58@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_34773_348272 pm_f_58@@2) (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@2) null (WandMaskField_34773 pm_f_58@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_77406) (ExhaleHeap@@3 T@PolymorphicMapType_77406) (Mask@@4 T@PolymorphicMapType_77427) (pm_f_58@@3 T@Field_80889_80890) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_34705_34706 Mask@@4 null pm_f_58@@3) (IsWandField_34705_347915 pm_f_58@@3)) (= (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@6) null (WandMaskField_34705 pm_f_58@@3)) (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@3) null (WandMaskField_34705 pm_f_58@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_34705_347915 pm_f_58@@3) (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@3) null (WandMaskField_34705 pm_f_58@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_77406) (ExhaleHeap@@4 T@PolymorphicMapType_77406) (Mask@@5 T@PolymorphicMapType_77427) (pm_f_58@@4 T@Field_34701_34706) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_34701_34706 Mask@@5 null pm_f_58@@4) (IsWandField_34701_347558 pm_f_58@@4)) (= (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@7) null (WandMaskField_34701 pm_f_58@@4)) (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@4) null (WandMaskField_34701 pm_f_58@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_34701_347558 pm_f_58@@4) (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@4) null (WandMaskField_34701 pm_f_58@@4)))
)))
(assert (forall ((x@@3 T@Ref) (i@@3 Int) (x2 T@Ref) (i2_1 Int) ) (!  (=> (= (LL x@@3 i@@3) (LL x2 i2_1)) (and (= x@@3 x2) (= i@@3 i2_1)))
 :qid |stdinbpl.208:15|
 :skolemid |25|
 :pattern ( (LL x@@3 i@@3) (LL x2 i2_1))
)))
(assert (forall ((x@@4 T@Ref) (i@@4 Int) (x2@@0 T@Ref) (i2_1@@0 Int) ) (!  (=> (= (|LL#sm| x@@4 i@@4) (|LL#sm| x2@@0 i2_1@@0)) (and (= x@@4 x2@@0) (= i@@4 i2_1@@0)))
 :qid |stdinbpl.212:15|
 :skolemid |26|
 :pattern ( (|LL#sm| x@@4 i@@4) (|LL#sm| x2@@0 i2_1@@0))
)))
(assert (forall ((x@@5 T@Ref) (i@@5 Int) (x2@@1 T@Ref) (i2_1@@1 Int) ) (!  (=> (= (LL2 x@@5 i@@5) (LL2 x2@@1 i2_1@@1)) (and (= x@@5 x2@@1) (= i@@5 i2_1@@1)))
 :qid |stdinbpl.786:15|
 :skolemid |49|
 :pattern ( (LL2 x@@5 i@@5) (LL2 x2@@1 i2_1@@1))
)))
(assert (forall ((x@@6 T@Ref) (i@@6 Int) (x2@@2 T@Ref) (i2_1@@2 Int) ) (!  (=> (= (|LL2#sm| x@@6 i@@6) (|LL2#sm| x2@@2 i2_1@@2)) (and (= x@@6 x2@@2) (= i@@6 i2_1@@2)))
 :qid |stdinbpl.790:15|
 :skolemid |50|
 :pattern ( (|LL2#sm| x@@6 i@@6) (|LL2#sm| x2@@2 i2_1@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_77406) (ExhaleHeap@@5 T@PolymorphicMapType_77406) (Mask@@6 T@PolymorphicMapType_77427) (o_134 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@8) o_134 $allocated) (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@5) o_134 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@5) o_134 $allocated))
)))
(assert (forall ((p T@Field_34701_34706) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_77466_77466 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_77466_77466 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_143710_143711) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_34773_34773 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34773_34773 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_80889_80890) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_34705_34705 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_34705_34705 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert  (not (IsPredicateField_34699_1186 data)))
(assert  (not (IsWandField_34699_1186 data)))
(assert  (not (IsPredicateField_34701_34702 next)))
(assert  (not (IsWandField_34701_34702 next)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_77406) (ExhaleHeap@@6 T@PolymorphicMapType_77406) (Mask@@7 T@PolymorphicMapType_77427) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@9 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_77427) (o_2@@14 T@Ref) (f_4@@14 T@Field_143723_143728) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_34773_358561 f_4@@14))) (not (IsWandField_34773_358577 f_4@@14))) (<= (select (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_77427) (o_2@@15 T@Ref) (f_4@@15 T@Field_34773_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_34773_53 f_4@@15))) (not (IsWandField_34773_53 f_4@@15))) (<= (select (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_77427) (o_2@@16 T@Ref) (f_4@@16 T@Field_143710_143711) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_34773_34774 f_4@@16))) (not (IsWandField_34773_348272 f_4@@16))) (<= (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_77427) (o_2@@17 T@Ref) (f_4@@17 T@Field_34773_34702) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_34773_34702 f_4@@17))) (not (IsWandField_34773_34702 f_4@@17))) (<= (select (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_77427) (o_2@@18 T@Ref) (f_4@@18 T@Field_34773_1186) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_34773_1186 f_4@@18))) (not (IsWandField_34773_1186 f_4@@18))) (<= (select (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_77427) (o_2@@19 T@Ref) (f_4@@19 T@Field_80902_80907) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_34705_357730 f_4@@19))) (not (IsWandField_34705_357746 f_4@@19))) (<= (select (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_77427) (o_2@@20 T@Ref) (f_4@@20 T@Field_34705_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_34705_53 f_4@@20))) (not (IsWandField_34705_53 f_4@@20))) (<= (select (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_77427) (o_2@@21 T@Ref) (f_4@@21 T@Field_80889_80890) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_34705_34706 f_4@@21))) (not (IsWandField_34705_347915 f_4@@21))) (<= (select (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_77427) (o_2@@22 T@Ref) (f_4@@22 T@Field_34705_34702) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_34705_34702 f_4@@22))) (not (IsWandField_34705_34702 f_4@@22))) (<= (select (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_77427) (o_2@@23 T@Ref) (f_4@@23 T@Field_34705_1186) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_34705_1186 f_4@@23))) (not (IsWandField_34705_1186 f_4@@23))) (<= (select (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_77427) (o_2@@24 T@Ref) (f_4@@24 T@Field_34701_80907) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_34699_356899 f_4@@24))) (not (IsWandField_34699_356915 f_4@@24))) (<= (select (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_77427) (o_2@@25 T@Ref) (f_4@@25 T@Field_77466_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_34699_53 f_4@@25))) (not (IsWandField_34699_53 f_4@@25))) (<= (select (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_77427) (o_2@@26 T@Ref) (f_4@@26 T@Field_34701_34706) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_34701_342591 f_4@@26))) (not (IsWandField_34701_347558 f_4@@26))) (<= (select (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_77427) (o_2@@27 T@Ref) (f_4@@27 T@Field_77479_77480) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_34701_34702 f_4@@27))) (not (IsWandField_34701_34702 f_4@@27))) (<= (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_77427) (o_2@@28 T@Ref) (f_4@@28 T@Field_80792_1186) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_34699_1186 f_4@@28))) (not (IsWandField_34699_1186 f_4@@28))) (<= (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_77427) (o_2@@29 T@Ref) (f_4@@29 T@Field_143723_143728) ) (! (= (HasDirectPerm_34773_342346 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34773_342346 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_77427) (o_2@@30 T@Ref) (f_4@@30 T@Field_34773_53) ) (! (= (HasDirectPerm_34773_53 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34773_53 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_77427) (o_2@@31 T@Ref) (f_4@@31 T@Field_143710_143711) ) (! (= (HasDirectPerm_34773_34774 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34773_34774 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_77427) (o_2@@32 T@Ref) (f_4@@32 T@Field_34773_1186) ) (! (= (HasDirectPerm_34773_1186 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34773_1186 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_77427) (o_2@@33 T@Ref) (f_4@@33 T@Field_34773_34702) ) (! (= (HasDirectPerm_34773_34702 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34773_34702 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_77427) (o_2@@34 T@Ref) (f_4@@34 T@Field_80902_80907) ) (! (= (HasDirectPerm_34705_341248 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34705_341248 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_77427) (o_2@@35 T@Ref) (f_4@@35 T@Field_34705_53) ) (! (= (HasDirectPerm_34705_53 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34705_53 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_77427) (o_2@@36 T@Ref) (f_4@@36 T@Field_80889_80890) ) (! (= (HasDirectPerm_34705_34706 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34705_34706 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_77427) (o_2@@37 T@Ref) (f_4@@37 T@Field_34705_1186) ) (! (= (HasDirectPerm_34705_1186 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34705_1186 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_77427) (o_2@@38 T@Ref) (f_4@@38 T@Field_34705_34702) ) (! (= (HasDirectPerm_34705_34702 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34705_34702 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_77427) (o_2@@39 T@Ref) (f_4@@39 T@Field_34701_80907) ) (! (= (HasDirectPerm_34701_340107 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34701_340107 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_77427) (o_2@@40 T@Ref) (f_4@@40 T@Field_77466_53) ) (! (= (HasDirectPerm_34701_53 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34701_53 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_77427) (o_2@@41 T@Ref) (f_4@@41 T@Field_34701_34706) ) (! (= (HasDirectPerm_34701_34706 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34701_34706 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_77427) (o_2@@42 T@Ref) (f_4@@42 T@Field_80792_1186) ) (! (= (HasDirectPerm_34699_1186 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34699_1186 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_77427) (o_2@@43 T@Ref) (f_4@@43 T@Field_77479_77480) ) (! (= (HasDirectPerm_34701_34702 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_34701_34702 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_77406) (ExhaleHeap@@7 T@PolymorphicMapType_77406) (Mask@@38 T@PolymorphicMapType_77427) (o_134@@0 T@Ref) (f_206 T@Field_143723_143728) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_34773_342346 Mask@@38 o_134@@0 f_206) (= (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@10) o_134@@0 f_206) (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@7) o_134@@0 f_206))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@7) o_134@@0 f_206))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_77406) (ExhaleHeap@@8 T@PolymorphicMapType_77406) (Mask@@39 T@PolymorphicMapType_77427) (o_134@@1 T@Ref) (f_206@@0 T@Field_34773_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_34773_53 Mask@@39 o_134@@1 f_206@@0) (= (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@11) o_134@@1 f_206@@0) (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@8) o_134@@1 f_206@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@8) o_134@@1 f_206@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_77406) (ExhaleHeap@@9 T@PolymorphicMapType_77406) (Mask@@40 T@PolymorphicMapType_77427) (o_134@@2 T@Ref) (f_206@@1 T@Field_143710_143711) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_34773_34774 Mask@@40 o_134@@2 f_206@@1) (= (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@12) o_134@@2 f_206@@1) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@9) o_134@@2 f_206@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@9) o_134@@2 f_206@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_77406) (ExhaleHeap@@10 T@PolymorphicMapType_77406) (Mask@@41 T@PolymorphicMapType_77427) (o_134@@3 T@Ref) (f_206@@2 T@Field_34773_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_34773_1186 Mask@@41 o_134@@3 f_206@@2) (= (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@13) o_134@@3 f_206@@2) (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@10) o_134@@3 f_206@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@10) o_134@@3 f_206@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_77406) (ExhaleHeap@@11 T@PolymorphicMapType_77406) (Mask@@42 T@PolymorphicMapType_77427) (o_134@@4 T@Ref) (f_206@@3 T@Field_34773_34702) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_34773_34702 Mask@@42 o_134@@4 f_206@@3) (= (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@14) o_134@@4 f_206@@3) (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@11) o_134@@4 f_206@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@11) o_134@@4 f_206@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_77406) (ExhaleHeap@@12 T@PolymorphicMapType_77406) (Mask@@43 T@PolymorphicMapType_77427) (o_134@@5 T@Ref) (f_206@@4 T@Field_80902_80907) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_34705_341248 Mask@@43 o_134@@5 f_206@@4) (= (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@15) o_134@@5 f_206@@4) (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@12) o_134@@5 f_206@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@12) o_134@@5 f_206@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_77406) (ExhaleHeap@@13 T@PolymorphicMapType_77406) (Mask@@44 T@PolymorphicMapType_77427) (o_134@@6 T@Ref) (f_206@@5 T@Field_34705_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_34705_53 Mask@@44 o_134@@6 f_206@@5) (= (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@16) o_134@@6 f_206@@5) (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@13) o_134@@6 f_206@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@13) o_134@@6 f_206@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_77406) (ExhaleHeap@@14 T@PolymorphicMapType_77406) (Mask@@45 T@PolymorphicMapType_77427) (o_134@@7 T@Ref) (f_206@@6 T@Field_80889_80890) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_34705_34706 Mask@@45 o_134@@7 f_206@@6) (= (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@17) o_134@@7 f_206@@6) (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@14) o_134@@7 f_206@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@14) o_134@@7 f_206@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_77406) (ExhaleHeap@@15 T@PolymorphicMapType_77406) (Mask@@46 T@PolymorphicMapType_77427) (o_134@@8 T@Ref) (f_206@@7 T@Field_34705_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_34705_1186 Mask@@46 o_134@@8 f_206@@7) (= (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@18) o_134@@8 f_206@@7) (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@15) o_134@@8 f_206@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@15) o_134@@8 f_206@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_77406) (ExhaleHeap@@16 T@PolymorphicMapType_77406) (Mask@@47 T@PolymorphicMapType_77427) (o_134@@9 T@Ref) (f_206@@8 T@Field_34705_34702) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_34705_34702 Mask@@47 o_134@@9 f_206@@8) (= (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@19) o_134@@9 f_206@@8) (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@16) o_134@@9 f_206@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@16) o_134@@9 f_206@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_77406) (ExhaleHeap@@17 T@PolymorphicMapType_77406) (Mask@@48 T@PolymorphicMapType_77427) (o_134@@10 T@Ref) (f_206@@9 T@Field_34701_80907) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_34701_340107 Mask@@48 o_134@@10 f_206@@9) (= (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@20) o_134@@10 f_206@@9) (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@17) o_134@@10 f_206@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@17) o_134@@10 f_206@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_77406) (ExhaleHeap@@18 T@PolymorphicMapType_77406) (Mask@@49 T@PolymorphicMapType_77427) (o_134@@11 T@Ref) (f_206@@10 T@Field_77466_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_34701_53 Mask@@49 o_134@@11 f_206@@10) (= (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@21) o_134@@11 f_206@@10) (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@18) o_134@@11 f_206@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@18) o_134@@11 f_206@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_77406) (ExhaleHeap@@19 T@PolymorphicMapType_77406) (Mask@@50 T@PolymorphicMapType_77427) (o_134@@12 T@Ref) (f_206@@11 T@Field_34701_34706) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_34701_34706 Mask@@50 o_134@@12 f_206@@11) (= (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@22) o_134@@12 f_206@@11) (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@19) o_134@@12 f_206@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@19) o_134@@12 f_206@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_77406) (ExhaleHeap@@20 T@PolymorphicMapType_77406) (Mask@@51 T@PolymorphicMapType_77427) (o_134@@13 T@Ref) (f_206@@12 T@Field_80792_1186) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_34699_1186 Mask@@51 o_134@@13 f_206@@12) (= (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@23) o_134@@13 f_206@@12) (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@20) o_134@@13 f_206@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@20) o_134@@13 f_206@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_77406) (ExhaleHeap@@21 T@PolymorphicMapType_77406) (Mask@@52 T@PolymorphicMapType_77427) (o_134@@14 T@Ref) (f_206@@13 T@Field_77479_77480) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_34701_34702 Mask@@52 o_134@@14 f_206@@13) (= (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@24) o_134@@14 f_206@@13) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@21) o_134@@14 f_206@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@21) o_134@@14 f_206@@13))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_143723_143728) ) (! (= (select (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_34773_53) ) (! (= (select (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_143710_143711) ) (! (= (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_34773_34702) ) (! (= (select (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_34773_1186) ) (! (= (select (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_80902_80907) ) (! (= (select (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_34705_53) ) (! (= (select (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_80889_80890) ) (! (= (select (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_34705_34702) ) (! (= (select (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_34705_1186) ) (! (= (select (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_34701_80907) ) (! (= (select (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_77466_53) ) (! (= (select (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_34701_34706) ) (! (= (select (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_77479_77480) ) (! (= (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_80792_1186) ) (! (= (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_77427) (SummandMask1 T@PolymorphicMapType_77427) (SummandMask2 T@PolymorphicMapType_77427) (o_2@@59 T@Ref) (f_4@@59 T@Field_143723_143728) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_77427) (SummandMask1@@0 T@PolymorphicMapType_77427) (SummandMask2@@0 T@PolymorphicMapType_77427) (o_2@@60 T@Ref) (f_4@@60 T@Field_34773_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_77427) (SummandMask1@@1 T@PolymorphicMapType_77427) (SummandMask2@@1 T@PolymorphicMapType_77427) (o_2@@61 T@Ref) (f_4@@61 T@Field_143710_143711) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_77427) (SummandMask1@@2 T@PolymorphicMapType_77427) (SummandMask2@@2 T@PolymorphicMapType_77427) (o_2@@62 T@Ref) (f_4@@62 T@Field_34773_34702) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_77427) (SummandMask1@@3 T@PolymorphicMapType_77427) (SummandMask2@@3 T@PolymorphicMapType_77427) (o_2@@63 T@Ref) (f_4@@63 T@Field_34773_1186) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_77427) (SummandMask1@@4 T@PolymorphicMapType_77427) (SummandMask2@@4 T@PolymorphicMapType_77427) (o_2@@64 T@Ref) (f_4@@64 T@Field_80902_80907) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_77427) (SummandMask1@@5 T@PolymorphicMapType_77427) (SummandMask2@@5 T@PolymorphicMapType_77427) (o_2@@65 T@Ref) (f_4@@65 T@Field_34705_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_77427) (SummandMask1@@6 T@PolymorphicMapType_77427) (SummandMask2@@6 T@PolymorphicMapType_77427) (o_2@@66 T@Ref) (f_4@@66 T@Field_80889_80890) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_77427) (SummandMask1@@7 T@PolymorphicMapType_77427) (SummandMask2@@7 T@PolymorphicMapType_77427) (o_2@@67 T@Ref) (f_4@@67 T@Field_34705_34702) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_77427) (SummandMask1@@8 T@PolymorphicMapType_77427) (SummandMask2@@8 T@PolymorphicMapType_77427) (o_2@@68 T@Ref) (f_4@@68 T@Field_34705_1186) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_77427) (SummandMask1@@9 T@PolymorphicMapType_77427) (SummandMask2@@9 T@PolymorphicMapType_77427) (o_2@@69 T@Ref) (f_4@@69 T@Field_34701_80907) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_77427) (SummandMask1@@10 T@PolymorphicMapType_77427) (SummandMask2@@10 T@PolymorphicMapType_77427) (o_2@@70 T@Ref) (f_4@@70 T@Field_77466_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_77427) (SummandMask1@@11 T@PolymorphicMapType_77427) (SummandMask2@@11 T@PolymorphicMapType_77427) (o_2@@71 T@Ref) (f_4@@71 T@Field_34701_34706) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_77427) (SummandMask1@@12 T@PolymorphicMapType_77427) (SummandMask2@@12 T@PolymorphicMapType_77427) (o_2@@72 T@Ref) (f_4@@72 T@Field_77479_77480) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_77427) (SummandMask1@@13 T@PolymorphicMapType_77427) (SummandMask2@@13 T@PolymorphicMapType_77427) (o_2@@73 T@Ref) (f_4@@73 T@Field_80792_1186) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_77406) (ExhaleHeap@@22 T@PolymorphicMapType_77406) (Mask@@53 T@PolymorphicMapType_77427) (pm_f_58@@5 T@Field_143710_143711) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_34773_34774 Mask@@53 null pm_f_58@@5) (IsPredicateField_34773_34774 pm_f_58@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_58 T@Ref) (f_206@@14 T@Field_80792_1186) ) (!  (=> (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58 f_206@@14) (= (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@25) o2_58 f_206@@14) (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58 f_206@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58 f_206@@14))
)) (forall ((o2_58@@0 T@Ref) (f_206@@15 T@Field_77479_77480) ) (!  (=> (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@0 f_206@@15) (= (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@25) o2_58@@0 f_206@@15) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@0 f_206@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@0 f_206@@15))
))) (forall ((o2_58@@1 T@Ref) (f_206@@16 T@Field_77466_53) ) (!  (=> (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@1 f_206@@16) (= (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@25) o2_58@@1 f_206@@16) (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@1 f_206@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@1 f_206@@16))
))) (forall ((o2_58@@2 T@Ref) (f_206@@17 T@Field_34701_34706) ) (!  (=> (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@2 f_206@@17) (= (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@25) o2_58@@2 f_206@@17) (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@2 f_206@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@2 f_206@@17))
))) (forall ((o2_58@@3 T@Ref) (f_206@@18 T@Field_34701_80907) ) (!  (=> (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@3 f_206@@18) (= (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@25) o2_58@@3 f_206@@18) (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@3 f_206@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@3 f_206@@18))
))) (forall ((o2_58@@4 T@Ref) (f_206@@19 T@Field_34705_1186) ) (!  (=> (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@4 f_206@@19) (= (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@25) o2_58@@4 f_206@@19) (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@4 f_206@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@4 f_206@@19))
))) (forall ((o2_58@@5 T@Ref) (f_206@@20 T@Field_34705_34702) ) (!  (=> (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@5 f_206@@20) (= (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@25) o2_58@@5 f_206@@20) (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@5 f_206@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@5 f_206@@20))
))) (forall ((o2_58@@6 T@Ref) (f_206@@21 T@Field_34705_53) ) (!  (=> (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@6 f_206@@21) (= (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@25) o2_58@@6 f_206@@21) (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@6 f_206@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@6 f_206@@21))
))) (forall ((o2_58@@7 T@Ref) (f_206@@22 T@Field_80889_80890) ) (!  (=> (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@7 f_206@@22) (= (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@25) o2_58@@7 f_206@@22) (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@7 f_206@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@7 f_206@@22))
))) (forall ((o2_58@@8 T@Ref) (f_206@@23 T@Field_80902_80907) ) (!  (=> (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@8 f_206@@23) (= (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@25) o2_58@@8 f_206@@23) (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@8 f_206@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@8 f_206@@23))
))) (forall ((o2_58@@9 T@Ref) (f_206@@24 T@Field_34773_1186) ) (!  (=> (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@9 f_206@@24) (= (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@25) o2_58@@9 f_206@@24) (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@9 f_206@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@9 f_206@@24))
))) (forall ((o2_58@@10 T@Ref) (f_206@@25 T@Field_34773_34702) ) (!  (=> (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@10 f_206@@25) (= (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@25) o2_58@@10 f_206@@25) (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@10 f_206@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@10 f_206@@25))
))) (forall ((o2_58@@11 T@Ref) (f_206@@26 T@Field_34773_53) ) (!  (=> (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@11 f_206@@26) (= (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@25) o2_58@@11 f_206@@26) (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@11 f_206@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@11 f_206@@26))
))) (forall ((o2_58@@12 T@Ref) (f_206@@27 T@Field_143710_143711) ) (!  (=> (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@12 f_206@@27) (= (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@25) o2_58@@12 f_206@@27) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@12 f_206@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@12 f_206@@27))
))) (forall ((o2_58@@13 T@Ref) (f_206@@28 T@Field_143723_143728) ) (!  (=> (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) null (PredicateMaskField_34773 pm_f_58@@5))) o2_58@@13 f_206@@28) (= (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@25) o2_58@@13 f_206@@28) (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@13 f_206@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@22) o2_58@@13 f_206@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (IsPredicateField_34773_34774 pm_f_58@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_77406) (ExhaleHeap@@23 T@PolymorphicMapType_77406) (Mask@@54 T@PolymorphicMapType_77427) (pm_f_58@@6 T@Field_80889_80890) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_34705_34706 Mask@@54 null pm_f_58@@6) (IsPredicateField_34705_34706 pm_f_58@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_58@@14 T@Ref) (f_206@@29 T@Field_80792_1186) ) (!  (=> (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@14 f_206@@29) (= (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@26) o2_58@@14 f_206@@29) (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@14 f_206@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@14 f_206@@29))
)) (forall ((o2_58@@15 T@Ref) (f_206@@30 T@Field_77479_77480) ) (!  (=> (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@15 f_206@@30) (= (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@26) o2_58@@15 f_206@@30) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@15 f_206@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@15 f_206@@30))
))) (forall ((o2_58@@16 T@Ref) (f_206@@31 T@Field_77466_53) ) (!  (=> (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@16 f_206@@31) (= (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@26) o2_58@@16 f_206@@31) (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@16 f_206@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@16 f_206@@31))
))) (forall ((o2_58@@17 T@Ref) (f_206@@32 T@Field_34701_34706) ) (!  (=> (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@17 f_206@@32) (= (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@26) o2_58@@17 f_206@@32) (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@17 f_206@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@17 f_206@@32))
))) (forall ((o2_58@@18 T@Ref) (f_206@@33 T@Field_34701_80907) ) (!  (=> (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@18 f_206@@33) (= (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@26) o2_58@@18 f_206@@33) (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@18 f_206@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@18 f_206@@33))
))) (forall ((o2_58@@19 T@Ref) (f_206@@34 T@Field_34705_1186) ) (!  (=> (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@19 f_206@@34) (= (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@26) o2_58@@19 f_206@@34) (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@19 f_206@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@19 f_206@@34))
))) (forall ((o2_58@@20 T@Ref) (f_206@@35 T@Field_34705_34702) ) (!  (=> (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@20 f_206@@35) (= (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@26) o2_58@@20 f_206@@35) (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@20 f_206@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@20 f_206@@35))
))) (forall ((o2_58@@21 T@Ref) (f_206@@36 T@Field_34705_53) ) (!  (=> (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@21 f_206@@36) (= (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@26) o2_58@@21 f_206@@36) (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@21 f_206@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@21 f_206@@36))
))) (forall ((o2_58@@22 T@Ref) (f_206@@37 T@Field_80889_80890) ) (!  (=> (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@22 f_206@@37) (= (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@26) o2_58@@22 f_206@@37) (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@22 f_206@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@22 f_206@@37))
))) (forall ((o2_58@@23 T@Ref) (f_206@@38 T@Field_80902_80907) ) (!  (=> (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@23 f_206@@38) (= (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) o2_58@@23 f_206@@38) (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@23 f_206@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@23 f_206@@38))
))) (forall ((o2_58@@24 T@Ref) (f_206@@39 T@Field_34773_1186) ) (!  (=> (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@24 f_206@@39) (= (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@26) o2_58@@24 f_206@@39) (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@24 f_206@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@24 f_206@@39))
))) (forall ((o2_58@@25 T@Ref) (f_206@@40 T@Field_34773_34702) ) (!  (=> (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@25 f_206@@40) (= (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@26) o2_58@@25 f_206@@40) (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@25 f_206@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@25 f_206@@40))
))) (forall ((o2_58@@26 T@Ref) (f_206@@41 T@Field_34773_53) ) (!  (=> (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@26 f_206@@41) (= (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@26) o2_58@@26 f_206@@41) (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@26 f_206@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@26 f_206@@41))
))) (forall ((o2_58@@27 T@Ref) (f_206@@42 T@Field_143710_143711) ) (!  (=> (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@27 f_206@@42) (= (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@26) o2_58@@27 f_206@@42) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@27 f_206@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@27 f_206@@42))
))) (forall ((o2_58@@28 T@Ref) (f_206@@43 T@Field_143723_143728) ) (!  (=> (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@26) null (PredicateMaskField_34705 pm_f_58@@6))) o2_58@@28 f_206@@43) (= (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@26) o2_58@@28 f_206@@43) (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@28 f_206@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@23) o2_58@@28 f_206@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (IsPredicateField_34705_34706 pm_f_58@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_77406) (ExhaleHeap@@24 T@PolymorphicMapType_77406) (Mask@@55 T@PolymorphicMapType_77427) (pm_f_58@@7 T@Field_34701_34706) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_34701_34706 Mask@@55 null pm_f_58@@7) (IsPredicateField_34701_342591 pm_f_58@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_58@@29 T@Ref) (f_206@@44 T@Field_80792_1186) ) (!  (=> (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@29 f_206@@44) (= (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@27) o2_58@@29 f_206@@44) (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@29 f_206@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@29 f_206@@44))
)) (forall ((o2_58@@30 T@Ref) (f_206@@45 T@Field_77479_77480) ) (!  (=> (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@30 f_206@@45) (= (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@27) o2_58@@30 f_206@@45) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@30 f_206@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@30 f_206@@45))
))) (forall ((o2_58@@31 T@Ref) (f_206@@46 T@Field_77466_53) ) (!  (=> (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@31 f_206@@46) (= (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@27) o2_58@@31 f_206@@46) (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@31 f_206@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@31 f_206@@46))
))) (forall ((o2_58@@32 T@Ref) (f_206@@47 T@Field_34701_34706) ) (!  (=> (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@32 f_206@@47) (= (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@27) o2_58@@32 f_206@@47) (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@32 f_206@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@32 f_206@@47))
))) (forall ((o2_58@@33 T@Ref) (f_206@@48 T@Field_34701_80907) ) (!  (=> (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@33 f_206@@48) (= (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) o2_58@@33 f_206@@48) (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@33 f_206@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@33 f_206@@48))
))) (forall ((o2_58@@34 T@Ref) (f_206@@49 T@Field_34705_1186) ) (!  (=> (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@34 f_206@@49) (= (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@27) o2_58@@34 f_206@@49) (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@34 f_206@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@34 f_206@@49))
))) (forall ((o2_58@@35 T@Ref) (f_206@@50 T@Field_34705_34702) ) (!  (=> (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@35 f_206@@50) (= (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@27) o2_58@@35 f_206@@50) (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@35 f_206@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@35 f_206@@50))
))) (forall ((o2_58@@36 T@Ref) (f_206@@51 T@Field_34705_53) ) (!  (=> (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@36 f_206@@51) (= (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@27) o2_58@@36 f_206@@51) (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@36 f_206@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@36 f_206@@51))
))) (forall ((o2_58@@37 T@Ref) (f_206@@52 T@Field_80889_80890) ) (!  (=> (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@37 f_206@@52) (= (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@27) o2_58@@37 f_206@@52) (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@37 f_206@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@37 f_206@@52))
))) (forall ((o2_58@@38 T@Ref) (f_206@@53 T@Field_80902_80907) ) (!  (=> (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@38 f_206@@53) (= (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@27) o2_58@@38 f_206@@53) (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@38 f_206@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@38 f_206@@53))
))) (forall ((o2_58@@39 T@Ref) (f_206@@54 T@Field_34773_1186) ) (!  (=> (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@39 f_206@@54) (= (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@27) o2_58@@39 f_206@@54) (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@39 f_206@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@39 f_206@@54))
))) (forall ((o2_58@@40 T@Ref) (f_206@@55 T@Field_34773_34702) ) (!  (=> (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@40 f_206@@55) (= (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@27) o2_58@@40 f_206@@55) (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@40 f_206@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@40 f_206@@55))
))) (forall ((o2_58@@41 T@Ref) (f_206@@56 T@Field_34773_53) ) (!  (=> (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@41 f_206@@56) (= (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@27) o2_58@@41 f_206@@56) (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@41 f_206@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@41 f_206@@56))
))) (forall ((o2_58@@42 T@Ref) (f_206@@57 T@Field_143710_143711) ) (!  (=> (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@42 f_206@@57) (= (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@27) o2_58@@42 f_206@@57) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@42 f_206@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@42 f_206@@57))
))) (forall ((o2_58@@43 T@Ref) (f_206@@58 T@Field_143723_143728) ) (!  (=> (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@27) null (PredicateMaskField_34701 pm_f_58@@7))) o2_58@@43 f_206@@58) (= (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@27) o2_58@@43 f_206@@58) (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@43 f_206@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@24) o2_58@@43 f_206@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (IsPredicateField_34701_342591 pm_f_58@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_77406) (ExhaleHeap@@25 T@PolymorphicMapType_77406) (Mask@@56 T@PolymorphicMapType_77427) (pm_f_58@@8 T@Field_143710_143711) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_34773_34774 Mask@@56 null pm_f_58@@8) (IsWandField_34773_348272 pm_f_58@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_58@@44 T@Ref) (f_206@@59 T@Field_80792_1186) ) (!  (=> (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@44 f_206@@59) (= (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@28) o2_58@@44 f_206@@59) (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@44 f_206@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@44 f_206@@59))
)) (forall ((o2_58@@45 T@Ref) (f_206@@60 T@Field_77479_77480) ) (!  (=> (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@45 f_206@@60) (= (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@28) o2_58@@45 f_206@@60) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@45 f_206@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@45 f_206@@60))
))) (forall ((o2_58@@46 T@Ref) (f_206@@61 T@Field_77466_53) ) (!  (=> (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@46 f_206@@61) (= (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@28) o2_58@@46 f_206@@61) (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@46 f_206@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@46 f_206@@61))
))) (forall ((o2_58@@47 T@Ref) (f_206@@62 T@Field_34701_34706) ) (!  (=> (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@47 f_206@@62) (= (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@28) o2_58@@47 f_206@@62) (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@47 f_206@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@47 f_206@@62))
))) (forall ((o2_58@@48 T@Ref) (f_206@@63 T@Field_34701_80907) ) (!  (=> (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@48 f_206@@63) (= (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@28) o2_58@@48 f_206@@63) (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@48 f_206@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@48 f_206@@63))
))) (forall ((o2_58@@49 T@Ref) (f_206@@64 T@Field_34705_1186) ) (!  (=> (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@49 f_206@@64) (= (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@28) o2_58@@49 f_206@@64) (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@49 f_206@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@49 f_206@@64))
))) (forall ((o2_58@@50 T@Ref) (f_206@@65 T@Field_34705_34702) ) (!  (=> (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@50 f_206@@65) (= (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@28) o2_58@@50 f_206@@65) (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@50 f_206@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@50 f_206@@65))
))) (forall ((o2_58@@51 T@Ref) (f_206@@66 T@Field_34705_53) ) (!  (=> (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@51 f_206@@66) (= (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@28) o2_58@@51 f_206@@66) (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@51 f_206@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@51 f_206@@66))
))) (forall ((o2_58@@52 T@Ref) (f_206@@67 T@Field_80889_80890) ) (!  (=> (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@52 f_206@@67) (= (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@28) o2_58@@52 f_206@@67) (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@52 f_206@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@52 f_206@@67))
))) (forall ((o2_58@@53 T@Ref) (f_206@@68 T@Field_80902_80907) ) (!  (=> (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@53 f_206@@68) (= (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@28) o2_58@@53 f_206@@68) (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@53 f_206@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@53 f_206@@68))
))) (forall ((o2_58@@54 T@Ref) (f_206@@69 T@Field_34773_1186) ) (!  (=> (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@54 f_206@@69) (= (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@28) o2_58@@54 f_206@@69) (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@54 f_206@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@54 f_206@@69))
))) (forall ((o2_58@@55 T@Ref) (f_206@@70 T@Field_34773_34702) ) (!  (=> (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@55 f_206@@70) (= (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@28) o2_58@@55 f_206@@70) (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@55 f_206@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@55 f_206@@70))
))) (forall ((o2_58@@56 T@Ref) (f_206@@71 T@Field_34773_53) ) (!  (=> (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@56 f_206@@71) (= (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@28) o2_58@@56 f_206@@71) (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@56 f_206@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@56 f_206@@71))
))) (forall ((o2_58@@57 T@Ref) (f_206@@72 T@Field_143710_143711) ) (!  (=> (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@57 f_206@@72) (= (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@28) o2_58@@57 f_206@@72) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@57 f_206@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@57 f_206@@72))
))) (forall ((o2_58@@58 T@Ref) (f_206@@73 T@Field_143723_143728) ) (!  (=> (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) null (WandMaskField_34773 pm_f_58@@8))) o2_58@@58 f_206@@73) (= (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@28) o2_58@@58 f_206@@73) (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@58 f_206@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@25) o2_58@@58 f_206@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (IsWandField_34773_348272 pm_f_58@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_77406) (ExhaleHeap@@26 T@PolymorphicMapType_77406) (Mask@@57 T@PolymorphicMapType_77427) (pm_f_58@@9 T@Field_80889_80890) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_34705_34706 Mask@@57 null pm_f_58@@9) (IsWandField_34705_347915 pm_f_58@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_58@@59 T@Ref) (f_206@@74 T@Field_80792_1186) ) (!  (=> (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@59 f_206@@74) (= (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@29) o2_58@@59 f_206@@74) (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@59 f_206@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@59 f_206@@74))
)) (forall ((o2_58@@60 T@Ref) (f_206@@75 T@Field_77479_77480) ) (!  (=> (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@60 f_206@@75) (= (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@29) o2_58@@60 f_206@@75) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@60 f_206@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@60 f_206@@75))
))) (forall ((o2_58@@61 T@Ref) (f_206@@76 T@Field_77466_53) ) (!  (=> (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@61 f_206@@76) (= (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@29) o2_58@@61 f_206@@76) (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@61 f_206@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@61 f_206@@76))
))) (forall ((o2_58@@62 T@Ref) (f_206@@77 T@Field_34701_34706) ) (!  (=> (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@62 f_206@@77) (= (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@29) o2_58@@62 f_206@@77) (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@62 f_206@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@62 f_206@@77))
))) (forall ((o2_58@@63 T@Ref) (f_206@@78 T@Field_34701_80907) ) (!  (=> (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@63 f_206@@78) (= (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@29) o2_58@@63 f_206@@78) (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@63 f_206@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@63 f_206@@78))
))) (forall ((o2_58@@64 T@Ref) (f_206@@79 T@Field_34705_1186) ) (!  (=> (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@64 f_206@@79) (= (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@29) o2_58@@64 f_206@@79) (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@64 f_206@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@64 f_206@@79))
))) (forall ((o2_58@@65 T@Ref) (f_206@@80 T@Field_34705_34702) ) (!  (=> (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@65 f_206@@80) (= (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@29) o2_58@@65 f_206@@80) (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@65 f_206@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@65 f_206@@80))
))) (forall ((o2_58@@66 T@Ref) (f_206@@81 T@Field_34705_53) ) (!  (=> (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@66 f_206@@81) (= (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@29) o2_58@@66 f_206@@81) (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@66 f_206@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@66 f_206@@81))
))) (forall ((o2_58@@67 T@Ref) (f_206@@82 T@Field_80889_80890) ) (!  (=> (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@67 f_206@@82) (= (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@29) o2_58@@67 f_206@@82) (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@67 f_206@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@67 f_206@@82))
))) (forall ((o2_58@@68 T@Ref) (f_206@@83 T@Field_80902_80907) ) (!  (=> (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@68 f_206@@83) (= (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) o2_58@@68 f_206@@83) (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@68 f_206@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@68 f_206@@83))
))) (forall ((o2_58@@69 T@Ref) (f_206@@84 T@Field_34773_1186) ) (!  (=> (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@69 f_206@@84) (= (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@29) o2_58@@69 f_206@@84) (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@69 f_206@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@69 f_206@@84))
))) (forall ((o2_58@@70 T@Ref) (f_206@@85 T@Field_34773_34702) ) (!  (=> (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@70 f_206@@85) (= (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@29) o2_58@@70 f_206@@85) (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@70 f_206@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@70 f_206@@85))
))) (forall ((o2_58@@71 T@Ref) (f_206@@86 T@Field_34773_53) ) (!  (=> (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@71 f_206@@86) (= (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@29) o2_58@@71 f_206@@86) (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@71 f_206@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@71 f_206@@86))
))) (forall ((o2_58@@72 T@Ref) (f_206@@87 T@Field_143710_143711) ) (!  (=> (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@72 f_206@@87) (= (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@29) o2_58@@72 f_206@@87) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@72 f_206@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@72 f_206@@87))
))) (forall ((o2_58@@73 T@Ref) (f_206@@88 T@Field_143723_143728) ) (!  (=> (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@29) null (WandMaskField_34705 pm_f_58@@9))) o2_58@@73 f_206@@88) (= (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@29) o2_58@@73 f_206@@88) (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@73 f_206@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@26) o2_58@@73 f_206@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (IsWandField_34705_347915 pm_f_58@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_77406) (ExhaleHeap@@27 T@PolymorphicMapType_77406) (Mask@@58 T@PolymorphicMapType_77427) (pm_f_58@@10 T@Field_34701_34706) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_34701_34706 Mask@@58 null pm_f_58@@10) (IsWandField_34701_347558 pm_f_58@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_58@@74 T@Ref) (f_206@@89 T@Field_80792_1186) ) (!  (=> (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@74 f_206@@89) (= (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@30) o2_58@@74 f_206@@89) (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@74 f_206@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@74 f_206@@89))
)) (forall ((o2_58@@75 T@Ref) (f_206@@90 T@Field_77479_77480) ) (!  (=> (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@75 f_206@@90) (= (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@30) o2_58@@75 f_206@@90) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@75 f_206@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@75 f_206@@90))
))) (forall ((o2_58@@76 T@Ref) (f_206@@91 T@Field_77466_53) ) (!  (=> (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@76 f_206@@91) (= (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@30) o2_58@@76 f_206@@91) (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@76 f_206@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@76 f_206@@91))
))) (forall ((o2_58@@77 T@Ref) (f_206@@92 T@Field_34701_34706) ) (!  (=> (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@77 f_206@@92) (= (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@30) o2_58@@77 f_206@@92) (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@77 f_206@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@77 f_206@@92))
))) (forall ((o2_58@@78 T@Ref) (f_206@@93 T@Field_34701_80907) ) (!  (=> (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@78 f_206@@93) (= (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) o2_58@@78 f_206@@93) (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@78 f_206@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@78 f_206@@93))
))) (forall ((o2_58@@79 T@Ref) (f_206@@94 T@Field_34705_1186) ) (!  (=> (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@79 f_206@@94) (= (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@30) o2_58@@79 f_206@@94) (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@79 f_206@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@79 f_206@@94))
))) (forall ((o2_58@@80 T@Ref) (f_206@@95 T@Field_34705_34702) ) (!  (=> (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@80 f_206@@95) (= (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@30) o2_58@@80 f_206@@95) (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@80 f_206@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@80 f_206@@95))
))) (forall ((o2_58@@81 T@Ref) (f_206@@96 T@Field_34705_53) ) (!  (=> (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@81 f_206@@96) (= (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@30) o2_58@@81 f_206@@96) (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@81 f_206@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@81 f_206@@96))
))) (forall ((o2_58@@82 T@Ref) (f_206@@97 T@Field_80889_80890) ) (!  (=> (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@82 f_206@@97) (= (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@30) o2_58@@82 f_206@@97) (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@82 f_206@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@82 f_206@@97))
))) (forall ((o2_58@@83 T@Ref) (f_206@@98 T@Field_80902_80907) ) (!  (=> (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@83 f_206@@98) (= (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@30) o2_58@@83 f_206@@98) (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@83 f_206@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@83 f_206@@98))
))) (forall ((o2_58@@84 T@Ref) (f_206@@99 T@Field_34773_1186) ) (!  (=> (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@84 f_206@@99) (= (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@30) o2_58@@84 f_206@@99) (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@84 f_206@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@84 f_206@@99))
))) (forall ((o2_58@@85 T@Ref) (f_206@@100 T@Field_34773_34702) ) (!  (=> (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@85 f_206@@100) (= (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@30) o2_58@@85 f_206@@100) (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@85 f_206@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@85 f_206@@100))
))) (forall ((o2_58@@86 T@Ref) (f_206@@101 T@Field_34773_53) ) (!  (=> (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@86 f_206@@101) (= (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@30) o2_58@@86 f_206@@101) (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@86 f_206@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@86 f_206@@101))
))) (forall ((o2_58@@87 T@Ref) (f_206@@102 T@Field_143710_143711) ) (!  (=> (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@87 f_206@@102) (= (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@30) o2_58@@87 f_206@@102) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@87 f_206@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@87 f_206@@102))
))) (forall ((o2_58@@88 T@Ref) (f_206@@103 T@Field_143723_143728) ) (!  (=> (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@30) null (WandMaskField_34701 pm_f_58@@10))) o2_58@@88 f_206@@103) (= (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@30) o2_58@@88 f_206@@103) (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@88 f_206@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| ExhaleHeap@@27) o2_58@@88 f_206@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (IsWandField_34701_347558 pm_f_58@@10))
)))
(assert (forall ((x@@7 T@Ref) (i@@7 Int) ) (! (= (getPredWandId_34705_34706 (LL x@@7 i@@7)) 0)
 :qid |stdinbpl.202:15|
 :skolemid |24|
 :pattern ( (LL x@@7 i@@7))
)))
(assert (forall ((x@@8 T@Ref) (i@@8 Int) ) (! (= (getPredWandId_34773_34774 (LL2 x@@8 i@@8)) 1)
 :qid |stdinbpl.780:15|
 :skolemid |48|
 :pattern ( (LL2 x@@8 i@@8))
)))
(assert (forall ((x@@9 T@Ref) (i@@9 Int) ) (! (= (PredicateMaskField_34705 (LL x@@9 i@@9)) (|LL#sm| x@@9 i@@9))
 :qid |stdinbpl.194:15|
 :skolemid |22|
 :pattern ( (PredicateMaskField_34705 (LL x@@9 i@@9)))
)))
(assert (forall ((x@@10 T@Ref) (i@@10 Int) ) (! (= (PredicateMaskField_34773 (LL2 x@@10 i@@10)) (|LL2#sm| x@@10 i@@10))
 :qid |stdinbpl.772:15|
 :skolemid |46|
 :pattern ( (PredicateMaskField_34773 (LL2 x@@10 i@@10)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_77406) (o_131 T@Ref) (f_133 T@Field_143723_143728) (v T@PolymorphicMapType_77955) ) (! (succHeap Heap@@31 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@31) (store (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@31) o_131 f_133 v) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@31) (store (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@31) o_131 f_133 v) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@31) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_77406) (o_131@@0 T@Ref) (f_133@@0 T@Field_34773_1186) (v@@0 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@32) (store (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@32) o_131@@0 f_133@@0 v@@0) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@32) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@32) (store (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@32) o_131@@0 f_133@@0 v@@0) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_77406) (o_131@@1 T@Ref) (f_133@@1 T@Field_143710_143711) (v@@1 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@33) (store (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@33) o_131@@1 f_133@@1 v@@1) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@33) (store (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@33) o_131@@1 f_133@@1 v@@1) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@33) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_77406) (o_131@@2 T@Ref) (f_133@@2 T@Field_34773_34702) (v@@2 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@34) (store (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@34) o_131@@2 f_133@@2 v@@2) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@34) (store (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@34) o_131@@2 f_133@@2 v@@2) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@34) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_77406) (o_131@@3 T@Ref) (f_133@@3 T@Field_34773_53) (v@@3 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@35) (store (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@35) o_131@@3 f_133@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@35) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@35) (store (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@35) o_131@@3 f_133@@3 v@@3)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_77406) (o_131@@4 T@Ref) (f_133@@4 T@Field_80902_80907) (v@@4 T@PolymorphicMapType_77955) ) (! (succHeap Heap@@36 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@36) (store (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@36) o_131@@4 f_133@@4 v@@4) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@36) (store (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@36) o_131@@4 f_133@@4 v@@4) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@36) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_77406) (o_131@@5 T@Ref) (f_133@@5 T@Field_34705_1186) (v@@5 Int) ) (! (succHeap Heap@@37 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@37) (store (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@37) o_131@@5 f_133@@5 v@@5) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@37) (store (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@37) o_131@@5 f_133@@5 v@@5) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@37) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_77406) (o_131@@6 T@Ref) (f_133@@6 T@Field_80889_80890) (v@@6 T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@38) (store (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@38) o_131@@6 f_133@@6 v@@6) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@38) (store (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@38) o_131@@6 f_133@@6 v@@6) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@38) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_77406) (o_131@@7 T@Ref) (f_133@@7 T@Field_34705_34702) (v@@7 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@39) (store (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@39) o_131@@7 f_133@@7 v@@7) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@39) (store (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@39) o_131@@7 f_133@@7 v@@7) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@39) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_77406) (o_131@@8 T@Ref) (f_133@@8 T@Field_34705_53) (v@@8 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@40) (store (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@40) o_131@@8 f_133@@8 v@@8) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@40) (store (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@40) o_131@@8 f_133@@8 v@@8) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@40) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_77406) (o_131@@9 T@Ref) (f_133@@9 T@Field_34701_80907) (v@@9 T@PolymorphicMapType_77955) ) (! (succHeap Heap@@41 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@41) (store (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@41) o_131@@9 f_133@@9 v@@9) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@41) (store (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@41) o_131@@9 f_133@@9 v@@9) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@41) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_77406) (o_131@@10 T@Ref) (f_133@@10 T@Field_80792_1186) (v@@10 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@42) (store (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@42) o_131@@10 f_133@@10 v@@10) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@42) (store (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@42) o_131@@10 f_133@@10 v@@10) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@42) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_77406) (o_131@@11 T@Ref) (f_133@@11 T@Field_34701_34706) (v@@11 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@43) (store (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@43) o_131@@11 f_133@@11 v@@11) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@43) (store (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@43) o_131@@11 f_133@@11 v@@11) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@43) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_77406) (o_131@@12 T@Ref) (f_133@@12 T@Field_77479_77480) (v@@12 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@44) (store (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@44) o_131@@12 f_133@@12 v@@12) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@44) (store (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@44) o_131@@12 f_133@@12 v@@12) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@44) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_77406) (o_131@@13 T@Ref) (f_133@@13 T@Field_77466_53) (v@@13 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_77406 (store (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@45) o_131@@13 f_133@@13 v@@13) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_77406 (store (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@45) o_131@@13 f_133@@13 v@@13) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@45) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@45)))
)))
(assert (forall ((o_131@@14 T@Ref) (f_205 T@Field_77479_77480) (Heap@@46 T@PolymorphicMapType_77406) ) (!  (=> (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@46) o_131@@14 $allocated) (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@46) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@46) o_131@@14 f_205) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@46) o_131@@14 f_205))
)))
(assert (forall ((p@@3 T@Field_34701_34706) (v_1@@2 T@FrameType) (q T@Field_34701_34706) (w@@2 T@FrameType) (r T@Field_34701_34706) (u T@FrameType) ) (!  (=> (and (InsidePredicate_77466_77466 p@@3 v_1@@2 q w@@2) (InsidePredicate_77466_77466 q w@@2 r u)) (InsidePredicate_77466_77466 p@@3 v_1@@2 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_77466_77466 p@@3 v_1@@2 q w@@2) (InsidePredicate_77466_77466 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_34701_34706) (v_1@@3 T@FrameType) (q@@0 T@Field_34701_34706) (w@@3 T@FrameType) (r@@0 T@Field_143710_143711) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_77466_77466 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_77466_34773 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_77466_34773 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_77466_77466 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_77466_34773 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_34701_34706) (v_1@@4 T@FrameType) (q@@1 T@Field_34701_34706) (w@@4 T@FrameType) (r@@1 T@Field_80889_80890) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_77466_77466 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_77466_34705 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_77466_34705 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_77466_77466 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_77466_34705 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_34701_34706) (v_1@@5 T@FrameType) (q@@2 T@Field_143710_143711) (w@@5 T@FrameType) (r@@2 T@Field_34701_34706) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_77466_34773 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_34773_77466 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_77466_77466 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_77466_34773 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_34773_77466 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_34701_34706) (v_1@@6 T@FrameType) (q@@3 T@Field_143710_143711) (w@@6 T@FrameType) (r@@3 T@Field_143710_143711) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_77466_34773 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_34773_34773 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_77466_34773 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_77466_34773 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_34773_34773 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_34701_34706) (v_1@@7 T@FrameType) (q@@4 T@Field_143710_143711) (w@@7 T@FrameType) (r@@4 T@Field_80889_80890) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_77466_34773 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_34773_34705 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_77466_34705 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_77466_34773 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_34773_34705 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_34701_34706) (v_1@@8 T@FrameType) (q@@5 T@Field_80889_80890) (w@@8 T@FrameType) (r@@5 T@Field_34701_34706) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_77466_34705 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_34705_77466 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_77466_77466 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_77466_34705 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_34705_77466 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_34701_34706) (v_1@@9 T@FrameType) (q@@6 T@Field_80889_80890) (w@@9 T@FrameType) (r@@6 T@Field_143710_143711) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_77466_34705 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_34705_34773 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_77466_34773 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_77466_34705 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_34705_34773 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_34701_34706) (v_1@@10 T@FrameType) (q@@7 T@Field_80889_80890) (w@@10 T@FrameType) (r@@7 T@Field_80889_80890) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_77466_34705 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_34705_34705 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_77466_34705 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_77466_34705 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_34705_34705 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_143710_143711) (v_1@@11 T@FrameType) (q@@8 T@Field_34701_34706) (w@@11 T@FrameType) (r@@8 T@Field_34701_34706) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_34773_77466 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_77466_77466 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_34773_77466 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34773_77466 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_77466_77466 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_143710_143711) (v_1@@12 T@FrameType) (q@@9 T@Field_34701_34706) (w@@12 T@FrameType) (r@@9 T@Field_143710_143711) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_34773_77466 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_77466_34773 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_34773_34773 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34773_77466 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_77466_34773 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_143710_143711) (v_1@@13 T@FrameType) (q@@10 T@Field_34701_34706) (w@@13 T@FrameType) (r@@10 T@Field_80889_80890) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_34773_77466 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_77466_34705 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_34773_34705 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34773_77466 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_77466_34705 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_143710_143711) (v_1@@14 T@FrameType) (q@@11 T@Field_143710_143711) (w@@14 T@FrameType) (r@@11 T@Field_34701_34706) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_34773_34773 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_34773_77466 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_34773_77466 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34773_34773 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_34773_77466 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_143710_143711) (v_1@@15 T@FrameType) (q@@12 T@Field_143710_143711) (w@@15 T@FrameType) (r@@12 T@Field_143710_143711) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_34773_34773 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_34773_34773 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_34773_34773 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34773_34773 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_34773_34773 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_143710_143711) (v_1@@16 T@FrameType) (q@@13 T@Field_143710_143711) (w@@16 T@FrameType) (r@@13 T@Field_80889_80890) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_34773_34773 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_34773_34705 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_34773_34705 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34773_34773 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_34773_34705 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_143710_143711) (v_1@@17 T@FrameType) (q@@14 T@Field_80889_80890) (w@@17 T@FrameType) (r@@14 T@Field_34701_34706) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_34773_34705 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_34705_77466 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_34773_77466 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34773_34705 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_34705_77466 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_143710_143711) (v_1@@18 T@FrameType) (q@@15 T@Field_80889_80890) (w@@18 T@FrameType) (r@@15 T@Field_143710_143711) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_34773_34705 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_34705_34773 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_34773_34773 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34773_34705 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_34705_34773 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_143710_143711) (v_1@@19 T@FrameType) (q@@16 T@Field_80889_80890) (w@@19 T@FrameType) (r@@16 T@Field_80889_80890) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_34773_34705 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_34705_34705 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_34773_34705 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34773_34705 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_34705_34705 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_80889_80890) (v_1@@20 T@FrameType) (q@@17 T@Field_34701_34706) (w@@20 T@FrameType) (r@@17 T@Field_34701_34706) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_34705_77466 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_77466_77466 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_34705_77466 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34705_77466 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_77466_77466 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_80889_80890) (v_1@@21 T@FrameType) (q@@18 T@Field_34701_34706) (w@@21 T@FrameType) (r@@18 T@Field_143710_143711) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_34705_77466 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_77466_34773 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_34705_34773 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34705_77466 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_77466_34773 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_80889_80890) (v_1@@22 T@FrameType) (q@@19 T@Field_34701_34706) (w@@22 T@FrameType) (r@@19 T@Field_80889_80890) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_34705_77466 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_77466_34705 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_34705_34705 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34705_77466 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_77466_34705 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_80889_80890) (v_1@@23 T@FrameType) (q@@20 T@Field_143710_143711) (w@@23 T@FrameType) (r@@20 T@Field_34701_34706) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_34705_34773 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_34773_77466 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_34705_77466 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34705_34773 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_34773_77466 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_80889_80890) (v_1@@24 T@FrameType) (q@@21 T@Field_143710_143711) (w@@24 T@FrameType) (r@@21 T@Field_143710_143711) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_34705_34773 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_34773_34773 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_34705_34773 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34705_34773 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_34773_34773 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_80889_80890) (v_1@@25 T@FrameType) (q@@22 T@Field_143710_143711) (w@@25 T@FrameType) (r@@22 T@Field_80889_80890) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_34705_34773 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_34773_34705 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_34705_34705 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34705_34773 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_34773_34705 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_80889_80890) (v_1@@26 T@FrameType) (q@@23 T@Field_80889_80890) (w@@26 T@FrameType) (r@@23 T@Field_34701_34706) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_34705_34705 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_34705_77466 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_34705_77466 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34705_34705 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_34705_77466 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_80889_80890) (v_1@@27 T@FrameType) (q@@24 T@Field_80889_80890) (w@@27 T@FrameType) (r@@24 T@Field_143710_143711) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_34705_34705 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_34705_34773 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_34705_34773 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34705_34705 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_34705_34773 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_80889_80890) (v_1@@28 T@FrameType) (q@@25 T@Field_80889_80890) (w@@28 T@FrameType) (r@@25 T@Field_80889_80890) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_34705_34705 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_34705_34705 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_34705_34705 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_34705_34705 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_34705_34705 q@@25 w@@28 r@@25 u@@25))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun perm@0 () Real)
(declare-fun z () T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_77427)
(declare-fun Mask@1 () T@PolymorphicMapType_77427)
(declare-fun Heap@1 () T@PolymorphicMapType_77406)
(declare-fun Mask@3 () T@PolymorphicMapType_77427)
(declare-fun perm@1 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_77427)
(declare-fun Mask@5 () T@PolymorphicMapType_77427)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_1186 (Int) T@FrameType)
(declare-fun FrameFragment_34702 (T@Ref) T@FrameType)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_77427)
(declare-fun perm@2 () Real)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_77427)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_77427)
(declare-fun perm@3 () Real)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_77427)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_77427)
(declare-fun UnfoldingHeap@0 () T@PolymorphicMapType_77406)
(declare-fun UnfoldingHeap@1 () T@PolymorphicMapType_77406)
(declare-fun UnfoldingHeap@2 () T@PolymorphicMapType_77406)
(declare-fun newPMask@0 () T@PolymorphicMapType_77955)
(declare-fun UnfoldingHeap@3 () T@PolymorphicMapType_77406)
(declare-fun Heap@2 () T@PolymorphicMapType_77406)
(declare-fun Heap@3 () T@PolymorphicMapType_77406)
(declare-fun Heap@4 () T@PolymorphicMapType_77406)
(declare-fun newPMask@1 () T@PolymorphicMapType_77955)
(declare-fun Heap@5 () T@PolymorphicMapType_77406)
(declare-fun Heap@@47 () T@PolymorphicMapType_77406)
(declare-fun Heap@0 () T@PolymorphicMapType_77406)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_77427)
(set-info :boogie-vc-id test05)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon4_correct  (=> (= perm@0 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (=> (> perm@0 NoPerm) (not (= z null))) (=> (and (= Mask@2 (PolymorphicMapType_77427 (store (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| Mask@1) z data (+ (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| Mask@1) z data) perm@0)) (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| Mask@1) (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| Mask@1) (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@1) (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| Mask@1) (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| Mask@1) (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| Mask@1) (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| Mask@1) (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| Mask@1) (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| Mask@1) (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| Mask@1) (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| Mask@1) (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| Mask@1) (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| Mask@1) (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| Mask@1))) (state Heap@1 Mask@2)) (=> (and (and (not (= z null)) (= Mask@3 (PolymorphicMapType_77427 (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| Mask@2) (store (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| Mask@2) z next (+ (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| Mask@2) z next) FullPerm)) (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| Mask@2) (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@2) (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| Mask@2) (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| Mask@2) (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| Mask@2) (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| Mask@2) (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| Mask@2) (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| Mask@2) (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| Mask@2) (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| Mask@2) (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| Mask@2) (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| Mask@2) (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| Mask@2)))) (and (state Heap@1 Mask@3) (= perm@1 (/ (to_real 1) (to_real 2))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (and (and (=> (> perm@1 NoPerm) (not (= (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) null))) (= Mask@4 (PolymorphicMapType_77427 (store (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| Mask@3) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) data (+ (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| Mask@3) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) data) perm@1)) (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| Mask@3) (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| Mask@3) (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@3) (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| Mask@3) (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| Mask@3) (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| Mask@3) (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| Mask@3) (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| Mask@3) (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| Mask@3) (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| Mask@3) (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| Mask@3) (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| Mask@3) (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| Mask@3) (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| Mask@3)))) (and (state Heap@1 Mask@4) (= Mask@5 (PolymorphicMapType_77427 (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| Mask@4) (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| Mask@4) (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| Mask@4) (store (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@4) null (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1) (+ (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@4) null (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1)) FullPerm)) (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| Mask@4) (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| Mask@4) (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| Mask@4) (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| Mask@4) (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| Mask@4) (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| Mask@4) (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| Mask@4) (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| Mask@4) (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| Mask@4) (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| Mask@4) (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| Mask@4))))) (=> (and (and (and (InsidePredicate_34773_34773 (LL2 z 0) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@1) null (LL2 z 0)) (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@1) null (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (state Heap@1 Mask@5)) (and (= (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@1) z data) 0) (|LL2#trigger_34773| Heap@1 (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1)))) (and (and (= (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@1) null (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1)) (CombineFrames (FrameFragment_1186 (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) data)) (CombineFrames (FrameFragment_34702 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next)) (CombineFrames (FrameFragment_1186 (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) data)) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@1) null (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2)))))) (= UnfoldingMask@0 (PolymorphicMapType_77427 (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| Mask@5) (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| Mask@5) (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| Mask@5) (store (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@5) null (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1) (- (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@5) null (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1)) FullPerm)) (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| Mask@5) (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| Mask@5) (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| Mask@5) (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| Mask@5) (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| Mask@5) (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| Mask@5) (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| Mask@5) (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| Mask@5) (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| Mask@5) (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| Mask@5) (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| Mask@5)))) (and (= perm@2 (/ (to_real 1) (to_real 2))) (=> (> perm@2 NoPerm) (not (= (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) null)))))) (=> (and (and (and (and (= UnfoldingMask@1 (PolymorphicMapType_77427 (store (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| UnfoldingMask@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) data (+ (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| UnfoldingMask@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) data) perm@2)) (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| UnfoldingMask@0) (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| UnfoldingMask@0) (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| UnfoldingMask@0) (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| UnfoldingMask@0) (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| UnfoldingMask@0) (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| UnfoldingMask@0) (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| UnfoldingMask@0) (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| UnfoldingMask@0) (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| UnfoldingMask@0) (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| UnfoldingMask@0) (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| UnfoldingMask@0) (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| UnfoldingMask@0) (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| UnfoldingMask@0) (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| UnfoldingMask@0))) (state Heap@1 UnfoldingMask@1)) (and (not (= (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) null)) (= UnfoldingMask@2 (PolymorphicMapType_77427 (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| UnfoldingMask@1) (store (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| UnfoldingMask@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next (+ (select (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| UnfoldingMask@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) FullPerm)) (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| UnfoldingMask@1) (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| UnfoldingMask@1) (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| UnfoldingMask@1) (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| UnfoldingMask@1) (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| UnfoldingMask@1) (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| UnfoldingMask@1) (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| UnfoldingMask@1) (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| UnfoldingMask@1) (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| UnfoldingMask@1) (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| UnfoldingMask@1) (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| UnfoldingMask@1) (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| UnfoldingMask@1) (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| UnfoldingMask@1))))) (and (and (state Heap@1 UnfoldingMask@2) (= perm@3 (/ (to_real 1) (to_real 2)))) (and (=> (> perm@3 NoPerm) (not (= (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) null))) (= UnfoldingMask@3 (PolymorphicMapType_77427 (store (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| UnfoldingMask@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) data (+ (select (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| UnfoldingMask@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) data) perm@3)) (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| UnfoldingMask@2) (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| UnfoldingMask@2) (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| UnfoldingMask@2) (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| UnfoldingMask@2) (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| UnfoldingMask@2) (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| UnfoldingMask@2) (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| UnfoldingMask@2) (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| UnfoldingMask@2) (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| UnfoldingMask@2) (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| UnfoldingMask@2) (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| UnfoldingMask@2) (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| UnfoldingMask@2) (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| UnfoldingMask@2) (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| UnfoldingMask@2)))))) (and (and (and (state Heap@1 UnfoldingMask@3) (= UnfoldingMask@4 (PolymorphicMapType_77427 (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| UnfoldingMask@3) (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| UnfoldingMask@3) (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| UnfoldingMask@3) (store (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| UnfoldingMask@3) null (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2) (+ (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| UnfoldingMask@3) null (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2)) FullPerm)) (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| UnfoldingMask@3) (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| UnfoldingMask@3) (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| UnfoldingMask@3) (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| UnfoldingMask@3) (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| UnfoldingMask@3) (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| UnfoldingMask@3) (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| UnfoldingMask@3) (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| UnfoldingMask@3) (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| UnfoldingMask@3) (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| UnfoldingMask@3) (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| UnfoldingMask@3)))) (and (InsidePredicate_34773_34773 (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@1) null (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1)) (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@1) null (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (state Heap@1 UnfoldingMask@4))) (and (and (= (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) data) 1) (= UnfoldingHeap@0 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@1) (store (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2) (PolymorphicMapType_77955 (store (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) data true) (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))) (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) next) 2))))) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@1)))) (and (= UnfoldingHeap@1 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| UnfoldingHeap@0) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| UnfoldingHeap@0) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| UnfoldingHeap@0) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| UnfoldingHeap@0) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| UnfoldingHeap@0) (store (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2) (PolymorphicMapType_77955 (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (store (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) next true) (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))) (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@0) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@0) z next) next) 2))))) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| UnfoldingHeap@0) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| UnfoldingHeap@0) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| UnfoldingHeap@0) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| UnfoldingHeap@0) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| UnfoldingHeap@0) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| UnfoldingHeap@0) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| UnfoldingHeap@0) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| UnfoldingHeap@0))) (= UnfoldingHeap@2 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| UnfoldingHeap@1) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| UnfoldingHeap@1) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| UnfoldingHeap@1) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| UnfoldingHeap@1) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| UnfoldingHeap@1) (store (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2) (PolymorphicMapType_77955 (store (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) next) data true) (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))) (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@1) z next) next) 2))))) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| UnfoldingHeap@1) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| UnfoldingHeap@1) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| UnfoldingHeap@1) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| UnfoldingHeap@1) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| UnfoldingHeap@1) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| UnfoldingHeap@1) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| UnfoldingHeap@1) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| UnfoldingHeap@1))))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_125 T@Ref) (f_126 T@Field_80792_1186) ) (!  (=> (or (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125 f_126) (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125 f_126)) (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| newPMask@0) o_125 f_126))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| newPMask@0) o_125 f_126))
)) (forall ((o_125@@0 T@Ref) (f_126@@0 T@Field_77479_77480) ) (!  (=> (or (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@0 f_126@@0) (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@0 f_126@@0)) (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| newPMask@0) o_125@@0 f_126@@0))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| newPMask@0) o_125@@0 f_126@@0))
))) (forall ((o_125@@1 T@Ref) (f_126@@1 T@Field_77466_53) ) (!  (=> (or (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@1 f_126@@1) (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@1 f_126@@1)) (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| newPMask@0) o_125@@1 f_126@@1))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| newPMask@0) o_125@@1 f_126@@1))
))) (forall ((o_125@@2 T@Ref) (f_126@@2 T@Field_34701_34706) ) (!  (=> (or (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@2 f_126@@2) (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@2 f_126@@2)) (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| newPMask@0) o_125@@2 f_126@@2))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| newPMask@0) o_125@@2 f_126@@2))
))) (forall ((o_125@@3 T@Ref) (f_126@@3 T@Field_34701_80907) ) (!  (=> (or (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@3 f_126@@3) (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@3 f_126@@3)) (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| newPMask@0) o_125@@3 f_126@@3))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| newPMask@0) o_125@@3 f_126@@3))
))) (forall ((o_125@@4 T@Ref) (f_126@@4 T@Field_34705_1186) ) (!  (=> (or (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@4 f_126@@4) (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@4 f_126@@4)) (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| newPMask@0) o_125@@4 f_126@@4))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| newPMask@0) o_125@@4 f_126@@4))
))) (forall ((o_125@@5 T@Ref) (f_126@@5 T@Field_34705_34702) ) (!  (=> (or (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@5 f_126@@5) (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@5 f_126@@5)) (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| newPMask@0) o_125@@5 f_126@@5))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| newPMask@0) o_125@@5 f_126@@5))
))) (forall ((o_125@@6 T@Ref) (f_126@@6 T@Field_34705_53) ) (!  (=> (or (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@6 f_126@@6) (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@6 f_126@@6)) (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| newPMask@0) o_125@@6 f_126@@6))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| newPMask@0) o_125@@6 f_126@@6))
))) (forall ((o_125@@7 T@Ref) (f_126@@7 T@Field_80889_80890) ) (!  (=> (or (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@7 f_126@@7) (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@7 f_126@@7)) (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| newPMask@0) o_125@@7 f_126@@7))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| newPMask@0) o_125@@7 f_126@@7))
))) (forall ((o_125@@8 T@Ref) (f_126@@8 T@Field_80902_80907) ) (!  (=> (or (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@8 f_126@@8) (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@8 f_126@@8)) (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| newPMask@0) o_125@@8 f_126@@8))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| newPMask@0) o_125@@8 f_126@@8))
))) (forall ((o_125@@9 T@Ref) (f_126@@9 T@Field_34773_1186) ) (!  (=> (or (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@9 f_126@@9) (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@9 f_126@@9)) (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| newPMask@0) o_125@@9 f_126@@9))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| newPMask@0) o_125@@9 f_126@@9))
))) (forall ((o_125@@10 T@Ref) (f_126@@10 T@Field_34773_34702) ) (!  (=> (or (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@10 f_126@@10) (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@10 f_126@@10)) (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| newPMask@0) o_125@@10 f_126@@10))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| newPMask@0) o_125@@10 f_126@@10))
))) (forall ((o_125@@11 T@Ref) (f_126@@11 T@Field_34773_53) ) (!  (=> (or (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@11 f_126@@11) (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@11 f_126@@11)) (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| newPMask@0) o_125@@11 f_126@@11))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| newPMask@0) o_125@@11 f_126@@11))
))) (forall ((o_125@@12 T@Ref) (f_126@@12 T@Field_143710_143711) ) (!  (=> (or (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@12 f_126@@12) (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@12 f_126@@12)) (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| newPMask@0) o_125@@12 f_126@@12))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| newPMask@0) o_125@@12 f_126@@12))
))) (forall ((o_125@@13 T@Ref) (f_126@@13 T@Field_143723_143728) ) (!  (=> (or (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2))) o_125@@13 f_126@@13) (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) next) 3))) o_125@@13 f_126@@13)) (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| newPMask@0) o_125@@13 f_126@@13))
 :qid |stdinbpl.2688:31|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| newPMask@0) o_125@@13 f_126@@13))
))) (and (= UnfoldingHeap@3 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| UnfoldingHeap@2) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| UnfoldingHeap@2) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| UnfoldingHeap@2) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| UnfoldingHeap@2) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| UnfoldingHeap@2) (store (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| UnfoldingHeap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| UnfoldingHeap@2) z next) next) 2) newPMask@0) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| UnfoldingHeap@2) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| UnfoldingHeap@2) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| UnfoldingHeap@2) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| UnfoldingHeap@2) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| UnfoldingHeap@2) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| UnfoldingHeap@2) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| UnfoldingHeap@2) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| UnfoldingHeap@2))) (state UnfoldingHeap@3 UnfoldingMask@4))) (and (and (state UnfoldingHeap@3 UnfoldingMask@4) (= Heap@2 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@1) (store (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1) (PolymorphicMapType_77955 (store (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) data true) (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))) (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@1) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@1) z next) 1))))) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@1) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@1)))) (and (= Heap@3 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@2) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@2) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@2) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@2) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@2) (store (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1) (PolymorphicMapType_77955 (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (store (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) next true) (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))) (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@2) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@2) z next) 1))))) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@2) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@2) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@2) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@2) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@2) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@2) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@2) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@2))) (= Heap@4 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@3) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@3) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@3) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@3) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@3) (store (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1) (PolymorphicMapType_77955 (store (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) next) data true) (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))) (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@3) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@3) z next) 1))))) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@3) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@3) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@3) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@3) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@3) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@3) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@3) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@3)))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_124 T@Ref) (f_125 T@Field_80792_1186) ) (!  (=> (or (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124 f_125) (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124 f_125)) (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| newPMask@1) o_124 f_125))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_34699_1186#PolymorphicMapType_77955| newPMask@1) o_124 f_125))
)) (forall ((o_124@@0 T@Ref) (f_125@@0 T@Field_77479_77480) ) (!  (=> (or (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@0 f_125@@0) (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@0 f_125@@0)) (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| newPMask@1) o_124@@0 f_125@@0))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_34701_34702#PolymorphicMapType_77955| newPMask@1) o_124@@0 f_125@@0))
))) (forall ((o_124@@1 T@Ref) (f_125@@1 T@Field_77466_53) ) (!  (=> (or (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@1 f_125@@1) (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@1 f_125@@1)) (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| newPMask@1) o_124@@1 f_125@@1))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_34699_53#PolymorphicMapType_77955| newPMask@1) o_124@@1 f_125@@1))
))) (forall ((o_124@@2 T@Ref) (f_125@@2 T@Field_34701_34706) ) (!  (=> (or (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@2 f_125@@2) (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@2 f_125@@2)) (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| newPMask@1) o_124@@2 f_125@@2))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_34699_80890#PolymorphicMapType_77955| newPMask@1) o_124@@2 f_125@@2))
))) (forall ((o_124@@3 T@Ref) (f_125@@3 T@Field_34701_80907) ) (!  (=> (or (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@3 f_125@@3) (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@3 f_125@@3)) (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| newPMask@1) o_124@@3 f_125@@3))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_34699_344373#PolymorphicMapType_77955| newPMask@1) o_124@@3 f_125@@3))
))) (forall ((o_124@@4 T@Ref) (f_125@@4 T@Field_34705_1186) ) (!  (=> (or (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@4 f_125@@4) (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@4 f_125@@4)) (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| newPMask@1) o_124@@4 f_125@@4))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_80889_1186#PolymorphicMapType_77955| newPMask@1) o_124@@4 f_125@@4))
))) (forall ((o_124@@5 T@Ref) (f_125@@5 T@Field_34705_34702) ) (!  (=> (or (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@5 f_125@@5) (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@5 f_125@@5)) (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| newPMask@1) o_124@@5 f_125@@5))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_80889_34702#PolymorphicMapType_77955| newPMask@1) o_124@@5 f_125@@5))
))) (forall ((o_124@@6 T@Ref) (f_125@@6 T@Field_34705_53) ) (!  (=> (or (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@6 f_125@@6) (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@6 f_125@@6)) (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| newPMask@1) o_124@@6 f_125@@6))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_80889_53#PolymorphicMapType_77955| newPMask@1) o_124@@6 f_125@@6))
))) (forall ((o_124@@7 T@Ref) (f_125@@7 T@Field_80889_80890) ) (!  (=> (or (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@7 f_125@@7) (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@7 f_125@@7)) (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| newPMask@1) o_124@@7 f_125@@7))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_80889_80890#PolymorphicMapType_77955| newPMask@1) o_124@@7 f_125@@7))
))) (forall ((o_124@@8 T@Ref) (f_125@@8 T@Field_80902_80907) ) (!  (=> (or (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@8 f_125@@8) (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@8 f_125@@8)) (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| newPMask@1) o_124@@8 f_125@@8))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_80889_345421#PolymorphicMapType_77955| newPMask@1) o_124@@8 f_125@@8))
))) (forall ((o_124@@9 T@Ref) (f_125@@9 T@Field_34773_1186) ) (!  (=> (or (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@9 f_125@@9) (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@9 f_125@@9)) (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| newPMask@1) o_124@@9 f_125@@9))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_143710_1186#PolymorphicMapType_77955| newPMask@1) o_124@@9 f_125@@9))
))) (forall ((o_124@@10 T@Ref) (f_125@@10 T@Field_34773_34702) ) (!  (=> (or (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@10 f_125@@10) (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@10 f_125@@10)) (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| newPMask@1) o_124@@10 f_125@@10))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_143710_34702#PolymorphicMapType_77955| newPMask@1) o_124@@10 f_125@@10))
))) (forall ((o_124@@11 T@Ref) (f_125@@11 T@Field_34773_53) ) (!  (=> (or (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@11 f_125@@11) (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@11 f_125@@11)) (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| newPMask@1) o_124@@11 f_125@@11))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_143710_53#PolymorphicMapType_77955| newPMask@1) o_124@@11 f_125@@11))
))) (forall ((o_124@@12 T@Ref) (f_125@@12 T@Field_143710_143711) ) (!  (=> (or (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@12 f_125@@12) (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@12 f_125@@12)) (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| newPMask@1) o_124@@12 f_125@@12))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_143710_80890#PolymorphicMapType_77955| newPMask@1) o_124@@12 f_125@@12))
))) (forall ((o_124@@13 T@Ref) (f_125@@13 T@Field_143723_143728) ) (!  (=> (or (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1))) o_124@@13 f_125@@13) (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| (select (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) next) 2))) o_124@@13 f_125@@13)) (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| newPMask@1) o_124@@13 f_125@@13))
 :qid |stdinbpl.2701:29|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_77955_143710_346469#PolymorphicMapType_77955| newPMask@1) o_124@@13 f_125@@13))
))) (and (and (= Heap@5 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@4) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@4) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@4) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@4) (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@4) (store (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@4) null (|LL2#sm| (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@4) z next) 1) newPMask@1) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@4) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@4) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@4) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@4) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@4) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@4) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@4) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@4))) (state Heap@5 Mask@5)) (and (state Heap@5 Mask@5) (state Heap@5 Mask@5))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (HasDirectPerm_34701_34702 Mask@5 z next)) (=> (HasDirectPerm_34701_34702 Mask@5 z next) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_34699_1186 Mask@5 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@5) z next) data)) (=> (HasDirectPerm_34699_1186 Mask@5 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@5) z next) data) (=> (= (ControlFlow 0 2) (- 0 1)) (= (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@5) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@5) z next) data) 1))))))))))))))))))))
(let ((anon6_Else_correct  (=> (HasDirectPerm_34773_34774 Mask@1 null (LL2 z 0)) (=> (and (= Heap@1 Heap@@47) (= (ControlFlow 0 8) 2)) anon4_correct))))
(let ((anon6_Then_correct  (=> (and (and (not (HasDirectPerm_34773_34774 Mask@1 null (LL2 z 0))) (= Heap@0 (PolymorphicMapType_77406 (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@47) (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@47) (|PolymorphicMapType_77406_34705_34706#PolymorphicMapType_77406| Heap@@47) (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@47) (|PolymorphicMapType_77406_34709_88822#PolymorphicMapType_77406| Heap@@47) (store (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@47) null (LL2 z 0) newVersion@0) (|PolymorphicMapType_77406_34777_151676#PolymorphicMapType_77406| Heap@@47) (|PolymorphicMapType_77406_34701_34706#PolymorphicMapType_77406| Heap@@47) (|PolymorphicMapType_77406_34701_340149#PolymorphicMapType_77406| Heap@@47) (|PolymorphicMapType_77406_34705_34702#PolymorphicMapType_77406| Heap@@47) (|PolymorphicMapType_77406_34705_1186#PolymorphicMapType_77406| Heap@@47) (|PolymorphicMapType_77406_34705_53#PolymorphicMapType_77406| Heap@@47) (|PolymorphicMapType_77406_34773_34702#PolymorphicMapType_77406| Heap@@47) (|PolymorphicMapType_77406_34773_1186#PolymorphicMapType_77406| Heap@@47) (|PolymorphicMapType_77406_34773_53#PolymorphicMapType_77406| Heap@@47)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 7) 2))) anon4_correct)))
(let ((anon2_correct  (=> (= Mask@1 (PolymorphicMapType_77427 (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| Mask@0) (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| Mask@0) (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| Mask@0) (store (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@0) null (LL2 z 0) (- (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@0) null (LL2 z 0)) FullPerm)) (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| Mask@0) (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| Mask@0) (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| Mask@0) (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| Mask@0) (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| Mask@0) (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| Mask@0) (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| Mask@0) (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| Mask@0) (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| Mask@0) (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| Mask@0) (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| Mask@0))) (and (=> (= (ControlFlow 0 9) 7) anon6_Then_correct) (=> (= (ControlFlow 0 9) 8) anon6_Else_correct)))))
(let ((anon5_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 12) 9)) anon2_correct)))
(let ((anon5_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (<= FullPerm (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@0) null (LL2 z 0)))) (=> (<= FullPerm (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| Mask@0) null (LL2 z 0))) (=> (= (ControlFlow 0 10) 9) anon2_correct))))))
(let ((anon0_correct  (=> (state Heap@@47 ZeroMask) (=> (and (and (and AssumePermUpperBound (select (|PolymorphicMapType_77406_34571_53#PolymorphicMapType_77406| Heap@@47) z $allocated)) (and (= Mask@0 (PolymorphicMapType_77427 (|PolymorphicMapType_77427_34699_1186#PolymorphicMapType_77427| ZeroMask) (|PolymorphicMapType_77427_34701_34702#PolymorphicMapType_77427| ZeroMask) (|PolymorphicMapType_77427_34705_34706#PolymorphicMapType_77427| ZeroMask) (store (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| ZeroMask) null (LL2 z 0) (+ (select (|PolymorphicMapType_77427_34773_34774#PolymorphicMapType_77427| ZeroMask) null (LL2 z 0)) FullPerm)) (|PolymorphicMapType_77427_34699_34706#PolymorphicMapType_77427| ZeroMask) (|PolymorphicMapType_77427_34699_53#PolymorphicMapType_77427| ZeroMask) (|PolymorphicMapType_77427_34699_354298#PolymorphicMapType_77427| ZeroMask) (|PolymorphicMapType_77427_34705_1186#PolymorphicMapType_77427| ZeroMask) (|PolymorphicMapType_77427_34705_34702#PolymorphicMapType_77427| ZeroMask) (|PolymorphicMapType_77427_34705_53#PolymorphicMapType_77427| ZeroMask) (|PolymorphicMapType_77427_34705_354709#PolymorphicMapType_77427| ZeroMask) (|PolymorphicMapType_77427_34773_1186#PolymorphicMapType_77427| ZeroMask) (|PolymorphicMapType_77427_34773_34702#PolymorphicMapType_77427| ZeroMask) (|PolymorphicMapType_77427_34773_53#PolymorphicMapType_77427| ZeroMask) (|PolymorphicMapType_77427_34773_355120#PolymorphicMapType_77427| ZeroMask))) (state Heap@@47 Mask@0))) (and (and (state Heap@@47 Mask@0) (state Heap@@47 Mask@0)) (and (|LL2#trigger_34773| Heap@@47 (LL2 z 0)) (= (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@47) null (LL2 z 0)) (CombineFrames (FrameFragment_1186 (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@47) z data)) (CombineFrames (FrameFragment_34702 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@47) z next)) (CombineFrames (FrameFragment_1186 (select (|PolymorphicMapType_77406_34699_1186#PolymorphicMapType_77406| Heap@@47) (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@47) z next) data)) (select (|PolymorphicMapType_77406_34773_34774#PolymorphicMapType_77406| Heap@@47) null (LL2 (select (|PolymorphicMapType_77406_34574_34575#PolymorphicMapType_77406| Heap@@47) z next) 1))))))))) (and (=> (= (ControlFlow 0 13) 10) anon5_Then_correct) (=> (= (ControlFlow 0 13) 12) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 13) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
