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
(declare-sort T@Field_43504_53 0)
(declare-sort T@Field_43517_43518 0)
(declare-sort T@Field_47230_47231 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_46881_1204 0)
(declare-sort T@Field_49390_49395 0)
(declare-sort T@Field_51792_51793 0)
(declare-sort T@Field_52995_52996 0)
(declare-sort T@Field_53282_53287 0)
(declare-sort T@Field_51805_51810 0)
(declare-sort T@Field_20267_20309 0)
(declare-sort T@Field_20267_49395 0)
(declare-sort T@Field_20308_20268 0)
(declare-sort T@Field_20308_53 0)
(declare-sort T@Field_20308_1204 0)
(declare-sort T@Field_20333_20268 0)
(declare-sort T@Field_20333_53 0)
(declare-sort T@Field_20333_1204 0)
(declare-sort T@Field_20358_20268 0)
(declare-sort T@Field_20358_53 0)
(declare-sort T@Field_20358_1204 0)
(declare-datatypes ((T@PolymorphicMapType_43465 0)) (((PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| (Array T@Ref T@Field_47230_47231 Real)) (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| (Array T@Ref T@Field_43517_43518 Real)) (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| (Array T@Ref T@Field_46881_1204 Real)) (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| (Array T@Ref T@Field_52995_52996 Real)) (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| (Array T@Ref T@Field_51792_51793 Real)) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| (Array T@Ref T@Field_20308_20268 Real)) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| (Array T@Ref T@Field_20308_1204 Real)) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| (Array T@Ref T@Field_20308_53 Real)) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| (Array T@Ref T@Field_49390_49395 Real)) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| (Array T@Ref T@Field_20267_20309 Real)) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| (Array T@Ref T@Field_43504_53 Real)) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| (Array T@Ref T@Field_20267_49395 Real)) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| (Array T@Ref T@Field_20358_20268 Real)) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| (Array T@Ref T@Field_20358_1204 Real)) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| (Array T@Ref T@Field_20358_53 Real)) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| (Array T@Ref T@Field_53282_53287 Real)) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| (Array T@Ref T@Field_20333_20268 Real)) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| (Array T@Ref T@Field_20333_1204 Real)) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| (Array T@Ref T@Field_20333_53 Real)) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| (Array T@Ref T@Field_51805_51810 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_43993 0)) (((PolymorphicMapType_43993 (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (Array T@Ref T@Field_43517_43518 Bool)) (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (Array T@Ref T@Field_46881_1204 Bool)) (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (Array T@Ref T@Field_43504_53 Bool)) (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (Array T@Ref T@Field_20267_20309 Bool)) (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (Array T@Ref T@Field_20267_49395 Bool)) (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (Array T@Ref T@Field_20308_20268 Bool)) (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (Array T@Ref T@Field_20308_1204 Bool)) (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (Array T@Ref T@Field_20308_53 Bool)) (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (Array T@Ref T@Field_47230_47231 Bool)) (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (Array T@Ref T@Field_49390_49395 Bool)) (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (Array T@Ref T@Field_20333_20268 Bool)) (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (Array T@Ref T@Field_20333_1204 Bool)) (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (Array T@Ref T@Field_20333_53 Bool)) (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (Array T@Ref T@Field_51792_51793 Bool)) (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (Array T@Ref T@Field_51805_51810 Bool)) (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (Array T@Ref T@Field_20358_20268 Bool)) (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (Array T@Ref T@Field_20358_1204 Bool)) (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (Array T@Ref T@Field_20358_53 Bool)) (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (Array T@Ref T@Field_52995_52996 Bool)) (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (Array T@Ref T@Field_53282_53287 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_43444 0)) (((PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| (Array T@Ref T@Field_43504_53 Bool)) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| (Array T@Ref T@Field_43517_43518 T@Ref)) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| (Array T@Ref T@Field_47230_47231 T@FrameType)) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| (Array T@Ref T@Field_46881_1204 Int)) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| (Array T@Ref T@Field_49390_49395 T@PolymorphicMapType_43993)) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| (Array T@Ref T@Field_51792_51793 T@FrameType)) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| (Array T@Ref T@Field_52995_52996 T@FrameType)) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| (Array T@Ref T@Field_53282_53287 T@PolymorphicMapType_43993)) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| (Array T@Ref T@Field_51805_51810 T@PolymorphicMapType_43993)) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| (Array T@Ref T@Field_20267_20309 T@FrameType)) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| (Array T@Ref T@Field_20267_49395 T@PolymorphicMapType_43993)) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| (Array T@Ref T@Field_20308_20268 T@Ref)) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| (Array T@Ref T@Field_20308_53 Bool)) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| (Array T@Ref T@Field_20308_1204 Int)) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| (Array T@Ref T@Field_20333_20268 T@Ref)) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| (Array T@Ref T@Field_20333_53 Bool)) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| (Array T@Ref T@Field_20333_1204 Int)) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| (Array T@Ref T@Field_20358_20268 T@Ref)) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| (Array T@Ref T@Field_20358_53 Bool)) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| (Array T@Ref T@Field_20358_1204 Int)) ) ) ))
(declare-fun $allocated () T@Field_43504_53)
(declare-fun next () T@Field_43517_43518)
(declare-fun value () T@Field_46881_1204)
(declare-fun succHeap (T@PolymorphicMapType_43444 T@PolymorphicMapType_43444) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_43444 T@PolymorphicMapType_43444) Bool)
(declare-fun state (T@PolymorphicMapType_43444 T@PolymorphicMapType_43465) Bool)
(declare-fun getNext (T@PolymorphicMapType_43444 T@Ref) T@Ref)
(declare-fun |getNext#triggerStateless| (T@Ref) T@Ref)
(declare-fun |valid#trigger_20308| (T@PolymorphicMapType_43444 T@Field_47230_47231) Bool)
(declare-fun valid (T@Ref) T@Field_47230_47231)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_43465) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_43993)
(declare-fun IsPredicateField_20308_20309 (T@Field_47230_47231) Bool)
(declare-fun p_14 (T@Ref) T@Field_51792_51793)
(declare-fun IsPredicateField_20333_20334 (T@Field_51792_51793) Bool)
(declare-fun q_18 (T@Ref) T@Field_52995_52996)
(declare-fun IsPredicateField_20358_20359 (T@Field_52995_52996) Bool)
(declare-fun |getNext'| (T@PolymorphicMapType_43444 T@Ref) T@Ref)
(declare-fun dummyFunction_20294 (T@Ref) Bool)
(declare-fun |valid#everUsed_20308| (T@Field_47230_47231) Bool)
(declare-fun |p#trigger_20333| (T@PolymorphicMapType_43444 T@Field_51792_51793) Bool)
(declare-fun |p#everUsed_20333| (T@Field_51792_51793) Bool)
(declare-fun |q#trigger_20358| (T@PolymorphicMapType_43444 T@Field_52995_52996) Bool)
(declare-fun |q#everUsed_20358| (T@Field_52995_52996) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_43444 T@PolymorphicMapType_43444 T@PolymorphicMapType_43465) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_20358 (T@Field_52995_52996) T@Field_53282_53287)
(declare-fun HasDirectPerm_20358_20359 (T@PolymorphicMapType_43465 T@Ref T@Field_52995_52996) Bool)
(declare-fun PredicateMaskField_20333 (T@Field_51792_51793) T@Field_51805_51810)
(declare-fun HasDirectPerm_20333_20334 (T@PolymorphicMapType_43465 T@Ref T@Field_51792_51793) Bool)
(declare-fun PredicateMaskField_20308 (T@Field_47230_47231) T@Field_49390_49395)
(declare-fun HasDirectPerm_20308_20309 (T@PolymorphicMapType_43465 T@Ref T@Field_47230_47231) Bool)
(declare-fun IsPredicateField_20267_179295 (T@Field_20267_20309) Bool)
(declare-fun PredicateMaskField_20267 (T@Field_20267_20309) T@Field_20267_49395)
(declare-fun HasDirectPerm_20267_20309 (T@PolymorphicMapType_43465 T@Ref T@Field_20267_20309) Bool)
(declare-fun IsWandField_20358_186987 (T@Field_52995_52996) Bool)
(declare-fun WandMaskField_20358 (T@Field_52995_52996) T@Field_53282_53287)
(declare-fun IsWandField_20333_186630 (T@Field_51792_51793) Bool)
(declare-fun WandMaskField_20333 (T@Field_51792_51793) T@Field_51805_51810)
(declare-fun IsWandField_20308_186273 (T@Field_47230_47231) Bool)
(declare-fun WandMaskField_20308 (T@Field_47230_47231) T@Field_49390_49395)
(declare-fun IsWandField_20267_185916 (T@Field_20267_20309) Bool)
(declare-fun WandMaskField_20267 (T@Field_20267_20309) T@Field_20267_49395)
(declare-fun |valid#sm| (T@Ref) T@Field_49390_49395)
(declare-fun |p#sm| (T@Ref) T@Field_51805_51810)
(declare-fun |q#sm| (T@Ref) T@Field_53282_53287)
(declare-fun dummyHeap () T@PolymorphicMapType_43444)
(declare-fun ZeroMask () T@PolymorphicMapType_43465)
(declare-fun InsidePredicate_43504_43504 (T@Field_20267_20309 T@FrameType T@Field_20267_20309 T@FrameType) Bool)
(declare-fun InsidePredicate_20358_20358 (T@Field_52995_52996 T@FrameType T@Field_52995_52996 T@FrameType) Bool)
(declare-fun InsidePredicate_20333_20333 (T@Field_51792_51793 T@FrameType T@Field_51792_51793 T@FrameType) Bool)
(declare-fun InsidePredicate_20308_20308 (T@Field_47230_47231 T@FrameType T@Field_47230_47231 T@FrameType) Bool)
(declare-fun IsPredicateField_20267_20268 (T@Field_43517_43518) Bool)
(declare-fun IsWandField_20267_20268 (T@Field_43517_43518) Bool)
(declare-fun IsPredicateField_20270_1204 (T@Field_46881_1204) Bool)
(declare-fun IsWandField_20270_1204 (T@Field_46881_1204) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_20333_200662 (T@Field_51805_51810) Bool)
(declare-fun IsWandField_20333_200678 (T@Field_51805_51810) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_20333_53 (T@Field_20333_53) Bool)
(declare-fun IsWandField_20333_53 (T@Field_20333_53) Bool)
(declare-fun IsPredicateField_20333_1204 (T@Field_20333_1204) Bool)
(declare-fun IsWandField_20333_1204 (T@Field_20333_1204) Bool)
(declare-fun IsPredicateField_20333_20268 (T@Field_20333_20268) Bool)
(declare-fun IsWandField_20333_20268 (T@Field_20333_20268) Bool)
(declare-fun IsPredicateField_20358_199831 (T@Field_53282_53287) Bool)
(declare-fun IsWandField_20358_199847 (T@Field_53282_53287) Bool)
(declare-fun IsPredicateField_20358_53 (T@Field_20358_53) Bool)
(declare-fun IsWandField_20358_53 (T@Field_20358_53) Bool)
(declare-fun IsPredicateField_20358_1204 (T@Field_20358_1204) Bool)
(declare-fun IsWandField_20358_1204 (T@Field_20358_1204) Bool)
(declare-fun IsPredicateField_20358_20268 (T@Field_20358_20268) Bool)
(declare-fun IsWandField_20358_20268 (T@Field_20358_20268) Bool)
(declare-fun IsPredicateField_20267_199000 (T@Field_20267_49395) Bool)
(declare-fun IsWandField_20267_199016 (T@Field_20267_49395) Bool)
(declare-fun IsPredicateField_20267_53 (T@Field_43504_53) Bool)
(declare-fun IsWandField_20267_53 (T@Field_43504_53) Bool)
(declare-fun IsPredicateField_20308_198197 (T@Field_49390_49395) Bool)
(declare-fun IsWandField_20308_198213 (T@Field_49390_49395) Bool)
(declare-fun IsPredicateField_20308_53 (T@Field_20308_53) Bool)
(declare-fun IsWandField_20308_53 (T@Field_20308_53) Bool)
(declare-fun IsPredicateField_20308_1204 (T@Field_20308_1204) Bool)
(declare-fun IsWandField_20308_1204 (T@Field_20308_1204) Bool)
(declare-fun IsPredicateField_20308_20268 (T@Field_20308_20268) Bool)
(declare-fun IsWandField_20308_20268 (T@Field_20308_20268) Bool)
(declare-fun HasDirectPerm_20358_179050 (T@PolymorphicMapType_43465 T@Ref T@Field_53282_53287) Bool)
(declare-fun HasDirectPerm_20358_1204 (T@PolymorphicMapType_43465 T@Ref T@Field_20358_1204) Bool)
(declare-fun HasDirectPerm_20358_53 (T@PolymorphicMapType_43465 T@Ref T@Field_20358_53) Bool)
(declare-fun HasDirectPerm_20358_20268 (T@PolymorphicMapType_43465 T@Ref T@Field_20358_20268) Bool)
(declare-fun HasDirectPerm_20333_177952 (T@PolymorphicMapType_43465 T@Ref T@Field_51805_51810) Bool)
(declare-fun HasDirectPerm_20333_1204 (T@PolymorphicMapType_43465 T@Ref T@Field_20333_1204) Bool)
(declare-fun HasDirectPerm_20333_53 (T@PolymorphicMapType_43465 T@Ref T@Field_20333_53) Bool)
(declare-fun HasDirectPerm_20333_20268 (T@PolymorphicMapType_43465 T@Ref T@Field_20333_20268) Bool)
(declare-fun HasDirectPerm_20308_176854 (T@PolymorphicMapType_43465 T@Ref T@Field_49390_49395) Bool)
(declare-fun HasDirectPerm_20308_1204 (T@PolymorphicMapType_43465 T@Ref T@Field_20308_1204) Bool)
(declare-fun HasDirectPerm_20308_53 (T@PolymorphicMapType_43465 T@Ref T@Field_20308_53) Bool)
(declare-fun HasDirectPerm_20308_20268 (T@PolymorphicMapType_43465 T@Ref T@Field_20308_20268) Bool)
(declare-fun HasDirectPerm_20267_175713 (T@PolymorphicMapType_43465 T@Ref T@Field_20267_49395) Bool)
(declare-fun HasDirectPerm_20267_1204 (T@PolymorphicMapType_43465 T@Ref T@Field_46881_1204) Bool)
(declare-fun HasDirectPerm_20267_53 (T@PolymorphicMapType_43465 T@Ref T@Field_43504_53) Bool)
(declare-fun HasDirectPerm_20267_20268 (T@PolymorphicMapType_43465 T@Ref T@Field_43517_43518) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_43465 T@PolymorphicMapType_43465 T@PolymorphicMapType_43465) Bool)
(declare-fun |getNext#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun getPredWandId_20308_20309 (T@Field_47230_47231) Int)
(declare-fun getPredWandId_20333_20334 (T@Field_51792_51793) Int)
(declare-fun getPredWandId_20358_20359 (T@Field_52995_52996) Int)
(declare-fun InsidePredicate_43504_20333 (T@Field_20267_20309 T@FrameType T@Field_51792_51793 T@FrameType) Bool)
(declare-fun InsidePredicate_43504_20358 (T@Field_20267_20309 T@FrameType T@Field_52995_52996 T@FrameType) Bool)
(declare-fun InsidePredicate_43504_20308 (T@Field_20267_20309 T@FrameType T@Field_47230_47231 T@FrameType) Bool)
(declare-fun InsidePredicate_20333_43504 (T@Field_51792_51793 T@FrameType T@Field_20267_20309 T@FrameType) Bool)
(declare-fun InsidePredicate_20333_20358 (T@Field_51792_51793 T@FrameType T@Field_52995_52996 T@FrameType) Bool)
(declare-fun InsidePredicate_20333_20308 (T@Field_51792_51793 T@FrameType T@Field_47230_47231 T@FrameType) Bool)
(declare-fun InsidePredicate_20358_43504 (T@Field_52995_52996 T@FrameType T@Field_20267_20309 T@FrameType) Bool)
(declare-fun InsidePredicate_20358_20333 (T@Field_52995_52996 T@FrameType T@Field_51792_51793 T@FrameType) Bool)
(declare-fun InsidePredicate_20358_20308 (T@Field_52995_52996 T@FrameType T@Field_47230_47231 T@FrameType) Bool)
(declare-fun InsidePredicate_20308_43504 (T@Field_47230_47231 T@FrameType T@Field_20267_20309 T@FrameType) Bool)
(declare-fun InsidePredicate_20308_20333 (T@Field_47230_47231 T@FrameType T@Field_51792_51793 T@FrameType) Bool)
(declare-fun InsidePredicate_20308_20358 (T@Field_47230_47231 T@FrameType T@Field_52995_52996 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_43444) (Heap1 T@PolymorphicMapType_43444) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_43444) (Mask T@PolymorphicMapType_43465) (this T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 0)) (= (getNext Heap this) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap) this next)))
 :qid |stdinbpl.207:15|
 :skolemid |24|
 :pattern ( (state Heap Mask) (getNext Heap this))
 :pattern ( (state Heap Mask) (|getNext#triggerStateless| this) (|valid#trigger_20308| Heap (valid this)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_43444) (Mask@@0 T@PolymorphicMapType_43465) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_43444) (Heap1@@0 T@PolymorphicMapType_43444) (Heap2 T@PolymorphicMapType_43444) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_53282_53287) ) (!  (not (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_52995_52996) ) (!  (not (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20358_53) ) (!  (not (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20358_1204) ) (!  (not (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20358_20268) ) (!  (not (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_51805_51810) ) (!  (not (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_51792_51793) ) (!  (not (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_20333_53) ) (!  (not (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_20333_1204) ) (!  (not (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_20333_20268) ) (!  (not (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_49390_49395) ) (!  (not (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_47230_47231) ) (!  (not (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_20308_53) ) (!  (not (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_20308_1204) ) (!  (not (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_20308_20268) ) (!  (not (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_20267_49395) ) (!  (not (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_20267_20309) ) (!  (not (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_43504_53) ) (!  (not (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_46881_1204) ) (!  (not (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_43517_43518) ) (!  (not (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((this@@0 T@Ref) ) (! (IsPredicateField_20308_20309 (valid this@@0))
 :qid |stdinbpl.314:15|
 :skolemid |28|
 :pattern ( (valid this@@0))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_20333_20334 (p_14 this@@1))
 :qid |stdinbpl.390:15|
 :skolemid |34|
 :pattern ( (p_14 this@@1))
)))
(assert (forall ((this@@2 T@Ref) ) (! (IsPredicateField_20358_20359 (q_18 this@@2))
 :qid |stdinbpl.466:15|
 :skolemid |40|
 :pattern ( (q_18 this@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_43444) (this@@3 T@Ref) ) (! (dummyFunction_20294 (|getNext#triggerStateless| this@@3))
 :qid |stdinbpl.201:15|
 :skolemid |23|
 :pattern ( (|getNext'| Heap@@1 this@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_43444) (this@@4 T@Ref) ) (! (|valid#everUsed_20308| (valid this@@4))
 :qid |stdinbpl.333:15|
 :skolemid |32|
 :pattern ( (|valid#trigger_20308| Heap@@2 (valid this@@4)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_43444) (this@@5 T@Ref) ) (! (|p#everUsed_20333| (p_14 this@@5))
 :qid |stdinbpl.409:15|
 :skolemid |38|
 :pattern ( (|p#trigger_20333| Heap@@3 (p_14 this@@5)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_43444) (this@@6 T@Ref) ) (! (|q#everUsed_20358| (q_18 this@@6))
 :qid |stdinbpl.485:15|
 :skolemid |44|
 :pattern ( (|q#trigger_20358| Heap@@4 (q_18 this@@6)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_43444) (this@@7 T@Ref) ) (!  (and (= (getNext Heap@@5 this@@7) (|getNext'| Heap@@5 this@@7)) (dummyFunction_20294 (|getNext#triggerStateless| this@@7)))
 :qid |stdinbpl.197:15|
 :skolemid |22|
 :pattern ( (getNext Heap@@5 this@@7))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_43444) (ExhaleHeap T@PolymorphicMapType_43444) (Mask@@1 T@PolymorphicMapType_43465) (pm_f_51 T@Field_52995_52996) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_20358_20359 Mask@@1 null pm_f_51) (IsPredicateField_20358_20359 pm_f_51)) (= (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@6) null (PredicateMaskField_20358 pm_f_51)) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap) null (PredicateMaskField_20358 pm_f_51)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap Mask@@1) (IsPredicateField_20358_20359 pm_f_51) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap) null (PredicateMaskField_20358 pm_f_51)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_43444) (ExhaleHeap@@0 T@PolymorphicMapType_43444) (Mask@@2 T@PolymorphicMapType_43465) (pm_f_51@@0 T@Field_51792_51793) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_20333_20334 Mask@@2 null pm_f_51@@0) (IsPredicateField_20333_20334 pm_f_51@@0)) (= (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@7) null (PredicateMaskField_20333 pm_f_51@@0)) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@0) null (PredicateMaskField_20333 pm_f_51@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@0 Mask@@2) (IsPredicateField_20333_20334 pm_f_51@@0) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@0) null (PredicateMaskField_20333 pm_f_51@@0)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_43444) (ExhaleHeap@@1 T@PolymorphicMapType_43444) (Mask@@3 T@PolymorphicMapType_43465) (pm_f_51@@1 T@Field_47230_47231) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_20308_20309 Mask@@3 null pm_f_51@@1) (IsPredicateField_20308_20309 pm_f_51@@1)) (= (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@8) null (PredicateMaskField_20308 pm_f_51@@1)) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@1) null (PredicateMaskField_20308 pm_f_51@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@1 Mask@@3) (IsPredicateField_20308_20309 pm_f_51@@1) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@1) null (PredicateMaskField_20308 pm_f_51@@1)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_43444) (ExhaleHeap@@2 T@PolymorphicMapType_43444) (Mask@@4 T@PolymorphicMapType_43465) (pm_f_51@@2 T@Field_20267_20309) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_20267_20309 Mask@@4 null pm_f_51@@2) (IsPredicateField_20267_179295 pm_f_51@@2)) (= (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@9) null (PredicateMaskField_20267 pm_f_51@@2)) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@2) null (PredicateMaskField_20267 pm_f_51@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@2 Mask@@4) (IsPredicateField_20267_179295 pm_f_51@@2) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@2) null (PredicateMaskField_20267 pm_f_51@@2)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_43444) (ExhaleHeap@@3 T@PolymorphicMapType_43444) (Mask@@5 T@PolymorphicMapType_43465) (pm_f_51@@3 T@Field_52995_52996) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_20358_20359 Mask@@5 null pm_f_51@@3) (IsWandField_20358_186987 pm_f_51@@3)) (= (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@10) null (WandMaskField_20358 pm_f_51@@3)) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@3) null (WandMaskField_20358 pm_f_51@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@5) (IsWandField_20358_186987 pm_f_51@@3) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@3) null (WandMaskField_20358 pm_f_51@@3)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_43444) (ExhaleHeap@@4 T@PolymorphicMapType_43444) (Mask@@6 T@PolymorphicMapType_43465) (pm_f_51@@4 T@Field_51792_51793) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_20333_20334 Mask@@6 null pm_f_51@@4) (IsWandField_20333_186630 pm_f_51@@4)) (= (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@11) null (WandMaskField_20333 pm_f_51@@4)) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@4) null (WandMaskField_20333 pm_f_51@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@6) (IsWandField_20333_186630 pm_f_51@@4) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@4) null (WandMaskField_20333 pm_f_51@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_43444) (ExhaleHeap@@5 T@PolymorphicMapType_43444) (Mask@@7 T@PolymorphicMapType_43465) (pm_f_51@@5 T@Field_47230_47231) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_20308_20309 Mask@@7 null pm_f_51@@5) (IsWandField_20308_186273 pm_f_51@@5)) (= (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@12) null (WandMaskField_20308 pm_f_51@@5)) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@5) null (WandMaskField_20308 pm_f_51@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@7) (IsWandField_20308_186273 pm_f_51@@5) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@5) null (WandMaskField_20308 pm_f_51@@5)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_43444) (ExhaleHeap@@6 T@PolymorphicMapType_43444) (Mask@@8 T@PolymorphicMapType_43465) (pm_f_51@@6 T@Field_20267_20309) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_20267_20309 Mask@@8 null pm_f_51@@6) (IsWandField_20267_185916 pm_f_51@@6)) (= (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@13) null (WandMaskField_20267 pm_f_51@@6)) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@6) null (WandMaskField_20267 pm_f_51@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@8) (IsWandField_20267_185916 pm_f_51@@6) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@6) null (WandMaskField_20267 pm_f_51@@6)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_43444) (ExhaleHeap@@7 T@PolymorphicMapType_43444) (Mask@@9 T@PolymorphicMapType_43465) (pm_f_51@@7 T@Field_52995_52996) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@9) (=> (and (HasDirectPerm_20358_20359 Mask@@9 null pm_f_51@@7) (IsPredicateField_20358_20359 pm_f_51@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51 T@Ref) (f_201 T@Field_43517_43518) ) (!  (=> (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51 f_201) (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@14) o2_51 f_201) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51 f_201)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51 f_201))
)) (forall ((o2_51@@0 T@Ref) (f_201@@0 T@Field_46881_1204) ) (!  (=> (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@0 f_201@@0) (= (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@14) o2_51@@0 f_201@@0) (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@0 f_201@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@0 f_201@@0))
))) (forall ((o2_51@@1 T@Ref) (f_201@@1 T@Field_43504_53) ) (!  (=> (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@1 f_201@@1) (= (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@14) o2_51@@1 f_201@@1) (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@1 f_201@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@1 f_201@@1))
))) (forall ((o2_51@@2 T@Ref) (f_201@@2 T@Field_20267_20309) ) (!  (=> (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@2 f_201@@2) (= (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@14) o2_51@@2 f_201@@2) (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@2 f_201@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@2 f_201@@2))
))) (forall ((o2_51@@3 T@Ref) (f_201@@3 T@Field_20267_49395) ) (!  (=> (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@3 f_201@@3) (= (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@14) o2_51@@3 f_201@@3) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@3 f_201@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@3 f_201@@3))
))) (forall ((o2_51@@4 T@Ref) (f_201@@4 T@Field_20308_20268) ) (!  (=> (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@4 f_201@@4) (= (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@14) o2_51@@4 f_201@@4) (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@4 f_201@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@4 f_201@@4))
))) (forall ((o2_51@@5 T@Ref) (f_201@@5 T@Field_20308_1204) ) (!  (=> (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@5 f_201@@5) (= (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@14) o2_51@@5 f_201@@5) (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@5 f_201@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@5 f_201@@5))
))) (forall ((o2_51@@6 T@Ref) (f_201@@6 T@Field_20308_53) ) (!  (=> (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@6 f_201@@6) (= (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@14) o2_51@@6 f_201@@6) (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@6 f_201@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@6 f_201@@6))
))) (forall ((o2_51@@7 T@Ref) (f_201@@7 T@Field_47230_47231) ) (!  (=> (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@7 f_201@@7) (= (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@14) o2_51@@7 f_201@@7) (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@7 f_201@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@7 f_201@@7))
))) (forall ((o2_51@@8 T@Ref) (f_201@@8 T@Field_49390_49395) ) (!  (=> (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@8 f_201@@8) (= (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@14) o2_51@@8 f_201@@8) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@8 f_201@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@8 f_201@@8))
))) (forall ((o2_51@@9 T@Ref) (f_201@@9 T@Field_20333_20268) ) (!  (=> (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@9 f_201@@9) (= (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@14) o2_51@@9 f_201@@9) (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@9 f_201@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@9 f_201@@9))
))) (forall ((o2_51@@10 T@Ref) (f_201@@10 T@Field_20333_1204) ) (!  (=> (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@10 f_201@@10) (= (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@14) o2_51@@10 f_201@@10) (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@10 f_201@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@10 f_201@@10))
))) (forall ((o2_51@@11 T@Ref) (f_201@@11 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@11 f_201@@11) (= (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@14) o2_51@@11 f_201@@11) (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@11 f_201@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@11 f_201@@11))
))) (forall ((o2_51@@12 T@Ref) (f_201@@12 T@Field_51792_51793) ) (!  (=> (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@12 f_201@@12) (= (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@14) o2_51@@12 f_201@@12) (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@12 f_201@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@12 f_201@@12))
))) (forall ((o2_51@@13 T@Ref) (f_201@@13 T@Field_51805_51810) ) (!  (=> (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@13 f_201@@13) (= (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@14) o2_51@@13 f_201@@13) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@13 f_201@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@13 f_201@@13))
))) (forall ((o2_51@@14 T@Ref) (f_201@@14 T@Field_20358_20268) ) (!  (=> (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@14 f_201@@14) (= (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@14) o2_51@@14 f_201@@14) (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@14 f_201@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@14 f_201@@14))
))) (forall ((o2_51@@15 T@Ref) (f_201@@15 T@Field_20358_1204) ) (!  (=> (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@15 f_201@@15) (= (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@14) o2_51@@15 f_201@@15) (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@15 f_201@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@15 f_201@@15))
))) (forall ((o2_51@@16 T@Ref) (f_201@@16 T@Field_20358_53) ) (!  (=> (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@16 f_201@@16) (= (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@14) o2_51@@16 f_201@@16) (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@16 f_201@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@16 f_201@@16))
))) (forall ((o2_51@@17 T@Ref) (f_201@@17 T@Field_52995_52996) ) (!  (=> (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@17 f_201@@17) (= (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@14) o2_51@@17 f_201@@17) (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@17 f_201@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@17 f_201@@17))
))) (forall ((o2_51@@18 T@Ref) (f_201@@18 T@Field_53282_53287) ) (!  (=> (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) null (PredicateMaskField_20358 pm_f_51@@7))) o2_51@@18 f_201@@18) (= (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@14) o2_51@@18 f_201@@18) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@18 f_201@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@7) o2_51@@18 f_201@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@9) (IsPredicateField_20358_20359 pm_f_51@@7))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_43444) (ExhaleHeap@@8 T@PolymorphicMapType_43444) (Mask@@10 T@PolymorphicMapType_43465) (pm_f_51@@8 T@Field_51792_51793) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@10) (=> (and (HasDirectPerm_20333_20334 Mask@@10 null pm_f_51@@8) (IsPredicateField_20333_20334 pm_f_51@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@19 T@Ref) (f_201@@19 T@Field_43517_43518) ) (!  (=> (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@19 f_201@@19) (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@15) o2_51@@19 f_201@@19) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@19 f_201@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@19 f_201@@19))
)) (forall ((o2_51@@20 T@Ref) (f_201@@20 T@Field_46881_1204) ) (!  (=> (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@20 f_201@@20) (= (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@15) o2_51@@20 f_201@@20) (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@20 f_201@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@20 f_201@@20))
))) (forall ((o2_51@@21 T@Ref) (f_201@@21 T@Field_43504_53) ) (!  (=> (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@21 f_201@@21) (= (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@15) o2_51@@21 f_201@@21) (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@21 f_201@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@21 f_201@@21))
))) (forall ((o2_51@@22 T@Ref) (f_201@@22 T@Field_20267_20309) ) (!  (=> (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@22 f_201@@22) (= (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@15) o2_51@@22 f_201@@22) (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@22 f_201@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@22 f_201@@22))
))) (forall ((o2_51@@23 T@Ref) (f_201@@23 T@Field_20267_49395) ) (!  (=> (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@23 f_201@@23) (= (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@15) o2_51@@23 f_201@@23) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@23 f_201@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@23 f_201@@23))
))) (forall ((o2_51@@24 T@Ref) (f_201@@24 T@Field_20308_20268) ) (!  (=> (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@24 f_201@@24) (= (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@15) o2_51@@24 f_201@@24) (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@24 f_201@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@24 f_201@@24))
))) (forall ((o2_51@@25 T@Ref) (f_201@@25 T@Field_20308_1204) ) (!  (=> (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@25 f_201@@25) (= (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@15) o2_51@@25 f_201@@25) (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@25 f_201@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@25 f_201@@25))
))) (forall ((o2_51@@26 T@Ref) (f_201@@26 T@Field_20308_53) ) (!  (=> (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@26 f_201@@26) (= (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@15) o2_51@@26 f_201@@26) (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@26 f_201@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@26 f_201@@26))
))) (forall ((o2_51@@27 T@Ref) (f_201@@27 T@Field_47230_47231) ) (!  (=> (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@27 f_201@@27) (= (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@15) o2_51@@27 f_201@@27) (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@27 f_201@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@27 f_201@@27))
))) (forall ((o2_51@@28 T@Ref) (f_201@@28 T@Field_49390_49395) ) (!  (=> (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@28 f_201@@28) (= (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@15) o2_51@@28 f_201@@28) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@28 f_201@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@28 f_201@@28))
))) (forall ((o2_51@@29 T@Ref) (f_201@@29 T@Field_20333_20268) ) (!  (=> (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@29 f_201@@29) (= (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@15) o2_51@@29 f_201@@29) (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@29 f_201@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@29 f_201@@29))
))) (forall ((o2_51@@30 T@Ref) (f_201@@30 T@Field_20333_1204) ) (!  (=> (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@30 f_201@@30) (= (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@15) o2_51@@30 f_201@@30) (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@30 f_201@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@30 f_201@@30))
))) (forall ((o2_51@@31 T@Ref) (f_201@@31 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@31 f_201@@31) (= (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@15) o2_51@@31 f_201@@31) (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@31 f_201@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@31 f_201@@31))
))) (forall ((o2_51@@32 T@Ref) (f_201@@32 T@Field_51792_51793) ) (!  (=> (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@32 f_201@@32) (= (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@15) o2_51@@32 f_201@@32) (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@32 f_201@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@32 f_201@@32))
))) (forall ((o2_51@@33 T@Ref) (f_201@@33 T@Field_51805_51810) ) (!  (=> (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@33 f_201@@33) (= (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) o2_51@@33 f_201@@33) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@33 f_201@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@33 f_201@@33))
))) (forall ((o2_51@@34 T@Ref) (f_201@@34 T@Field_20358_20268) ) (!  (=> (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@34 f_201@@34) (= (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@15) o2_51@@34 f_201@@34) (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@34 f_201@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@34 f_201@@34))
))) (forall ((o2_51@@35 T@Ref) (f_201@@35 T@Field_20358_1204) ) (!  (=> (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@35 f_201@@35) (= (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@15) o2_51@@35 f_201@@35) (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@35 f_201@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@35 f_201@@35))
))) (forall ((o2_51@@36 T@Ref) (f_201@@36 T@Field_20358_53) ) (!  (=> (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@36 f_201@@36) (= (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@15) o2_51@@36 f_201@@36) (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@36 f_201@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@36 f_201@@36))
))) (forall ((o2_51@@37 T@Ref) (f_201@@37 T@Field_52995_52996) ) (!  (=> (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@37 f_201@@37) (= (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@15) o2_51@@37 f_201@@37) (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@37 f_201@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@37 f_201@@37))
))) (forall ((o2_51@@38 T@Ref) (f_201@@38 T@Field_53282_53287) ) (!  (=> (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@15) null (PredicateMaskField_20333 pm_f_51@@8))) o2_51@@38 f_201@@38) (= (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@15) o2_51@@38 f_201@@38) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@38 f_201@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@8) o2_51@@38 f_201@@38))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@10) (IsPredicateField_20333_20334 pm_f_51@@8))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_43444) (ExhaleHeap@@9 T@PolymorphicMapType_43444) (Mask@@11 T@PolymorphicMapType_43465) (pm_f_51@@9 T@Field_47230_47231) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@11) (=> (and (HasDirectPerm_20308_20309 Mask@@11 null pm_f_51@@9) (IsPredicateField_20308_20309 pm_f_51@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@39 T@Ref) (f_201@@39 T@Field_43517_43518) ) (!  (=> (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@39 f_201@@39) (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@16) o2_51@@39 f_201@@39) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@39 f_201@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@39 f_201@@39))
)) (forall ((o2_51@@40 T@Ref) (f_201@@40 T@Field_46881_1204) ) (!  (=> (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@40 f_201@@40) (= (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@16) o2_51@@40 f_201@@40) (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@40 f_201@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@40 f_201@@40))
))) (forall ((o2_51@@41 T@Ref) (f_201@@41 T@Field_43504_53) ) (!  (=> (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@41 f_201@@41) (= (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@16) o2_51@@41 f_201@@41) (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@41 f_201@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@41 f_201@@41))
))) (forall ((o2_51@@42 T@Ref) (f_201@@42 T@Field_20267_20309) ) (!  (=> (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@42 f_201@@42) (= (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@16) o2_51@@42 f_201@@42) (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@42 f_201@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@42 f_201@@42))
))) (forall ((o2_51@@43 T@Ref) (f_201@@43 T@Field_20267_49395) ) (!  (=> (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@43 f_201@@43) (= (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@16) o2_51@@43 f_201@@43) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@43 f_201@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@43 f_201@@43))
))) (forall ((o2_51@@44 T@Ref) (f_201@@44 T@Field_20308_20268) ) (!  (=> (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@44 f_201@@44) (= (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@16) o2_51@@44 f_201@@44) (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@44 f_201@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@44 f_201@@44))
))) (forall ((o2_51@@45 T@Ref) (f_201@@45 T@Field_20308_1204) ) (!  (=> (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@45 f_201@@45) (= (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@16) o2_51@@45 f_201@@45) (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@45 f_201@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@45 f_201@@45))
))) (forall ((o2_51@@46 T@Ref) (f_201@@46 T@Field_20308_53) ) (!  (=> (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@46 f_201@@46) (= (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@16) o2_51@@46 f_201@@46) (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@46 f_201@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@46 f_201@@46))
))) (forall ((o2_51@@47 T@Ref) (f_201@@47 T@Field_47230_47231) ) (!  (=> (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@47 f_201@@47) (= (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@16) o2_51@@47 f_201@@47) (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@47 f_201@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@47 f_201@@47))
))) (forall ((o2_51@@48 T@Ref) (f_201@@48 T@Field_49390_49395) ) (!  (=> (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@48 f_201@@48) (= (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) o2_51@@48 f_201@@48) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@48 f_201@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@48 f_201@@48))
))) (forall ((o2_51@@49 T@Ref) (f_201@@49 T@Field_20333_20268) ) (!  (=> (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@49 f_201@@49) (= (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@16) o2_51@@49 f_201@@49) (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@49 f_201@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@49 f_201@@49))
))) (forall ((o2_51@@50 T@Ref) (f_201@@50 T@Field_20333_1204) ) (!  (=> (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@50 f_201@@50) (= (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@16) o2_51@@50 f_201@@50) (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@50 f_201@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@50 f_201@@50))
))) (forall ((o2_51@@51 T@Ref) (f_201@@51 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@51 f_201@@51) (= (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@16) o2_51@@51 f_201@@51) (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@51 f_201@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@51 f_201@@51))
))) (forall ((o2_51@@52 T@Ref) (f_201@@52 T@Field_51792_51793) ) (!  (=> (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@52 f_201@@52) (= (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@16) o2_51@@52 f_201@@52) (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@52 f_201@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@52 f_201@@52))
))) (forall ((o2_51@@53 T@Ref) (f_201@@53 T@Field_51805_51810) ) (!  (=> (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@53 f_201@@53) (= (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@16) o2_51@@53 f_201@@53) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@53 f_201@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@53 f_201@@53))
))) (forall ((o2_51@@54 T@Ref) (f_201@@54 T@Field_20358_20268) ) (!  (=> (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@54 f_201@@54) (= (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@16) o2_51@@54 f_201@@54) (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@54 f_201@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@54 f_201@@54))
))) (forall ((o2_51@@55 T@Ref) (f_201@@55 T@Field_20358_1204) ) (!  (=> (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@55 f_201@@55) (= (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@16) o2_51@@55 f_201@@55) (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@55 f_201@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@55 f_201@@55))
))) (forall ((o2_51@@56 T@Ref) (f_201@@56 T@Field_20358_53) ) (!  (=> (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@56 f_201@@56) (= (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@16) o2_51@@56 f_201@@56) (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@56 f_201@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@56 f_201@@56))
))) (forall ((o2_51@@57 T@Ref) (f_201@@57 T@Field_52995_52996) ) (!  (=> (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@57 f_201@@57) (= (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@16) o2_51@@57 f_201@@57) (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@57 f_201@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@57 f_201@@57))
))) (forall ((o2_51@@58 T@Ref) (f_201@@58 T@Field_53282_53287) ) (!  (=> (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@16) null (PredicateMaskField_20308 pm_f_51@@9))) o2_51@@58 f_201@@58) (= (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@16) o2_51@@58 f_201@@58) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@58 f_201@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@9) o2_51@@58 f_201@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@11) (IsPredicateField_20308_20309 pm_f_51@@9))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_43444) (ExhaleHeap@@10 T@PolymorphicMapType_43444) (Mask@@12 T@PolymorphicMapType_43465) (pm_f_51@@10 T@Field_20267_20309) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@12) (=> (and (HasDirectPerm_20267_20309 Mask@@12 null pm_f_51@@10) (IsPredicateField_20267_179295 pm_f_51@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@59 T@Ref) (f_201@@59 T@Field_43517_43518) ) (!  (=> (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@59 f_201@@59) (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@17) o2_51@@59 f_201@@59) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@59 f_201@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@59 f_201@@59))
)) (forall ((o2_51@@60 T@Ref) (f_201@@60 T@Field_46881_1204) ) (!  (=> (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@60 f_201@@60) (= (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@17) o2_51@@60 f_201@@60) (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@60 f_201@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@60 f_201@@60))
))) (forall ((o2_51@@61 T@Ref) (f_201@@61 T@Field_43504_53) ) (!  (=> (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@61 f_201@@61) (= (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@17) o2_51@@61 f_201@@61) (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@61 f_201@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@61 f_201@@61))
))) (forall ((o2_51@@62 T@Ref) (f_201@@62 T@Field_20267_20309) ) (!  (=> (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@62 f_201@@62) (= (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@17) o2_51@@62 f_201@@62) (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@62 f_201@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@62 f_201@@62))
))) (forall ((o2_51@@63 T@Ref) (f_201@@63 T@Field_20267_49395) ) (!  (=> (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@63 f_201@@63) (= (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) o2_51@@63 f_201@@63) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@63 f_201@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@63 f_201@@63))
))) (forall ((o2_51@@64 T@Ref) (f_201@@64 T@Field_20308_20268) ) (!  (=> (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@64 f_201@@64) (= (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@17) o2_51@@64 f_201@@64) (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@64 f_201@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@64 f_201@@64))
))) (forall ((o2_51@@65 T@Ref) (f_201@@65 T@Field_20308_1204) ) (!  (=> (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@65 f_201@@65) (= (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@17) o2_51@@65 f_201@@65) (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@65 f_201@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@65 f_201@@65))
))) (forall ((o2_51@@66 T@Ref) (f_201@@66 T@Field_20308_53) ) (!  (=> (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@66 f_201@@66) (= (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@17) o2_51@@66 f_201@@66) (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@66 f_201@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@66 f_201@@66))
))) (forall ((o2_51@@67 T@Ref) (f_201@@67 T@Field_47230_47231) ) (!  (=> (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@67 f_201@@67) (= (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@17) o2_51@@67 f_201@@67) (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@67 f_201@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@67 f_201@@67))
))) (forall ((o2_51@@68 T@Ref) (f_201@@68 T@Field_49390_49395) ) (!  (=> (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@68 f_201@@68) (= (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@17) o2_51@@68 f_201@@68) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@68 f_201@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@68 f_201@@68))
))) (forall ((o2_51@@69 T@Ref) (f_201@@69 T@Field_20333_20268) ) (!  (=> (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@69 f_201@@69) (= (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@17) o2_51@@69 f_201@@69) (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@69 f_201@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@69 f_201@@69))
))) (forall ((o2_51@@70 T@Ref) (f_201@@70 T@Field_20333_1204) ) (!  (=> (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@70 f_201@@70) (= (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@17) o2_51@@70 f_201@@70) (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@70 f_201@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@70 f_201@@70))
))) (forall ((o2_51@@71 T@Ref) (f_201@@71 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@71 f_201@@71) (= (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@17) o2_51@@71 f_201@@71) (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@71 f_201@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@71 f_201@@71))
))) (forall ((o2_51@@72 T@Ref) (f_201@@72 T@Field_51792_51793) ) (!  (=> (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@72 f_201@@72) (= (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@17) o2_51@@72 f_201@@72) (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@72 f_201@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@72 f_201@@72))
))) (forall ((o2_51@@73 T@Ref) (f_201@@73 T@Field_51805_51810) ) (!  (=> (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@73 f_201@@73) (= (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@17) o2_51@@73 f_201@@73) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@73 f_201@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@73 f_201@@73))
))) (forall ((o2_51@@74 T@Ref) (f_201@@74 T@Field_20358_20268) ) (!  (=> (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@74 f_201@@74) (= (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@17) o2_51@@74 f_201@@74) (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@74 f_201@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@74 f_201@@74))
))) (forall ((o2_51@@75 T@Ref) (f_201@@75 T@Field_20358_1204) ) (!  (=> (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@75 f_201@@75) (= (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@17) o2_51@@75 f_201@@75) (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@75 f_201@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@75 f_201@@75))
))) (forall ((o2_51@@76 T@Ref) (f_201@@76 T@Field_20358_53) ) (!  (=> (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@76 f_201@@76) (= (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@17) o2_51@@76 f_201@@76) (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@76 f_201@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@76 f_201@@76))
))) (forall ((o2_51@@77 T@Ref) (f_201@@77 T@Field_52995_52996) ) (!  (=> (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@77 f_201@@77) (= (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@17) o2_51@@77 f_201@@77) (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@77 f_201@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@77 f_201@@77))
))) (forall ((o2_51@@78 T@Ref) (f_201@@78 T@Field_53282_53287) ) (!  (=> (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@17) null (PredicateMaskField_20267 pm_f_51@@10))) o2_51@@78 f_201@@78) (= (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@17) o2_51@@78 f_201@@78) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@78 f_201@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@10) o2_51@@78 f_201@@78))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@12) (IsPredicateField_20267_179295 pm_f_51@@10))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_43444) (ExhaleHeap@@11 T@PolymorphicMapType_43444) (Mask@@13 T@PolymorphicMapType_43465) (pm_f_51@@11 T@Field_52995_52996) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@13) (=> (and (HasDirectPerm_20358_20359 Mask@@13 null pm_f_51@@11) (IsWandField_20358_186987 pm_f_51@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@79 T@Ref) (f_201@@79 T@Field_43517_43518) ) (!  (=> (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@79 f_201@@79) (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@18) o2_51@@79 f_201@@79) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@79 f_201@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@79 f_201@@79))
)) (forall ((o2_51@@80 T@Ref) (f_201@@80 T@Field_46881_1204) ) (!  (=> (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@80 f_201@@80) (= (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@18) o2_51@@80 f_201@@80) (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@80 f_201@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@80 f_201@@80))
))) (forall ((o2_51@@81 T@Ref) (f_201@@81 T@Field_43504_53) ) (!  (=> (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@81 f_201@@81) (= (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@18) o2_51@@81 f_201@@81) (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@81 f_201@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@81 f_201@@81))
))) (forall ((o2_51@@82 T@Ref) (f_201@@82 T@Field_20267_20309) ) (!  (=> (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@82 f_201@@82) (= (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@18) o2_51@@82 f_201@@82) (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@82 f_201@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@82 f_201@@82))
))) (forall ((o2_51@@83 T@Ref) (f_201@@83 T@Field_20267_49395) ) (!  (=> (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@83 f_201@@83) (= (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@18) o2_51@@83 f_201@@83) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@83 f_201@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@83 f_201@@83))
))) (forall ((o2_51@@84 T@Ref) (f_201@@84 T@Field_20308_20268) ) (!  (=> (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@84 f_201@@84) (= (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@18) o2_51@@84 f_201@@84) (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@84 f_201@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@84 f_201@@84))
))) (forall ((o2_51@@85 T@Ref) (f_201@@85 T@Field_20308_1204) ) (!  (=> (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@85 f_201@@85) (= (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@18) o2_51@@85 f_201@@85) (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@85 f_201@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@85 f_201@@85))
))) (forall ((o2_51@@86 T@Ref) (f_201@@86 T@Field_20308_53) ) (!  (=> (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@86 f_201@@86) (= (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@18) o2_51@@86 f_201@@86) (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@86 f_201@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@86 f_201@@86))
))) (forall ((o2_51@@87 T@Ref) (f_201@@87 T@Field_47230_47231) ) (!  (=> (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@87 f_201@@87) (= (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@18) o2_51@@87 f_201@@87) (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@87 f_201@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@87 f_201@@87))
))) (forall ((o2_51@@88 T@Ref) (f_201@@88 T@Field_49390_49395) ) (!  (=> (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@88 f_201@@88) (= (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@18) o2_51@@88 f_201@@88) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@88 f_201@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@88 f_201@@88))
))) (forall ((o2_51@@89 T@Ref) (f_201@@89 T@Field_20333_20268) ) (!  (=> (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@89 f_201@@89) (= (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@18) o2_51@@89 f_201@@89) (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@89 f_201@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@89 f_201@@89))
))) (forall ((o2_51@@90 T@Ref) (f_201@@90 T@Field_20333_1204) ) (!  (=> (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@90 f_201@@90) (= (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@18) o2_51@@90 f_201@@90) (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@90 f_201@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@90 f_201@@90))
))) (forall ((o2_51@@91 T@Ref) (f_201@@91 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@91 f_201@@91) (= (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@18) o2_51@@91 f_201@@91) (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@91 f_201@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@91 f_201@@91))
))) (forall ((o2_51@@92 T@Ref) (f_201@@92 T@Field_51792_51793) ) (!  (=> (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@92 f_201@@92) (= (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@18) o2_51@@92 f_201@@92) (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@92 f_201@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@92 f_201@@92))
))) (forall ((o2_51@@93 T@Ref) (f_201@@93 T@Field_51805_51810) ) (!  (=> (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@93 f_201@@93) (= (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@18) o2_51@@93 f_201@@93) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@93 f_201@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@93 f_201@@93))
))) (forall ((o2_51@@94 T@Ref) (f_201@@94 T@Field_20358_20268) ) (!  (=> (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@94 f_201@@94) (= (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@18) o2_51@@94 f_201@@94) (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@94 f_201@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@94 f_201@@94))
))) (forall ((o2_51@@95 T@Ref) (f_201@@95 T@Field_20358_1204) ) (!  (=> (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@95 f_201@@95) (= (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@18) o2_51@@95 f_201@@95) (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@95 f_201@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@95 f_201@@95))
))) (forall ((o2_51@@96 T@Ref) (f_201@@96 T@Field_20358_53) ) (!  (=> (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@96 f_201@@96) (= (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@18) o2_51@@96 f_201@@96) (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@96 f_201@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@96 f_201@@96))
))) (forall ((o2_51@@97 T@Ref) (f_201@@97 T@Field_52995_52996) ) (!  (=> (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@97 f_201@@97) (= (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@18) o2_51@@97 f_201@@97) (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@97 f_201@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@97 f_201@@97))
))) (forall ((o2_51@@98 T@Ref) (f_201@@98 T@Field_53282_53287) ) (!  (=> (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) null (WandMaskField_20358 pm_f_51@@11))) o2_51@@98 f_201@@98) (= (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@18) o2_51@@98 f_201@@98) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@98 f_201@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@11) o2_51@@98 f_201@@98))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@13) (IsWandField_20358_186987 pm_f_51@@11))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_43444) (ExhaleHeap@@12 T@PolymorphicMapType_43444) (Mask@@14 T@PolymorphicMapType_43465) (pm_f_51@@12 T@Field_51792_51793) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@14) (=> (and (HasDirectPerm_20333_20334 Mask@@14 null pm_f_51@@12) (IsWandField_20333_186630 pm_f_51@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@99 T@Ref) (f_201@@99 T@Field_43517_43518) ) (!  (=> (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@99 f_201@@99) (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@19) o2_51@@99 f_201@@99) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@99 f_201@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@99 f_201@@99))
)) (forall ((o2_51@@100 T@Ref) (f_201@@100 T@Field_46881_1204) ) (!  (=> (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@100 f_201@@100) (= (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@19) o2_51@@100 f_201@@100) (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@100 f_201@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@100 f_201@@100))
))) (forall ((o2_51@@101 T@Ref) (f_201@@101 T@Field_43504_53) ) (!  (=> (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@101 f_201@@101) (= (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@19) o2_51@@101 f_201@@101) (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@101 f_201@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@101 f_201@@101))
))) (forall ((o2_51@@102 T@Ref) (f_201@@102 T@Field_20267_20309) ) (!  (=> (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@102 f_201@@102) (= (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@19) o2_51@@102 f_201@@102) (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@102 f_201@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@102 f_201@@102))
))) (forall ((o2_51@@103 T@Ref) (f_201@@103 T@Field_20267_49395) ) (!  (=> (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@103 f_201@@103) (= (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@19) o2_51@@103 f_201@@103) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@103 f_201@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@103 f_201@@103))
))) (forall ((o2_51@@104 T@Ref) (f_201@@104 T@Field_20308_20268) ) (!  (=> (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@104 f_201@@104) (= (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@19) o2_51@@104 f_201@@104) (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@104 f_201@@104)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@104 f_201@@104))
))) (forall ((o2_51@@105 T@Ref) (f_201@@105 T@Field_20308_1204) ) (!  (=> (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@105 f_201@@105) (= (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@19) o2_51@@105 f_201@@105) (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@105 f_201@@105)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@105 f_201@@105))
))) (forall ((o2_51@@106 T@Ref) (f_201@@106 T@Field_20308_53) ) (!  (=> (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@106 f_201@@106) (= (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@19) o2_51@@106 f_201@@106) (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@106 f_201@@106)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@106 f_201@@106))
))) (forall ((o2_51@@107 T@Ref) (f_201@@107 T@Field_47230_47231) ) (!  (=> (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@107 f_201@@107) (= (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@19) o2_51@@107 f_201@@107) (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@107 f_201@@107)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@107 f_201@@107))
))) (forall ((o2_51@@108 T@Ref) (f_201@@108 T@Field_49390_49395) ) (!  (=> (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@108 f_201@@108) (= (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@19) o2_51@@108 f_201@@108) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@108 f_201@@108)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@108 f_201@@108))
))) (forall ((o2_51@@109 T@Ref) (f_201@@109 T@Field_20333_20268) ) (!  (=> (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@109 f_201@@109) (= (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@19) o2_51@@109 f_201@@109) (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@109 f_201@@109)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@109 f_201@@109))
))) (forall ((o2_51@@110 T@Ref) (f_201@@110 T@Field_20333_1204) ) (!  (=> (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@110 f_201@@110) (= (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@19) o2_51@@110 f_201@@110) (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@110 f_201@@110)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@110 f_201@@110))
))) (forall ((o2_51@@111 T@Ref) (f_201@@111 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@111 f_201@@111) (= (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@19) o2_51@@111 f_201@@111) (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@111 f_201@@111)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@111 f_201@@111))
))) (forall ((o2_51@@112 T@Ref) (f_201@@112 T@Field_51792_51793) ) (!  (=> (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@112 f_201@@112) (= (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@19) o2_51@@112 f_201@@112) (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@112 f_201@@112)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@112 f_201@@112))
))) (forall ((o2_51@@113 T@Ref) (f_201@@113 T@Field_51805_51810) ) (!  (=> (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@113 f_201@@113) (= (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) o2_51@@113 f_201@@113) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@113 f_201@@113)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@113 f_201@@113))
))) (forall ((o2_51@@114 T@Ref) (f_201@@114 T@Field_20358_20268) ) (!  (=> (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@114 f_201@@114) (= (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@19) o2_51@@114 f_201@@114) (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@114 f_201@@114)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@114 f_201@@114))
))) (forall ((o2_51@@115 T@Ref) (f_201@@115 T@Field_20358_1204) ) (!  (=> (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@115 f_201@@115) (= (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@19) o2_51@@115 f_201@@115) (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@115 f_201@@115)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@115 f_201@@115))
))) (forall ((o2_51@@116 T@Ref) (f_201@@116 T@Field_20358_53) ) (!  (=> (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@116 f_201@@116) (= (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@19) o2_51@@116 f_201@@116) (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@116 f_201@@116)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@116 f_201@@116))
))) (forall ((o2_51@@117 T@Ref) (f_201@@117 T@Field_52995_52996) ) (!  (=> (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@117 f_201@@117) (= (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@19) o2_51@@117 f_201@@117) (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@117 f_201@@117)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@117 f_201@@117))
))) (forall ((o2_51@@118 T@Ref) (f_201@@118 T@Field_53282_53287) ) (!  (=> (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@19) null (WandMaskField_20333 pm_f_51@@12))) o2_51@@118 f_201@@118) (= (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@19) o2_51@@118 f_201@@118) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@118 f_201@@118)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@12) o2_51@@118 f_201@@118))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@14) (IsWandField_20333_186630 pm_f_51@@12))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_43444) (ExhaleHeap@@13 T@PolymorphicMapType_43444) (Mask@@15 T@PolymorphicMapType_43465) (pm_f_51@@13 T@Field_47230_47231) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@15) (=> (and (HasDirectPerm_20308_20309 Mask@@15 null pm_f_51@@13) (IsWandField_20308_186273 pm_f_51@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@119 T@Ref) (f_201@@119 T@Field_43517_43518) ) (!  (=> (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@119 f_201@@119) (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@20) o2_51@@119 f_201@@119) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@119 f_201@@119)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@119 f_201@@119))
)) (forall ((o2_51@@120 T@Ref) (f_201@@120 T@Field_46881_1204) ) (!  (=> (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@120 f_201@@120) (= (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@20) o2_51@@120 f_201@@120) (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@120 f_201@@120)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@120 f_201@@120))
))) (forall ((o2_51@@121 T@Ref) (f_201@@121 T@Field_43504_53) ) (!  (=> (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@121 f_201@@121) (= (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@20) o2_51@@121 f_201@@121) (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@121 f_201@@121)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@121 f_201@@121))
))) (forall ((o2_51@@122 T@Ref) (f_201@@122 T@Field_20267_20309) ) (!  (=> (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@122 f_201@@122) (= (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@20) o2_51@@122 f_201@@122) (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@122 f_201@@122)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@122 f_201@@122))
))) (forall ((o2_51@@123 T@Ref) (f_201@@123 T@Field_20267_49395) ) (!  (=> (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@123 f_201@@123) (= (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@20) o2_51@@123 f_201@@123) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@123 f_201@@123)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@123 f_201@@123))
))) (forall ((o2_51@@124 T@Ref) (f_201@@124 T@Field_20308_20268) ) (!  (=> (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@124 f_201@@124) (= (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@20) o2_51@@124 f_201@@124) (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@124 f_201@@124)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@124 f_201@@124))
))) (forall ((o2_51@@125 T@Ref) (f_201@@125 T@Field_20308_1204) ) (!  (=> (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@125 f_201@@125) (= (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@20) o2_51@@125 f_201@@125) (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@125 f_201@@125)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@125 f_201@@125))
))) (forall ((o2_51@@126 T@Ref) (f_201@@126 T@Field_20308_53) ) (!  (=> (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@126 f_201@@126) (= (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@20) o2_51@@126 f_201@@126) (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@126 f_201@@126)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@126 f_201@@126))
))) (forall ((o2_51@@127 T@Ref) (f_201@@127 T@Field_47230_47231) ) (!  (=> (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@127 f_201@@127) (= (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@20) o2_51@@127 f_201@@127) (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@127 f_201@@127)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@127 f_201@@127))
))) (forall ((o2_51@@128 T@Ref) (f_201@@128 T@Field_49390_49395) ) (!  (=> (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@128 f_201@@128) (= (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) o2_51@@128 f_201@@128) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@128 f_201@@128)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@128 f_201@@128))
))) (forall ((o2_51@@129 T@Ref) (f_201@@129 T@Field_20333_20268) ) (!  (=> (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@129 f_201@@129) (= (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@20) o2_51@@129 f_201@@129) (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@129 f_201@@129)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@129 f_201@@129))
))) (forall ((o2_51@@130 T@Ref) (f_201@@130 T@Field_20333_1204) ) (!  (=> (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@130 f_201@@130) (= (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@20) o2_51@@130 f_201@@130) (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@130 f_201@@130)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@130 f_201@@130))
))) (forall ((o2_51@@131 T@Ref) (f_201@@131 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@131 f_201@@131) (= (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@20) o2_51@@131 f_201@@131) (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@131 f_201@@131)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@131 f_201@@131))
))) (forall ((o2_51@@132 T@Ref) (f_201@@132 T@Field_51792_51793) ) (!  (=> (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@132 f_201@@132) (= (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@20) o2_51@@132 f_201@@132) (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@132 f_201@@132)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@132 f_201@@132))
))) (forall ((o2_51@@133 T@Ref) (f_201@@133 T@Field_51805_51810) ) (!  (=> (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@133 f_201@@133) (= (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@20) o2_51@@133 f_201@@133) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@133 f_201@@133)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@133 f_201@@133))
))) (forall ((o2_51@@134 T@Ref) (f_201@@134 T@Field_20358_20268) ) (!  (=> (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@134 f_201@@134) (= (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@20) o2_51@@134 f_201@@134) (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@134 f_201@@134)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@134 f_201@@134))
))) (forall ((o2_51@@135 T@Ref) (f_201@@135 T@Field_20358_1204) ) (!  (=> (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@135 f_201@@135) (= (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@20) o2_51@@135 f_201@@135) (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@135 f_201@@135)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@135 f_201@@135))
))) (forall ((o2_51@@136 T@Ref) (f_201@@136 T@Field_20358_53) ) (!  (=> (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@136 f_201@@136) (= (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@20) o2_51@@136 f_201@@136) (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@136 f_201@@136)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@136 f_201@@136))
))) (forall ((o2_51@@137 T@Ref) (f_201@@137 T@Field_52995_52996) ) (!  (=> (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@137 f_201@@137) (= (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@20) o2_51@@137 f_201@@137) (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@137 f_201@@137)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@137 f_201@@137))
))) (forall ((o2_51@@138 T@Ref) (f_201@@138 T@Field_53282_53287) ) (!  (=> (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@20) null (WandMaskField_20308 pm_f_51@@13))) o2_51@@138 f_201@@138) (= (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@20) o2_51@@138 f_201@@138) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@138 f_201@@138)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@13) o2_51@@138 f_201@@138))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@15) (IsWandField_20308_186273 pm_f_51@@13))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_43444) (ExhaleHeap@@14 T@PolymorphicMapType_43444) (Mask@@16 T@PolymorphicMapType_43465) (pm_f_51@@14 T@Field_20267_20309) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@16) (=> (and (HasDirectPerm_20267_20309 Mask@@16 null pm_f_51@@14) (IsWandField_20267_185916 pm_f_51@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_51@@139 T@Ref) (f_201@@139 T@Field_43517_43518) ) (!  (=> (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@139 f_201@@139) (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@21) o2_51@@139 f_201@@139) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@139 f_201@@139)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@139 f_201@@139))
)) (forall ((o2_51@@140 T@Ref) (f_201@@140 T@Field_46881_1204) ) (!  (=> (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@140 f_201@@140) (= (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@21) o2_51@@140 f_201@@140) (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@140 f_201@@140)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@140 f_201@@140))
))) (forall ((o2_51@@141 T@Ref) (f_201@@141 T@Field_43504_53) ) (!  (=> (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@141 f_201@@141) (= (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@21) o2_51@@141 f_201@@141) (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@141 f_201@@141)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@141 f_201@@141))
))) (forall ((o2_51@@142 T@Ref) (f_201@@142 T@Field_20267_20309) ) (!  (=> (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@142 f_201@@142) (= (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@21) o2_51@@142 f_201@@142) (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@142 f_201@@142)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@142 f_201@@142))
))) (forall ((o2_51@@143 T@Ref) (f_201@@143 T@Field_20267_49395) ) (!  (=> (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@143 f_201@@143) (= (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) o2_51@@143 f_201@@143) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@143 f_201@@143)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@143 f_201@@143))
))) (forall ((o2_51@@144 T@Ref) (f_201@@144 T@Field_20308_20268) ) (!  (=> (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@144 f_201@@144) (= (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@21) o2_51@@144 f_201@@144) (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@144 f_201@@144)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@144 f_201@@144))
))) (forall ((o2_51@@145 T@Ref) (f_201@@145 T@Field_20308_1204) ) (!  (=> (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@145 f_201@@145) (= (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@21) o2_51@@145 f_201@@145) (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@145 f_201@@145)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@145 f_201@@145))
))) (forall ((o2_51@@146 T@Ref) (f_201@@146 T@Field_20308_53) ) (!  (=> (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@146 f_201@@146) (= (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@21) o2_51@@146 f_201@@146) (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@146 f_201@@146)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@146 f_201@@146))
))) (forall ((o2_51@@147 T@Ref) (f_201@@147 T@Field_47230_47231) ) (!  (=> (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@147 f_201@@147) (= (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@21) o2_51@@147 f_201@@147) (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@147 f_201@@147)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@147 f_201@@147))
))) (forall ((o2_51@@148 T@Ref) (f_201@@148 T@Field_49390_49395) ) (!  (=> (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@148 f_201@@148) (= (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@21) o2_51@@148 f_201@@148) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@148 f_201@@148)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@148 f_201@@148))
))) (forall ((o2_51@@149 T@Ref) (f_201@@149 T@Field_20333_20268) ) (!  (=> (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@149 f_201@@149) (= (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@21) o2_51@@149 f_201@@149) (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@149 f_201@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@149 f_201@@149))
))) (forall ((o2_51@@150 T@Ref) (f_201@@150 T@Field_20333_1204) ) (!  (=> (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@150 f_201@@150) (= (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@21) o2_51@@150 f_201@@150) (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@150 f_201@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@150 f_201@@150))
))) (forall ((o2_51@@151 T@Ref) (f_201@@151 T@Field_20333_53) ) (!  (=> (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@151 f_201@@151) (= (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@21) o2_51@@151 f_201@@151) (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@151 f_201@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@151 f_201@@151))
))) (forall ((o2_51@@152 T@Ref) (f_201@@152 T@Field_51792_51793) ) (!  (=> (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@152 f_201@@152) (= (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@21) o2_51@@152 f_201@@152) (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@152 f_201@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@152 f_201@@152))
))) (forall ((o2_51@@153 T@Ref) (f_201@@153 T@Field_51805_51810) ) (!  (=> (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@153 f_201@@153) (= (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@21) o2_51@@153 f_201@@153) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@153 f_201@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@153 f_201@@153))
))) (forall ((o2_51@@154 T@Ref) (f_201@@154 T@Field_20358_20268) ) (!  (=> (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@154 f_201@@154) (= (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@21) o2_51@@154 f_201@@154) (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@154 f_201@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@154 f_201@@154))
))) (forall ((o2_51@@155 T@Ref) (f_201@@155 T@Field_20358_1204) ) (!  (=> (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@155 f_201@@155) (= (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@21) o2_51@@155 f_201@@155) (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@155 f_201@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@155 f_201@@155))
))) (forall ((o2_51@@156 T@Ref) (f_201@@156 T@Field_20358_53) ) (!  (=> (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@156 f_201@@156) (= (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@21) o2_51@@156 f_201@@156) (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@156 f_201@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@156 f_201@@156))
))) (forall ((o2_51@@157 T@Ref) (f_201@@157 T@Field_52995_52996) ) (!  (=> (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@157 f_201@@157) (= (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@21) o2_51@@157 f_201@@157) (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@157 f_201@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@157 f_201@@157))
))) (forall ((o2_51@@158 T@Ref) (f_201@@158 T@Field_53282_53287) ) (!  (=> (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@21) null (WandMaskField_20267 pm_f_51@@14))) o2_51@@158 f_201@@158) (= (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@21) o2_51@@158 f_201@@158) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@158 f_201@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@14) o2_51@@158 f_201@@158))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@16) (IsWandField_20267_185916 pm_f_51@@14))
)))
(assert (forall ((this@@8 T@Ref) (this2 T@Ref) ) (!  (=> (= (valid this@@8) (valid this2)) (= this@@8 this2))
 :qid |stdinbpl.324:15|
 :skolemid |30|
 :pattern ( (valid this@@8) (valid this2))
)))
(assert (forall ((this@@9 T@Ref) (this2@@0 T@Ref) ) (!  (=> (= (|valid#sm| this@@9) (|valid#sm| this2@@0)) (= this@@9 this2@@0))
 :qid |stdinbpl.328:15|
 :skolemid |31|
 :pattern ( (|valid#sm| this@@9) (|valid#sm| this2@@0))
)))
(assert (forall ((this@@10 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (p_14 this@@10) (p_14 this2@@1)) (= this@@10 this2@@1))
 :qid |stdinbpl.400:15|
 :skolemid |36|
 :pattern ( (p_14 this@@10) (p_14 this2@@1))
)))
(assert (forall ((this@@11 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|p#sm| this@@11) (|p#sm| this2@@2)) (= this@@11 this2@@2))
 :qid |stdinbpl.404:15|
 :skolemid |37|
 :pattern ( (|p#sm| this@@11) (|p#sm| this2@@2))
)))
(assert (forall ((this@@12 T@Ref) (this2@@3 T@Ref) ) (!  (=> (= (q_18 this@@12) (q_18 this2@@3)) (= this@@12 this2@@3))
 :qid |stdinbpl.476:15|
 :skolemid |42|
 :pattern ( (q_18 this@@12) (q_18 this2@@3))
)))
(assert (forall ((this@@13 T@Ref) (this2@@4 T@Ref) ) (!  (=> (= (|q#sm| this@@13) (|q#sm| this2@@4)) (= this@@13 this2@@4))
 :qid |stdinbpl.480:15|
 :skolemid |43|
 :pattern ( (|q#sm| this@@13) (|q#sm| this2@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@22 T@PolymorphicMapType_43444) (ExhaleHeap@@15 T@PolymorphicMapType_43444) (Mask@@17 T@PolymorphicMapType_43465) (o_107 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@17) (=> (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@22) o_107 $allocated) (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@15) o_107 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@17) (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@15) o_107 $allocated))
)))
(assert (forall ((p T@Field_20267_20309) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_43504_43504 p v_1 p w))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_43504_43504 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_52995_52996) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_20358_20358 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20358_20358 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_51792_51793) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_20333_20333 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20333_20333 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_47230_47231) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_20308_20308 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.174:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20308_20308 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert  (not (IsPredicateField_20267_20268 next)))
(assert  (not (IsWandField_20267_20268 next)))
(assert  (not (IsPredicateField_20270_1204 value)))
(assert  (not (IsWandField_20270_1204 value)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_43444) (ExhaleHeap@@16 T@PolymorphicMapType_43444) (Mask@@18 T@PolymorphicMapType_43465) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@18) (succHeap Heap@@23 ExhaleHeap@@16))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@18))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_43465) (o_2@@19 T@Ref) (f_4@@19 T@Field_51805_51810) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@@19) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_20333_200662 f_4@@19))) (not (IsWandField_20333_200678 f_4@@19))) (<= (select (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@@19) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@@19) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_43465) (o_2@@20 T@Ref) (f_4@@20 T@Field_20333_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@@20) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_20333_53 f_4@@20))) (not (IsWandField_20333_53 f_4@@20))) (<= (select (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@@20) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@@20) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_43465) (o_2@@21 T@Ref) (f_4@@21 T@Field_20333_1204) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@@21) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_20333_1204 f_4@@21))) (not (IsWandField_20333_1204 f_4@@21))) (<= (select (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@@21) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@@21) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_43465) (o_2@@22 T@Ref) (f_4@@22 T@Field_20333_20268) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@@22) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_20333_20268 f_4@@22))) (not (IsWandField_20333_20268 f_4@@22))) (<= (select (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@@22) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@@22) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_43465) (o_2@@23 T@Ref) (f_4@@23 T@Field_51792_51793) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@@23) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_20333_20334 f_4@@23))) (not (IsWandField_20333_186630 f_4@@23))) (<= (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@@23) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@@23) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_43465) (o_2@@24 T@Ref) (f_4@@24 T@Field_53282_53287) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@@24) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_20358_199831 f_4@@24))) (not (IsWandField_20358_199847 f_4@@24))) (<= (select (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@@24) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@@24) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_43465) (o_2@@25 T@Ref) (f_4@@25 T@Field_20358_53) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@@25) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_20358_53 f_4@@25))) (not (IsWandField_20358_53 f_4@@25))) (<= (select (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@@25) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@@25) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_43465) (o_2@@26 T@Ref) (f_4@@26 T@Field_20358_1204) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@@26) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_20358_1204 f_4@@26))) (not (IsWandField_20358_1204 f_4@@26))) (<= (select (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@@26) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@@26) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_43465) (o_2@@27 T@Ref) (f_4@@27 T@Field_20358_20268) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@@27) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_20358_20268 f_4@@27))) (not (IsWandField_20358_20268 f_4@@27))) (<= (select (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@@27) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@@27) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_43465) (o_2@@28 T@Ref) (f_4@@28 T@Field_52995_52996) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@@28) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_20358_20359 f_4@@28))) (not (IsWandField_20358_186987 f_4@@28))) (<= (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@@28) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@@28) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_43465) (o_2@@29 T@Ref) (f_4@@29 T@Field_20267_49395) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@@29) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_20267_199000 f_4@@29))) (not (IsWandField_20267_199016 f_4@@29))) (<= (select (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@@29) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@@29) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_43465) (o_2@@30 T@Ref) (f_4@@30 T@Field_43504_53) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@@30) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_20267_53 f_4@@30))) (not (IsWandField_20267_53 f_4@@30))) (<= (select (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@@30) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@@30) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_43465) (o_2@@31 T@Ref) (f_4@@31 T@Field_46881_1204) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@@31) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_20270_1204 f_4@@31))) (not (IsWandField_20270_1204 f_4@@31))) (<= (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@@31) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@@31) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_43465) (o_2@@32 T@Ref) (f_4@@32 T@Field_43517_43518) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@@32) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_20267_20268 f_4@@32))) (not (IsWandField_20267_20268 f_4@@32))) (<= (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@@32) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@@32) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_43465) (o_2@@33 T@Ref) (f_4@@33 T@Field_20267_20309) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@@33) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_20267_179295 f_4@@33))) (not (IsWandField_20267_185916 f_4@@33))) (<= (select (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@@33) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@@33) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_43465) (o_2@@34 T@Ref) (f_4@@34 T@Field_49390_49395) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@@34) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_20308_198197 f_4@@34))) (not (IsWandField_20308_198213 f_4@@34))) (<= (select (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@@34) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@@34) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_43465) (o_2@@35 T@Ref) (f_4@@35 T@Field_20308_53) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@@35) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_20308_53 f_4@@35))) (not (IsWandField_20308_53 f_4@@35))) (<= (select (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@@35) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@@35) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_43465) (o_2@@36 T@Ref) (f_4@@36 T@Field_20308_1204) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@@36) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_20308_1204 f_4@@36))) (not (IsWandField_20308_1204 f_4@@36))) (<= (select (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@@36) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@@36) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_43465) (o_2@@37 T@Ref) (f_4@@37 T@Field_20308_20268) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@@37) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_20308_20268 f_4@@37))) (not (IsWandField_20308_20268 f_4@@37))) (<= (select (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@@37) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@@37) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_43465) (o_2@@38 T@Ref) (f_4@@38 T@Field_47230_47231) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@@38) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_20308_20309 f_4@@38))) (not (IsWandField_20308_186273 f_4@@38))) (<= (select (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@@38) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@@38) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_43465) (o_2@@39 T@Ref) (f_4@@39 T@Field_53282_53287) ) (! (= (HasDirectPerm_20358_179050 Mask@@39 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@@39) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20358_179050 Mask@@39 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_43465) (o_2@@40 T@Ref) (f_4@@40 T@Field_20358_1204) ) (! (= (HasDirectPerm_20358_1204 Mask@@40 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@@40) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20358_1204 Mask@@40 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_43465) (o_2@@41 T@Ref) (f_4@@41 T@Field_20358_53) ) (! (= (HasDirectPerm_20358_53 Mask@@41 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@@41) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20358_53 Mask@@41 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_43465) (o_2@@42 T@Ref) (f_4@@42 T@Field_52995_52996) ) (! (= (HasDirectPerm_20358_20359 Mask@@42 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@@42) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20358_20359 Mask@@42 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_43465) (o_2@@43 T@Ref) (f_4@@43 T@Field_20358_20268) ) (! (= (HasDirectPerm_20358_20268 Mask@@43 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@@43) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20358_20268 Mask@@43 o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_43465) (o_2@@44 T@Ref) (f_4@@44 T@Field_51805_51810) ) (! (= (HasDirectPerm_20333_177952 Mask@@44 o_2@@44 f_4@@44) (> (select (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@@44) o_2@@44 f_4@@44) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_177952 Mask@@44 o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_43465) (o_2@@45 T@Ref) (f_4@@45 T@Field_20333_1204) ) (! (= (HasDirectPerm_20333_1204 Mask@@45 o_2@@45 f_4@@45) (> (select (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@@45) o_2@@45 f_4@@45) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_1204 Mask@@45 o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_43465) (o_2@@46 T@Ref) (f_4@@46 T@Field_20333_53) ) (! (= (HasDirectPerm_20333_53 Mask@@46 o_2@@46 f_4@@46) (> (select (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@@46) o_2@@46 f_4@@46) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_53 Mask@@46 o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_43465) (o_2@@47 T@Ref) (f_4@@47 T@Field_51792_51793) ) (! (= (HasDirectPerm_20333_20334 Mask@@47 o_2@@47 f_4@@47) (> (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@@47) o_2@@47 f_4@@47) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_20334 Mask@@47 o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_43465) (o_2@@48 T@Ref) (f_4@@48 T@Field_20333_20268) ) (! (= (HasDirectPerm_20333_20268 Mask@@48 o_2@@48 f_4@@48) (> (select (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@@48) o_2@@48 f_4@@48) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20333_20268 Mask@@48 o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_43465) (o_2@@49 T@Ref) (f_4@@49 T@Field_49390_49395) ) (! (= (HasDirectPerm_20308_176854 Mask@@49 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@@49) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20308_176854 Mask@@49 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_43465) (o_2@@50 T@Ref) (f_4@@50 T@Field_20308_1204) ) (! (= (HasDirectPerm_20308_1204 Mask@@50 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@@50) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20308_1204 Mask@@50 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_43465) (o_2@@51 T@Ref) (f_4@@51 T@Field_20308_53) ) (! (= (HasDirectPerm_20308_53 Mask@@51 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@@51) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20308_53 Mask@@51 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_43465) (o_2@@52 T@Ref) (f_4@@52 T@Field_47230_47231) ) (! (= (HasDirectPerm_20308_20309 Mask@@52 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@@52) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20308_20309 Mask@@52 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_43465) (o_2@@53 T@Ref) (f_4@@53 T@Field_20308_20268) ) (! (= (HasDirectPerm_20308_20268 Mask@@53 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@@53) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20308_20268 Mask@@53 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_43465) (o_2@@54 T@Ref) (f_4@@54 T@Field_20267_49395) ) (! (= (HasDirectPerm_20267_175713 Mask@@54 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@@54) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20267_175713 Mask@@54 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_43465) (o_2@@55 T@Ref) (f_4@@55 T@Field_46881_1204) ) (! (= (HasDirectPerm_20267_1204 Mask@@55 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@@55) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20267_1204 Mask@@55 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_43465) (o_2@@56 T@Ref) (f_4@@56 T@Field_43504_53) ) (! (= (HasDirectPerm_20267_53 Mask@@56 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@@56) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20267_53 Mask@@56 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_43465) (o_2@@57 T@Ref) (f_4@@57 T@Field_20267_20309) ) (! (= (HasDirectPerm_20267_20309 Mask@@57 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@@57) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20267_20309 Mask@@57 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_43465) (o_2@@58 T@Ref) (f_4@@58 T@Field_43517_43518) ) (! (= (HasDirectPerm_20267_20268 Mask@@58 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@@58) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20267_20268 Mask@@58 o_2@@58 f_4@@58))
)))
(assert (forall ((p@@3 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@3 f_6) (ite (> p@@3 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.162:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@3 f_6))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_43444) (ExhaleHeap@@17 T@PolymorphicMapType_43444) (Mask@@59 T@PolymorphicMapType_43465) (o_107@@0 T@Ref) (f_201@@159 T@Field_53282_53287) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@59) (=> (HasDirectPerm_20358_179050 Mask@@59 o_107@@0 f_201@@159) (= (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@24) o_107@@0 f_201@@159) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@17) o_107@@0 f_201@@159))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@59) (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| ExhaleHeap@@17) o_107@@0 f_201@@159))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_43444) (ExhaleHeap@@18 T@PolymorphicMapType_43444) (Mask@@60 T@PolymorphicMapType_43465) (o_107@@1 T@Ref) (f_201@@160 T@Field_20358_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@60) (=> (HasDirectPerm_20358_1204 Mask@@60 o_107@@1 f_201@@160) (= (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@25) o_107@@1 f_201@@160) (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@18) o_107@@1 f_201@@160))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@60) (select (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| ExhaleHeap@@18) o_107@@1 f_201@@160))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_43444) (ExhaleHeap@@19 T@PolymorphicMapType_43444) (Mask@@61 T@PolymorphicMapType_43465) (o_107@@2 T@Ref) (f_201@@161 T@Field_20358_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@61) (=> (HasDirectPerm_20358_53 Mask@@61 o_107@@2 f_201@@161) (= (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@26) o_107@@2 f_201@@161) (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@19) o_107@@2 f_201@@161))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@61) (select (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| ExhaleHeap@@19) o_107@@2 f_201@@161))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_43444) (ExhaleHeap@@20 T@PolymorphicMapType_43444) (Mask@@62 T@PolymorphicMapType_43465) (o_107@@3 T@Ref) (f_201@@162 T@Field_52995_52996) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@62) (=> (HasDirectPerm_20358_20359 Mask@@62 o_107@@3 f_201@@162) (= (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@27) o_107@@3 f_201@@162) (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@20) o_107@@3 f_201@@162))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@62) (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| ExhaleHeap@@20) o_107@@3 f_201@@162))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_43444) (ExhaleHeap@@21 T@PolymorphicMapType_43444) (Mask@@63 T@PolymorphicMapType_43465) (o_107@@4 T@Ref) (f_201@@163 T@Field_20358_20268) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@21 Mask@@63) (=> (HasDirectPerm_20358_20268 Mask@@63 o_107@@4 f_201@@163) (= (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@28) o_107@@4 f_201@@163) (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@21) o_107@@4 f_201@@163))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@21 Mask@@63) (select (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| ExhaleHeap@@21) o_107@@4 f_201@@163))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_43444) (ExhaleHeap@@22 T@PolymorphicMapType_43444) (Mask@@64 T@PolymorphicMapType_43465) (o_107@@5 T@Ref) (f_201@@164 T@Field_51805_51810) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@64) (=> (HasDirectPerm_20333_177952 Mask@@64 o_107@@5 f_201@@164) (= (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@29) o_107@@5 f_201@@164) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@22) o_107@@5 f_201@@164))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@64) (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| ExhaleHeap@@22) o_107@@5 f_201@@164))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_43444) (ExhaleHeap@@23 T@PolymorphicMapType_43444) (Mask@@65 T@PolymorphicMapType_43465) (o_107@@6 T@Ref) (f_201@@165 T@Field_20333_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@65) (=> (HasDirectPerm_20333_1204 Mask@@65 o_107@@6 f_201@@165) (= (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@30) o_107@@6 f_201@@165) (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@23) o_107@@6 f_201@@165))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@65) (select (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| ExhaleHeap@@23) o_107@@6 f_201@@165))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_43444) (ExhaleHeap@@24 T@PolymorphicMapType_43444) (Mask@@66 T@PolymorphicMapType_43465) (o_107@@7 T@Ref) (f_201@@166 T@Field_20333_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@66) (=> (HasDirectPerm_20333_53 Mask@@66 o_107@@7 f_201@@166) (= (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@31) o_107@@7 f_201@@166) (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@24) o_107@@7 f_201@@166))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@66) (select (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| ExhaleHeap@@24) o_107@@7 f_201@@166))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_43444) (ExhaleHeap@@25 T@PolymorphicMapType_43444) (Mask@@67 T@PolymorphicMapType_43465) (o_107@@8 T@Ref) (f_201@@167 T@Field_51792_51793) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@67) (=> (HasDirectPerm_20333_20334 Mask@@67 o_107@@8 f_201@@167) (= (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@32) o_107@@8 f_201@@167) (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@25) o_107@@8 f_201@@167))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@67) (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| ExhaleHeap@@25) o_107@@8 f_201@@167))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_43444) (ExhaleHeap@@26 T@PolymorphicMapType_43444) (Mask@@68 T@PolymorphicMapType_43465) (o_107@@9 T@Ref) (f_201@@168 T@Field_20333_20268) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@68) (=> (HasDirectPerm_20333_20268 Mask@@68 o_107@@9 f_201@@168) (= (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@33) o_107@@9 f_201@@168) (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@26) o_107@@9 f_201@@168))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@68) (select (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| ExhaleHeap@@26) o_107@@9 f_201@@168))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_43444) (ExhaleHeap@@27 T@PolymorphicMapType_43444) (Mask@@69 T@PolymorphicMapType_43465) (o_107@@10 T@Ref) (f_201@@169 T@Field_49390_49395) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@69) (=> (HasDirectPerm_20308_176854 Mask@@69 o_107@@10 f_201@@169) (= (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@34) o_107@@10 f_201@@169) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@27) o_107@@10 f_201@@169))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@69) (select (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| ExhaleHeap@@27) o_107@@10 f_201@@169))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_43444) (ExhaleHeap@@28 T@PolymorphicMapType_43444) (Mask@@70 T@PolymorphicMapType_43465) (o_107@@11 T@Ref) (f_201@@170 T@Field_20308_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@28 Mask@@70) (=> (HasDirectPerm_20308_1204 Mask@@70 o_107@@11 f_201@@170) (= (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@35) o_107@@11 f_201@@170) (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@28) o_107@@11 f_201@@170))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@28 Mask@@70) (select (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| ExhaleHeap@@28) o_107@@11 f_201@@170))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_43444) (ExhaleHeap@@29 T@PolymorphicMapType_43444) (Mask@@71 T@PolymorphicMapType_43465) (o_107@@12 T@Ref) (f_201@@171 T@Field_20308_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@29 Mask@@71) (=> (HasDirectPerm_20308_53 Mask@@71 o_107@@12 f_201@@171) (= (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@36) o_107@@12 f_201@@171) (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@29) o_107@@12 f_201@@171))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@29 Mask@@71) (select (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| ExhaleHeap@@29) o_107@@12 f_201@@171))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_43444) (ExhaleHeap@@30 T@PolymorphicMapType_43444) (Mask@@72 T@PolymorphicMapType_43465) (o_107@@13 T@Ref) (f_201@@172 T@Field_47230_47231) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@30 Mask@@72) (=> (HasDirectPerm_20308_20309 Mask@@72 o_107@@13 f_201@@172) (= (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@37) o_107@@13 f_201@@172) (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@30) o_107@@13 f_201@@172))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@30 Mask@@72) (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| ExhaleHeap@@30) o_107@@13 f_201@@172))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_43444) (ExhaleHeap@@31 T@PolymorphicMapType_43444) (Mask@@73 T@PolymorphicMapType_43465) (o_107@@14 T@Ref) (f_201@@173 T@Field_20308_20268) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@31 Mask@@73) (=> (HasDirectPerm_20308_20268 Mask@@73 o_107@@14 f_201@@173) (= (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@38) o_107@@14 f_201@@173) (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@31) o_107@@14 f_201@@173))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@31 Mask@@73) (select (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| ExhaleHeap@@31) o_107@@14 f_201@@173))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_43444) (ExhaleHeap@@32 T@PolymorphicMapType_43444) (Mask@@74 T@PolymorphicMapType_43465) (o_107@@15 T@Ref) (f_201@@174 T@Field_20267_49395) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@32 Mask@@74) (=> (HasDirectPerm_20267_175713 Mask@@74 o_107@@15 f_201@@174) (= (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@39) o_107@@15 f_201@@174) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@32) o_107@@15 f_201@@174))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@32 Mask@@74) (select (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| ExhaleHeap@@32) o_107@@15 f_201@@174))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_43444) (ExhaleHeap@@33 T@PolymorphicMapType_43444) (Mask@@75 T@PolymorphicMapType_43465) (o_107@@16 T@Ref) (f_201@@175 T@Field_46881_1204) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@33 Mask@@75) (=> (HasDirectPerm_20267_1204 Mask@@75 o_107@@16 f_201@@175) (= (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@40) o_107@@16 f_201@@175) (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@33) o_107@@16 f_201@@175))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@33 Mask@@75) (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| ExhaleHeap@@33) o_107@@16 f_201@@175))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_43444) (ExhaleHeap@@34 T@PolymorphicMapType_43444) (Mask@@76 T@PolymorphicMapType_43465) (o_107@@17 T@Ref) (f_201@@176 T@Field_43504_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@34 Mask@@76) (=> (HasDirectPerm_20267_53 Mask@@76 o_107@@17 f_201@@176) (= (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@41) o_107@@17 f_201@@176) (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@34) o_107@@17 f_201@@176))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@34 Mask@@76) (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| ExhaleHeap@@34) o_107@@17 f_201@@176))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_43444) (ExhaleHeap@@35 T@PolymorphicMapType_43444) (Mask@@77 T@PolymorphicMapType_43465) (o_107@@18 T@Ref) (f_201@@177 T@Field_20267_20309) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@35 Mask@@77) (=> (HasDirectPerm_20267_20309 Mask@@77 o_107@@18 f_201@@177) (= (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@42) o_107@@18 f_201@@177) (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@35) o_107@@18 f_201@@177))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@35 Mask@@77) (select (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| ExhaleHeap@@35) o_107@@18 f_201@@177))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_43444) (ExhaleHeap@@36 T@PolymorphicMapType_43444) (Mask@@78 T@PolymorphicMapType_43465) (o_107@@19 T@Ref) (f_201@@178 T@Field_43517_43518) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@36 Mask@@78) (=> (HasDirectPerm_20267_20268 Mask@@78 o_107@@19 f_201@@178) (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@43) o_107@@19 f_201@@178) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@36) o_107@@19 f_201@@178))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@36 Mask@@78) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| ExhaleHeap@@36) o_107@@19 f_201@@178))
)))
(assert (forall ((o_2@@59 T@Ref) (f_4@@59 T@Field_51805_51810) ) (! (= (select (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| ZeroMask) o_2@@59 f_4@@59) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| ZeroMask) o_2@@59 f_4@@59))
)))
(assert (forall ((o_2@@60 T@Ref) (f_4@@60 T@Field_20333_53) ) (! (= (select (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| ZeroMask) o_2@@60 f_4@@60) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| ZeroMask) o_2@@60 f_4@@60))
)))
(assert (forall ((o_2@@61 T@Ref) (f_4@@61 T@Field_20333_1204) ) (! (= (select (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| ZeroMask) o_2@@61 f_4@@61) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| ZeroMask) o_2@@61 f_4@@61))
)))
(assert (forall ((o_2@@62 T@Ref) (f_4@@62 T@Field_20333_20268) ) (! (= (select (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| ZeroMask) o_2@@62 f_4@@62) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| ZeroMask) o_2@@62 f_4@@62))
)))
(assert (forall ((o_2@@63 T@Ref) (f_4@@63 T@Field_51792_51793) ) (! (= (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| ZeroMask) o_2@@63 f_4@@63) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| ZeroMask) o_2@@63 f_4@@63))
)))
(assert (forall ((o_2@@64 T@Ref) (f_4@@64 T@Field_53282_53287) ) (! (= (select (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| ZeroMask) o_2@@64 f_4@@64) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| ZeroMask) o_2@@64 f_4@@64))
)))
(assert (forall ((o_2@@65 T@Ref) (f_4@@65 T@Field_20358_53) ) (! (= (select (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| ZeroMask) o_2@@65 f_4@@65) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| ZeroMask) o_2@@65 f_4@@65))
)))
(assert (forall ((o_2@@66 T@Ref) (f_4@@66 T@Field_20358_1204) ) (! (= (select (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| ZeroMask) o_2@@66 f_4@@66) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| ZeroMask) o_2@@66 f_4@@66))
)))
(assert (forall ((o_2@@67 T@Ref) (f_4@@67 T@Field_20358_20268) ) (! (= (select (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| ZeroMask) o_2@@67 f_4@@67) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| ZeroMask) o_2@@67 f_4@@67))
)))
(assert (forall ((o_2@@68 T@Ref) (f_4@@68 T@Field_52995_52996) ) (! (= (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| ZeroMask) o_2@@68 f_4@@68) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| ZeroMask) o_2@@68 f_4@@68))
)))
(assert (forall ((o_2@@69 T@Ref) (f_4@@69 T@Field_20267_49395) ) (! (= (select (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| ZeroMask) o_2@@69 f_4@@69) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| ZeroMask) o_2@@69 f_4@@69))
)))
(assert (forall ((o_2@@70 T@Ref) (f_4@@70 T@Field_43504_53) ) (! (= (select (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| ZeroMask) o_2@@70 f_4@@70) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| ZeroMask) o_2@@70 f_4@@70))
)))
(assert (forall ((o_2@@71 T@Ref) (f_4@@71 T@Field_46881_1204) ) (! (= (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| ZeroMask) o_2@@71 f_4@@71) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| ZeroMask) o_2@@71 f_4@@71))
)))
(assert (forall ((o_2@@72 T@Ref) (f_4@@72 T@Field_43517_43518) ) (! (= (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| ZeroMask) o_2@@72 f_4@@72) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| ZeroMask) o_2@@72 f_4@@72))
)))
(assert (forall ((o_2@@73 T@Ref) (f_4@@73 T@Field_20267_20309) ) (! (= (select (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| ZeroMask) o_2@@73 f_4@@73) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| ZeroMask) o_2@@73 f_4@@73))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_49390_49395) ) (! (= (select (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_20308_53) ) (! (= (select (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_20308_1204) ) (! (= (select (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_20308_20268) ) (! (= (select (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_47230_47231) ) (! (= (select (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_43465) (SummandMask1 T@PolymorphicMapType_43465) (SummandMask2 T@PolymorphicMapType_43465) (o_2@@79 T@Ref) (f_4@@79 T@Field_51805_51810) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| ResultMask) o_2@@79 f_4@@79) (+ (select (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| SummandMask1) o_2@@79 f_4@@79) (select (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| SummandMask2) o_2@@79 f_4@@79))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| ResultMask) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| SummandMask1) o_2@@79 f_4@@79))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| SummandMask2) o_2@@79 f_4@@79))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_43465) (SummandMask1@@0 T@PolymorphicMapType_43465) (SummandMask2@@0 T@PolymorphicMapType_43465) (o_2@@80 T@Ref) (f_4@@80 T@Field_20333_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| ResultMask@@0) o_2@@80 f_4@@80) (+ (select (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| SummandMask1@@0) o_2@@80 f_4@@80) (select (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| SummandMask2@@0) o_2@@80 f_4@@80))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| ResultMask@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| SummandMask1@@0) o_2@@80 f_4@@80))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| SummandMask2@@0) o_2@@80 f_4@@80))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_43465) (SummandMask1@@1 T@PolymorphicMapType_43465) (SummandMask2@@1 T@PolymorphicMapType_43465) (o_2@@81 T@Ref) (f_4@@81 T@Field_20333_1204) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| ResultMask@@1) o_2@@81 f_4@@81) (+ (select (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| SummandMask1@@1) o_2@@81 f_4@@81) (select (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| SummandMask2@@1) o_2@@81 f_4@@81))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| ResultMask@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| SummandMask1@@1) o_2@@81 f_4@@81))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| SummandMask2@@1) o_2@@81 f_4@@81))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_43465) (SummandMask1@@2 T@PolymorphicMapType_43465) (SummandMask2@@2 T@PolymorphicMapType_43465) (o_2@@82 T@Ref) (f_4@@82 T@Field_20333_20268) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| ResultMask@@2) o_2@@82 f_4@@82) (+ (select (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| SummandMask1@@2) o_2@@82 f_4@@82) (select (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| SummandMask2@@2) o_2@@82 f_4@@82))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| ResultMask@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| SummandMask1@@2) o_2@@82 f_4@@82))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| SummandMask2@@2) o_2@@82 f_4@@82))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_43465) (SummandMask1@@3 T@PolymorphicMapType_43465) (SummandMask2@@3 T@PolymorphicMapType_43465) (o_2@@83 T@Ref) (f_4@@83 T@Field_51792_51793) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| ResultMask@@3) o_2@@83 f_4@@83) (+ (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| SummandMask1@@3) o_2@@83 f_4@@83) (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| SummandMask2@@3) o_2@@83 f_4@@83))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| ResultMask@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| SummandMask1@@3) o_2@@83 f_4@@83))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| SummandMask2@@3) o_2@@83 f_4@@83))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_43465) (SummandMask1@@4 T@PolymorphicMapType_43465) (SummandMask2@@4 T@PolymorphicMapType_43465) (o_2@@84 T@Ref) (f_4@@84 T@Field_53282_53287) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| ResultMask@@4) o_2@@84 f_4@@84) (+ (select (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| SummandMask1@@4) o_2@@84 f_4@@84) (select (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| SummandMask2@@4) o_2@@84 f_4@@84))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| ResultMask@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| SummandMask1@@4) o_2@@84 f_4@@84))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| SummandMask2@@4) o_2@@84 f_4@@84))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_43465) (SummandMask1@@5 T@PolymorphicMapType_43465) (SummandMask2@@5 T@PolymorphicMapType_43465) (o_2@@85 T@Ref) (f_4@@85 T@Field_20358_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| ResultMask@@5) o_2@@85 f_4@@85) (+ (select (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| SummandMask1@@5) o_2@@85 f_4@@85) (select (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| SummandMask2@@5) o_2@@85 f_4@@85))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| ResultMask@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| SummandMask1@@5) o_2@@85 f_4@@85))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| SummandMask2@@5) o_2@@85 f_4@@85))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_43465) (SummandMask1@@6 T@PolymorphicMapType_43465) (SummandMask2@@6 T@PolymorphicMapType_43465) (o_2@@86 T@Ref) (f_4@@86 T@Field_20358_1204) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| ResultMask@@6) o_2@@86 f_4@@86) (+ (select (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| SummandMask1@@6) o_2@@86 f_4@@86) (select (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| SummandMask2@@6) o_2@@86 f_4@@86))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| ResultMask@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| SummandMask1@@6) o_2@@86 f_4@@86))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| SummandMask2@@6) o_2@@86 f_4@@86))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_43465) (SummandMask1@@7 T@PolymorphicMapType_43465) (SummandMask2@@7 T@PolymorphicMapType_43465) (o_2@@87 T@Ref) (f_4@@87 T@Field_20358_20268) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| ResultMask@@7) o_2@@87 f_4@@87) (+ (select (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| SummandMask1@@7) o_2@@87 f_4@@87) (select (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| SummandMask2@@7) o_2@@87 f_4@@87))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| ResultMask@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| SummandMask1@@7) o_2@@87 f_4@@87))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| SummandMask2@@7) o_2@@87 f_4@@87))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_43465) (SummandMask1@@8 T@PolymorphicMapType_43465) (SummandMask2@@8 T@PolymorphicMapType_43465) (o_2@@88 T@Ref) (f_4@@88 T@Field_52995_52996) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| ResultMask@@8) o_2@@88 f_4@@88) (+ (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| SummandMask1@@8) o_2@@88 f_4@@88) (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| SummandMask2@@8) o_2@@88 f_4@@88))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| ResultMask@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| SummandMask1@@8) o_2@@88 f_4@@88))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| SummandMask2@@8) o_2@@88 f_4@@88))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_43465) (SummandMask1@@9 T@PolymorphicMapType_43465) (SummandMask2@@9 T@PolymorphicMapType_43465) (o_2@@89 T@Ref) (f_4@@89 T@Field_20267_49395) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| ResultMask@@9) o_2@@89 f_4@@89) (+ (select (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| SummandMask1@@9) o_2@@89 f_4@@89) (select (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| SummandMask2@@9) o_2@@89 f_4@@89))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| ResultMask@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| SummandMask1@@9) o_2@@89 f_4@@89))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| SummandMask2@@9) o_2@@89 f_4@@89))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_43465) (SummandMask1@@10 T@PolymorphicMapType_43465) (SummandMask2@@10 T@PolymorphicMapType_43465) (o_2@@90 T@Ref) (f_4@@90 T@Field_43504_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| ResultMask@@10) o_2@@90 f_4@@90) (+ (select (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| SummandMask1@@10) o_2@@90 f_4@@90) (select (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| SummandMask2@@10) o_2@@90 f_4@@90))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| ResultMask@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| SummandMask1@@10) o_2@@90 f_4@@90))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| SummandMask2@@10) o_2@@90 f_4@@90))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_43465) (SummandMask1@@11 T@PolymorphicMapType_43465) (SummandMask2@@11 T@PolymorphicMapType_43465) (o_2@@91 T@Ref) (f_4@@91 T@Field_46881_1204) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| ResultMask@@11) o_2@@91 f_4@@91) (+ (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| SummandMask1@@11) o_2@@91 f_4@@91) (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| SummandMask2@@11) o_2@@91 f_4@@91))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| ResultMask@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| SummandMask1@@11) o_2@@91 f_4@@91))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| SummandMask2@@11) o_2@@91 f_4@@91))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_43465) (SummandMask1@@12 T@PolymorphicMapType_43465) (SummandMask2@@12 T@PolymorphicMapType_43465) (o_2@@92 T@Ref) (f_4@@92 T@Field_43517_43518) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| ResultMask@@12) o_2@@92 f_4@@92) (+ (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| SummandMask1@@12) o_2@@92 f_4@@92) (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| SummandMask2@@12) o_2@@92 f_4@@92))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| ResultMask@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| SummandMask1@@12) o_2@@92 f_4@@92))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| SummandMask2@@12) o_2@@92 f_4@@92))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_43465) (SummandMask1@@13 T@PolymorphicMapType_43465) (SummandMask2@@13 T@PolymorphicMapType_43465) (o_2@@93 T@Ref) (f_4@@93 T@Field_20267_20309) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| ResultMask@@13) o_2@@93 f_4@@93) (+ (select (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| SummandMask1@@13) o_2@@93 f_4@@93) (select (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| SummandMask2@@13) o_2@@93 f_4@@93))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| ResultMask@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| SummandMask1@@13) o_2@@93 f_4@@93))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| SummandMask2@@13) o_2@@93 f_4@@93))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_43465) (SummandMask1@@14 T@PolymorphicMapType_43465) (SummandMask2@@14 T@PolymorphicMapType_43465) (o_2@@94 T@Ref) (f_4@@94 T@Field_49390_49395) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| ResultMask@@14) o_2@@94 f_4@@94) (+ (select (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| SummandMask1@@14) o_2@@94 f_4@@94) (select (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| SummandMask2@@14) o_2@@94 f_4@@94))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| ResultMask@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| SummandMask1@@14) o_2@@94 f_4@@94))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| SummandMask2@@14) o_2@@94 f_4@@94))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_43465) (SummandMask1@@15 T@PolymorphicMapType_43465) (SummandMask2@@15 T@PolymorphicMapType_43465) (o_2@@95 T@Ref) (f_4@@95 T@Field_20308_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| ResultMask@@15) o_2@@95 f_4@@95) (+ (select (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| SummandMask1@@15) o_2@@95 f_4@@95) (select (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| SummandMask2@@15) o_2@@95 f_4@@95))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| ResultMask@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| SummandMask1@@15) o_2@@95 f_4@@95))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| SummandMask2@@15) o_2@@95 f_4@@95))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_43465) (SummandMask1@@16 T@PolymorphicMapType_43465) (SummandMask2@@16 T@PolymorphicMapType_43465) (o_2@@96 T@Ref) (f_4@@96 T@Field_20308_1204) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| ResultMask@@16) o_2@@96 f_4@@96) (+ (select (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| SummandMask1@@16) o_2@@96 f_4@@96) (select (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| SummandMask2@@16) o_2@@96 f_4@@96))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| ResultMask@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| SummandMask1@@16) o_2@@96 f_4@@96))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| SummandMask2@@16) o_2@@96 f_4@@96))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_43465) (SummandMask1@@17 T@PolymorphicMapType_43465) (SummandMask2@@17 T@PolymorphicMapType_43465) (o_2@@97 T@Ref) (f_4@@97 T@Field_20308_20268) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| ResultMask@@17) o_2@@97 f_4@@97) (+ (select (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| SummandMask1@@17) o_2@@97 f_4@@97) (select (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| SummandMask2@@17) o_2@@97 f_4@@97))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| ResultMask@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| SummandMask1@@17) o_2@@97 f_4@@97))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| SummandMask2@@17) o_2@@97 f_4@@97))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_43465) (SummandMask1@@18 T@PolymorphicMapType_43465) (SummandMask2@@18 T@PolymorphicMapType_43465) (o_2@@98 T@Ref) (f_4@@98 T@Field_47230_47231) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| ResultMask@@18) o_2@@98 f_4@@98) (+ (select (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| SummandMask1@@18) o_2@@98 f_4@@98) (select (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| SummandMask2@@18) o_2@@98 f_4@@98))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| ResultMask@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| SummandMask1@@18) o_2@@98 f_4@@98))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| SummandMask2@@18) o_2@@98 f_4@@98))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_43444) (Mask@@79 T@PolymorphicMapType_43465) (this@@14 T@Ref) ) (!  (=> (state Heap@@44 Mask@@79) (= (|getNext'| Heap@@44 this@@14) (|getNext#frame| (select (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@44) null (valid this@@14)) this@@14)))
 :qid |stdinbpl.214:15|
 :skolemid |25|
 :pattern ( (state Heap@@44 Mask@@79) (|getNext'| Heap@@44 this@@14))
)))
(assert (forall ((this@@15 T@Ref) ) (! (= (getPredWandId_20308_20309 (valid this@@15)) 0)
 :qid |stdinbpl.318:15|
 :skolemid |29|
 :pattern ( (valid this@@15))
)))
(assert (forall ((this@@16 T@Ref) ) (! (= (getPredWandId_20333_20334 (p_14 this@@16)) 1)
 :qid |stdinbpl.394:15|
 :skolemid |35|
 :pattern ( (p_14 this@@16))
)))
(assert (forall ((this@@17 T@Ref) ) (! (= (getPredWandId_20358_20359 (q_18 this@@17)) 2)
 :qid |stdinbpl.470:15|
 :skolemid |41|
 :pattern ( (q_18 this@@17))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_43444) (o_104 T@Ref) (f_106 T@Field_53282_53287) (v T@PolymorphicMapType_43993) ) (! (succHeap Heap@@45 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@45) (store (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@45) o_104 f_106 v) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@45) (store (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@45) o_104 f_106 v) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@45) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_43444) (o_104@@0 T@Ref) (f_106@@0 T@Field_20358_1204) (v@@0 Int) ) (! (succHeap Heap@@46 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@46) (store (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@46) o_104@@0 f_106@@0 v@@0)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@46) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@46) (store (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@46) o_104@@0 f_106@@0 v@@0)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_43444) (o_104@@1 T@Ref) (f_106@@1 T@Field_52995_52996) (v@@1 T@FrameType) ) (! (succHeap Heap@@47 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@47) (store (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@47) o_104@@1 f_106@@1 v@@1) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@47) (store (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@47) o_104@@1 f_106@@1 v@@1) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@47) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_43444) (o_104@@2 T@Ref) (f_106@@2 T@Field_20358_20268) (v@@2 T@Ref) ) (! (succHeap Heap@@48 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@48) (store (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@48) o_104@@2 f_106@@2 v@@2) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@48) (store (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@48) o_104@@2 f_106@@2 v@@2) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@48) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_43444) (o_104@@3 T@Ref) (f_106@@3 T@Field_20358_53) (v@@3 Bool) ) (! (succHeap Heap@@49 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@49) (store (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@49) o_104@@3 f_106@@3 v@@3) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@49) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@49) (store (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@49) o_104@@3 f_106@@3 v@@3) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_43444) (o_104@@4 T@Ref) (f_106@@4 T@Field_51805_51810) (v@@4 T@PolymorphicMapType_43993) ) (! (succHeap Heap@@50 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@50) (store (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@50) o_104@@4 f_106@@4 v@@4) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@50) (store (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@50) o_104@@4 f_106@@4 v@@4) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@50) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_43444) (o_104@@5 T@Ref) (f_106@@5 T@Field_20333_1204) (v@@5 Int) ) (! (succHeap Heap@@51 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@51) (store (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@51) o_104@@5 f_106@@5 v@@5) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@51) (store (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@51) o_104@@5 f_106@@5 v@@5) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@51) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_43444) (o_104@@6 T@Ref) (f_106@@6 T@Field_51792_51793) (v@@6 T@FrameType) ) (! (succHeap Heap@@52 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@52) (store (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@52) o_104@@6 f_106@@6 v@@6) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@52) (store (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@52) o_104@@6 f_106@@6 v@@6) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@52) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_43444) (o_104@@7 T@Ref) (f_106@@7 T@Field_20333_20268) (v@@7 T@Ref) ) (! (succHeap Heap@@53 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@53) (store (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@53) o_104@@7 f_106@@7 v@@7) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@53)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@53) (store (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@53) o_104@@7 f_106@@7 v@@7) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@53) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@53)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_43444) (o_104@@8 T@Ref) (f_106@@8 T@Field_20333_53) (v@@8 Bool) ) (! (succHeap Heap@@54 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@54) (store (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@54) o_104@@8 f_106@@8 v@@8) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@54) (store (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@54) o_104@@8 f_106@@8 v@@8) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@54) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_43444) (o_104@@9 T@Ref) (f_106@@9 T@Field_49390_49395) (v@@9 T@PolymorphicMapType_43993) ) (! (succHeap Heap@@55 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@55) (store (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@55) o_104@@9 f_106@@9 v@@9) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@55) (store (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@55) o_104@@9 f_106@@9 v@@9) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@55) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_43444) (o_104@@10 T@Ref) (f_106@@10 T@Field_20308_1204) (v@@10 Int) ) (! (succHeap Heap@@56 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@56) (store (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@56) o_104@@10 f_106@@10 v@@10) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@56) (store (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@56) o_104@@10 f_106@@10 v@@10) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@56) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_43444) (o_104@@11 T@Ref) (f_106@@11 T@Field_47230_47231) (v@@11 T@FrameType) ) (! (succHeap Heap@@57 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@57) (store (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@57) o_104@@11 f_106@@11 v@@11) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@57) (store (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@57) o_104@@11 f_106@@11 v@@11) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@57) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_43444) (o_104@@12 T@Ref) (f_106@@12 T@Field_20308_20268) (v@@12 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@58) (store (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@58) o_104@@12 f_106@@12 v@@12) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@58) (store (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@58) o_104@@12 f_106@@12 v@@12) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@58) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_43444) (o_104@@13 T@Ref) (f_106@@13 T@Field_20308_53) (v@@13 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@59) (store (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@59) o_104@@13 f_106@@13 v@@13) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@59) (store (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@59) o_104@@13 f_106@@13 v@@13) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@59) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_43444) (o_104@@14 T@Ref) (f_106@@14 T@Field_20267_49395) (v@@14 T@PolymorphicMapType_43993) ) (! (succHeap Heap@@60 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@60) (store (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@60) o_104@@14 f_106@@14 v@@14) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@60) (store (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@60) o_104@@14 f_106@@14 v@@14) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@60) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_43444) (o_104@@15 T@Ref) (f_106@@15 T@Field_46881_1204) (v@@15 Int) ) (! (succHeap Heap@@61 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@61) (store (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@61) o_104@@15 f_106@@15 v@@15) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@61) (store (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@61) o_104@@15 f_106@@15 v@@15) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@61) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_43444) (o_104@@16 T@Ref) (f_106@@16 T@Field_20267_20309) (v@@16 T@FrameType) ) (! (succHeap Heap@@62 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@62) (store (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@62) o_104@@16 f_106@@16 v@@16) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@62) (store (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@62) o_104@@16 f_106@@16 v@@16) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@62) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@62)))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_43444) (o_104@@17 T@Ref) (f_106@@17 T@Field_43517_43518) (v@@17 T@Ref) ) (! (succHeap Heap@@63 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@63) (store (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@63) o_104@@17 f_106@@17 v@@17) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@63)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@63) (store (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@63) o_104@@17 f_106@@17 v@@17) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@63) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@63)))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_43444) (o_104@@18 T@Ref) (f_106@@18 T@Field_43504_53) (v@@18 Bool) ) (! (succHeap Heap@@64 (PolymorphicMapType_43444 (store (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@64) o_104@@18 f_106@@18 v@@18) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@64)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43444 (store (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@64) o_104@@18 f_106@@18 v@@18) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@64) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@64)))
)))
(assert (forall ((this@@18 T@Ref) ) (! (= (PredicateMaskField_20308 (valid this@@18)) (|valid#sm| this@@18))
 :qid |stdinbpl.310:15|
 :skolemid |27|
 :pattern ( (PredicateMaskField_20308 (valid this@@18)))
)))
(assert (forall ((this@@19 T@Ref) ) (! (= (PredicateMaskField_20333 (p_14 this@@19)) (|p#sm| this@@19))
 :qid |stdinbpl.386:15|
 :skolemid |33|
 :pattern ( (PredicateMaskField_20333 (p_14 this@@19)))
)))
(assert (forall ((this@@20 T@Ref) ) (! (= (PredicateMaskField_20358 (q_18 this@@20)) (|q#sm| this@@20))
 :qid |stdinbpl.462:15|
 :skolemid |39|
 :pattern ( (PredicateMaskField_20358 (q_18 this@@20)))
)))
(assert (forall ((o_104@@19 T@Ref) (f_200 T@Field_43517_43518) (Heap@@65 T@PolymorphicMapType_43444) ) (!  (=> (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@65) o_104@@19 $allocated) (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@65) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@65) o_104@@19 f_200) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@65) o_104@@19 f_200))
)))
(assert (forall ((p@@4 T@Field_20267_20309) (v_1@@3 T@FrameType) (q T@Field_20267_20309) (w@@3 T@FrameType) (r T@Field_20267_20309) (u T@FrameType) ) (!  (=> (and (InsidePredicate_43504_43504 p@@4 v_1@@3 q w@@3) (InsidePredicate_43504_43504 q w@@3 r u)) (InsidePredicate_43504_43504 p@@4 v_1@@3 r u))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_43504 p@@4 v_1@@3 q w@@3) (InsidePredicate_43504_43504 q w@@3 r u))
)))
(assert (forall ((p@@5 T@Field_20267_20309) (v_1@@4 T@FrameType) (q@@0 T@Field_20267_20309) (w@@4 T@FrameType) (r@@0 T@Field_51792_51793) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_43504 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_43504_20333 q@@0 w@@4 r@@0 u@@0)) (InsidePredicate_43504_20333 p@@5 v_1@@4 r@@0 u@@0))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_43504 p@@5 v_1@@4 q@@0 w@@4) (InsidePredicate_43504_20333 q@@0 w@@4 r@@0 u@@0))
)))
(assert (forall ((p@@6 T@Field_20267_20309) (v_1@@5 T@FrameType) (q@@1 T@Field_20267_20309) (w@@5 T@FrameType) (r@@1 T@Field_52995_52996) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_43504 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_43504_20358 q@@1 w@@5 r@@1 u@@1)) (InsidePredicate_43504_20358 p@@6 v_1@@5 r@@1 u@@1))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_43504 p@@6 v_1@@5 q@@1 w@@5) (InsidePredicate_43504_20358 q@@1 w@@5 r@@1 u@@1))
)))
(assert (forall ((p@@7 T@Field_20267_20309) (v_1@@6 T@FrameType) (q@@2 T@Field_20267_20309) (w@@6 T@FrameType) (r@@2 T@Field_47230_47231) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_43504 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_43504_20308 q@@2 w@@6 r@@2 u@@2)) (InsidePredicate_43504_20308 p@@7 v_1@@6 r@@2 u@@2))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_43504 p@@7 v_1@@6 q@@2 w@@6) (InsidePredicate_43504_20308 q@@2 w@@6 r@@2 u@@2))
)))
(assert (forall ((p@@8 T@Field_20267_20309) (v_1@@7 T@FrameType) (q@@3 T@Field_51792_51793) (w@@7 T@FrameType) (r@@3 T@Field_20267_20309) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_20333 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_20333_43504 q@@3 w@@7 r@@3 u@@3)) (InsidePredicate_43504_43504 p@@8 v_1@@7 r@@3 u@@3))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_20333 p@@8 v_1@@7 q@@3 w@@7) (InsidePredicate_20333_43504 q@@3 w@@7 r@@3 u@@3))
)))
(assert (forall ((p@@9 T@Field_20267_20309) (v_1@@8 T@FrameType) (q@@4 T@Field_51792_51793) (w@@8 T@FrameType) (r@@4 T@Field_51792_51793) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_20333 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_20333_20333 q@@4 w@@8 r@@4 u@@4)) (InsidePredicate_43504_20333 p@@9 v_1@@8 r@@4 u@@4))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_20333 p@@9 v_1@@8 q@@4 w@@8) (InsidePredicate_20333_20333 q@@4 w@@8 r@@4 u@@4))
)))
(assert (forall ((p@@10 T@Field_20267_20309) (v_1@@9 T@FrameType) (q@@5 T@Field_51792_51793) (w@@9 T@FrameType) (r@@5 T@Field_52995_52996) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_20333 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_20333_20358 q@@5 w@@9 r@@5 u@@5)) (InsidePredicate_43504_20358 p@@10 v_1@@9 r@@5 u@@5))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_20333 p@@10 v_1@@9 q@@5 w@@9) (InsidePredicate_20333_20358 q@@5 w@@9 r@@5 u@@5))
)))
(assert (forall ((p@@11 T@Field_20267_20309) (v_1@@10 T@FrameType) (q@@6 T@Field_51792_51793) (w@@10 T@FrameType) (r@@6 T@Field_47230_47231) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_20333 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_20333_20308 q@@6 w@@10 r@@6 u@@6)) (InsidePredicate_43504_20308 p@@11 v_1@@10 r@@6 u@@6))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_20333 p@@11 v_1@@10 q@@6 w@@10) (InsidePredicate_20333_20308 q@@6 w@@10 r@@6 u@@6))
)))
(assert (forall ((p@@12 T@Field_20267_20309) (v_1@@11 T@FrameType) (q@@7 T@Field_52995_52996) (w@@11 T@FrameType) (r@@7 T@Field_20267_20309) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_20358 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_20358_43504 q@@7 w@@11 r@@7 u@@7)) (InsidePredicate_43504_43504 p@@12 v_1@@11 r@@7 u@@7))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_20358 p@@12 v_1@@11 q@@7 w@@11) (InsidePredicate_20358_43504 q@@7 w@@11 r@@7 u@@7))
)))
(assert (forall ((p@@13 T@Field_20267_20309) (v_1@@12 T@FrameType) (q@@8 T@Field_52995_52996) (w@@12 T@FrameType) (r@@8 T@Field_51792_51793) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_20358 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_20358_20333 q@@8 w@@12 r@@8 u@@8)) (InsidePredicate_43504_20333 p@@13 v_1@@12 r@@8 u@@8))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_20358 p@@13 v_1@@12 q@@8 w@@12) (InsidePredicate_20358_20333 q@@8 w@@12 r@@8 u@@8))
)))
(assert (forall ((p@@14 T@Field_20267_20309) (v_1@@13 T@FrameType) (q@@9 T@Field_52995_52996) (w@@13 T@FrameType) (r@@9 T@Field_52995_52996) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_20358 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_20358_20358 q@@9 w@@13 r@@9 u@@9)) (InsidePredicate_43504_20358 p@@14 v_1@@13 r@@9 u@@9))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_20358 p@@14 v_1@@13 q@@9 w@@13) (InsidePredicate_20358_20358 q@@9 w@@13 r@@9 u@@9))
)))
(assert (forall ((p@@15 T@Field_20267_20309) (v_1@@14 T@FrameType) (q@@10 T@Field_52995_52996) (w@@14 T@FrameType) (r@@10 T@Field_47230_47231) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_20358 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_20358_20308 q@@10 w@@14 r@@10 u@@10)) (InsidePredicate_43504_20308 p@@15 v_1@@14 r@@10 u@@10))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_20358 p@@15 v_1@@14 q@@10 w@@14) (InsidePredicate_20358_20308 q@@10 w@@14 r@@10 u@@10))
)))
(assert (forall ((p@@16 T@Field_20267_20309) (v_1@@15 T@FrameType) (q@@11 T@Field_47230_47231) (w@@15 T@FrameType) (r@@11 T@Field_20267_20309) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_20308 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_20308_43504 q@@11 w@@15 r@@11 u@@11)) (InsidePredicate_43504_43504 p@@16 v_1@@15 r@@11 u@@11))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_20308 p@@16 v_1@@15 q@@11 w@@15) (InsidePredicate_20308_43504 q@@11 w@@15 r@@11 u@@11))
)))
(assert (forall ((p@@17 T@Field_20267_20309) (v_1@@16 T@FrameType) (q@@12 T@Field_47230_47231) (w@@16 T@FrameType) (r@@12 T@Field_51792_51793) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_20308 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_20308_20333 q@@12 w@@16 r@@12 u@@12)) (InsidePredicate_43504_20333 p@@17 v_1@@16 r@@12 u@@12))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_20308 p@@17 v_1@@16 q@@12 w@@16) (InsidePredicate_20308_20333 q@@12 w@@16 r@@12 u@@12))
)))
(assert (forall ((p@@18 T@Field_20267_20309) (v_1@@17 T@FrameType) (q@@13 T@Field_47230_47231) (w@@17 T@FrameType) (r@@13 T@Field_52995_52996) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_20308 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_20308_20358 q@@13 w@@17 r@@13 u@@13)) (InsidePredicate_43504_20358 p@@18 v_1@@17 r@@13 u@@13))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_20308 p@@18 v_1@@17 q@@13 w@@17) (InsidePredicate_20308_20358 q@@13 w@@17 r@@13 u@@13))
)))
(assert (forall ((p@@19 T@Field_20267_20309) (v_1@@18 T@FrameType) (q@@14 T@Field_47230_47231) (w@@18 T@FrameType) (r@@14 T@Field_47230_47231) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_43504_20308 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_20308_20308 q@@14 w@@18 r@@14 u@@14)) (InsidePredicate_43504_20308 p@@19 v_1@@18 r@@14 u@@14))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43504_20308 p@@19 v_1@@18 q@@14 w@@18) (InsidePredicate_20308_20308 q@@14 w@@18 r@@14 u@@14))
)))
(assert (forall ((p@@20 T@Field_52995_52996) (v_1@@19 T@FrameType) (q@@15 T@Field_20267_20309) (w@@19 T@FrameType) (r@@15 T@Field_20267_20309) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_43504 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_43504_43504 q@@15 w@@19 r@@15 u@@15)) (InsidePredicate_20358_43504 p@@20 v_1@@19 r@@15 u@@15))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_43504 p@@20 v_1@@19 q@@15 w@@19) (InsidePredicate_43504_43504 q@@15 w@@19 r@@15 u@@15))
)))
(assert (forall ((p@@21 T@Field_52995_52996) (v_1@@20 T@FrameType) (q@@16 T@Field_20267_20309) (w@@20 T@FrameType) (r@@16 T@Field_51792_51793) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_43504 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_43504_20333 q@@16 w@@20 r@@16 u@@16)) (InsidePredicate_20358_20333 p@@21 v_1@@20 r@@16 u@@16))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_43504 p@@21 v_1@@20 q@@16 w@@20) (InsidePredicate_43504_20333 q@@16 w@@20 r@@16 u@@16))
)))
(assert (forall ((p@@22 T@Field_52995_52996) (v_1@@21 T@FrameType) (q@@17 T@Field_20267_20309) (w@@21 T@FrameType) (r@@17 T@Field_52995_52996) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_43504 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_43504_20358 q@@17 w@@21 r@@17 u@@17)) (InsidePredicate_20358_20358 p@@22 v_1@@21 r@@17 u@@17))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_43504 p@@22 v_1@@21 q@@17 w@@21) (InsidePredicate_43504_20358 q@@17 w@@21 r@@17 u@@17))
)))
(assert (forall ((p@@23 T@Field_52995_52996) (v_1@@22 T@FrameType) (q@@18 T@Field_20267_20309) (w@@22 T@FrameType) (r@@18 T@Field_47230_47231) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_43504 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_43504_20308 q@@18 w@@22 r@@18 u@@18)) (InsidePredicate_20358_20308 p@@23 v_1@@22 r@@18 u@@18))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_43504 p@@23 v_1@@22 q@@18 w@@22) (InsidePredicate_43504_20308 q@@18 w@@22 r@@18 u@@18))
)))
(assert (forall ((p@@24 T@Field_52995_52996) (v_1@@23 T@FrameType) (q@@19 T@Field_51792_51793) (w@@23 T@FrameType) (r@@19 T@Field_20267_20309) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_20333 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_20333_43504 q@@19 w@@23 r@@19 u@@19)) (InsidePredicate_20358_43504 p@@24 v_1@@23 r@@19 u@@19))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_20333 p@@24 v_1@@23 q@@19 w@@23) (InsidePredicate_20333_43504 q@@19 w@@23 r@@19 u@@19))
)))
(assert (forall ((p@@25 T@Field_52995_52996) (v_1@@24 T@FrameType) (q@@20 T@Field_51792_51793) (w@@24 T@FrameType) (r@@20 T@Field_51792_51793) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_20333 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_20333_20333 q@@20 w@@24 r@@20 u@@20)) (InsidePredicate_20358_20333 p@@25 v_1@@24 r@@20 u@@20))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_20333 p@@25 v_1@@24 q@@20 w@@24) (InsidePredicate_20333_20333 q@@20 w@@24 r@@20 u@@20))
)))
(assert (forall ((p@@26 T@Field_52995_52996) (v_1@@25 T@FrameType) (q@@21 T@Field_51792_51793) (w@@25 T@FrameType) (r@@21 T@Field_52995_52996) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_20333 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_20333_20358 q@@21 w@@25 r@@21 u@@21)) (InsidePredicate_20358_20358 p@@26 v_1@@25 r@@21 u@@21))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_20333 p@@26 v_1@@25 q@@21 w@@25) (InsidePredicate_20333_20358 q@@21 w@@25 r@@21 u@@21))
)))
(assert (forall ((p@@27 T@Field_52995_52996) (v_1@@26 T@FrameType) (q@@22 T@Field_51792_51793) (w@@26 T@FrameType) (r@@22 T@Field_47230_47231) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_20333 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_20333_20308 q@@22 w@@26 r@@22 u@@22)) (InsidePredicate_20358_20308 p@@27 v_1@@26 r@@22 u@@22))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_20333 p@@27 v_1@@26 q@@22 w@@26) (InsidePredicate_20333_20308 q@@22 w@@26 r@@22 u@@22))
)))
(assert (forall ((p@@28 T@Field_52995_52996) (v_1@@27 T@FrameType) (q@@23 T@Field_52995_52996) (w@@27 T@FrameType) (r@@23 T@Field_20267_20309) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_20358 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_20358_43504 q@@23 w@@27 r@@23 u@@23)) (InsidePredicate_20358_43504 p@@28 v_1@@27 r@@23 u@@23))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_20358 p@@28 v_1@@27 q@@23 w@@27) (InsidePredicate_20358_43504 q@@23 w@@27 r@@23 u@@23))
)))
(assert (forall ((p@@29 T@Field_52995_52996) (v_1@@28 T@FrameType) (q@@24 T@Field_52995_52996) (w@@28 T@FrameType) (r@@24 T@Field_51792_51793) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_20358 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_20358_20333 q@@24 w@@28 r@@24 u@@24)) (InsidePredicate_20358_20333 p@@29 v_1@@28 r@@24 u@@24))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_20358 p@@29 v_1@@28 q@@24 w@@28) (InsidePredicate_20358_20333 q@@24 w@@28 r@@24 u@@24))
)))
(assert (forall ((p@@30 T@Field_52995_52996) (v_1@@29 T@FrameType) (q@@25 T@Field_52995_52996) (w@@29 T@FrameType) (r@@25 T@Field_52995_52996) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_20358 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_20358_20358 q@@25 w@@29 r@@25 u@@25)) (InsidePredicate_20358_20358 p@@30 v_1@@29 r@@25 u@@25))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_20358 p@@30 v_1@@29 q@@25 w@@29) (InsidePredicate_20358_20358 q@@25 w@@29 r@@25 u@@25))
)))
(assert (forall ((p@@31 T@Field_52995_52996) (v_1@@30 T@FrameType) (q@@26 T@Field_52995_52996) (w@@30 T@FrameType) (r@@26 T@Field_47230_47231) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_20358 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_20358_20308 q@@26 w@@30 r@@26 u@@26)) (InsidePredicate_20358_20308 p@@31 v_1@@30 r@@26 u@@26))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_20358 p@@31 v_1@@30 q@@26 w@@30) (InsidePredicate_20358_20308 q@@26 w@@30 r@@26 u@@26))
)))
(assert (forall ((p@@32 T@Field_52995_52996) (v_1@@31 T@FrameType) (q@@27 T@Field_47230_47231) (w@@31 T@FrameType) (r@@27 T@Field_20267_20309) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_20308 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_20308_43504 q@@27 w@@31 r@@27 u@@27)) (InsidePredicate_20358_43504 p@@32 v_1@@31 r@@27 u@@27))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_20308 p@@32 v_1@@31 q@@27 w@@31) (InsidePredicate_20308_43504 q@@27 w@@31 r@@27 u@@27))
)))
(assert (forall ((p@@33 T@Field_52995_52996) (v_1@@32 T@FrameType) (q@@28 T@Field_47230_47231) (w@@32 T@FrameType) (r@@28 T@Field_51792_51793) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_20308 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_20308_20333 q@@28 w@@32 r@@28 u@@28)) (InsidePredicate_20358_20333 p@@33 v_1@@32 r@@28 u@@28))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_20308 p@@33 v_1@@32 q@@28 w@@32) (InsidePredicate_20308_20333 q@@28 w@@32 r@@28 u@@28))
)))
(assert (forall ((p@@34 T@Field_52995_52996) (v_1@@33 T@FrameType) (q@@29 T@Field_47230_47231) (w@@33 T@FrameType) (r@@29 T@Field_52995_52996) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_20308 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_20308_20358 q@@29 w@@33 r@@29 u@@29)) (InsidePredicate_20358_20358 p@@34 v_1@@33 r@@29 u@@29))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_20308 p@@34 v_1@@33 q@@29 w@@33) (InsidePredicate_20308_20358 q@@29 w@@33 r@@29 u@@29))
)))
(assert (forall ((p@@35 T@Field_52995_52996) (v_1@@34 T@FrameType) (q@@30 T@Field_47230_47231) (w@@34 T@FrameType) (r@@30 T@Field_47230_47231) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_20358_20308 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_20308_20308 q@@30 w@@34 r@@30 u@@30)) (InsidePredicate_20358_20308 p@@35 v_1@@34 r@@30 u@@30))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20358_20308 p@@35 v_1@@34 q@@30 w@@34) (InsidePredicate_20308_20308 q@@30 w@@34 r@@30 u@@30))
)))
(assert (forall ((p@@36 T@Field_51792_51793) (v_1@@35 T@FrameType) (q@@31 T@Field_20267_20309) (w@@35 T@FrameType) (r@@31 T@Field_20267_20309) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_43504 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_43504_43504 q@@31 w@@35 r@@31 u@@31)) (InsidePredicate_20333_43504 p@@36 v_1@@35 r@@31 u@@31))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_43504 p@@36 v_1@@35 q@@31 w@@35) (InsidePredicate_43504_43504 q@@31 w@@35 r@@31 u@@31))
)))
(assert (forall ((p@@37 T@Field_51792_51793) (v_1@@36 T@FrameType) (q@@32 T@Field_20267_20309) (w@@36 T@FrameType) (r@@32 T@Field_51792_51793) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_43504 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_43504_20333 q@@32 w@@36 r@@32 u@@32)) (InsidePredicate_20333_20333 p@@37 v_1@@36 r@@32 u@@32))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_43504 p@@37 v_1@@36 q@@32 w@@36) (InsidePredicate_43504_20333 q@@32 w@@36 r@@32 u@@32))
)))
(assert (forall ((p@@38 T@Field_51792_51793) (v_1@@37 T@FrameType) (q@@33 T@Field_20267_20309) (w@@37 T@FrameType) (r@@33 T@Field_52995_52996) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_43504 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_43504_20358 q@@33 w@@37 r@@33 u@@33)) (InsidePredicate_20333_20358 p@@38 v_1@@37 r@@33 u@@33))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_43504 p@@38 v_1@@37 q@@33 w@@37) (InsidePredicate_43504_20358 q@@33 w@@37 r@@33 u@@33))
)))
(assert (forall ((p@@39 T@Field_51792_51793) (v_1@@38 T@FrameType) (q@@34 T@Field_20267_20309) (w@@38 T@FrameType) (r@@34 T@Field_47230_47231) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_43504 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_43504_20308 q@@34 w@@38 r@@34 u@@34)) (InsidePredicate_20333_20308 p@@39 v_1@@38 r@@34 u@@34))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_43504 p@@39 v_1@@38 q@@34 w@@38) (InsidePredicate_43504_20308 q@@34 w@@38 r@@34 u@@34))
)))
(assert (forall ((p@@40 T@Field_51792_51793) (v_1@@39 T@FrameType) (q@@35 T@Field_51792_51793) (w@@39 T@FrameType) (r@@35 T@Field_20267_20309) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20333 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_20333_43504 q@@35 w@@39 r@@35 u@@35)) (InsidePredicate_20333_43504 p@@40 v_1@@39 r@@35 u@@35))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20333 p@@40 v_1@@39 q@@35 w@@39) (InsidePredicate_20333_43504 q@@35 w@@39 r@@35 u@@35))
)))
(assert (forall ((p@@41 T@Field_51792_51793) (v_1@@40 T@FrameType) (q@@36 T@Field_51792_51793) (w@@40 T@FrameType) (r@@36 T@Field_51792_51793) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20333 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_20333_20333 q@@36 w@@40 r@@36 u@@36)) (InsidePredicate_20333_20333 p@@41 v_1@@40 r@@36 u@@36))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20333 p@@41 v_1@@40 q@@36 w@@40) (InsidePredicate_20333_20333 q@@36 w@@40 r@@36 u@@36))
)))
(assert (forall ((p@@42 T@Field_51792_51793) (v_1@@41 T@FrameType) (q@@37 T@Field_51792_51793) (w@@41 T@FrameType) (r@@37 T@Field_52995_52996) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20333 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_20333_20358 q@@37 w@@41 r@@37 u@@37)) (InsidePredicate_20333_20358 p@@42 v_1@@41 r@@37 u@@37))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20333 p@@42 v_1@@41 q@@37 w@@41) (InsidePredicate_20333_20358 q@@37 w@@41 r@@37 u@@37))
)))
(assert (forall ((p@@43 T@Field_51792_51793) (v_1@@42 T@FrameType) (q@@38 T@Field_51792_51793) (w@@42 T@FrameType) (r@@38 T@Field_47230_47231) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20333 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_20333_20308 q@@38 w@@42 r@@38 u@@38)) (InsidePredicate_20333_20308 p@@43 v_1@@42 r@@38 u@@38))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20333 p@@43 v_1@@42 q@@38 w@@42) (InsidePredicate_20333_20308 q@@38 w@@42 r@@38 u@@38))
)))
(assert (forall ((p@@44 T@Field_51792_51793) (v_1@@43 T@FrameType) (q@@39 T@Field_52995_52996) (w@@43 T@FrameType) (r@@39 T@Field_20267_20309) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20358 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_20358_43504 q@@39 w@@43 r@@39 u@@39)) (InsidePredicate_20333_43504 p@@44 v_1@@43 r@@39 u@@39))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20358 p@@44 v_1@@43 q@@39 w@@43) (InsidePredicate_20358_43504 q@@39 w@@43 r@@39 u@@39))
)))
(assert (forall ((p@@45 T@Field_51792_51793) (v_1@@44 T@FrameType) (q@@40 T@Field_52995_52996) (w@@44 T@FrameType) (r@@40 T@Field_51792_51793) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20358 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_20358_20333 q@@40 w@@44 r@@40 u@@40)) (InsidePredicate_20333_20333 p@@45 v_1@@44 r@@40 u@@40))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20358 p@@45 v_1@@44 q@@40 w@@44) (InsidePredicate_20358_20333 q@@40 w@@44 r@@40 u@@40))
)))
(assert (forall ((p@@46 T@Field_51792_51793) (v_1@@45 T@FrameType) (q@@41 T@Field_52995_52996) (w@@45 T@FrameType) (r@@41 T@Field_52995_52996) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20358 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_20358_20358 q@@41 w@@45 r@@41 u@@41)) (InsidePredicate_20333_20358 p@@46 v_1@@45 r@@41 u@@41))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20358 p@@46 v_1@@45 q@@41 w@@45) (InsidePredicate_20358_20358 q@@41 w@@45 r@@41 u@@41))
)))
(assert (forall ((p@@47 T@Field_51792_51793) (v_1@@46 T@FrameType) (q@@42 T@Field_52995_52996) (w@@46 T@FrameType) (r@@42 T@Field_47230_47231) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20358 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_20358_20308 q@@42 w@@46 r@@42 u@@42)) (InsidePredicate_20333_20308 p@@47 v_1@@46 r@@42 u@@42))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20358 p@@47 v_1@@46 q@@42 w@@46) (InsidePredicate_20358_20308 q@@42 w@@46 r@@42 u@@42))
)))
(assert (forall ((p@@48 T@Field_51792_51793) (v_1@@47 T@FrameType) (q@@43 T@Field_47230_47231) (w@@47 T@FrameType) (r@@43 T@Field_20267_20309) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20308 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_20308_43504 q@@43 w@@47 r@@43 u@@43)) (InsidePredicate_20333_43504 p@@48 v_1@@47 r@@43 u@@43))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20308 p@@48 v_1@@47 q@@43 w@@47) (InsidePredicate_20308_43504 q@@43 w@@47 r@@43 u@@43))
)))
(assert (forall ((p@@49 T@Field_51792_51793) (v_1@@48 T@FrameType) (q@@44 T@Field_47230_47231) (w@@48 T@FrameType) (r@@44 T@Field_51792_51793) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20308 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_20308_20333 q@@44 w@@48 r@@44 u@@44)) (InsidePredicate_20333_20333 p@@49 v_1@@48 r@@44 u@@44))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20308 p@@49 v_1@@48 q@@44 w@@48) (InsidePredicate_20308_20333 q@@44 w@@48 r@@44 u@@44))
)))
(assert (forall ((p@@50 T@Field_51792_51793) (v_1@@49 T@FrameType) (q@@45 T@Field_47230_47231) (w@@49 T@FrameType) (r@@45 T@Field_52995_52996) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20308 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_20308_20358 q@@45 w@@49 r@@45 u@@45)) (InsidePredicate_20333_20358 p@@50 v_1@@49 r@@45 u@@45))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20308 p@@50 v_1@@49 q@@45 w@@49) (InsidePredicate_20308_20358 q@@45 w@@49 r@@45 u@@45))
)))
(assert (forall ((p@@51 T@Field_51792_51793) (v_1@@50 T@FrameType) (q@@46 T@Field_47230_47231) (w@@50 T@FrameType) (r@@46 T@Field_47230_47231) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_20333_20308 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_20308_20308 q@@46 w@@50 r@@46 u@@46)) (InsidePredicate_20333_20308 p@@51 v_1@@50 r@@46 u@@46))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20333_20308 p@@51 v_1@@50 q@@46 w@@50) (InsidePredicate_20308_20308 q@@46 w@@50 r@@46 u@@46))
)))
(assert (forall ((p@@52 T@Field_47230_47231) (v_1@@51 T@FrameType) (q@@47 T@Field_20267_20309) (w@@51 T@FrameType) (r@@47 T@Field_20267_20309) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_43504 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_43504_43504 q@@47 w@@51 r@@47 u@@47)) (InsidePredicate_20308_43504 p@@52 v_1@@51 r@@47 u@@47))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_43504 p@@52 v_1@@51 q@@47 w@@51) (InsidePredicate_43504_43504 q@@47 w@@51 r@@47 u@@47))
)))
(assert (forall ((p@@53 T@Field_47230_47231) (v_1@@52 T@FrameType) (q@@48 T@Field_20267_20309) (w@@52 T@FrameType) (r@@48 T@Field_51792_51793) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_43504 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_43504_20333 q@@48 w@@52 r@@48 u@@48)) (InsidePredicate_20308_20333 p@@53 v_1@@52 r@@48 u@@48))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_43504 p@@53 v_1@@52 q@@48 w@@52) (InsidePredicate_43504_20333 q@@48 w@@52 r@@48 u@@48))
)))
(assert (forall ((p@@54 T@Field_47230_47231) (v_1@@53 T@FrameType) (q@@49 T@Field_20267_20309) (w@@53 T@FrameType) (r@@49 T@Field_52995_52996) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_43504 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_43504_20358 q@@49 w@@53 r@@49 u@@49)) (InsidePredicate_20308_20358 p@@54 v_1@@53 r@@49 u@@49))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_43504 p@@54 v_1@@53 q@@49 w@@53) (InsidePredicate_43504_20358 q@@49 w@@53 r@@49 u@@49))
)))
(assert (forall ((p@@55 T@Field_47230_47231) (v_1@@54 T@FrameType) (q@@50 T@Field_20267_20309) (w@@54 T@FrameType) (r@@50 T@Field_47230_47231) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_43504 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_43504_20308 q@@50 w@@54 r@@50 u@@50)) (InsidePredicate_20308_20308 p@@55 v_1@@54 r@@50 u@@50))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_43504 p@@55 v_1@@54 q@@50 w@@54) (InsidePredicate_43504_20308 q@@50 w@@54 r@@50 u@@50))
)))
(assert (forall ((p@@56 T@Field_47230_47231) (v_1@@55 T@FrameType) (q@@51 T@Field_51792_51793) (w@@55 T@FrameType) (r@@51 T@Field_20267_20309) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_20333 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_20333_43504 q@@51 w@@55 r@@51 u@@51)) (InsidePredicate_20308_43504 p@@56 v_1@@55 r@@51 u@@51))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_20333 p@@56 v_1@@55 q@@51 w@@55) (InsidePredicate_20333_43504 q@@51 w@@55 r@@51 u@@51))
)))
(assert (forall ((p@@57 T@Field_47230_47231) (v_1@@56 T@FrameType) (q@@52 T@Field_51792_51793) (w@@56 T@FrameType) (r@@52 T@Field_51792_51793) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_20333 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_20333_20333 q@@52 w@@56 r@@52 u@@52)) (InsidePredicate_20308_20333 p@@57 v_1@@56 r@@52 u@@52))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_20333 p@@57 v_1@@56 q@@52 w@@56) (InsidePredicate_20333_20333 q@@52 w@@56 r@@52 u@@52))
)))
(assert (forall ((p@@58 T@Field_47230_47231) (v_1@@57 T@FrameType) (q@@53 T@Field_51792_51793) (w@@57 T@FrameType) (r@@53 T@Field_52995_52996) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_20333 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_20333_20358 q@@53 w@@57 r@@53 u@@53)) (InsidePredicate_20308_20358 p@@58 v_1@@57 r@@53 u@@53))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_20333 p@@58 v_1@@57 q@@53 w@@57) (InsidePredicate_20333_20358 q@@53 w@@57 r@@53 u@@53))
)))
(assert (forall ((p@@59 T@Field_47230_47231) (v_1@@58 T@FrameType) (q@@54 T@Field_51792_51793) (w@@58 T@FrameType) (r@@54 T@Field_47230_47231) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_20333 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_20333_20308 q@@54 w@@58 r@@54 u@@54)) (InsidePredicate_20308_20308 p@@59 v_1@@58 r@@54 u@@54))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_20333 p@@59 v_1@@58 q@@54 w@@58) (InsidePredicate_20333_20308 q@@54 w@@58 r@@54 u@@54))
)))
(assert (forall ((p@@60 T@Field_47230_47231) (v_1@@59 T@FrameType) (q@@55 T@Field_52995_52996) (w@@59 T@FrameType) (r@@55 T@Field_20267_20309) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_20358 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_20358_43504 q@@55 w@@59 r@@55 u@@55)) (InsidePredicate_20308_43504 p@@60 v_1@@59 r@@55 u@@55))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_20358 p@@60 v_1@@59 q@@55 w@@59) (InsidePredicate_20358_43504 q@@55 w@@59 r@@55 u@@55))
)))
(assert (forall ((p@@61 T@Field_47230_47231) (v_1@@60 T@FrameType) (q@@56 T@Field_52995_52996) (w@@60 T@FrameType) (r@@56 T@Field_51792_51793) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_20358 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_20358_20333 q@@56 w@@60 r@@56 u@@56)) (InsidePredicate_20308_20333 p@@61 v_1@@60 r@@56 u@@56))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_20358 p@@61 v_1@@60 q@@56 w@@60) (InsidePredicate_20358_20333 q@@56 w@@60 r@@56 u@@56))
)))
(assert (forall ((p@@62 T@Field_47230_47231) (v_1@@61 T@FrameType) (q@@57 T@Field_52995_52996) (w@@61 T@FrameType) (r@@57 T@Field_52995_52996) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_20358 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_20358_20358 q@@57 w@@61 r@@57 u@@57)) (InsidePredicate_20308_20358 p@@62 v_1@@61 r@@57 u@@57))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_20358 p@@62 v_1@@61 q@@57 w@@61) (InsidePredicate_20358_20358 q@@57 w@@61 r@@57 u@@57))
)))
(assert (forall ((p@@63 T@Field_47230_47231) (v_1@@62 T@FrameType) (q@@58 T@Field_52995_52996) (w@@62 T@FrameType) (r@@58 T@Field_47230_47231) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_20358 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_20358_20308 q@@58 w@@62 r@@58 u@@58)) (InsidePredicate_20308_20308 p@@63 v_1@@62 r@@58 u@@58))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_20358 p@@63 v_1@@62 q@@58 w@@62) (InsidePredicate_20358_20308 q@@58 w@@62 r@@58 u@@58))
)))
(assert (forall ((p@@64 T@Field_47230_47231) (v_1@@63 T@FrameType) (q@@59 T@Field_47230_47231) (w@@63 T@FrameType) (r@@59 T@Field_20267_20309) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_20308 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_20308_43504 q@@59 w@@63 r@@59 u@@59)) (InsidePredicate_20308_43504 p@@64 v_1@@63 r@@59 u@@59))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_20308 p@@64 v_1@@63 q@@59 w@@63) (InsidePredicate_20308_43504 q@@59 w@@63 r@@59 u@@59))
)))
(assert (forall ((p@@65 T@Field_47230_47231) (v_1@@64 T@FrameType) (q@@60 T@Field_47230_47231) (w@@64 T@FrameType) (r@@60 T@Field_51792_51793) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_20308 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_20308_20333 q@@60 w@@64 r@@60 u@@60)) (InsidePredicate_20308_20333 p@@65 v_1@@64 r@@60 u@@60))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_20308 p@@65 v_1@@64 q@@60 w@@64) (InsidePredicate_20308_20333 q@@60 w@@64 r@@60 u@@60))
)))
(assert (forall ((p@@66 T@Field_47230_47231) (v_1@@65 T@FrameType) (q@@61 T@Field_47230_47231) (w@@65 T@FrameType) (r@@61 T@Field_52995_52996) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_20308 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_20308_20358 q@@61 w@@65 r@@61 u@@61)) (InsidePredicate_20308_20358 p@@66 v_1@@65 r@@61 u@@61))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_20308 p@@66 v_1@@65 q@@61 w@@65) (InsidePredicate_20308_20358 q@@61 w@@65 r@@61 u@@61))
)))
(assert (forall ((p@@67 T@Field_47230_47231) (v_1@@66 T@FrameType) (q@@62 T@Field_47230_47231) (w@@66 T@FrameType) (r@@62 T@Field_47230_47231) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_20308_20308 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_20308_20308 q@@62 w@@66 r@@62 u@@62)) (InsidePredicate_20308_20308 p@@67 v_1@@66 r@@62 u@@62))
 :qid |stdinbpl.169:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20308_20308 p@@67 v_1@@66 q@@62 w@@66) (InsidePredicate_20308_20308 q@@62 w@@66 r@@62 u@@62))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@13 () T@PolymorphicMapType_43444)
(declare-fun Mask@14 () T@PolymorphicMapType_43465)
(declare-fun this@@21 () T@Ref)
(declare-fun Heap@11 () T@PolymorphicMapType_43444)
(declare-fun newPMask@1 () T@PolymorphicMapType_43993)
(declare-fun Heap@12 () T@PolymorphicMapType_43444)
(declare-fun Heap@10 () T@PolymorphicMapType_43444)
(declare-fun Heap@9 () T@PolymorphicMapType_43444)
(declare-fun Heap@6 () T@PolymorphicMapType_43444)
(declare-fun Heap@7 () T@PolymorphicMapType_43444)
(declare-fun Heap@8 () T@PolymorphicMapType_43444)
(declare-fun freshVersion@1 () T@FrameType)
(declare-fun wildcard@12 () Real)
(declare-fun Mask@13 () T@PolymorphicMapType_43465)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_20268 (T@Ref) T@FrameType)
(declare-fun FrameFragment_1204 (Int) T@FrameType)
(declare-fun FrameFragment_20309 (T@FrameType) T@FrameType)
(declare-fun Mask@11 () T@PolymorphicMapType_43465)
(declare-fun wildcard@11 () Real)
(declare-fun Mask@12 () T@PolymorphicMapType_43465)
(declare-fun Mask@9 () T@PolymorphicMapType_43465)
(declare-fun wildcard@9 () Real)
(declare-fun Mask@10 () T@PolymorphicMapType_43465)
(declare-fun wildcard@10 () Real)
(declare-fun Heap@4 () T@PolymorphicMapType_43444)
(declare-fun newPMask@0 () T@PolymorphicMapType_43993)
(declare-fun Heap@5 () T@PolymorphicMapType_43444)
(declare-fun Heap@3 () T@PolymorphicMapType_43444)
(declare-fun Heap@2 () T@PolymorphicMapType_43444)
(declare-fun Heap@@66 () T@PolymorphicMapType_43444)
(declare-fun Heap@0 () T@PolymorphicMapType_43444)
(declare-fun Heap@1 () T@PolymorphicMapType_43444)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun wildcard@8 () Real)
(declare-fun Mask@8 () T@PolymorphicMapType_43465)
(declare-fun Mask@6 () T@PolymorphicMapType_43465)
(declare-fun wildcard@7 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_43465)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_43465)
(declare-fun wildcard@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_43465)
(declare-fun wildcard@2 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_43465)
(declare-fun wildcard@3 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_43465)
(declare-fun wildcard@4 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_43465)
(declare-fun wildcard@5 () Real)
(declare-fun Mask@5 () T@PolymorphicMapType_43465)
(declare-fun wildcard@6 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id testNestingFoldThree)
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
 (=> (= (ControlFlow 0 0) 43) (let ((anon12_correct  (=> (and (state Heap@13 Mask@14) (state Heap@13 Mask@14)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (HasDirectPerm_20267_20268 Mask@14 this@@21 next)) (=> (HasDirectPerm_20267_20268 Mask@14 this@@21 next) (and (=> (= (ControlFlow 0 2) (- 0 9)) (not (= this@@21 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) this@@21 next)))) (=> (not (= this@@21 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) this@@21 next))) (=> (state Heap@13 Mask@14) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_20267_20268 Mask@14 this@@21 next)) (=> (HasDirectPerm_20267_20268 Mask@14 this@@21 next) (and (=> (= (ControlFlow 0 2) (- 0 7)) (HasDirectPerm_20267_20268 Mask@14 this@@21 next)) (=> (HasDirectPerm_20267_20268 Mask@14 this@@21 next) (and (=> (= (ControlFlow 0 2) (- 0 6)) (HasDirectPerm_20267_20268 Mask@14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) this@@21 next) next)) (=> (HasDirectPerm_20267_20268 Mask@14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) this@@21 next) next) (and (=> (= (ControlFlow 0 2) (- 0 5)) (not (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) this@@21 next) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) this@@21 next) next)))) (=> (not (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) this@@21 next) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) this@@21 next) next))) (=> (state Heap@13 Mask@14) (and (=> (= (ControlFlow 0 2) (- 0 4)) (HasDirectPerm_20267_20268 Mask@14 this@@21 next)) (=> (HasDirectPerm_20267_20268 Mask@14 this@@21 next) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_20267_20268 Mask@14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) this@@21 next) next)) (=> (HasDirectPerm_20267_20268 Mask@14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) this@@21 next) next) (=> (= (ControlFlow 0 2) (- 0 1)) (not (= this@@21 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@13) this@@21 next) next)))))))))))))))))))))))))
(let ((anon18_Else_correct  (=> (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next) null) (=> (and (= Heap@13 Heap@11) (= (ControlFlow 0 12) 2)) anon12_correct))))
(let ((anon18_Then_correct  (=> (not (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_78 T@Ref) (f_49 T@Field_43517_43518) ) (!  (=> (or (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78 f_49) (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78 f_49)) (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| newPMask@1) o_78 f_49))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| newPMask@1) o_78 f_49))
)) (forall ((o_78@@0 T@Ref) (f_49@@0 T@Field_46881_1204) ) (!  (=> (or (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@0 f_49@@0) (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@0 f_49@@0)) (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| newPMask@1) o_78@@0 f_49@@0))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| newPMask@1) o_78@@0 f_49@@0))
))) (forall ((o_78@@1 T@Ref) (f_49@@1 T@Field_43504_53) ) (!  (=> (or (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@1 f_49@@1) (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@1 f_49@@1)) (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| newPMask@1) o_78@@1 f_49@@1))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| newPMask@1) o_78@@1 f_49@@1))
))) (forall ((o_78@@2 T@Ref) (f_49@@2 T@Field_20267_20309) ) (!  (=> (or (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@2 f_49@@2) (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@2 f_49@@2)) (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| newPMask@1) o_78@@2 f_49@@2))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| newPMask@1) o_78@@2 f_49@@2))
))) (forall ((o_78@@3 T@Ref) (f_49@@3 T@Field_20267_49395) ) (!  (=> (or (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@3 f_49@@3) (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@3 f_49@@3)) (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| newPMask@1) o_78@@3 f_49@@3))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| newPMask@1) o_78@@3 f_49@@3))
))) (forall ((o_78@@4 T@Ref) (f_49@@4 T@Field_20308_20268) ) (!  (=> (or (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@4 f_49@@4) (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@4 f_49@@4)) (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| newPMask@1) o_78@@4 f_49@@4))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| newPMask@1) o_78@@4 f_49@@4))
))) (forall ((o_78@@5 T@Ref) (f_49@@5 T@Field_20308_1204) ) (!  (=> (or (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@5 f_49@@5) (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@5 f_49@@5)) (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| newPMask@1) o_78@@5 f_49@@5))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| newPMask@1) o_78@@5 f_49@@5))
))) (forall ((o_78@@6 T@Ref) (f_49@@6 T@Field_20308_53) ) (!  (=> (or (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@6 f_49@@6) (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@6 f_49@@6)) (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| newPMask@1) o_78@@6 f_49@@6))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| newPMask@1) o_78@@6 f_49@@6))
))) (forall ((o_78@@7 T@Ref) (f_49@@7 T@Field_47230_47231) ) (!  (=> (or (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@7 f_49@@7) (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@7 f_49@@7)) (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| newPMask@1) o_78@@7 f_49@@7))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| newPMask@1) o_78@@7 f_49@@7))
))) (forall ((o_78@@8 T@Ref) (f_49@@8 T@Field_49390_49395) ) (!  (=> (or (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@8 f_49@@8) (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@8 f_49@@8)) (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| newPMask@1) o_78@@8 f_49@@8))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| newPMask@1) o_78@@8 f_49@@8))
))) (forall ((o_78@@9 T@Ref) (f_49@@9 T@Field_20333_20268) ) (!  (=> (or (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@9 f_49@@9) (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@9 f_49@@9)) (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| newPMask@1) o_78@@9 f_49@@9))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| newPMask@1) o_78@@9 f_49@@9))
))) (forall ((o_78@@10 T@Ref) (f_49@@10 T@Field_20333_1204) ) (!  (=> (or (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@10 f_49@@10) (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@10 f_49@@10)) (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| newPMask@1) o_78@@10 f_49@@10))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| newPMask@1) o_78@@10 f_49@@10))
))) (forall ((o_78@@11 T@Ref) (f_49@@11 T@Field_20333_53) ) (!  (=> (or (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@11 f_49@@11) (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@11 f_49@@11)) (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| newPMask@1) o_78@@11 f_49@@11))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| newPMask@1) o_78@@11 f_49@@11))
))) (forall ((o_78@@12 T@Ref) (f_49@@12 T@Field_51792_51793) ) (!  (=> (or (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@12 f_49@@12) (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@12 f_49@@12)) (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| newPMask@1) o_78@@12 f_49@@12))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| newPMask@1) o_78@@12 f_49@@12))
))) (forall ((o_78@@13 T@Ref) (f_49@@13 T@Field_51805_51810) ) (!  (=> (or (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@13 f_49@@13) (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@13 f_49@@13)) (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| newPMask@1) o_78@@13 f_49@@13))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| newPMask@1) o_78@@13 f_49@@13))
))) (forall ((o_78@@14 T@Ref) (f_49@@14 T@Field_20358_20268) ) (!  (=> (or (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@14 f_49@@14) (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@14 f_49@@14)) (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| newPMask@1) o_78@@14 f_49@@14))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| newPMask@1) o_78@@14 f_49@@14))
))) (forall ((o_78@@15 T@Ref) (f_49@@15 T@Field_20358_1204) ) (!  (=> (or (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@15 f_49@@15) (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@15 f_49@@15)) (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| newPMask@1) o_78@@15 f_49@@15))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| newPMask@1) o_78@@15 f_49@@15))
))) (forall ((o_78@@16 T@Ref) (f_49@@16 T@Field_20358_53) ) (!  (=> (or (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@16 f_49@@16) (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@16 f_49@@16)) (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| newPMask@1) o_78@@16 f_49@@16))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| newPMask@1) o_78@@16 f_49@@16))
))) (forall ((o_78@@17 T@Ref) (f_49@@17 T@Field_52995_52996) ) (!  (=> (or (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@17 f_49@@17) (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@17 f_49@@17)) (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| newPMask@1) o_78@@17 f_49@@17))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| newPMask@1) o_78@@17 f_49@@17))
))) (forall ((o_78@@18 T@Ref) (f_49@@18 T@Field_53282_53287) ) (!  (=> (or (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21))) o_78@@18 f_49@@18) (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) this@@21 next)))) o_78@@18 f_49@@18)) (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| newPMask@1) o_78@@18 f_49@@18))
 :qid |stdinbpl.2037:29|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| newPMask@1) o_78@@18 f_49@@18))
))) (= Heap@12 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@11) (store (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@11) null (|p#sm| this@@21) newPMask@1) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@11) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@11)))) (and (= Heap@13 Heap@12) (= (ControlFlow 0 11) 2))) anon12_correct))))
(let ((anon10_correct  (=> (and (= Heap@10 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@9) (store (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21) (PolymorphicMapType_43993 (store (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) this@@21 next true) (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@9) null (|p#sm| this@@21))))) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@9) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@9))) (= Heap@11 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@10) (store (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21) (PolymorphicMapType_43993 (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (store (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) this@@21 value true) (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))) (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@10) null (|p#sm| this@@21))))) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@10) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@10)))) (and (=> (= (ControlFlow 0 13) 11) anon18_Then_correct) (=> (= (ControlFlow 0 13) 12) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (HasDirectPerm_20333_20334 Mask@14 null (p_14 this@@21)) (=> (and (= Heap@9 Heap@6) (= (ControlFlow 0 15) 13)) anon10_correct))))
(let ((anon17_Then_correct  (=> (not (HasDirectPerm_20333_20334 Mask@14 null (p_14 this@@21))) (=> (and (and (= Heap@7 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@6) (store (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@6) null (|p#sm| this@@21) ZeroPMask) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@6) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@6))) (= Heap@8 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@7) (store (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@7) null (p_14 this@@21) freshVersion@1) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@7) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@7)))) (and (= Heap@9 Heap@8) (= (ControlFlow 0 14) 13))) anon10_correct))))
(let ((anon8_correct  (=> (and (> wildcard@12 NoPerm) (= Mask@14 (PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@13) (store (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@13) null (p_14 this@@21) (+ (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@13) null (p_14 this@@21)) wildcard@12)) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@13) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@13)))) (=> (and (and (state Heap@6 Mask@14) (state Heap@6 Mask@14)) (and (|p#trigger_20333| Heap@6 (p_14 this@@21)) (= (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@6) null (p_14 this@@21)) (CombineFrames (FrameFragment_20268 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@6) this@@21 next)) (CombineFrames (FrameFragment_1204 (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@6) this@@21 value)) (FrameFragment_20309 (ite (not (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@6) this@@21 next) null)) (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@6) null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@6) this@@21 next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 16) 14) anon17_Then_correct) (=> (= (ControlFlow 0 16) 15) anon17_Else_correct))))))
(let ((anon16_Else_correct  (=> (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@6) this@@21 next) null) (=> (and (= Mask@13 Mask@11) (= (ControlFlow 0 19) 16)) anon8_correct))))
(let ((anon16_Then_correct  (=> (not (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@6) this@@21 next) null)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (> (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@11) null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@6) this@@21 next))) NoPerm)) (=> (> (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@11) null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@6) this@@21 next))) NoPerm) (=> (and (> wildcard@11 NoPerm) (< wildcard@11 (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@11) null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@6) this@@21 next))))) (=> (and (and (= Mask@12 (PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@11) (store (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@11) null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@6) this@@21 next)) (- (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@11) null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@6) this@@21 next))) wildcard@11)) (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@11) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@11))) (InsidePredicate_20333_20358 (p_14 this@@21) (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@6) null (p_14 this@@21)) (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@6) this@@21 next)) (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@6) null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@6) this@@21 next))))) (and (= Mask@13 Mask@12) (= (ControlFlow 0 17) 16))) anon8_correct)))))))
(let ((anon6_correct  (=> (and (state Heap@6 Mask@9) (state Heap@6 Mask@9)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (> (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@9) this@@21 next) NoPerm)) (=> (> (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@9) this@@21 next) NoPerm) (=> (> wildcard@9 NoPerm) (=> (and (< wildcard@9 (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@9) this@@21 next)) (= Mask@10 (PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@9) (store (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@9) this@@21 next (- (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@9) this@@21 next) wildcard@9)) (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@9) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@9)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (> (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@10) this@@21 value) NoPerm)) (=> (> (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@10) this@@21 value) NoPerm) (=> (> wildcard@10 NoPerm) (=> (and (< wildcard@10 (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@10) this@@21 value)) (= Mask@11 (PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@10) (store (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@10) this@@21 value (- (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@10) this@@21 value) wildcard@10)) (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@10) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@10)))) (and (=> (= (ControlFlow 0 20) 17) anon16_Then_correct) (=> (= (ControlFlow 0 20) 19) anon16_Else_correct)))))))))))))
(let ((anon15_Else_correct  (=> (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next) null) (=> (and (= Heap@6 Heap@4) (= (ControlFlow 0 24) 20)) anon6_correct))))
(let ((anon15_Then_correct  (=> (not (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_77 T@Ref) (f_52 T@Field_43517_43518) ) (!  (=> (or (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77 f_52) (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77 f_52)) (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| newPMask@0) o_77 f_52))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| newPMask@0) o_77 f_52))
)) (forall ((o_77@@0 T@Ref) (f_52@@0 T@Field_46881_1204) ) (!  (=> (or (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@0 f_52@@0) (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@0 f_52@@0)) (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| newPMask@0) o_77@@0 f_52@@0))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| newPMask@0) o_77@@0 f_52@@0))
))) (forall ((o_77@@1 T@Ref) (f_52@@1 T@Field_43504_53) ) (!  (=> (or (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@1 f_52@@1) (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@1 f_52@@1)) (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| newPMask@0) o_77@@1 f_52@@1))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| newPMask@0) o_77@@1 f_52@@1))
))) (forall ((o_77@@2 T@Ref) (f_52@@2 T@Field_20267_20309) ) (!  (=> (or (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@2 f_52@@2) (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@2 f_52@@2)) (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| newPMask@0) o_77@@2 f_52@@2))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| newPMask@0) o_77@@2 f_52@@2))
))) (forall ((o_77@@3 T@Ref) (f_52@@3 T@Field_20267_49395) ) (!  (=> (or (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@3 f_52@@3) (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@3 f_52@@3)) (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| newPMask@0) o_77@@3 f_52@@3))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| newPMask@0) o_77@@3 f_52@@3))
))) (forall ((o_77@@4 T@Ref) (f_52@@4 T@Field_20308_20268) ) (!  (=> (or (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@4 f_52@@4) (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@4 f_52@@4)) (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| newPMask@0) o_77@@4 f_52@@4))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| newPMask@0) o_77@@4 f_52@@4))
))) (forall ((o_77@@5 T@Ref) (f_52@@5 T@Field_20308_1204) ) (!  (=> (or (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@5 f_52@@5) (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@5 f_52@@5)) (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| newPMask@0) o_77@@5 f_52@@5))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| newPMask@0) o_77@@5 f_52@@5))
))) (forall ((o_77@@6 T@Ref) (f_52@@6 T@Field_20308_53) ) (!  (=> (or (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@6 f_52@@6) (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@6 f_52@@6)) (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| newPMask@0) o_77@@6 f_52@@6))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| newPMask@0) o_77@@6 f_52@@6))
))) (forall ((o_77@@7 T@Ref) (f_52@@7 T@Field_47230_47231) ) (!  (=> (or (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@7 f_52@@7) (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@7 f_52@@7)) (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| newPMask@0) o_77@@7 f_52@@7))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| newPMask@0) o_77@@7 f_52@@7))
))) (forall ((o_77@@8 T@Ref) (f_52@@8 T@Field_49390_49395) ) (!  (=> (or (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@8 f_52@@8) (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@8 f_52@@8)) (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| newPMask@0) o_77@@8 f_52@@8))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| newPMask@0) o_77@@8 f_52@@8))
))) (forall ((o_77@@9 T@Ref) (f_52@@9 T@Field_20333_20268) ) (!  (=> (or (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@9 f_52@@9) (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@9 f_52@@9)) (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| newPMask@0) o_77@@9 f_52@@9))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| newPMask@0) o_77@@9 f_52@@9))
))) (forall ((o_77@@10 T@Ref) (f_52@@10 T@Field_20333_1204) ) (!  (=> (or (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@10 f_52@@10) (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@10 f_52@@10)) (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| newPMask@0) o_77@@10 f_52@@10))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| newPMask@0) o_77@@10 f_52@@10))
))) (forall ((o_77@@11 T@Ref) (f_52@@11 T@Field_20333_53) ) (!  (=> (or (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@11 f_52@@11) (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@11 f_52@@11)) (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| newPMask@0) o_77@@11 f_52@@11))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| newPMask@0) o_77@@11 f_52@@11))
))) (forall ((o_77@@12 T@Ref) (f_52@@12 T@Field_51792_51793) ) (!  (=> (or (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@12 f_52@@12) (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@12 f_52@@12)) (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| newPMask@0) o_77@@12 f_52@@12))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| newPMask@0) o_77@@12 f_52@@12))
))) (forall ((o_77@@13 T@Ref) (f_52@@13 T@Field_51805_51810) ) (!  (=> (or (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@13 f_52@@13) (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@13 f_52@@13)) (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| newPMask@0) o_77@@13 f_52@@13))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| newPMask@0) o_77@@13 f_52@@13))
))) (forall ((o_77@@14 T@Ref) (f_52@@14 T@Field_20358_20268) ) (!  (=> (or (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@14 f_52@@14) (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@14 f_52@@14)) (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| newPMask@0) o_77@@14 f_52@@14))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| newPMask@0) o_77@@14 f_52@@14))
))) (forall ((o_77@@15 T@Ref) (f_52@@15 T@Field_20358_1204) ) (!  (=> (or (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@15 f_52@@15) (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@15 f_52@@15)) (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| newPMask@0) o_77@@15 f_52@@15))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| newPMask@0) o_77@@15 f_52@@15))
))) (forall ((o_77@@16 T@Ref) (f_52@@16 T@Field_20358_53) ) (!  (=> (or (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@16 f_52@@16) (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@16 f_52@@16)) (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| newPMask@0) o_77@@16 f_52@@16))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| newPMask@0) o_77@@16 f_52@@16))
))) (forall ((o_77@@17 T@Ref) (f_52@@17 T@Field_52995_52996) ) (!  (=> (or (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@17 f_52@@17) (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@17 f_52@@17)) (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| newPMask@0) o_77@@17 f_52@@17))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| newPMask@0) o_77@@17 f_52@@17))
))) (forall ((o_77@@18 T@Ref) (f_52@@18 T@Field_53282_53287) ) (!  (=> (or (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)))) o_77@@18 f_52@@18) (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) null (|p#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next) next)))) o_77@@18 f_52@@18)) (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| newPMask@0) o_77@@18 f_52@@18))
 :qid |stdinbpl.1989:29|
 :skolemid |70|
 :pattern ( (select (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| newPMask@0) o_77@@18 f_52@@18))
))) (= Heap@5 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@4) (store (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@4) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@4) this@@21 next)) newPMask@0) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@4) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@4)))) (and (= Heap@6 Heap@5) (= (ControlFlow 0 23) 20))) anon6_correct))))
(let ((anon4_correct  (=> (and (= Heap@3 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@2) (store (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)) (PolymorphicMapType_43993 (store (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next) next true) (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))) (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@2) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@2) this@@21 next)))))) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@2) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@2))) (= Heap@4 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@3) (store (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)) (PolymorphicMapType_43993 (|PolymorphicMapType_43993_20267_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (store (|PolymorphicMapType_43993_20270_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next) value true) (|PolymorphicMapType_43993_20267_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_20267_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_20267_181402#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_47230_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_47230_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_47230_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_47230_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_47230_182450#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_51792_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_51792_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_51792_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_51792_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_51792_183498#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_52995_20268#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_52995_1204#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_52995_53#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_52995_47231#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))) (|PolymorphicMapType_43993_52995_184546#PolymorphicMapType_43993| (select (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@3) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@3) this@@21 next)))))) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@3) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@3)))) (and (=> (= (ControlFlow 0 25) 23) anon15_Then_correct) (=> (= (ControlFlow 0 25) 24) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (HasDirectPerm_20358_20359 Mask@9 null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next))) (=> (and (= Heap@2 Heap@@66) (= (ControlFlow 0 27) 25)) anon4_correct))))
(let ((anon14_Then_correct  (=> (not (HasDirectPerm_20358_20359 Mask@9 null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next)))) (=> (and (and (= Heap@0 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@66) (store (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@@66) null (|q#sm| (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next)) ZeroPMask) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@@66) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@@66))) (= Heap@1 (PolymorphicMapType_43444 (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20308_20309#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20312_49482#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@0) (store (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@0) null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@0) this@@21 next)) freshVersion@0) (|PolymorphicMapType_43444_20362_115539#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20337_116679#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20267_20309#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20267_175755#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20308_20268#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20308_53#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20308_1204#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20333_20268#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20333_53#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20333_1204#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20358_20268#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20358_53#PolymorphicMapType_43444| Heap@0) (|PolymorphicMapType_43444_20358_1204#PolymorphicMapType_43444| Heap@0)))) (and (= Heap@2 Heap@1) (= (ControlFlow 0 26) 25))) anon4_correct))))
(let ((anon2_correct  (=> (and (> wildcard@8 NoPerm) (= Mask@9 (PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@8) (store (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@8) null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next)) (+ (select (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@8) null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next))) wildcard@8)) (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@8) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@8)))) (=> (and (and (state Heap@@66 Mask@9) (state Heap@@66 Mask@9)) (and (|q#trigger_20358| Heap@@66 (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next))) (= (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@66) null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next))) (CombineFrames (FrameFragment_20268 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next)) (CombineFrames (FrameFragment_1204 (select (|PolymorphicMapType_43444_20270_1204#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) value)) (FrameFragment_20309 (ite (not (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next) null)) (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@66) null (p_14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 28) 26) anon14_Then_correct) (=> (= (ControlFlow 0 28) 27) anon14_Else_correct))))))
(let ((anon13_Else_correct  (=> (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next) null) (=> (and (= Mask@8 Mask@6) (= (ControlFlow 0 31) 28)) anon2_correct))))
(let ((anon13_Then_correct  (=> (not (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next) null)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (> (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@6) null (p_14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next))) NoPerm)) (=> (> (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@6) null (p_14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next))) NoPerm) (=> (and (> wildcard@7 NoPerm) (< wildcard@7 (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@6) null (p_14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next))))) (=> (and (and (= Mask@7 (PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@6) (store (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@6) null (p_14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next)) (- (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@6) null (p_14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next))) wildcard@7)) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@6) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@6))) (InsidePredicate_20358_20333 (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next)) (select (|PolymorphicMapType_43444_20358_20359#PolymorphicMapType_43444| Heap@@66) null (q_18 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next))) (p_14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next)) (select (|PolymorphicMapType_43444_20333_20334#PolymorphicMapType_43444| Heap@@66) null (p_14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next))))) (and (= Mask@8 Mask@7) (= (ControlFlow 0 29) 28))) anon2_correct)))))))
(let ((anon0_correct  (=> (state Heap@@66 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_43444_20139_53#PolymorphicMapType_43444| Heap@@66) this@@21 $allocated) (> wildcard@0 NoPerm))) (=> (and (and (and (not (= this@@21 null)) (= Mask@0 (PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| ZeroMask) (store (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| ZeroMask) this@@21 next (+ (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| ZeroMask) this@@21 next) wildcard@0)) (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| ZeroMask) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| ZeroMask)))) (and (state Heap@@66 Mask@0) (> wildcard@1 NoPerm))) (and (and (not (= this@@21 null)) (= Mask@1 (PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@0) (store (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@0) this@@21 value (+ (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@0) this@@21 value) wildcard@1)) (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@0) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@0)))) (and (state Heap@@66 Mask@1) (state Heap@@66 Mask@1)))) (and (=> (= (ControlFlow 0 32) (- 0 42)) (HasDirectPerm_20267_20268 Mask@1 this@@21 next)) (=> (HasDirectPerm_20267_20268 Mask@1 this@@21 next) (=> (> wildcard@2 NoPerm) (=> (and (and (not (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) null)) (= Mask@2 (PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@1) (store (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@1) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next (+ (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@1) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next) wildcard@2)) (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@1) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@1)))) (and (state Heap@@66 Mask@2) (state Heap@@66 Mask@2))) (and (=> (= (ControlFlow 0 32) (- 0 41)) (HasDirectPerm_20267_20268 Mask@2 this@@21 next)) (=> (HasDirectPerm_20267_20268 Mask@2 this@@21 next) (=> (> wildcard@3 NoPerm) (=> (and (and (not (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) null)) (= Mask@3 (PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@2) (store (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@2) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) value (+ (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@2) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) value) wildcard@3)) (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@2) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@2)))) (and (state Heap@@66 Mask@3) (state Heap@@66 Mask@3))) (and (=> (= (ControlFlow 0 32) (- 0 40)) (HasDirectPerm_20267_20268 Mask@3 this@@21 next)) (=> (HasDirectPerm_20267_20268 Mask@3 this@@21 next) (=> (not (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) null)) (and (=> (= (ControlFlow 0 32) (- 0 39)) (HasDirectPerm_20267_20268 Mask@3 this@@21 next)) (=> (HasDirectPerm_20267_20268 Mask@3 this@@21 next) (and (=> (= (ControlFlow 0 32) (- 0 38)) (HasDirectPerm_20267_20268 Mask@3 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next)) (=> (HasDirectPerm_20267_20268 Mask@3 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next) (=> (and (not (= (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next) null)) (state Heap@@66 Mask@3)) (and (=> (= (ControlFlow 0 32) (- 0 37)) (HasDirectPerm_20267_20268 Mask@3 this@@21 next)) (=> (HasDirectPerm_20267_20268 Mask@3 this@@21 next) (and (=> (= (ControlFlow 0 32) (- 0 36)) (HasDirectPerm_20267_20268 Mask@3 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next)) (=> (HasDirectPerm_20267_20268 Mask@3 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next) (=> (and (and (> wildcard@4 NoPerm) (= Mask@4 (PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@3) (store (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@3) null (p_14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next)) (+ (select (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@3) null (p_14 (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next))) wildcard@4)) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@3) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@3)))) (and (state Heap@@66 Mask@4) (state Heap@@66 Mask@4))) (and (=> (= (ControlFlow 0 32) (- 0 35)) (HasDirectPerm_20267_20268 Mask@4 this@@21 next)) (=> (HasDirectPerm_20267_20268 Mask@4 this@@21 next) (and (=> (= (ControlFlow 0 32) (- 0 34)) (> (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next) NoPerm)) (=> (> (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next) NoPerm) (=> (> wildcard@5 NoPerm) (=> (and (< wildcard@5 (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next)) (= Mask@5 (PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@4) (store (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next (- (select (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@4) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) next) wildcard@5)) (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@4) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@4)))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (> (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@5) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) value) NoPerm)) (=> (> (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@5) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) value) NoPerm) (=> (> wildcard@6 NoPerm) (=> (and (< wildcard@6 (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@5) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) value)) (= Mask@6 (PolymorphicMapType_43465 (|PolymorphicMapType_43465_20308_20309#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20267_20268#PolymorphicMapType_43465| Mask@5) (store (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@5) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) value (- (select (|PolymorphicMapType_43465_20270_1204#PolymorphicMapType_43465| Mask@5) (select (|PolymorphicMapType_43444_20142_20143#PolymorphicMapType_43444| Heap@@66) this@@21 next) value) wildcard@6)) (|PolymorphicMapType_43465_20358_20359#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20333_20334#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20308_20268#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20308_1204#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20308_53#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20308_194837#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20267_20309#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20267_53#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20267_195236#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20358_20268#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20358_1204#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20358_53#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20358_195647#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20333_20268#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20333_1204#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20333_53#PolymorphicMapType_43465| Mask@5) (|PolymorphicMapType_43465_20333_196058#PolymorphicMapType_43465| Mask@5)))) (and (=> (= (ControlFlow 0 32) 29) anon13_Then_correct) (=> (= (ControlFlow 0 32) 31) anon13_Else_correct))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 43) 32)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
))
(check-sat)
