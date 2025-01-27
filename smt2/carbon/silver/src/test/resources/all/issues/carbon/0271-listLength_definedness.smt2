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
(declare-sort T@Field_15274_53 0)
(declare-sort T@Field_15287_15288 0)
(declare-sort T@Field_22376_22377 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_21300_3093 0)
(declare-sort T@Field_24505_24506 0)
(declare-sort T@Field_24558_24559 0)
(declare-sort T@Field_25026_25027 0)
(declare-sort T@Field_27408_27409 0)
(declare-sort T@Field_30711_30716 0)
(declare-sort T@Field_35363_35368 0)
(declare-sort T@Field_9317_22377 0)
(declare-sort T@Field_9317_30716 0)
(declare-sort T@Field_22376_3093 0)
(declare-sort T@Field_22376_9320 0)
(declare-sort T@Field_22376_53 0)
(declare-sort T@Field_38414_38419 0)
(declare-sort T@Field_24505_3093 0)
(declare-sort T@Field_24505_9320 0)
(declare-sort T@Field_24505_53 0)
(declare-sort T@Field_24558_3093 0)
(declare-sort T@Field_24558_9320 0)
(declare-sort T@Field_24558_53 0)
(declare-sort T@Field_39736_39741 0)
(declare-sort T@Field_25026_3093 0)
(declare-sort T@Field_25026_9320 0)
(declare-sort T@Field_25026_53 0)
(declare-sort T@Field_38936_38941 0)
(declare-sort T@Field_27408_3093 0)
(declare-sort T@Field_27408_9320 0)
(declare-sort T@Field_27408_53 0)
(declare-datatypes ((T@PolymorphicMapType_15235 0)) (((PolymorphicMapType_15235 (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| (Array T@Ref T@Field_22376_22377 Real)) (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| (Array T@Ref T@Field_24505_24506 Real)) (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| (Array T@Ref T@Field_21300_3093 Real)) (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| (Array T@Ref T@Field_25026_25027 Real)) (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| (Array T@Ref T@Field_24558_24559 Real)) (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| (Array T@Ref T@Field_27408_27409 Real)) (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| (Array T@Ref T@Field_15287_15288 Real)) (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| (Array T@Ref T@Field_22376_3093 Real)) (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| (Array T@Ref T@Field_22376_9320 Real)) (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| (Array T@Ref T@Field_22376_53 Real)) (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| (Array T@Ref T@Field_38414_38419 Real)) (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| (Array T@Ref T@Field_24505_3093 Real)) (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| (Array T@Ref T@Field_24505_9320 Real)) (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| (Array T@Ref T@Field_24505_53 Real)) (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| (Array T@Ref T@Field_30711_30716 Real)) (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| (Array T@Ref T@Field_9317_22377 Real)) (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| (Array T@Ref T@Field_15274_53 Real)) (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| (Array T@Ref T@Field_9317_30716 Real)) (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| (Array T@Ref T@Field_25026_3093 Real)) (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| (Array T@Ref T@Field_25026_9320 Real)) (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| (Array T@Ref T@Field_25026_53 Real)) (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| (Array T@Ref T@Field_38936_38941 Real)) (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| (Array T@Ref T@Field_24558_3093 Real)) (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| (Array T@Ref T@Field_24558_9320 Real)) (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| (Array T@Ref T@Field_24558_53 Real)) (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| (Array T@Ref T@Field_39736_39741 Real)) (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| (Array T@Ref T@Field_27408_3093 Real)) (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| (Array T@Ref T@Field_27408_9320 Real)) (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| (Array T@Ref T@Field_27408_53 Real)) (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| (Array T@Ref T@Field_35363_35368 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15763 0)) (((PolymorphicMapType_15763 (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (Array T@Ref T@Field_21300_3093 Bool)) (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (Array T@Ref T@Field_15287_15288 Bool)) (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (Array T@Ref T@Field_15274_53 Bool)) (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (Array T@Ref T@Field_9317_22377 Bool)) (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (Array T@Ref T@Field_9317_30716 Bool)) (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (Array T@Ref T@Field_22376_3093 Bool)) (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (Array T@Ref T@Field_22376_9320 Bool)) (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (Array T@Ref T@Field_22376_53 Bool)) (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (Array T@Ref T@Field_22376_22377 Bool)) (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (Array T@Ref T@Field_38414_38419 Bool)) (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (Array T@Ref T@Field_24505_3093 Bool)) (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (Array T@Ref T@Field_24505_9320 Bool)) (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (Array T@Ref T@Field_24505_53 Bool)) (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (Array T@Ref T@Field_24505_24506 Bool)) (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (Array T@Ref T@Field_30711_30716 Bool)) (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (Array T@Ref T@Field_24558_3093 Bool)) (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (Array T@Ref T@Field_24558_9320 Bool)) (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (Array T@Ref T@Field_24558_53 Bool)) (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (Array T@Ref T@Field_24558_24559 Bool)) (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (Array T@Ref T@Field_39736_39741 Bool)) (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (Array T@Ref T@Field_25026_3093 Bool)) (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (Array T@Ref T@Field_25026_9320 Bool)) (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (Array T@Ref T@Field_25026_53 Bool)) (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (Array T@Ref T@Field_25026_25027 Bool)) (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (Array T@Ref T@Field_38936_38941 Bool)) (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (Array T@Ref T@Field_27408_3093 Bool)) (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (Array T@Ref T@Field_27408_9320 Bool)) (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (Array T@Ref T@Field_27408_53 Bool)) (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (Array T@Ref T@Field_27408_27409 Bool)) (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (Array T@Ref T@Field_35363_35368 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15214 0)) (((PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| (Array T@Ref T@Field_15274_53 Bool)) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| (Array T@Ref T@Field_15287_15288 T@Ref)) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| (Array T@Ref T@Field_22376_22377 T@FrameType)) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| (Array T@Ref T@Field_21300_3093 Int)) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| (Array T@Ref T@Field_24505_24506 T@FrameType)) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| (Array T@Ref T@Field_24558_24559 T@FrameType)) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| (Array T@Ref T@Field_25026_25027 T@FrameType)) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| (Array T@Ref T@Field_27408_27409 T@FrameType)) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| (Array T@Ref T@Field_30711_30716 T@PolymorphicMapType_15763)) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| (Array T@Ref T@Field_35363_35368 T@PolymorphicMapType_15763)) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| (Array T@Ref T@Field_9317_22377 T@FrameType)) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| (Array T@Ref T@Field_9317_30716 T@PolymorphicMapType_15763)) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| (Array T@Ref T@Field_22376_3093 Int)) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| (Array T@Ref T@Field_22376_9320 T@Ref)) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| (Array T@Ref T@Field_22376_53 Bool)) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| (Array T@Ref T@Field_38414_38419 T@PolymorphicMapType_15763)) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| (Array T@Ref T@Field_24505_3093 Int)) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| (Array T@Ref T@Field_24505_9320 T@Ref)) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| (Array T@Ref T@Field_24505_53 Bool)) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| (Array T@Ref T@Field_24558_3093 Int)) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| (Array T@Ref T@Field_24558_9320 T@Ref)) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| (Array T@Ref T@Field_24558_53 Bool)) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| (Array T@Ref T@Field_39736_39741 T@PolymorphicMapType_15763)) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| (Array T@Ref T@Field_25026_3093 Int)) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| (Array T@Ref T@Field_25026_9320 T@Ref)) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| (Array T@Ref T@Field_25026_53 Bool)) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| (Array T@Ref T@Field_38936_38941 T@PolymorphicMapType_15763)) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| (Array T@Ref T@Field_27408_3093 Int)) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| (Array T@Ref T@Field_27408_9320 T@Ref)) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| (Array T@Ref T@Field_27408_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_15274_53)
(declare-fun elem () T@Field_21300_3093)
(declare-fun next () T@Field_15287_15288)
(declare-fun elem2 () T@Field_21300_3093)
(declare-fun next2 () T@Field_15287_15288)
(declare-sort T@Seq_21463 0)
(declare-fun |Seq#Length_9341| (T@Seq_21463) Int)
(declare-fun |Seq#Drop_9341| (T@Seq_21463 Int) T@Seq_21463)
(declare-sort T@Seq_2971 0)
(declare-fun |Seq#Length_2971| (T@Seq_2971) Int)
(declare-fun |Seq#Drop_2971| (T@Seq_2971 Int) T@Seq_2971)
(declare-fun succHeap (T@PolymorphicMapType_15214 T@PolymorphicMapType_15214) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15214 T@PolymorphicMapType_15214) Bool)
(declare-fun |someFun#condqp2| (T@PolymorphicMapType_15214 T@Ref) Int)
(declare-fun NoPerm () Real)
(declare-fun FullPerm () Real)
(declare-fun null () T@Ref)
(declare-fun someList (T@Ref Int) T@Field_25026_25027)
(declare-fun |sk_someFun#condqp2| (Int Int) Int)
(declare-fun state (T@PolymorphicMapType_15214 T@PolymorphicMapType_15235) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15235) Bool)
(declare-fun |listLength'| (T@PolymorphicMapType_15214 T@Ref T@Ref Int) Int)
(declare-fun dummyFunction_4443 (Int) Bool)
(declare-fun |listLength#triggerStateless| (T@Ref T@Ref Int) Int)
(declare-fun ZeroPMask () T@PolymorphicMapType_15763)
(declare-fun IsPredicateField_9481_9482 (T@Field_25026_25027) Bool)
(declare-fun |someList#trigger_9481| (T@PolymorphicMapType_15214 T@Field_25026_25027) Bool)
(declare-fun |someList#everUsed_9481| (T@Field_25026_25027) Bool)
(declare-fun |Seq#Index_9341| (T@Seq_21463 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2971| (T@Seq_2971 Int) Int)
(declare-fun foo_1 (T@PolymorphicMapType_15214 T@Seq_21463) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#Empty_9341| () T@Seq_21463)
(declare-fun |Seq#Empty_2971| () T@Seq_2971)
(declare-fun P (T@Ref) T@Field_22376_22377)
(declare-fun IsPredicateField_9459_9460 (T@Field_22376_22377) Bool)
(declare-fun otherList (T@Ref) T@Field_24558_24559)
(declare-fun IsPredicateField_9505_9506 (T@Field_24558_24559) Bool)
(declare-fun list (T@Ref) T@Field_24505_24506)
(declare-fun IsPredicateField_9527_9528 (T@Field_24505_24506) Bool)
(declare-fun list2 (T@Ref) T@Field_27408_27409)
(declare-fun IsPredicateField_9552_9553 (T@Field_27408_27409) Bool)
(declare-fun |foo'| (T@PolymorphicMapType_15214 T@Seq_21463) Bool)
(declare-fun dummyFunction_3574 (Bool) Bool)
(declare-fun |foo#triggerStateless| (T@Seq_21463) Bool)
(declare-fun |someFun'| (T@PolymorphicMapType_15214 T@Ref) Int)
(declare-fun |someFun#triggerStateless| (T@Ref) Int)
(declare-fun |P#trigger_9459| (T@PolymorphicMapType_15214 T@Field_22376_22377) Bool)
(declare-fun |P#everUsed_9459| (T@Field_22376_22377) Bool)
(declare-fun |otherList#trigger_9505| (T@PolymorphicMapType_15214 T@Field_24558_24559) Bool)
(declare-fun |otherList#everUsed_9505| (T@Field_24558_24559) Bool)
(declare-fun |list#trigger_9527| (T@PolymorphicMapType_15214 T@Field_24505_24506) Bool)
(declare-fun |list#everUsed_9527| (T@Field_24505_24506) Bool)
(declare-fun |list2#trigger_9552| (T@PolymorphicMapType_15214 T@Field_27408_27409) Bool)
(declare-fun |list2#everUsed_9552| (T@Field_27408_27409) Bool)
(declare-fun |Seq#Update_9341| (T@Seq_21463 Int T@Ref) T@Seq_21463)
(declare-fun |Seq#Update_2971| (T@Seq_2971 Int Int) T@Seq_2971)
(declare-fun |Seq#Take_9341| (T@Seq_21463 Int) T@Seq_21463)
(declare-fun |Seq#Take_2971| (T@Seq_2971 Int) T@Seq_2971)
(declare-fun |Seq#Contains_2971| (T@Seq_2971 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2971)
(declare-fun |Seq#Contains_21463| (T@Seq_21463 T@Ref) Bool)
(declare-fun |Seq#Skolem_21463| (T@Seq_21463 T@Ref) Int)
(declare-fun |Seq#Skolem_2971| (T@Seq_2971 Int) Int)
(declare-fun someFun (T@PolymorphicMapType_15214 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15214 T@PolymorphicMapType_15214 T@PolymorphicMapType_15235) Bool)
(declare-fun PredicateMaskField_9552 (T@Field_27408_27409) T@Field_35363_35368)
(declare-fun HasDirectPerm_27408_22377 (T@PolymorphicMapType_15235 T@Ref T@Field_27408_27409) Bool)
(declare-fun PredicateMaskField_9481 (T@Field_25026_25027) T@Field_38936_38941)
(declare-fun HasDirectPerm_25026_22377 (T@PolymorphicMapType_15235 T@Ref T@Field_25026_25027) Bool)
(declare-fun PredicateMaskField_9505 (T@Field_24558_24559) T@Field_39736_39741)
(declare-fun HasDirectPerm_24558_22377 (T@PolymorphicMapType_15235 T@Ref T@Field_24558_24559) Bool)
(declare-fun PredicateMaskField_9527 (T@Field_24505_24506) T@Field_30711_30716)
(declare-fun HasDirectPerm_24505_22377 (T@PolymorphicMapType_15235 T@Ref T@Field_24505_24506) Bool)
(declare-fun PredicateMaskField_9459 (T@Field_22376_22377) T@Field_38414_38419)
(declare-fun HasDirectPerm_22376_22377 (T@PolymorphicMapType_15235 T@Ref T@Field_22376_22377) Bool)
(declare-fun IsPredicateField_9317_52946 (T@Field_9317_22377) Bool)
(declare-fun PredicateMaskField_9317 (T@Field_9317_22377) T@Field_9317_30716)
(declare-fun HasDirectPerm_9317_22377 (T@PolymorphicMapType_15235 T@Ref T@Field_9317_22377) Bool)
(declare-fun IsWandField_27408_64660 (T@Field_27408_27409) Bool)
(declare-fun WandMaskField_27408 (T@Field_27408_27409) T@Field_35363_35368)
(declare-fun IsWandField_25026_64303 (T@Field_25026_25027) Bool)
(declare-fun WandMaskField_25026 (T@Field_25026_25027) T@Field_38936_38941)
(declare-fun IsWandField_24558_63946 (T@Field_24558_24559) Bool)
(declare-fun WandMaskField_24558 (T@Field_24558_24559) T@Field_39736_39741)
(declare-fun IsWandField_24505_63589 (T@Field_24505_24506) Bool)
(declare-fun WandMaskField_24505 (T@Field_24505_24506) T@Field_30711_30716)
(declare-fun IsWandField_22376_63232 (T@Field_22376_22377) Bool)
(declare-fun WandMaskField_22376 (T@Field_22376_22377) T@Field_38414_38419)
(declare-fun IsWandField_9317_62875 (T@Field_9317_22377) Bool)
(declare-fun WandMaskField_9317 (T@Field_9317_22377) T@Field_9317_30716)
(declare-fun |Seq#Singleton_9341| (T@Ref) T@Seq_21463)
(declare-fun |Seq#Singleton_2971| (Int) T@Seq_2971)
(declare-fun |someList#sm| (T@Ref Int) T@Field_38936_38941)
(declare-fun |P#sm| (T@Ref) T@Field_38414_38419)
(declare-fun |otherList#sm| (T@Ref) T@Field_39736_39741)
(declare-fun |list#sm| (T@Ref) T@Field_30711_30716)
(declare-fun |list2#sm| (T@Ref) T@Field_35363_35368)
(declare-fun |Seq#Append_21463| (T@Seq_21463 T@Seq_21463) T@Seq_21463)
(declare-fun |Seq#Append_2971| (T@Seq_2971 T@Seq_2971) T@Seq_2971)
(declare-fun |listLength#trigger| (T@FrameType T@Ref T@Ref Int) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun dummyHeap () T@PolymorphicMapType_15214)
(declare-fun ZeroMask () T@PolymorphicMapType_15235)
(declare-fun InsidePredicate_25026_25026 (T@Field_25026_25027 T@FrameType T@Field_25026_25027 T@FrameType) Bool)
(declare-fun InsidePredicate_24558_24558 (T@Field_24558_24559 T@FrameType T@Field_24558_24559 T@FrameType) Bool)
(declare-fun InsidePredicate_22376_22376 (T@Field_22376_22377 T@FrameType T@Field_22376_22377 T@FrameType) Bool)
(declare-fun InsidePredicate_15274_15274 (T@Field_9317_22377 T@FrameType T@Field_9317_22377 T@FrameType) Bool)
(declare-fun InsidePredicate_9552_9552 (T@Field_27408_27409 T@FrameType T@Field_27408_27409 T@FrameType) Bool)
(declare-fun InsidePredicate_9527_9527 (T@Field_24505_24506 T@FrameType T@Field_24505_24506 T@FrameType) Bool)
(declare-fun IsPredicateField_9317_3093 (T@Field_21300_3093) Bool)
(declare-fun IsWandField_9317_3093 (T@Field_21300_3093) Bool)
(declare-fun IsPredicateField_9319_9320 (T@Field_15287_15288) Bool)
(declare-fun IsWandField_9319_9320 (T@Field_15287_15288) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9552_85107 (T@Field_35363_35368) Bool)
(declare-fun IsWandField_9552_85123 (T@Field_35363_35368) Bool)
(declare-fun IsPredicateField_9552_53 (T@Field_27408_53) Bool)
(declare-fun IsWandField_9552_53 (T@Field_27408_53) Bool)
(declare-fun IsPredicateField_9552_9320 (T@Field_27408_9320) Bool)
(declare-fun IsWandField_9552_9320 (T@Field_27408_9320) Bool)
(declare-fun IsPredicateField_9552_3093 (T@Field_27408_3093) Bool)
(declare-fun IsWandField_9552_3093 (T@Field_27408_3093) Bool)
(declare-fun IsPredicateField_9505_84276 (T@Field_39736_39741) Bool)
(declare-fun IsWandField_9505_84292 (T@Field_39736_39741) Bool)
(declare-fun IsPredicateField_9505_53 (T@Field_24558_53) Bool)
(declare-fun IsWandField_9505_53 (T@Field_24558_53) Bool)
(declare-fun IsPredicateField_9505_9320 (T@Field_24558_9320) Bool)
(declare-fun IsWandField_9505_9320 (T@Field_24558_9320) Bool)
(declare-fun IsPredicateField_9505_3093 (T@Field_24558_3093) Bool)
(declare-fun IsWandField_9505_3093 (T@Field_24558_3093) Bool)
(declare-fun IsPredicateField_9481_83445 (T@Field_38936_38941) Bool)
(declare-fun IsWandField_9481_83461 (T@Field_38936_38941) Bool)
(declare-fun IsPredicateField_9481_53 (T@Field_25026_53) Bool)
(declare-fun IsWandField_9481_53 (T@Field_25026_53) Bool)
(declare-fun IsPredicateField_9481_9320 (T@Field_25026_9320) Bool)
(declare-fun IsWandField_9481_9320 (T@Field_25026_9320) Bool)
(declare-fun IsPredicateField_9481_3093 (T@Field_25026_3093) Bool)
(declare-fun IsWandField_9481_3093 (T@Field_25026_3093) Bool)
(declare-fun IsPredicateField_9317_82614 (T@Field_9317_30716) Bool)
(declare-fun IsWandField_9317_82630 (T@Field_9317_30716) Bool)
(declare-fun IsPredicateField_9317_53 (T@Field_15274_53) Bool)
(declare-fun IsWandField_9317_53 (T@Field_15274_53) Bool)
(declare-fun IsPredicateField_9527_81811 (T@Field_30711_30716) Bool)
(declare-fun IsWandField_9527_81827 (T@Field_30711_30716) Bool)
(declare-fun IsPredicateField_9527_53 (T@Field_24505_53) Bool)
(declare-fun IsWandField_9527_53 (T@Field_24505_53) Bool)
(declare-fun IsPredicateField_9527_9320 (T@Field_24505_9320) Bool)
(declare-fun IsWandField_9527_9320 (T@Field_24505_9320) Bool)
(declare-fun IsPredicateField_9527_3093 (T@Field_24505_3093) Bool)
(declare-fun IsWandField_9527_3093 (T@Field_24505_3093) Bool)
(declare-fun IsPredicateField_9459_80980 (T@Field_38414_38419) Bool)
(declare-fun IsWandField_9459_80996 (T@Field_38414_38419) Bool)
(declare-fun IsPredicateField_9459_53 (T@Field_22376_53) Bool)
(declare-fun IsWandField_9459_53 (T@Field_22376_53) Bool)
(declare-fun IsPredicateField_9459_9320 (T@Field_22376_9320) Bool)
(declare-fun IsWandField_9459_9320 (T@Field_22376_9320) Bool)
(declare-fun IsPredicateField_9459_3093 (T@Field_22376_3093) Bool)
(declare-fun IsWandField_9459_3093 (T@Field_22376_3093) Bool)
(declare-fun HasDirectPerm_27408_52701 (T@PolymorphicMapType_15235 T@Ref T@Field_35363_35368) Bool)
(declare-fun HasDirectPerm_27408_53 (T@PolymorphicMapType_15235 T@Ref T@Field_27408_53) Bool)
(declare-fun HasDirectPerm_27408_9320 (T@PolymorphicMapType_15235 T@Ref T@Field_27408_9320) Bool)
(declare-fun HasDirectPerm_27408_3093 (T@PolymorphicMapType_15235 T@Ref T@Field_27408_3093) Bool)
(declare-fun HasDirectPerm_25026_51540 (T@PolymorphicMapType_15235 T@Ref T@Field_38936_38941) Bool)
(declare-fun HasDirectPerm_25026_53 (T@PolymorphicMapType_15235 T@Ref T@Field_25026_53) Bool)
(declare-fun HasDirectPerm_25026_9320 (T@PolymorphicMapType_15235 T@Ref T@Field_25026_9320) Bool)
(declare-fun HasDirectPerm_25026_3093 (T@PolymorphicMapType_15235 T@Ref T@Field_25026_3093) Bool)
(declare-fun HasDirectPerm_24558_50379 (T@PolymorphicMapType_15235 T@Ref T@Field_39736_39741) Bool)
(declare-fun HasDirectPerm_24558_53 (T@PolymorphicMapType_15235 T@Ref T@Field_24558_53) Bool)
(declare-fun HasDirectPerm_24558_9320 (T@PolymorphicMapType_15235 T@Ref T@Field_24558_9320) Bool)
(declare-fun HasDirectPerm_24558_3093 (T@PolymorphicMapType_15235 T@Ref T@Field_24558_3093) Bool)
(declare-fun HasDirectPerm_24505_49261 (T@PolymorphicMapType_15235 T@Ref T@Field_30711_30716) Bool)
(declare-fun HasDirectPerm_24505_53 (T@PolymorphicMapType_15235 T@Ref T@Field_24505_53) Bool)
(declare-fun HasDirectPerm_24505_9320 (T@PolymorphicMapType_15235 T@Ref T@Field_24505_9320) Bool)
(declare-fun HasDirectPerm_24505_3093 (T@PolymorphicMapType_15235 T@Ref T@Field_24505_3093) Bool)
(declare-fun HasDirectPerm_22376_48100 (T@PolymorphicMapType_15235 T@Ref T@Field_38414_38419) Bool)
(declare-fun HasDirectPerm_22376_53 (T@PolymorphicMapType_15235 T@Ref T@Field_22376_53) Bool)
(declare-fun HasDirectPerm_22376_9320 (T@PolymorphicMapType_15235 T@Ref T@Field_22376_9320) Bool)
(declare-fun HasDirectPerm_22376_3093 (T@PolymorphicMapType_15235 T@Ref T@Field_22376_3093) Bool)
(declare-fun HasDirectPerm_9317_46939 (T@PolymorphicMapType_15235 T@Ref T@Field_9317_30716) Bool)
(declare-fun HasDirectPerm_9317_53 (T@PolymorphicMapType_15235 T@Ref T@Field_15274_53) Bool)
(declare-fun HasDirectPerm_9319_9320 (T@PolymorphicMapType_15235 T@Ref T@Field_15287_15288) Bool)
(declare-fun HasDirectPerm_9317_3093 (T@PolymorphicMapType_15235 T@Ref T@Field_21300_3093) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |someFun#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_3372 (Int) T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15235 T@PolymorphicMapType_15235 T@PolymorphicMapType_15235) Bool)
(declare-fun |Seq#Equal_21463| (T@Seq_21463 T@Seq_21463) Bool)
(declare-fun |Seq#Equal_2971| (T@Seq_2971 T@Seq_2971) Bool)
(declare-fun listLength (T@PolymorphicMapType_15214 T@Ref T@Ref Int) Int)
(declare-fun |Seq#ContainsTrigger_9341| (T@Seq_21463 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2971| (T@Seq_2971 Int) Bool)
(declare-fun getPredWandId_9481_9482 (T@Field_25026_25027) Int)
(declare-fun getPredWandId_9459_9460 (T@Field_22376_22377) Int)
(declare-fun getPredWandId_9505_9506 (T@Field_24558_24559) Int)
(declare-fun getPredWandId_9527_9528 (T@Field_24505_24506) Int)
(declare-fun getPredWandId_9552_9553 (T@Field_27408_27409) Int)
(declare-fun |foo#condqp1| (T@PolymorphicMapType_15214 T@Seq_21463) Int)
(declare-fun |sk_foo#condqp1| (Int Int) Int)
(declare-fun |foo#frame| (T@FrameType T@Seq_21463) Bool)
(declare-fun |listLength#frame| (T@FrameType T@Ref T@Ref Int) Int)
(declare-fun |Seq#SkolemDiff_21463| (T@Seq_21463 T@Seq_21463) Int)
(declare-fun |Seq#SkolemDiff_2971| (T@Seq_2971 T@Seq_2971) Int)
(declare-fun InsidePredicate_25026_24558 (T@Field_25026_25027 T@FrameType T@Field_24558_24559 T@FrameType) Bool)
(declare-fun InsidePredicate_25026_22376 (T@Field_25026_25027 T@FrameType T@Field_22376_22377 T@FrameType) Bool)
(declare-fun InsidePredicate_25026_15274 (T@Field_25026_25027 T@FrameType T@Field_9317_22377 T@FrameType) Bool)
(declare-fun InsidePredicate_25026_9552 (T@Field_25026_25027 T@FrameType T@Field_27408_27409 T@FrameType) Bool)
(declare-fun InsidePredicate_25026_9527 (T@Field_25026_25027 T@FrameType T@Field_24505_24506 T@FrameType) Bool)
(declare-fun InsidePredicate_24558_25026 (T@Field_24558_24559 T@FrameType T@Field_25026_25027 T@FrameType) Bool)
(declare-fun InsidePredicate_24558_22376 (T@Field_24558_24559 T@FrameType T@Field_22376_22377 T@FrameType) Bool)
(declare-fun InsidePredicate_24558_15274 (T@Field_24558_24559 T@FrameType T@Field_9317_22377 T@FrameType) Bool)
(declare-fun InsidePredicate_24558_9552 (T@Field_24558_24559 T@FrameType T@Field_27408_27409 T@FrameType) Bool)
(declare-fun InsidePredicate_24558_9527 (T@Field_24558_24559 T@FrameType T@Field_24505_24506 T@FrameType) Bool)
(declare-fun InsidePredicate_22376_25026 (T@Field_22376_22377 T@FrameType T@Field_25026_25027 T@FrameType) Bool)
(declare-fun InsidePredicate_22376_24558 (T@Field_22376_22377 T@FrameType T@Field_24558_24559 T@FrameType) Bool)
(declare-fun InsidePredicate_22376_15274 (T@Field_22376_22377 T@FrameType T@Field_9317_22377 T@FrameType) Bool)
(declare-fun InsidePredicate_22376_9552 (T@Field_22376_22377 T@FrameType T@Field_27408_27409 T@FrameType) Bool)
(declare-fun InsidePredicate_22376_9527 (T@Field_22376_22377 T@FrameType T@Field_24505_24506 T@FrameType) Bool)
(declare-fun InsidePredicate_15274_25026 (T@Field_9317_22377 T@FrameType T@Field_25026_25027 T@FrameType) Bool)
(declare-fun InsidePredicate_15274_24558 (T@Field_9317_22377 T@FrameType T@Field_24558_24559 T@FrameType) Bool)
(declare-fun InsidePredicate_15274_22376 (T@Field_9317_22377 T@FrameType T@Field_22376_22377 T@FrameType) Bool)
(declare-fun InsidePredicate_15274_9552 (T@Field_9317_22377 T@FrameType T@Field_27408_27409 T@FrameType) Bool)
(declare-fun InsidePredicate_15274_9527 (T@Field_9317_22377 T@FrameType T@Field_24505_24506 T@FrameType) Bool)
(declare-fun InsidePredicate_9552_25026 (T@Field_27408_27409 T@FrameType T@Field_25026_25027 T@FrameType) Bool)
(declare-fun InsidePredicate_9552_24558 (T@Field_27408_27409 T@FrameType T@Field_24558_24559 T@FrameType) Bool)
(declare-fun InsidePredicate_9552_22376 (T@Field_27408_27409 T@FrameType T@Field_22376_22377 T@FrameType) Bool)
(declare-fun InsidePredicate_9552_15274 (T@Field_27408_27409 T@FrameType T@Field_9317_22377 T@FrameType) Bool)
(declare-fun InsidePredicate_9552_9527 (T@Field_27408_27409 T@FrameType T@Field_24505_24506 T@FrameType) Bool)
(declare-fun InsidePredicate_9527_25026 (T@Field_24505_24506 T@FrameType T@Field_25026_25027 T@FrameType) Bool)
(declare-fun InsidePredicate_9527_24558 (T@Field_24505_24506 T@FrameType T@Field_24558_24559 T@FrameType) Bool)
(declare-fun InsidePredicate_9527_22376 (T@Field_24505_24506 T@FrameType T@Field_22376_22377 T@FrameType) Bool)
(declare-fun InsidePredicate_9527_15274 (T@Field_24505_24506 T@FrameType T@Field_9317_22377 T@FrameType) Bool)
(declare-fun InsidePredicate_9527_9552 (T@Field_24505_24506 T@FrameType T@Field_27408_27409 T@FrameType) Bool)
(assert (and (distinct elem elem2)(distinct next next2))
)
(assert (forall ((s T@Seq_21463) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_9341| s)) (= (|Seq#Length_9341| (|Seq#Drop_9341| s n)) (- (|Seq#Length_9341| s) n))) (=> (< (|Seq#Length_9341| s) n) (= (|Seq#Length_9341| (|Seq#Drop_9341| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_9341| (|Seq#Drop_9341| s n)) (|Seq#Length_9341| s))))
 :qid |stdinbpl.302:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_9341| (|Seq#Drop_9341| s n)))
 :pattern ( (|Seq#Length_9341| s) (|Seq#Drop_9341| s n))
)))
(assert (forall ((s@@0 T@Seq_2971) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2971| s@@0)) (= (|Seq#Length_2971| (|Seq#Drop_2971| s@@0 n@@0)) (- (|Seq#Length_2971| s@@0) n@@0))) (=> (< (|Seq#Length_2971| s@@0) n@@0) (= (|Seq#Length_2971| (|Seq#Drop_2971| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2971| (|Seq#Drop_2971| s@@0 n@@0)) (|Seq#Length_2971| s@@0))))
 :qid |stdinbpl.302:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2971| (|Seq#Drop_2971| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2971| s@@0) (|Seq#Drop_2971| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_15214) (Heap1 T@PolymorphicMapType_15214) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_15214) (Heap1Heap T@PolymorphicMapType_15214) (l_1 T@Ref) ) (!  (=> (and (= (< NoPerm FullPerm) (< NoPerm FullPerm)) (=> (< NoPerm FullPerm) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap2Heap) null (someList l_1 (|sk_someFun#condqp2| (|someFun#condqp2| Heap2Heap l_1) (|someFun#condqp2| Heap1Heap l_1)))) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap1Heap) null (someList l_1 (|sk_someFun#condqp2| (|someFun#condqp2| Heap2Heap l_1) (|someFun#condqp2| Heap1Heap l_1))))))) (= (|someFun#condqp2| Heap2Heap l_1) (|someFun#condqp2| Heap1Heap l_1)))
 :qid |stdinbpl.757:15|
 :skolemid |75|
 :pattern ( (|someFun#condqp2| Heap2Heap l_1) (|someFun#condqp2| Heap1Heap l_1) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap T@PolymorphicMapType_15214) (Mask T@PolymorphicMapType_15235) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15214) (Heap1@@0 T@PolymorphicMapType_15214) (Heap2 T@PolymorphicMapType_15214) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15214) (l1_1 T@Ref) (l2 T@Ref) (k Int) ) (! (dummyFunction_4443 (|listLength#triggerStateless| l1_1 l2 k))
 :qid |stdinbpl.857:15|
 :skolemid |83|
 :pattern ( (|listLength'| Heap@@0 l1_1 l2 k))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_35363_35368) ) (!  (not (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_27408_27409) ) (!  (not (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_27408_53) ) (!  (not (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_27408_9320) ) (!  (not (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_27408_3093) ) (!  (not (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_38936_38941) ) (!  (not (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_25026_25027) ) (!  (not (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_25026_53) ) (!  (not (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_25026_9320) ) (!  (not (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_25026_3093) ) (!  (not (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_39736_39741) ) (!  (not (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_24558_24559) ) (!  (not (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_24558_53) ) (!  (not (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_24558_9320) ) (!  (not (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_24558_3093) ) (!  (not (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_30711_30716) ) (!  (not (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_24505_24506) ) (!  (not (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_24505_53) ) (!  (not (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_24505_9320) ) (!  (not (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_24505_3093) ) (!  (not (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_38414_38419) ) (!  (not (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_22376_22377) ) (!  (not (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_22376_53) ) (!  (not (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_22376_9320) ) (!  (not (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_22376_3093) ) (!  (not (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_9317_30716) ) (!  (not (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| ZeroPMask) o_2@@24 f_4@@24))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| ZeroPMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_9317_22377) ) (!  (not (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| ZeroPMask) o_2@@25 f_4@@25))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| ZeroPMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_15274_53) ) (!  (not (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| ZeroPMask) o_2@@26 f_4@@26))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| ZeroPMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_15287_15288) ) (!  (not (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| ZeroPMask) o_2@@27 f_4@@27))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| ZeroPMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_21300_3093) ) (!  (not (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| ZeroPMask) o_2@@28 f_4@@28))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| ZeroPMask) o_2@@28 f_4@@28))
)))
(assert (forall ((this T@Ref) (i Int) ) (! (IsPredicateField_9481_9482 (someList this i))
 :qid |stdinbpl.1186:15|
 :skolemid |99|
 :pattern ( (someList this i))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15214) (this@@0 T@Ref) (i@@0 Int) ) (! (|someList#everUsed_9481| (someList this@@0 i@@0))
 :qid |stdinbpl.1205:15|
 :skolemid |103|
 :pattern ( (|someList#trigger_9481| Heap@@1 (someList this@@0 i@@0)))
)))
(assert (forall ((s@@1 T@Seq_21463) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_9341| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_9341| (|Seq#Drop_9341| s@@1 n@@1) j) (|Seq#Index_9341| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.323:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_9341| (|Seq#Drop_9341| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2971) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2971| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2971| (|Seq#Drop_2971| s@@2 n@@2) j@@0) (|Seq#Index_2971| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.323:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2971| (|Seq#Drop_2971| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15214) (Mask@@0 T@PolymorphicMapType_15235) (s_1 T@Seq_21463) ) (!  (=> (and (state Heap@@2 Mask@@0) (< AssumeFunctionsAbove 0)) (=> (forall ((i@@1 Int) (j@@1 Int) ) (!  (=> (and (>= i@@1 0) (and (< i@@1 (|Seq#Length_9341| s_1)) (and (>= j@@1 0) (and (< j@@1 (|Seq#Length_9341| s_1)) (not (= i@@1 j@@1)))))) (not (= (|Seq#Index_9341| s_1 i@@1) (|Seq#Index_9341| s_1 j@@1))))
 :qid |stdinbpl.605:61|
 :skolemid |60|
 :pattern ( (|Seq#Index_9341| s_1 i@@1) (|Seq#Index_9341| s_1 j@@1))
)) (foo_1 Heap@@2 s_1)))
 :qid |stdinbpl.603:15|
 :skolemid |61|
 :pattern ( (state Heap@@2 Mask@@0) (foo_1 Heap@@2 s_1))
)))
(assert (= (|Seq#Length_9341| |Seq#Empty_9341|) 0))
(assert (= (|Seq#Length_2971| |Seq#Empty_2971|) 0))
(assert (forall ((self T@Ref) ) (! (IsPredicateField_9459_9460 (P self))
 :qid |stdinbpl.1151:15|
 :skolemid |93|
 :pattern ( (P self))
)))
(assert (forall ((this@@1 T@Ref) ) (! (IsPredicateField_9505_9506 (otherList this@@1))
 :qid |stdinbpl.1236:15|
 :skolemid |105|
 :pattern ( (otherList this@@1))
)))
(assert (forall ((this@@2 T@Ref) ) (! (IsPredicateField_9527_9528 (list this@@2))
 :qid |stdinbpl.1271:15|
 :skolemid |111|
 :pattern ( (list this@@2))
)))
(assert (forall ((this@@3 T@Ref) ) (! (IsPredicateField_9552_9553 (list2 this@@3))
 :qid |stdinbpl.1343:15|
 :skolemid |117|
 :pattern ( (list2 this@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15214) (s_1@@0 T@Seq_21463) ) (! (dummyFunction_3574 (|foo#triggerStateless| s_1@@0))
 :qid |stdinbpl.597:15|
 :skolemid |59|
 :pattern ( (|foo'| Heap@@3 s_1@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15214) (l_1@@0 T@Ref) ) (! (dummyFunction_4443 (|someFun#triggerStateless| l_1@@0))
 :qid |stdinbpl.734:15|
 :skolemid |72|
 :pattern ( (|someFun'| Heap@@4 l_1@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15214) (self@@0 T@Ref) ) (! (|P#everUsed_9459| (P self@@0))
 :qid |stdinbpl.1170:15|
 :skolemid |97|
 :pattern ( (|P#trigger_9459| Heap@@5 (P self@@0)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15214) (this@@4 T@Ref) ) (! (|otherList#everUsed_9505| (otherList this@@4))
 :qid |stdinbpl.1255:15|
 :skolemid |109|
 :pattern ( (|otherList#trigger_9505| Heap@@6 (otherList this@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15214) (this@@5 T@Ref) ) (! (|list#everUsed_9527| (list this@@5))
 :qid |stdinbpl.1290:15|
 :skolemid |115|
 :pattern ( (|list#trigger_9527| Heap@@7 (list this@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15214) (this@@6 T@Ref) ) (! (|list2#everUsed_9552| (list2 this@@6))
 :qid |stdinbpl.1362:15|
 :skolemid |121|
 :pattern ( (|list2#trigger_9552| Heap@@8 (list2 this@@6)))
)))
(assert (forall ((s@@3 T@Seq_21463) (i@@2 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_9341| s@@3))) (and (=> (= i@@2 n@@3) (= (|Seq#Index_9341| (|Seq#Update_9341| s@@3 i@@2 v) n@@3) v)) (=> (not (= i@@2 n@@3)) (= (|Seq#Index_9341| (|Seq#Update_9341| s@@3 i@@2 v) n@@3) (|Seq#Index_9341| s@@3 n@@3)))))
 :qid |stdinbpl.278:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_9341| (|Seq#Update_9341| s@@3 i@@2 v) n@@3))
 :pattern ( (|Seq#Index_9341| s@@3 n@@3) (|Seq#Update_9341| s@@3 i@@2 v))
)))
(assert (forall ((s@@4 T@Seq_2971) (i@@3 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2971| s@@4))) (and (=> (= i@@3 n@@4) (= (|Seq#Index_2971| (|Seq#Update_2971| s@@4 i@@3 v@@0) n@@4) v@@0)) (=> (not (= i@@3 n@@4)) (= (|Seq#Index_2971| (|Seq#Update_2971| s@@4 i@@3 v@@0) n@@4) (|Seq#Index_2971| s@@4 n@@4)))))
 :qid |stdinbpl.278:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2971| (|Seq#Update_2971| s@@4 i@@3 v@@0) n@@4))
 :pattern ( (|Seq#Index_2971| s@@4 n@@4) (|Seq#Update_2971| s@@4 i@@3 v@@0))
)))
(assert (forall ((s@@5 T@Seq_21463) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_9341| s@@5)) (= (|Seq#Length_9341| (|Seq#Take_9341| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_9341| s@@5) n@@5) (= (|Seq#Length_9341| (|Seq#Take_9341| s@@5 n@@5)) (|Seq#Length_9341| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_9341| (|Seq#Take_9341| s@@5 n@@5)) 0)))
 :qid |stdinbpl.289:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_9341| (|Seq#Take_9341| s@@5 n@@5)))
 :pattern ( (|Seq#Take_9341| s@@5 n@@5) (|Seq#Length_9341| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2971) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2971| s@@6)) (= (|Seq#Length_2971| (|Seq#Take_2971| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2971| s@@6) n@@6) (= (|Seq#Length_2971| (|Seq#Take_2971| s@@6 n@@6)) (|Seq#Length_2971| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2971| (|Seq#Take_2971| s@@6 n@@6)) 0)))
 :qid |stdinbpl.289:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2971| (|Seq#Take_2971| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2971| s@@6 n@@6) (|Seq#Length_2971| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2971| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.563:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2971| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_21463) (x T@Ref) ) (!  (=> (|Seq#Contains_21463| s@@7 x) (and (and (<= 0 (|Seq#Skolem_21463| s@@7 x)) (< (|Seq#Skolem_21463| s@@7 x) (|Seq#Length_9341| s@@7))) (= (|Seq#Index_9341| s@@7 (|Seq#Skolem_21463| s@@7 x)) x)))
 :qid |stdinbpl.421:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_21463| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2971) (x@@0 Int) ) (!  (=> (|Seq#Contains_2971| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2971| s@@8 x@@0)) (< (|Seq#Skolem_2971| s@@8 x@@0) (|Seq#Length_2971| s@@8))) (= (|Seq#Index_2971| s@@8 (|Seq#Skolem_2971| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.421:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2971| s@@8 x@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15214) (l_1@@1 T@Ref) ) (!  (and (= (someFun Heap@@9 l_1@@1) (|someFun'| Heap@@9 l_1@@1)) (dummyFunction_4443 (|someFun#triggerStateless| l_1@@1)))
 :qid |stdinbpl.730:15|
 :skolemid |71|
 :pattern ( (someFun Heap@@9 l_1@@1))
)))
(assert (forall ((s@@9 T@Seq_21463) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_9341| s@@9 n@@7) s@@9))
 :qid |stdinbpl.405:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_9341| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2971) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2971| s@@10 n@@8) s@@10))
 :qid |stdinbpl.405:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2971| s@@10 n@@8))
)))
(assert (forall ((i@@4 Int) (j@@2 Int) ) (! (= (|Seq#Sub| i@@4 j@@2) (- i@@4 j@@2))
 :qid |stdinbpl.258:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@4 j@@2))
)))
(assert (forall ((i@@5 Int) (j@@3 Int) ) (! (= (|Seq#Add| i@@5 j@@3) (+ i@@5 j@@3))
 :qid |stdinbpl.256:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@5 j@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15214) (ExhaleHeap T@PolymorphicMapType_15214) (Mask@@1 T@PolymorphicMapType_15235) (pm_f_2 T@Field_27408_27409) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_27408_22377 Mask@@1 null pm_f_2) (IsPredicateField_9552_9553 pm_f_2)) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@10) null (PredicateMaskField_9552 pm_f_2)) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap) null (PredicateMaskField_9552 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@1) (IsPredicateField_9552_9553 pm_f_2) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap) null (PredicateMaskField_9552 pm_f_2)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15214) (ExhaleHeap@@0 T@PolymorphicMapType_15214) (Mask@@2 T@PolymorphicMapType_15235) (pm_f_2@@0 T@Field_25026_25027) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_25026_22377 Mask@@2 null pm_f_2@@0) (IsPredicateField_9481_9482 pm_f_2@@0)) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@11) null (PredicateMaskField_9481 pm_f_2@@0)) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@0) null (PredicateMaskField_9481 pm_f_2@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@2) (IsPredicateField_9481_9482 pm_f_2@@0) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@0) null (PredicateMaskField_9481 pm_f_2@@0)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15214) (ExhaleHeap@@1 T@PolymorphicMapType_15214) (Mask@@3 T@PolymorphicMapType_15235) (pm_f_2@@1 T@Field_24558_24559) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_24558_22377 Mask@@3 null pm_f_2@@1) (IsPredicateField_9505_9506 pm_f_2@@1)) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@12) null (PredicateMaskField_9505 pm_f_2@@1)) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@1) null (PredicateMaskField_9505 pm_f_2@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@1 Mask@@3) (IsPredicateField_9505_9506 pm_f_2@@1) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@1) null (PredicateMaskField_9505 pm_f_2@@1)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15214) (ExhaleHeap@@2 T@PolymorphicMapType_15214) (Mask@@4 T@PolymorphicMapType_15235) (pm_f_2@@2 T@Field_24505_24506) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_24505_22377 Mask@@4 null pm_f_2@@2) (IsPredicateField_9527_9528 pm_f_2@@2)) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@13) null (PredicateMaskField_9527 pm_f_2@@2)) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@2) null (PredicateMaskField_9527 pm_f_2@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@2 Mask@@4) (IsPredicateField_9527_9528 pm_f_2@@2) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@2) null (PredicateMaskField_9527 pm_f_2@@2)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15214) (ExhaleHeap@@3 T@PolymorphicMapType_15214) (Mask@@5 T@PolymorphicMapType_15235) (pm_f_2@@3 T@Field_22376_22377) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@5) (=> (and (HasDirectPerm_22376_22377 Mask@@5 null pm_f_2@@3) (IsPredicateField_9459_9460 pm_f_2@@3)) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@14) null (PredicateMaskField_9459 pm_f_2@@3)) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@3) null (PredicateMaskField_9459 pm_f_2@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@3 Mask@@5) (IsPredicateField_9459_9460 pm_f_2@@3) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@3) null (PredicateMaskField_9459 pm_f_2@@3)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15214) (ExhaleHeap@@4 T@PolymorphicMapType_15214) (Mask@@6 T@PolymorphicMapType_15235) (pm_f_2@@4 T@Field_9317_22377) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@6) (=> (and (HasDirectPerm_9317_22377 Mask@@6 null pm_f_2@@4) (IsPredicateField_9317_52946 pm_f_2@@4)) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@15) null (PredicateMaskField_9317 pm_f_2@@4)) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@4) null (PredicateMaskField_9317 pm_f_2@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@4 Mask@@6) (IsPredicateField_9317_52946 pm_f_2@@4) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@4) null (PredicateMaskField_9317 pm_f_2@@4)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15214) (ExhaleHeap@@5 T@PolymorphicMapType_15214) (Mask@@7 T@PolymorphicMapType_15235) (pm_f_2@@5 T@Field_27408_27409) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@7) (=> (and (HasDirectPerm_27408_22377 Mask@@7 null pm_f_2@@5) (IsWandField_27408_64660 pm_f_2@@5)) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@16) null (WandMaskField_27408 pm_f_2@@5)) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@5) null (WandMaskField_27408 pm_f_2@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@5 Mask@@7) (IsWandField_27408_64660 pm_f_2@@5) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@5) null (WandMaskField_27408 pm_f_2@@5)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15214) (ExhaleHeap@@6 T@PolymorphicMapType_15214) (Mask@@8 T@PolymorphicMapType_15235) (pm_f_2@@6 T@Field_25026_25027) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@8) (=> (and (HasDirectPerm_25026_22377 Mask@@8 null pm_f_2@@6) (IsWandField_25026_64303 pm_f_2@@6)) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@17) null (WandMaskField_25026 pm_f_2@@6)) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@6) null (WandMaskField_25026 pm_f_2@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@6 Mask@@8) (IsWandField_25026_64303 pm_f_2@@6) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@6) null (WandMaskField_25026 pm_f_2@@6)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15214) (ExhaleHeap@@7 T@PolymorphicMapType_15214) (Mask@@9 T@PolymorphicMapType_15235) (pm_f_2@@7 T@Field_24558_24559) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@9) (=> (and (HasDirectPerm_24558_22377 Mask@@9 null pm_f_2@@7) (IsWandField_24558_63946 pm_f_2@@7)) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@18) null (WandMaskField_24558 pm_f_2@@7)) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@7) null (WandMaskField_24558 pm_f_2@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@7 Mask@@9) (IsWandField_24558_63946 pm_f_2@@7) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@7) null (WandMaskField_24558 pm_f_2@@7)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15214) (ExhaleHeap@@8 T@PolymorphicMapType_15214) (Mask@@10 T@PolymorphicMapType_15235) (pm_f_2@@8 T@Field_24505_24506) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@10) (=> (and (HasDirectPerm_24505_22377 Mask@@10 null pm_f_2@@8) (IsWandField_24505_63589 pm_f_2@@8)) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@19) null (WandMaskField_24505 pm_f_2@@8)) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@8) null (WandMaskField_24505 pm_f_2@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@8 Mask@@10) (IsWandField_24505_63589 pm_f_2@@8) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@8) null (WandMaskField_24505 pm_f_2@@8)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15214) (ExhaleHeap@@9 T@PolymorphicMapType_15214) (Mask@@11 T@PolymorphicMapType_15235) (pm_f_2@@9 T@Field_22376_22377) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@11) (=> (and (HasDirectPerm_22376_22377 Mask@@11 null pm_f_2@@9) (IsWandField_22376_63232 pm_f_2@@9)) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@20) null (WandMaskField_22376 pm_f_2@@9)) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@9) null (WandMaskField_22376 pm_f_2@@9)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@9 Mask@@11) (IsWandField_22376_63232 pm_f_2@@9) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@9) null (WandMaskField_22376 pm_f_2@@9)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15214) (ExhaleHeap@@10 T@PolymorphicMapType_15214) (Mask@@12 T@PolymorphicMapType_15235) (pm_f_2@@10 T@Field_9317_22377) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@12) (=> (and (HasDirectPerm_9317_22377 Mask@@12 null pm_f_2@@10) (IsWandField_9317_62875 pm_f_2@@10)) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@21) null (WandMaskField_9317 pm_f_2@@10)) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@10) null (WandMaskField_9317 pm_f_2@@10)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@10 Mask@@12) (IsWandField_9317_62875 pm_f_2@@10) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@10) null (WandMaskField_9317 pm_f_2@@10)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_21463| (|Seq#Singleton_9341| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.546:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_21463| (|Seq#Singleton_9341| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2971| (|Seq#Singleton_2971| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.546:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2971| (|Seq#Singleton_2971| x@@2) y@@0))
)))
(assert (forall ((this@@7 T@Ref) (i@@6 Int) (this2 T@Ref) (i2 Int) ) (!  (=> (= (someList this@@7 i@@6) (someList this2 i2)) (and (= this@@7 this2) (= i@@6 i2)))
 :qid |stdinbpl.1196:15|
 :skolemid |101|
 :pattern ( (someList this@@7 i@@6) (someList this2 i2))
)))
(assert (forall ((this@@8 T@Ref) (i@@7 Int) (this2@@0 T@Ref) (i2@@0 Int) ) (!  (=> (= (|someList#sm| this@@8 i@@7) (|someList#sm| this2@@0 i2@@0)) (and (= this@@8 this2@@0) (= i@@7 i2@@0)))
 :qid |stdinbpl.1200:15|
 :skolemid |102|
 :pattern ( (|someList#sm| this@@8 i@@7) (|someList#sm| this2@@0 i2@@0))
)))
(assert (forall ((s@@11 T@Seq_21463) (n@@9 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@9)) (< j@@4 (|Seq#Length_9341| s@@11))) (= (|Seq#Index_9341| (|Seq#Take_9341| s@@11 n@@9) j@@4) (|Seq#Index_9341| s@@11 j@@4)))
 :qid |stdinbpl.297:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_9341| (|Seq#Take_9341| s@@11 n@@9) j@@4))
 :pattern ( (|Seq#Index_9341| s@@11 j@@4) (|Seq#Take_9341| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2971) (n@@10 Int) (j@@5 Int) ) (!  (=> (and (and (<= 0 j@@5) (< j@@5 n@@10)) (< j@@5 (|Seq#Length_2971| s@@12))) (= (|Seq#Index_2971| (|Seq#Take_2971| s@@12 n@@10) j@@5) (|Seq#Index_2971| s@@12 j@@5)))
 :qid |stdinbpl.297:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2971| (|Seq#Take_2971| s@@12 n@@10) j@@5))
 :pattern ( (|Seq#Index_2971| s@@12 j@@5) (|Seq#Take_2971| s@@12 n@@10))
)))
(assert (forall ((self@@1 T@Ref) (self2 T@Ref) ) (!  (=> (= (P self@@1) (P self2)) (= self@@1 self2))
 :qid |stdinbpl.1161:15|
 :skolemid |95|
 :pattern ( (P self@@1) (P self2))
)))
(assert (forall ((self@@2 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|P#sm| self@@2) (|P#sm| self2@@0)) (= self@@2 self2@@0))
 :qid |stdinbpl.1165:15|
 :skolemid |96|
 :pattern ( (|P#sm| self@@2) (|P#sm| self2@@0))
)))
(assert (forall ((this@@9 T@Ref) (this2@@1 T@Ref) ) (!  (=> (= (otherList this@@9) (otherList this2@@1)) (= this@@9 this2@@1))
 :qid |stdinbpl.1246:15|
 :skolemid |107|
 :pattern ( (otherList this@@9) (otherList this2@@1))
)))
(assert (forall ((this@@10 T@Ref) (this2@@2 T@Ref) ) (!  (=> (= (|otherList#sm| this@@10) (|otherList#sm| this2@@2)) (= this@@10 this2@@2))
 :qid |stdinbpl.1250:15|
 :skolemid |108|
 :pattern ( (|otherList#sm| this@@10) (|otherList#sm| this2@@2))
)))
(assert (forall ((this@@11 T@Ref) (this2@@3 T@Ref) ) (!  (=> (= (list this@@11) (list this2@@3)) (= this@@11 this2@@3))
 :qid |stdinbpl.1281:15|
 :skolemid |113|
 :pattern ( (list this@@11) (list this2@@3))
)))
(assert (forall ((this@@12 T@Ref) (this2@@4 T@Ref) ) (!  (=> (= (|list#sm| this@@12) (|list#sm| this2@@4)) (= this@@12 this2@@4))
 :qid |stdinbpl.1285:15|
 :skolemid |114|
 :pattern ( (|list#sm| this@@12) (|list#sm| this2@@4))
)))
(assert (forall ((this@@13 T@Ref) (this2@@5 T@Ref) ) (!  (=> (= (list2 this@@13) (list2 this2@@5)) (= this@@13 this2@@5))
 :qid |stdinbpl.1353:15|
 :skolemid |119|
 :pattern ( (list2 this@@13) (list2 this2@@5))
)))
(assert (forall ((this@@14 T@Ref) (this2@@6 T@Ref) ) (!  (=> (= (|list2#sm| this@@14) (|list2#sm| this2@@6)) (= this@@14 this2@@6))
 :qid |stdinbpl.1357:15|
 :skolemid |120|
 :pattern ( (|list2#sm| this@@14) (|list2#sm| this2@@6))
)))
(assert (forall ((s@@13 T@Seq_21463) (t T@Seq_21463) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_9341| s@@13))) (< n@@11 (|Seq#Length_9341| (|Seq#Append_21463| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_9341| s@@13)) (|Seq#Length_9341| s@@13)) n@@11) (= (|Seq#Take_9341| (|Seq#Append_21463| s@@13 t) n@@11) (|Seq#Append_21463| s@@13 (|Seq#Take_9341| t (|Seq#Sub| n@@11 (|Seq#Length_9341| s@@13)))))))
 :qid |stdinbpl.382:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_9341| (|Seq#Append_21463| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2971) (t@@0 T@Seq_2971) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2971| s@@14))) (< n@@12 (|Seq#Length_2971| (|Seq#Append_2971| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2971| s@@14)) (|Seq#Length_2971| s@@14)) n@@12) (= (|Seq#Take_2971| (|Seq#Append_2971| s@@14 t@@0) n@@12) (|Seq#Append_2971| s@@14 (|Seq#Take_2971| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2971| s@@14)))))))
 :qid |stdinbpl.382:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2971| (|Seq#Append_2971| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15214) (Mask@@13 T@PolymorphicMapType_15235) (l1_1@@0 T@Ref) (l2@@0 T@Ref) (k@@0 Int) ) (!  (=> (and (state Heap@@22 Mask@@13) (or (< AssumeFunctionsAbove 2) (|listLength#trigger| (CombineFrames (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@22) null (list l1_1@@0)) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@22) null (list2 l2@@0))) l1_1@@0 l2@@0 k@@0))) (> (|listLength'| Heap@@22 l1_1@@0 l2@@0 k@@0) 0))
 :qid |stdinbpl.876:15|
 :skolemid |86|
 :pattern ( (state Heap@@22 Mask@@13) (|listLength'| Heap@@22 l1_1@@0 l2@@0 k@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15214) (ExhaleHeap@@11 T@PolymorphicMapType_15214) (Mask@@14 T@PolymorphicMapType_15235) (o_8 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@11 Mask@@14) (=> (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@23) o_8 $allocated) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@11) o_8 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@11 Mask@@14) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@11) o_8 $allocated))
)))
(assert (forall ((p T@Field_25026_25027) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_25026_25026 p v_1 p w))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_25026_25026 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_24558_24559) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_24558_24558 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_24558_24558 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_22376_22377) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_22376_22376 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_22376_22376 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_9317_22377) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_15274_15274 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15274_15274 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_27408_27409) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_9552_9552 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9552_9552 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((p@@4 T@Field_24505_24506) (v_1@@4 T@FrameType) (w@@4 T@FrameType) ) (!  (not (InsidePredicate_9527_9527 p@@4 v_1@@4 p@@4 w@@4))
 :qid |stdinbpl.200:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_9527_9527 p@@4 v_1@@4 p@@4 w@@4))
)))
(assert (forall ((s0 T@Seq_21463) (s1 T@Seq_21463) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_9341|)) (not (= s1 |Seq#Empty_9341|))) (<= (|Seq#Length_9341| s0) n@@13)) (< n@@13 (|Seq#Length_9341| (|Seq#Append_21463| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_9341| s0)) (|Seq#Length_9341| s0)) n@@13) (= (|Seq#Index_9341| (|Seq#Append_21463| s0 s1) n@@13) (|Seq#Index_9341| s1 (|Seq#Sub| n@@13 (|Seq#Length_9341| s0))))))
 :qid |stdinbpl.269:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_9341| (|Seq#Append_21463| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2971) (s1@@0 T@Seq_2971) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2971|)) (not (= s1@@0 |Seq#Empty_2971|))) (<= (|Seq#Length_2971| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2971| (|Seq#Append_2971| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2971| s0@@0)) (|Seq#Length_2971| s0@@0)) n@@14) (= (|Seq#Index_2971| (|Seq#Append_2971| s0@@0 s1@@0) n@@14) (|Seq#Index_2971| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2971| s0@@0))))))
 :qid |stdinbpl.269:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2971| (|Seq#Append_2971| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_9317_3093 elem)))
(assert  (not (IsWandField_9317_3093 elem)))
(assert  (not (IsPredicateField_9319_9320 next)))
(assert  (not (IsWandField_9319_9320 next)))
(assert  (not (IsPredicateField_9317_3093 elem2)))
(assert  (not (IsWandField_9317_3093 elem2)))
(assert  (not (IsPredicateField_9319_9320 next2)))
(assert  (not (IsWandField_9319_9320 next2)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15214) (ExhaleHeap@@12 T@PolymorphicMapType_15214) (Mask@@15 T@PolymorphicMapType_15235) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@12 Mask@@15) (succHeap Heap@@24 ExhaleHeap@@12))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@12 Mask@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15235) (o_2@@29 T@Ref) (f_4@@29 T@Field_35363_35368) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| Mask@@16) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9552_85107 f_4@@29))) (not (IsWandField_9552_85123 f_4@@29))) (<= (select (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| Mask@@16) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| Mask@@16) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_15235) (o_2@@30 T@Ref) (f_4@@30 T@Field_27408_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| Mask@@17) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9552_53 f_4@@30))) (not (IsWandField_9552_53 f_4@@30))) (<= (select (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| Mask@@17) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| Mask@@17) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_15235) (o_2@@31 T@Ref) (f_4@@31 T@Field_27408_9320) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| Mask@@18) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_9552_9320 f_4@@31))) (not (IsWandField_9552_9320 f_4@@31))) (<= (select (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| Mask@@18) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| Mask@@18) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_15235) (o_2@@32 T@Ref) (f_4@@32 T@Field_27408_3093) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| Mask@@19) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9552_3093 f_4@@32))) (not (IsWandField_9552_3093 f_4@@32))) (<= (select (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| Mask@@19) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| Mask@@19) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_15235) (o_2@@33 T@Ref) (f_4@@33 T@Field_27408_27409) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| Mask@@20) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_9552_9553 f_4@@33))) (not (IsWandField_27408_64660 f_4@@33))) (<= (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| Mask@@20) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| Mask@@20) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_15235) (o_2@@34 T@Ref) (f_4@@34 T@Field_39736_39741) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| Mask@@21) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_9505_84276 f_4@@34))) (not (IsWandField_9505_84292 f_4@@34))) (<= (select (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| Mask@@21) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| Mask@@21) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_15235) (o_2@@35 T@Ref) (f_4@@35 T@Field_24558_53) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| Mask@@22) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_9505_53 f_4@@35))) (not (IsWandField_9505_53 f_4@@35))) (<= (select (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| Mask@@22) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| Mask@@22) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_15235) (o_2@@36 T@Ref) (f_4@@36 T@Field_24558_9320) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| Mask@@23) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_9505_9320 f_4@@36))) (not (IsWandField_9505_9320 f_4@@36))) (<= (select (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| Mask@@23) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| Mask@@23) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_15235) (o_2@@37 T@Ref) (f_4@@37 T@Field_24558_3093) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| Mask@@24) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_9505_3093 f_4@@37))) (not (IsWandField_9505_3093 f_4@@37))) (<= (select (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| Mask@@24) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| Mask@@24) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_15235) (o_2@@38 T@Ref) (f_4@@38 T@Field_24558_24559) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| Mask@@25) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_9505_9506 f_4@@38))) (not (IsWandField_24558_63946 f_4@@38))) (<= (select (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| Mask@@25) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| Mask@@25) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_15235) (o_2@@39 T@Ref) (f_4@@39 T@Field_38936_38941) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| Mask@@26) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_9481_83445 f_4@@39))) (not (IsWandField_9481_83461 f_4@@39))) (<= (select (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| Mask@@26) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| Mask@@26) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_15235) (o_2@@40 T@Ref) (f_4@@40 T@Field_25026_53) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| Mask@@27) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_9481_53 f_4@@40))) (not (IsWandField_9481_53 f_4@@40))) (<= (select (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| Mask@@27) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| Mask@@27) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_15235) (o_2@@41 T@Ref) (f_4@@41 T@Field_25026_9320) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| Mask@@28) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_9481_9320 f_4@@41))) (not (IsWandField_9481_9320 f_4@@41))) (<= (select (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| Mask@@28) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| Mask@@28) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_15235) (o_2@@42 T@Ref) (f_4@@42 T@Field_25026_3093) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| Mask@@29) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_9481_3093 f_4@@42))) (not (IsWandField_9481_3093 f_4@@42))) (<= (select (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| Mask@@29) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| Mask@@29) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_15235) (o_2@@43 T@Ref) (f_4@@43 T@Field_25026_25027) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| Mask@@30) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_9481_9482 f_4@@43))) (not (IsWandField_25026_64303 f_4@@43))) (<= (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| Mask@@30) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| Mask@@30) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_15235) (o_2@@44 T@Ref) (f_4@@44 T@Field_9317_30716) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| Mask@@31) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_9317_82614 f_4@@44))) (not (IsWandField_9317_82630 f_4@@44))) (<= (select (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| Mask@@31) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| Mask@@31) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_15235) (o_2@@45 T@Ref) (f_4@@45 T@Field_15274_53) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| Mask@@32) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_9317_53 f_4@@45))) (not (IsWandField_9317_53 f_4@@45))) (<= (select (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| Mask@@32) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| Mask@@32) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_15235) (o_2@@46 T@Ref) (f_4@@46 T@Field_15287_15288) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| Mask@@33) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_9319_9320 f_4@@46))) (not (IsWandField_9319_9320 f_4@@46))) (<= (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| Mask@@33) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| Mask@@33) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_15235) (o_2@@47 T@Ref) (f_4@@47 T@Field_21300_3093) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| Mask@@34) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_9317_3093 f_4@@47))) (not (IsWandField_9317_3093 f_4@@47))) (<= (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| Mask@@34) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| Mask@@34) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_15235) (o_2@@48 T@Ref) (f_4@@48 T@Field_9317_22377) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| Mask@@35) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_9317_52946 f_4@@48))) (not (IsWandField_9317_62875 f_4@@48))) (<= (select (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| Mask@@35) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| Mask@@35) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_15235) (o_2@@49 T@Ref) (f_4@@49 T@Field_30711_30716) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| Mask@@36) o_2@@49 f_4@@49) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_9527_81811 f_4@@49))) (not (IsWandField_9527_81827 f_4@@49))) (<= (select (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| Mask@@36) o_2@@49 f_4@@49) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| Mask@@36) o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_15235) (o_2@@50 T@Ref) (f_4@@50 T@Field_24505_53) ) (!  (=> (GoodMask Mask@@37) (and (>= (select (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| Mask@@37) o_2@@50 f_4@@50) NoPerm) (=> (and (and (and (GoodMask Mask@@37) AssumePermUpperBound) (not (IsPredicateField_9527_53 f_4@@50))) (not (IsWandField_9527_53 f_4@@50))) (<= (select (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| Mask@@37) o_2@@50 f_4@@50) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@37) (select (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| Mask@@37) o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_15235) (o_2@@51 T@Ref) (f_4@@51 T@Field_24505_9320) ) (!  (=> (GoodMask Mask@@38) (and (>= (select (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| Mask@@38) o_2@@51 f_4@@51) NoPerm) (=> (and (and (and (GoodMask Mask@@38) AssumePermUpperBound) (not (IsPredicateField_9527_9320 f_4@@51))) (not (IsWandField_9527_9320 f_4@@51))) (<= (select (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| Mask@@38) o_2@@51 f_4@@51) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@38) (select (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| Mask@@38) o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_15235) (o_2@@52 T@Ref) (f_4@@52 T@Field_24505_3093) ) (!  (=> (GoodMask Mask@@39) (and (>= (select (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| Mask@@39) o_2@@52 f_4@@52) NoPerm) (=> (and (and (and (GoodMask Mask@@39) AssumePermUpperBound) (not (IsPredicateField_9527_3093 f_4@@52))) (not (IsWandField_9527_3093 f_4@@52))) (<= (select (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| Mask@@39) o_2@@52 f_4@@52) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@39) (select (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| Mask@@39) o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_15235) (o_2@@53 T@Ref) (f_4@@53 T@Field_24505_24506) ) (!  (=> (GoodMask Mask@@40) (and (>= (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| Mask@@40) o_2@@53 f_4@@53) NoPerm) (=> (and (and (and (GoodMask Mask@@40) AssumePermUpperBound) (not (IsPredicateField_9527_9528 f_4@@53))) (not (IsWandField_24505_63589 f_4@@53))) (<= (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| Mask@@40) o_2@@53 f_4@@53) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@40) (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| Mask@@40) o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_15235) (o_2@@54 T@Ref) (f_4@@54 T@Field_38414_38419) ) (!  (=> (GoodMask Mask@@41) (and (>= (select (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| Mask@@41) o_2@@54 f_4@@54) NoPerm) (=> (and (and (and (GoodMask Mask@@41) AssumePermUpperBound) (not (IsPredicateField_9459_80980 f_4@@54))) (not (IsWandField_9459_80996 f_4@@54))) (<= (select (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| Mask@@41) o_2@@54 f_4@@54) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@41) (select (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| Mask@@41) o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_15235) (o_2@@55 T@Ref) (f_4@@55 T@Field_22376_53) ) (!  (=> (GoodMask Mask@@42) (and (>= (select (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| Mask@@42) o_2@@55 f_4@@55) NoPerm) (=> (and (and (and (GoodMask Mask@@42) AssumePermUpperBound) (not (IsPredicateField_9459_53 f_4@@55))) (not (IsWandField_9459_53 f_4@@55))) (<= (select (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| Mask@@42) o_2@@55 f_4@@55) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@42) (select (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| Mask@@42) o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_15235) (o_2@@56 T@Ref) (f_4@@56 T@Field_22376_9320) ) (!  (=> (GoodMask Mask@@43) (and (>= (select (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| Mask@@43) o_2@@56 f_4@@56) NoPerm) (=> (and (and (and (GoodMask Mask@@43) AssumePermUpperBound) (not (IsPredicateField_9459_9320 f_4@@56))) (not (IsWandField_9459_9320 f_4@@56))) (<= (select (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| Mask@@43) o_2@@56 f_4@@56) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@43) (select (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| Mask@@43) o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_15235) (o_2@@57 T@Ref) (f_4@@57 T@Field_22376_3093) ) (!  (=> (GoodMask Mask@@44) (and (>= (select (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| Mask@@44) o_2@@57 f_4@@57) NoPerm) (=> (and (and (and (GoodMask Mask@@44) AssumePermUpperBound) (not (IsPredicateField_9459_3093 f_4@@57))) (not (IsWandField_9459_3093 f_4@@57))) (<= (select (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| Mask@@44) o_2@@57 f_4@@57) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@44) (select (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| Mask@@44) o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_15235) (o_2@@58 T@Ref) (f_4@@58 T@Field_22376_22377) ) (!  (=> (GoodMask Mask@@45) (and (>= (select (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| Mask@@45) o_2@@58 f_4@@58) NoPerm) (=> (and (and (and (GoodMask Mask@@45) AssumePermUpperBound) (not (IsPredicateField_9459_9460 f_4@@58))) (not (IsWandField_22376_63232 f_4@@58))) (<= (select (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| Mask@@45) o_2@@58 f_4@@58) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@45) (select (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| Mask@@45) o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_15235) (o_2@@59 T@Ref) (f_4@@59 T@Field_35363_35368) ) (! (= (HasDirectPerm_27408_52701 Mask@@46 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| Mask@@46) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27408_52701 Mask@@46 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_15235) (o_2@@60 T@Ref) (f_4@@60 T@Field_27408_27409) ) (! (= (HasDirectPerm_27408_22377 Mask@@47 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| Mask@@47) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27408_22377 Mask@@47 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_15235) (o_2@@61 T@Ref) (f_4@@61 T@Field_27408_53) ) (! (= (HasDirectPerm_27408_53 Mask@@48 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| Mask@@48) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27408_53 Mask@@48 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_15235) (o_2@@62 T@Ref) (f_4@@62 T@Field_27408_9320) ) (! (= (HasDirectPerm_27408_9320 Mask@@49 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| Mask@@49) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27408_9320 Mask@@49 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_15235) (o_2@@63 T@Ref) (f_4@@63 T@Field_27408_3093) ) (! (= (HasDirectPerm_27408_3093 Mask@@50 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| Mask@@50) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27408_3093 Mask@@50 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_15235) (o_2@@64 T@Ref) (f_4@@64 T@Field_38936_38941) ) (! (= (HasDirectPerm_25026_51540 Mask@@51 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| Mask@@51) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25026_51540 Mask@@51 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_15235) (o_2@@65 T@Ref) (f_4@@65 T@Field_25026_25027) ) (! (= (HasDirectPerm_25026_22377 Mask@@52 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| Mask@@52) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25026_22377 Mask@@52 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_15235) (o_2@@66 T@Ref) (f_4@@66 T@Field_25026_53) ) (! (= (HasDirectPerm_25026_53 Mask@@53 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| Mask@@53) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25026_53 Mask@@53 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_15235) (o_2@@67 T@Ref) (f_4@@67 T@Field_25026_9320) ) (! (= (HasDirectPerm_25026_9320 Mask@@54 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| Mask@@54) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25026_9320 Mask@@54 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_15235) (o_2@@68 T@Ref) (f_4@@68 T@Field_25026_3093) ) (! (= (HasDirectPerm_25026_3093 Mask@@55 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| Mask@@55) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25026_3093 Mask@@55 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_15235) (o_2@@69 T@Ref) (f_4@@69 T@Field_39736_39741) ) (! (= (HasDirectPerm_24558_50379 Mask@@56 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| Mask@@56) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24558_50379 Mask@@56 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_15235) (o_2@@70 T@Ref) (f_4@@70 T@Field_24558_24559) ) (! (= (HasDirectPerm_24558_22377 Mask@@57 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| Mask@@57) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24558_22377 Mask@@57 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_15235) (o_2@@71 T@Ref) (f_4@@71 T@Field_24558_53) ) (! (= (HasDirectPerm_24558_53 Mask@@58 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| Mask@@58) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24558_53 Mask@@58 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_15235) (o_2@@72 T@Ref) (f_4@@72 T@Field_24558_9320) ) (! (= (HasDirectPerm_24558_9320 Mask@@59 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| Mask@@59) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24558_9320 Mask@@59 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_15235) (o_2@@73 T@Ref) (f_4@@73 T@Field_24558_3093) ) (! (= (HasDirectPerm_24558_3093 Mask@@60 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| Mask@@60) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24558_3093 Mask@@60 o_2@@73 f_4@@73))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_15235) (o_2@@74 T@Ref) (f_4@@74 T@Field_30711_30716) ) (! (= (HasDirectPerm_24505_49261 Mask@@61 o_2@@74 f_4@@74) (> (select (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| Mask@@61) o_2@@74 f_4@@74) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24505_49261 Mask@@61 o_2@@74 f_4@@74))
)))
(assert (forall ((Mask@@62 T@PolymorphicMapType_15235) (o_2@@75 T@Ref) (f_4@@75 T@Field_24505_24506) ) (! (= (HasDirectPerm_24505_22377 Mask@@62 o_2@@75 f_4@@75) (> (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| Mask@@62) o_2@@75 f_4@@75) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24505_22377 Mask@@62 o_2@@75 f_4@@75))
)))
(assert (forall ((Mask@@63 T@PolymorphicMapType_15235) (o_2@@76 T@Ref) (f_4@@76 T@Field_24505_53) ) (! (= (HasDirectPerm_24505_53 Mask@@63 o_2@@76 f_4@@76) (> (select (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| Mask@@63) o_2@@76 f_4@@76) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24505_53 Mask@@63 o_2@@76 f_4@@76))
)))
(assert (forall ((Mask@@64 T@PolymorphicMapType_15235) (o_2@@77 T@Ref) (f_4@@77 T@Field_24505_9320) ) (! (= (HasDirectPerm_24505_9320 Mask@@64 o_2@@77 f_4@@77) (> (select (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| Mask@@64) o_2@@77 f_4@@77) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24505_9320 Mask@@64 o_2@@77 f_4@@77))
)))
(assert (forall ((Mask@@65 T@PolymorphicMapType_15235) (o_2@@78 T@Ref) (f_4@@78 T@Field_24505_3093) ) (! (= (HasDirectPerm_24505_3093 Mask@@65 o_2@@78 f_4@@78) (> (select (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| Mask@@65) o_2@@78 f_4@@78) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24505_3093 Mask@@65 o_2@@78 f_4@@78))
)))
(assert (forall ((Mask@@66 T@PolymorphicMapType_15235) (o_2@@79 T@Ref) (f_4@@79 T@Field_38414_38419) ) (! (= (HasDirectPerm_22376_48100 Mask@@66 o_2@@79 f_4@@79) (> (select (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| Mask@@66) o_2@@79 f_4@@79) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22376_48100 Mask@@66 o_2@@79 f_4@@79))
)))
(assert (forall ((Mask@@67 T@PolymorphicMapType_15235) (o_2@@80 T@Ref) (f_4@@80 T@Field_22376_22377) ) (! (= (HasDirectPerm_22376_22377 Mask@@67 o_2@@80 f_4@@80) (> (select (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| Mask@@67) o_2@@80 f_4@@80) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22376_22377 Mask@@67 o_2@@80 f_4@@80))
)))
(assert (forall ((Mask@@68 T@PolymorphicMapType_15235) (o_2@@81 T@Ref) (f_4@@81 T@Field_22376_53) ) (! (= (HasDirectPerm_22376_53 Mask@@68 o_2@@81 f_4@@81) (> (select (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| Mask@@68) o_2@@81 f_4@@81) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22376_53 Mask@@68 o_2@@81 f_4@@81))
)))
(assert (forall ((Mask@@69 T@PolymorphicMapType_15235) (o_2@@82 T@Ref) (f_4@@82 T@Field_22376_9320) ) (! (= (HasDirectPerm_22376_9320 Mask@@69 o_2@@82 f_4@@82) (> (select (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| Mask@@69) o_2@@82 f_4@@82) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22376_9320 Mask@@69 o_2@@82 f_4@@82))
)))
(assert (forall ((Mask@@70 T@PolymorphicMapType_15235) (o_2@@83 T@Ref) (f_4@@83 T@Field_22376_3093) ) (! (= (HasDirectPerm_22376_3093 Mask@@70 o_2@@83 f_4@@83) (> (select (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| Mask@@70) o_2@@83 f_4@@83) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_22376_3093 Mask@@70 o_2@@83 f_4@@83))
)))
(assert (forall ((Mask@@71 T@PolymorphicMapType_15235) (o_2@@84 T@Ref) (f_4@@84 T@Field_9317_30716) ) (! (= (HasDirectPerm_9317_46939 Mask@@71 o_2@@84 f_4@@84) (> (select (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| Mask@@71) o_2@@84 f_4@@84) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9317_46939 Mask@@71 o_2@@84 f_4@@84))
)))
(assert (forall ((Mask@@72 T@PolymorphicMapType_15235) (o_2@@85 T@Ref) (f_4@@85 T@Field_9317_22377) ) (! (= (HasDirectPerm_9317_22377 Mask@@72 o_2@@85 f_4@@85) (> (select (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| Mask@@72) o_2@@85 f_4@@85) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9317_22377 Mask@@72 o_2@@85 f_4@@85))
)))
(assert (forall ((Mask@@73 T@PolymorphicMapType_15235) (o_2@@86 T@Ref) (f_4@@86 T@Field_15274_53) ) (! (= (HasDirectPerm_9317_53 Mask@@73 o_2@@86 f_4@@86) (> (select (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| Mask@@73) o_2@@86 f_4@@86) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9317_53 Mask@@73 o_2@@86 f_4@@86))
)))
(assert (forall ((Mask@@74 T@PolymorphicMapType_15235) (o_2@@87 T@Ref) (f_4@@87 T@Field_15287_15288) ) (! (= (HasDirectPerm_9319_9320 Mask@@74 o_2@@87 f_4@@87) (> (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| Mask@@74) o_2@@87 f_4@@87) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9319_9320 Mask@@74 o_2@@87 f_4@@87))
)))
(assert (forall ((Mask@@75 T@PolymorphicMapType_15235) (o_2@@88 T@Ref) (f_4@@88 T@Field_21300_3093) ) (! (= (HasDirectPerm_9317_3093 Mask@@75 o_2@@88 f_4@@88) (> (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| Mask@@75) o_2@@88 f_4@@88) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9317_3093 Mask@@75 o_2@@88 f_4@@88))
)))
(assert (forall ((p@@5 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@5 f_6) (ite (> p@@5 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.188:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@5 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2971| (|Seq#Range| q@min@@0 q@max@@0) j@@6) (+ q@min@@0 j@@6)))
 :qid |stdinbpl.561:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2971| (|Seq#Range| q@min@@0 q@max@@0) j@@6))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15214) (ExhaleHeap@@13 T@PolymorphicMapType_15214) (Mask@@76 T@PolymorphicMapType_15235) (o_8@@0 T@Ref) (f_14 T@Field_35363_35368) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@13 Mask@@76) (=> (HasDirectPerm_27408_52701 Mask@@76 o_8@@0 f_14) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@25) o_8@@0 f_14) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@13) o_8@@0 f_14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@13 Mask@@76) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@13) o_8@@0 f_14))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15214) (ExhaleHeap@@14 T@PolymorphicMapType_15214) (Mask@@77 T@PolymorphicMapType_15235) (o_8@@1 T@Ref) (f_14@@0 T@Field_27408_27409) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@14 Mask@@77) (=> (HasDirectPerm_27408_22377 Mask@@77 o_8@@1 f_14@@0) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@26) o_8@@1 f_14@@0) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@14) o_8@@1 f_14@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@14 Mask@@77) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@14) o_8@@1 f_14@@0))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15214) (ExhaleHeap@@15 T@PolymorphicMapType_15214) (Mask@@78 T@PolymorphicMapType_15235) (o_8@@2 T@Ref) (f_14@@1 T@Field_27408_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@15 Mask@@78) (=> (HasDirectPerm_27408_53 Mask@@78 o_8@@2 f_14@@1) (= (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@27) o_8@@2 f_14@@1) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@15) o_8@@2 f_14@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@15 Mask@@78) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@15) o_8@@2 f_14@@1))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15214) (ExhaleHeap@@16 T@PolymorphicMapType_15214) (Mask@@79 T@PolymorphicMapType_15235) (o_8@@3 T@Ref) (f_14@@2 T@Field_27408_9320) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@16 Mask@@79) (=> (HasDirectPerm_27408_9320 Mask@@79 o_8@@3 f_14@@2) (= (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@28) o_8@@3 f_14@@2) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@16) o_8@@3 f_14@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@16 Mask@@79) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@16) o_8@@3 f_14@@2))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15214) (ExhaleHeap@@17 T@PolymorphicMapType_15214) (Mask@@80 T@PolymorphicMapType_15235) (o_8@@4 T@Ref) (f_14@@3 T@Field_27408_3093) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@17 Mask@@80) (=> (HasDirectPerm_27408_3093 Mask@@80 o_8@@4 f_14@@3) (= (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@29) o_8@@4 f_14@@3) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@17) o_8@@4 f_14@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@17 Mask@@80) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@17) o_8@@4 f_14@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_15214) (ExhaleHeap@@18 T@PolymorphicMapType_15214) (Mask@@81 T@PolymorphicMapType_15235) (o_8@@5 T@Ref) (f_14@@4 T@Field_38936_38941) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@18 Mask@@81) (=> (HasDirectPerm_25026_51540 Mask@@81 o_8@@5 f_14@@4) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@30) o_8@@5 f_14@@4) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@18) o_8@@5 f_14@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@18 Mask@@81) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@18) o_8@@5 f_14@@4))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_15214) (ExhaleHeap@@19 T@PolymorphicMapType_15214) (Mask@@82 T@PolymorphicMapType_15235) (o_8@@6 T@Ref) (f_14@@5 T@Field_25026_25027) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@19 Mask@@82) (=> (HasDirectPerm_25026_22377 Mask@@82 o_8@@6 f_14@@5) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@31) o_8@@6 f_14@@5) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@19) o_8@@6 f_14@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@19 Mask@@82) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@19) o_8@@6 f_14@@5))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_15214) (ExhaleHeap@@20 T@PolymorphicMapType_15214) (Mask@@83 T@PolymorphicMapType_15235) (o_8@@7 T@Ref) (f_14@@6 T@Field_25026_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@20 Mask@@83) (=> (HasDirectPerm_25026_53 Mask@@83 o_8@@7 f_14@@6) (= (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@32) o_8@@7 f_14@@6) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@20) o_8@@7 f_14@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@20 Mask@@83) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@20) o_8@@7 f_14@@6))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_15214) (ExhaleHeap@@21 T@PolymorphicMapType_15214) (Mask@@84 T@PolymorphicMapType_15235) (o_8@@8 T@Ref) (f_14@@7 T@Field_25026_9320) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@21 Mask@@84) (=> (HasDirectPerm_25026_9320 Mask@@84 o_8@@8 f_14@@7) (= (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@33) o_8@@8 f_14@@7) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@21) o_8@@8 f_14@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@21 Mask@@84) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@21) o_8@@8 f_14@@7))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_15214) (ExhaleHeap@@22 T@PolymorphicMapType_15214) (Mask@@85 T@PolymorphicMapType_15235) (o_8@@9 T@Ref) (f_14@@8 T@Field_25026_3093) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@85) (=> (HasDirectPerm_25026_3093 Mask@@85 o_8@@9 f_14@@8) (= (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@34) o_8@@9 f_14@@8) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@22) o_8@@9 f_14@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@22 Mask@@85) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@22) o_8@@9 f_14@@8))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_15214) (ExhaleHeap@@23 T@PolymorphicMapType_15214) (Mask@@86 T@PolymorphicMapType_15235) (o_8@@10 T@Ref) (f_14@@9 T@Field_39736_39741) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@86) (=> (HasDirectPerm_24558_50379 Mask@@86 o_8@@10 f_14@@9) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@35) o_8@@10 f_14@@9) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@23) o_8@@10 f_14@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@23 Mask@@86) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@23) o_8@@10 f_14@@9))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_15214) (ExhaleHeap@@24 T@PolymorphicMapType_15214) (Mask@@87 T@PolymorphicMapType_15235) (o_8@@11 T@Ref) (f_14@@10 T@Field_24558_24559) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@87) (=> (HasDirectPerm_24558_22377 Mask@@87 o_8@@11 f_14@@10) (= (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@36) o_8@@11 f_14@@10) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@24) o_8@@11 f_14@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@24 Mask@@87) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@24) o_8@@11 f_14@@10))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_15214) (ExhaleHeap@@25 T@PolymorphicMapType_15214) (Mask@@88 T@PolymorphicMapType_15235) (o_8@@12 T@Ref) (f_14@@11 T@Field_24558_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@88) (=> (HasDirectPerm_24558_53 Mask@@88 o_8@@12 f_14@@11) (= (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@37) o_8@@12 f_14@@11) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@25) o_8@@12 f_14@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@25 Mask@@88) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@25) o_8@@12 f_14@@11))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_15214) (ExhaleHeap@@26 T@PolymorphicMapType_15214) (Mask@@89 T@PolymorphicMapType_15235) (o_8@@13 T@Ref) (f_14@@12 T@Field_24558_9320) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@89) (=> (HasDirectPerm_24558_9320 Mask@@89 o_8@@13 f_14@@12) (= (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@38) o_8@@13 f_14@@12) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@26) o_8@@13 f_14@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@26 Mask@@89) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@26) o_8@@13 f_14@@12))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_15214) (ExhaleHeap@@27 T@PolymorphicMapType_15214) (Mask@@90 T@PolymorphicMapType_15235) (o_8@@14 T@Ref) (f_14@@13 T@Field_24558_3093) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@90) (=> (HasDirectPerm_24558_3093 Mask@@90 o_8@@14 f_14@@13) (= (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@39) o_8@@14 f_14@@13) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@27) o_8@@14 f_14@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@27 Mask@@90) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@27) o_8@@14 f_14@@13))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_15214) (ExhaleHeap@@28 T@PolymorphicMapType_15214) (Mask@@91 T@PolymorphicMapType_15235) (o_8@@15 T@Ref) (f_14@@14 T@Field_30711_30716) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@28 Mask@@91) (=> (HasDirectPerm_24505_49261 Mask@@91 o_8@@15 f_14@@14) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@40) o_8@@15 f_14@@14) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@28) o_8@@15 f_14@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@28 Mask@@91) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@28) o_8@@15 f_14@@14))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_15214) (ExhaleHeap@@29 T@PolymorphicMapType_15214) (Mask@@92 T@PolymorphicMapType_15235) (o_8@@16 T@Ref) (f_14@@15 T@Field_24505_24506) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@29 Mask@@92) (=> (HasDirectPerm_24505_22377 Mask@@92 o_8@@16 f_14@@15) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@41) o_8@@16 f_14@@15) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@29) o_8@@16 f_14@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@29 Mask@@92) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@29) o_8@@16 f_14@@15))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_15214) (ExhaleHeap@@30 T@PolymorphicMapType_15214) (Mask@@93 T@PolymorphicMapType_15235) (o_8@@17 T@Ref) (f_14@@16 T@Field_24505_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@30 Mask@@93) (=> (HasDirectPerm_24505_53 Mask@@93 o_8@@17 f_14@@16) (= (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@42) o_8@@17 f_14@@16) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@30) o_8@@17 f_14@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@30 Mask@@93) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@30) o_8@@17 f_14@@16))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_15214) (ExhaleHeap@@31 T@PolymorphicMapType_15214) (Mask@@94 T@PolymorphicMapType_15235) (o_8@@18 T@Ref) (f_14@@17 T@Field_24505_9320) ) (!  (=> (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@31 Mask@@94) (=> (HasDirectPerm_24505_9320 Mask@@94 o_8@@18 f_14@@17) (= (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@43) o_8@@18 f_14@@17) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@31) o_8@@18 f_14@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@43 ExhaleHeap@@31 Mask@@94) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@31) o_8@@18 f_14@@17))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_15214) (ExhaleHeap@@32 T@PolymorphicMapType_15214) (Mask@@95 T@PolymorphicMapType_15235) (o_8@@19 T@Ref) (f_14@@18 T@Field_24505_3093) ) (!  (=> (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@32 Mask@@95) (=> (HasDirectPerm_24505_3093 Mask@@95 o_8@@19 f_14@@18) (= (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@44) o_8@@19 f_14@@18) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@32) o_8@@19 f_14@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@44 ExhaleHeap@@32 Mask@@95) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@32) o_8@@19 f_14@@18))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_15214) (ExhaleHeap@@33 T@PolymorphicMapType_15214) (Mask@@96 T@PolymorphicMapType_15235) (o_8@@20 T@Ref) (f_14@@19 T@Field_38414_38419) ) (!  (=> (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@33 Mask@@96) (=> (HasDirectPerm_22376_48100 Mask@@96 o_8@@20 f_14@@19) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@45) o_8@@20 f_14@@19) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@33) o_8@@20 f_14@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@45 ExhaleHeap@@33 Mask@@96) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@33) o_8@@20 f_14@@19))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_15214) (ExhaleHeap@@34 T@PolymorphicMapType_15214) (Mask@@97 T@PolymorphicMapType_15235) (o_8@@21 T@Ref) (f_14@@20 T@Field_22376_22377) ) (!  (=> (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@34 Mask@@97) (=> (HasDirectPerm_22376_22377 Mask@@97 o_8@@21 f_14@@20) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@46) o_8@@21 f_14@@20) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@34) o_8@@21 f_14@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@46 ExhaleHeap@@34 Mask@@97) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@34) o_8@@21 f_14@@20))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_15214) (ExhaleHeap@@35 T@PolymorphicMapType_15214) (Mask@@98 T@PolymorphicMapType_15235) (o_8@@22 T@Ref) (f_14@@21 T@Field_22376_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@35 Mask@@98) (=> (HasDirectPerm_22376_53 Mask@@98 o_8@@22 f_14@@21) (= (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@47) o_8@@22 f_14@@21) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@35) o_8@@22 f_14@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@47 ExhaleHeap@@35 Mask@@98) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@35) o_8@@22 f_14@@21))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_15214) (ExhaleHeap@@36 T@PolymorphicMapType_15214) (Mask@@99 T@PolymorphicMapType_15235) (o_8@@23 T@Ref) (f_14@@22 T@Field_22376_9320) ) (!  (=> (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@36 Mask@@99) (=> (HasDirectPerm_22376_9320 Mask@@99 o_8@@23 f_14@@22) (= (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@48) o_8@@23 f_14@@22) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@36) o_8@@23 f_14@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@48 ExhaleHeap@@36 Mask@@99) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@36) o_8@@23 f_14@@22))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_15214) (ExhaleHeap@@37 T@PolymorphicMapType_15214) (Mask@@100 T@PolymorphicMapType_15235) (o_8@@24 T@Ref) (f_14@@23 T@Field_22376_3093) ) (!  (=> (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@37 Mask@@100) (=> (HasDirectPerm_22376_3093 Mask@@100 o_8@@24 f_14@@23) (= (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@49) o_8@@24 f_14@@23) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@37) o_8@@24 f_14@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@49 ExhaleHeap@@37 Mask@@100) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@37) o_8@@24 f_14@@23))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_15214) (ExhaleHeap@@38 T@PolymorphicMapType_15214) (Mask@@101 T@PolymorphicMapType_15235) (o_8@@25 T@Ref) (f_14@@24 T@Field_9317_30716) ) (!  (=> (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@38 Mask@@101) (=> (HasDirectPerm_9317_46939 Mask@@101 o_8@@25 f_14@@24) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@50) o_8@@25 f_14@@24) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@38) o_8@@25 f_14@@24))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@50 ExhaleHeap@@38 Mask@@101) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@38) o_8@@25 f_14@@24))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_15214) (ExhaleHeap@@39 T@PolymorphicMapType_15214) (Mask@@102 T@PolymorphicMapType_15235) (o_8@@26 T@Ref) (f_14@@25 T@Field_9317_22377) ) (!  (=> (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@39 Mask@@102) (=> (HasDirectPerm_9317_22377 Mask@@102 o_8@@26 f_14@@25) (= (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@51) o_8@@26 f_14@@25) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@39) o_8@@26 f_14@@25))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@51 ExhaleHeap@@39 Mask@@102) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@39) o_8@@26 f_14@@25))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_15214) (ExhaleHeap@@40 T@PolymorphicMapType_15214) (Mask@@103 T@PolymorphicMapType_15235) (o_8@@27 T@Ref) (f_14@@26 T@Field_15274_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@40 Mask@@103) (=> (HasDirectPerm_9317_53 Mask@@103 o_8@@27 f_14@@26) (= (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@52) o_8@@27 f_14@@26) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@40) o_8@@27 f_14@@26))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@52 ExhaleHeap@@40 Mask@@103) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@40) o_8@@27 f_14@@26))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_15214) (ExhaleHeap@@41 T@PolymorphicMapType_15214) (Mask@@104 T@PolymorphicMapType_15235) (o_8@@28 T@Ref) (f_14@@27 T@Field_15287_15288) ) (!  (=> (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@41 Mask@@104) (=> (HasDirectPerm_9319_9320 Mask@@104 o_8@@28 f_14@@27) (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@53) o_8@@28 f_14@@27) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@41) o_8@@28 f_14@@27))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@53 ExhaleHeap@@41 Mask@@104) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@41) o_8@@28 f_14@@27))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_15214) (ExhaleHeap@@42 T@PolymorphicMapType_15214) (Mask@@105 T@PolymorphicMapType_15235) (o_8@@29 T@Ref) (f_14@@28 T@Field_21300_3093) ) (!  (=> (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@42 Mask@@105) (=> (HasDirectPerm_9317_3093 Mask@@105 o_8@@29 f_14@@28) (= (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@54) o_8@@29 f_14@@28) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@42) o_8@@29 f_14@@28))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@54 ExhaleHeap@@42 Mask@@105) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@42) o_8@@29 f_14@@28))
)))
(assert (forall ((s0@@1 T@Seq_21463) (s1@@1 T@Seq_21463) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_9341|)) (not (= s1@@1 |Seq#Empty_9341|))) (= (|Seq#Length_9341| (|Seq#Append_21463| s0@@1 s1@@1)) (+ (|Seq#Length_9341| s0@@1) (|Seq#Length_9341| s1@@1))))
 :qid |stdinbpl.238:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_9341| (|Seq#Append_21463| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2971) (s1@@2 T@Seq_2971) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2971|)) (not (= s1@@2 |Seq#Empty_2971|))) (= (|Seq#Length_2971| (|Seq#Append_2971| s0@@2 s1@@2)) (+ (|Seq#Length_2971| s0@@2) (|Seq#Length_2971| s1@@2))))
 :qid |stdinbpl.238:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2971| (|Seq#Append_2971| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_35363_35368) ) (! (= (select (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_27408_53) ) (! (= (select (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_27408_9320) ) (! (= (select (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_27408_3093) ) (! (= (select (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_27408_27409) ) (! (= (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_39736_39741) ) (! (= (select (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_24558_53) ) (! (= (select (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_24558_9320) ) (! (= (select (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_24558_3093) ) (! (= (select (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_24558_24559) ) (! (= (select (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((o_2@@99 T@Ref) (f_4@@99 T@Field_38936_38941) ) (! (= (select (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| ZeroMask) o_2@@99 f_4@@99) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| ZeroMask) o_2@@99 f_4@@99))
)))
(assert (forall ((o_2@@100 T@Ref) (f_4@@100 T@Field_25026_53) ) (! (= (select (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| ZeroMask) o_2@@100 f_4@@100) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| ZeroMask) o_2@@100 f_4@@100))
)))
(assert (forall ((o_2@@101 T@Ref) (f_4@@101 T@Field_25026_9320) ) (! (= (select (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| ZeroMask) o_2@@101 f_4@@101) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| ZeroMask) o_2@@101 f_4@@101))
)))
(assert (forall ((o_2@@102 T@Ref) (f_4@@102 T@Field_25026_3093) ) (! (= (select (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| ZeroMask) o_2@@102 f_4@@102) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| ZeroMask) o_2@@102 f_4@@102))
)))
(assert (forall ((o_2@@103 T@Ref) (f_4@@103 T@Field_25026_25027) ) (! (= (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| ZeroMask) o_2@@103 f_4@@103) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| ZeroMask) o_2@@103 f_4@@103))
)))
(assert (forall ((o_2@@104 T@Ref) (f_4@@104 T@Field_9317_30716) ) (! (= (select (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| ZeroMask) o_2@@104 f_4@@104) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| ZeroMask) o_2@@104 f_4@@104))
)))
(assert (forall ((o_2@@105 T@Ref) (f_4@@105 T@Field_15274_53) ) (! (= (select (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| ZeroMask) o_2@@105 f_4@@105) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| ZeroMask) o_2@@105 f_4@@105))
)))
(assert (forall ((o_2@@106 T@Ref) (f_4@@106 T@Field_15287_15288) ) (! (= (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| ZeroMask) o_2@@106 f_4@@106) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| ZeroMask) o_2@@106 f_4@@106))
)))
(assert (forall ((o_2@@107 T@Ref) (f_4@@107 T@Field_21300_3093) ) (! (= (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| ZeroMask) o_2@@107 f_4@@107) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| ZeroMask) o_2@@107 f_4@@107))
)))
(assert (forall ((o_2@@108 T@Ref) (f_4@@108 T@Field_9317_22377) ) (! (= (select (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| ZeroMask) o_2@@108 f_4@@108) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| ZeroMask) o_2@@108 f_4@@108))
)))
(assert (forall ((o_2@@109 T@Ref) (f_4@@109 T@Field_30711_30716) ) (! (= (select (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| ZeroMask) o_2@@109 f_4@@109) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| ZeroMask) o_2@@109 f_4@@109))
)))
(assert (forall ((o_2@@110 T@Ref) (f_4@@110 T@Field_24505_53) ) (! (= (select (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| ZeroMask) o_2@@110 f_4@@110) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| ZeroMask) o_2@@110 f_4@@110))
)))
(assert (forall ((o_2@@111 T@Ref) (f_4@@111 T@Field_24505_9320) ) (! (= (select (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| ZeroMask) o_2@@111 f_4@@111) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| ZeroMask) o_2@@111 f_4@@111))
)))
(assert (forall ((o_2@@112 T@Ref) (f_4@@112 T@Field_24505_3093) ) (! (= (select (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| ZeroMask) o_2@@112 f_4@@112) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| ZeroMask) o_2@@112 f_4@@112))
)))
(assert (forall ((o_2@@113 T@Ref) (f_4@@113 T@Field_24505_24506) ) (! (= (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| ZeroMask) o_2@@113 f_4@@113) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| ZeroMask) o_2@@113 f_4@@113))
)))
(assert (forall ((o_2@@114 T@Ref) (f_4@@114 T@Field_38414_38419) ) (! (= (select (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| ZeroMask) o_2@@114 f_4@@114) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| ZeroMask) o_2@@114 f_4@@114))
)))
(assert (forall ((o_2@@115 T@Ref) (f_4@@115 T@Field_22376_53) ) (! (= (select (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| ZeroMask) o_2@@115 f_4@@115) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| ZeroMask) o_2@@115 f_4@@115))
)))
(assert (forall ((o_2@@116 T@Ref) (f_4@@116 T@Field_22376_9320) ) (! (= (select (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| ZeroMask) o_2@@116 f_4@@116) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| ZeroMask) o_2@@116 f_4@@116))
)))
(assert (forall ((o_2@@117 T@Ref) (f_4@@117 T@Field_22376_3093) ) (! (= (select (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| ZeroMask) o_2@@117 f_4@@117) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| ZeroMask) o_2@@117 f_4@@117))
)))
(assert (forall ((o_2@@118 T@Ref) (f_4@@118 T@Field_22376_22377) ) (! (= (select (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| ZeroMask) o_2@@118 f_4@@118) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| ZeroMask) o_2@@118 f_4@@118))
)))
(assert (forall ((s@@15 T@Seq_21463) (t@@1 T@Seq_21463) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_9341| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_9341| s@@15)) (|Seq#Length_9341| s@@15)) n@@15) (= (|Seq#Drop_9341| (|Seq#Append_21463| s@@15 t@@1) n@@15) (|Seq#Drop_9341| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_9341| s@@15))))))
 :qid |stdinbpl.395:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_9341| (|Seq#Append_21463| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2971) (t@@2 T@Seq_2971) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2971| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2971| s@@16)) (|Seq#Length_2971| s@@16)) n@@16) (= (|Seq#Drop_2971| (|Seq#Append_2971| s@@16 t@@2) n@@16) (|Seq#Drop_2971| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2971| s@@16))))))
 :qid |stdinbpl.395:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2971| (|Seq#Append_2971| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_15214) (Mask@@106 T@PolymorphicMapType_15235) (l_1@@2 T@Ref) ) (!  (=> (state Heap@@55 Mask@@106) (= (|someFun'| Heap@@55 l_1@@2) (|someFun#frame| (CombineFrames (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@55) null (list l_1@@2)) (CombineFrames (FrameFragment_3372 (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@55) l_1@@2 elem)) (CombineFrames (FrameFragment_3372 (|someFun#condqp2| Heap@@55 l_1@@2)) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@55) null (otherList l_1@@2))))) l_1@@2)))
 :qid |stdinbpl.747:15|
 :skolemid |74|
 :pattern ( (state Heap@@55 Mask@@106) (|someFun'| Heap@@55 l_1@@2))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_15214) (ExhaleHeap@@43 T@PolymorphicMapType_15214) (Mask@@107 T@PolymorphicMapType_15235) (pm_f_2@@11 T@Field_27408_27409) ) (!  (=> (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@43 Mask@@107) (=> (and (HasDirectPerm_27408_22377 Mask@@107 null pm_f_2@@11) (IsPredicateField_9552_9553 pm_f_2@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_2 T@Ref) (f_14@@29 T@Field_21300_3093) ) (!  (=> (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2 f_14@@29) (= (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@56) o2_2 f_14@@29) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2 f_14@@29)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2 f_14@@29))
)) (forall ((o2_2@@0 T@Ref) (f_14@@30 T@Field_15287_15288) ) (!  (=> (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@0 f_14@@30) (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@56) o2_2@@0 f_14@@30) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@0 f_14@@30)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@0 f_14@@30))
))) (forall ((o2_2@@1 T@Ref) (f_14@@31 T@Field_15274_53) ) (!  (=> (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@1 f_14@@31) (= (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@56) o2_2@@1 f_14@@31) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@1 f_14@@31)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@1 f_14@@31))
))) (forall ((o2_2@@2 T@Ref) (f_14@@32 T@Field_9317_22377) ) (!  (=> (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@2 f_14@@32) (= (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@56) o2_2@@2 f_14@@32) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@2 f_14@@32)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@2 f_14@@32))
))) (forall ((o2_2@@3 T@Ref) (f_14@@33 T@Field_9317_30716) ) (!  (=> (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@3 f_14@@33) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@56) o2_2@@3 f_14@@33) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@3 f_14@@33)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@3 f_14@@33))
))) (forall ((o2_2@@4 T@Ref) (f_14@@34 T@Field_22376_3093) ) (!  (=> (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@4 f_14@@34) (= (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@56) o2_2@@4 f_14@@34) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@4 f_14@@34)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@4 f_14@@34))
))) (forall ((o2_2@@5 T@Ref) (f_14@@35 T@Field_22376_9320) ) (!  (=> (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@5 f_14@@35) (= (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@56) o2_2@@5 f_14@@35) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@5 f_14@@35)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@5 f_14@@35))
))) (forall ((o2_2@@6 T@Ref) (f_14@@36 T@Field_22376_53) ) (!  (=> (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@6 f_14@@36) (= (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@56) o2_2@@6 f_14@@36) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@6 f_14@@36)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@6 f_14@@36))
))) (forall ((o2_2@@7 T@Ref) (f_14@@37 T@Field_22376_22377) ) (!  (=> (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@7 f_14@@37) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@56) o2_2@@7 f_14@@37) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@7 f_14@@37)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@7 f_14@@37))
))) (forall ((o2_2@@8 T@Ref) (f_14@@38 T@Field_38414_38419) ) (!  (=> (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@8 f_14@@38) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@56) o2_2@@8 f_14@@38) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@8 f_14@@38)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@8 f_14@@38))
))) (forall ((o2_2@@9 T@Ref) (f_14@@39 T@Field_24505_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@9 f_14@@39) (= (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@56) o2_2@@9 f_14@@39) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@9 f_14@@39)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@9 f_14@@39))
))) (forall ((o2_2@@10 T@Ref) (f_14@@40 T@Field_24505_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@10 f_14@@40) (= (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@56) o2_2@@10 f_14@@40) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@10 f_14@@40)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@10 f_14@@40))
))) (forall ((o2_2@@11 T@Ref) (f_14@@41 T@Field_24505_53) ) (!  (=> (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@11 f_14@@41) (= (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@56) o2_2@@11 f_14@@41) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@11 f_14@@41)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@11 f_14@@41))
))) (forall ((o2_2@@12 T@Ref) (f_14@@42 T@Field_24505_24506) ) (!  (=> (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@12 f_14@@42) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@56) o2_2@@12 f_14@@42) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@12 f_14@@42)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@12 f_14@@42))
))) (forall ((o2_2@@13 T@Ref) (f_14@@43 T@Field_30711_30716) ) (!  (=> (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@13 f_14@@43) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@56) o2_2@@13 f_14@@43) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@13 f_14@@43)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@13 f_14@@43))
))) (forall ((o2_2@@14 T@Ref) (f_14@@44 T@Field_24558_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@14 f_14@@44) (= (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@56) o2_2@@14 f_14@@44) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@14 f_14@@44)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@14 f_14@@44))
))) (forall ((o2_2@@15 T@Ref) (f_14@@45 T@Field_24558_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@15 f_14@@45) (= (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@56) o2_2@@15 f_14@@45) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@15 f_14@@45)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@15 f_14@@45))
))) (forall ((o2_2@@16 T@Ref) (f_14@@46 T@Field_24558_53) ) (!  (=> (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@16 f_14@@46) (= (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@56) o2_2@@16 f_14@@46) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@16 f_14@@46)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@16 f_14@@46))
))) (forall ((o2_2@@17 T@Ref) (f_14@@47 T@Field_24558_24559) ) (!  (=> (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@17 f_14@@47) (= (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@56) o2_2@@17 f_14@@47) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@17 f_14@@47)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@17 f_14@@47))
))) (forall ((o2_2@@18 T@Ref) (f_14@@48 T@Field_39736_39741) ) (!  (=> (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@18 f_14@@48) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@56) o2_2@@18 f_14@@48) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@18 f_14@@48)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@18 f_14@@48))
))) (forall ((o2_2@@19 T@Ref) (f_14@@49 T@Field_25026_3093) ) (!  (=> (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@19 f_14@@49) (= (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@56) o2_2@@19 f_14@@49) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@19 f_14@@49)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@19 f_14@@49))
))) (forall ((o2_2@@20 T@Ref) (f_14@@50 T@Field_25026_9320) ) (!  (=> (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@20 f_14@@50) (= (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@56) o2_2@@20 f_14@@50) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@20 f_14@@50)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@20 f_14@@50))
))) (forall ((o2_2@@21 T@Ref) (f_14@@51 T@Field_25026_53) ) (!  (=> (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@21 f_14@@51) (= (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@56) o2_2@@21 f_14@@51) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@21 f_14@@51)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@21 f_14@@51))
))) (forall ((o2_2@@22 T@Ref) (f_14@@52 T@Field_25026_25027) ) (!  (=> (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@22 f_14@@52) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@56) o2_2@@22 f_14@@52) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@22 f_14@@52)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@22 f_14@@52))
))) (forall ((o2_2@@23 T@Ref) (f_14@@53 T@Field_38936_38941) ) (!  (=> (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@23 f_14@@53) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@56) o2_2@@23 f_14@@53) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@23 f_14@@53)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@23 f_14@@53))
))) (forall ((o2_2@@24 T@Ref) (f_14@@54 T@Field_27408_3093) ) (!  (=> (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@24 f_14@@54) (= (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@56) o2_2@@24 f_14@@54) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@24 f_14@@54)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@24 f_14@@54))
))) (forall ((o2_2@@25 T@Ref) (f_14@@55 T@Field_27408_9320) ) (!  (=> (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@25 f_14@@55) (= (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@56) o2_2@@25 f_14@@55) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@25 f_14@@55)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@25 f_14@@55))
))) (forall ((o2_2@@26 T@Ref) (f_14@@56 T@Field_27408_53) ) (!  (=> (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@26 f_14@@56) (= (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@56) o2_2@@26 f_14@@56) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@26 f_14@@56)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@26 f_14@@56))
))) (forall ((o2_2@@27 T@Ref) (f_14@@57 T@Field_27408_27409) ) (!  (=> (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@27 f_14@@57) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@56) o2_2@@27 f_14@@57) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@27 f_14@@57)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@27 f_14@@57))
))) (forall ((o2_2@@28 T@Ref) (f_14@@58 T@Field_35363_35368) ) (!  (=> (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) null (PredicateMaskField_9552 pm_f_2@@11))) o2_2@@28 f_14@@58) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@56) o2_2@@28 f_14@@58) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@28 f_14@@58)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@43) o2_2@@28 f_14@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@56 ExhaleHeap@@43 Mask@@107) (IsPredicateField_9552_9553 pm_f_2@@11))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_15214) (ExhaleHeap@@44 T@PolymorphicMapType_15214) (Mask@@108 T@PolymorphicMapType_15235) (pm_f_2@@12 T@Field_25026_25027) ) (!  (=> (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@44 Mask@@108) (=> (and (HasDirectPerm_25026_22377 Mask@@108 null pm_f_2@@12) (IsPredicateField_9481_9482 pm_f_2@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_2@@29 T@Ref) (f_14@@59 T@Field_21300_3093) ) (!  (=> (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@29 f_14@@59) (= (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@57) o2_2@@29 f_14@@59) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@29 f_14@@59)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@29 f_14@@59))
)) (forall ((o2_2@@30 T@Ref) (f_14@@60 T@Field_15287_15288) ) (!  (=> (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@30 f_14@@60) (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@57) o2_2@@30 f_14@@60) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@30 f_14@@60)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@30 f_14@@60))
))) (forall ((o2_2@@31 T@Ref) (f_14@@61 T@Field_15274_53) ) (!  (=> (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@31 f_14@@61) (= (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@57) o2_2@@31 f_14@@61) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@31 f_14@@61)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@31 f_14@@61))
))) (forall ((o2_2@@32 T@Ref) (f_14@@62 T@Field_9317_22377) ) (!  (=> (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@32 f_14@@62) (= (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@57) o2_2@@32 f_14@@62) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@32 f_14@@62)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@32 f_14@@62))
))) (forall ((o2_2@@33 T@Ref) (f_14@@63 T@Field_9317_30716) ) (!  (=> (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@33 f_14@@63) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@57) o2_2@@33 f_14@@63) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@33 f_14@@63)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@33 f_14@@63))
))) (forall ((o2_2@@34 T@Ref) (f_14@@64 T@Field_22376_3093) ) (!  (=> (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@34 f_14@@64) (= (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@57) o2_2@@34 f_14@@64) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@34 f_14@@64)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@34 f_14@@64))
))) (forall ((o2_2@@35 T@Ref) (f_14@@65 T@Field_22376_9320) ) (!  (=> (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@35 f_14@@65) (= (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@57) o2_2@@35 f_14@@65) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@35 f_14@@65)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@35 f_14@@65))
))) (forall ((o2_2@@36 T@Ref) (f_14@@66 T@Field_22376_53) ) (!  (=> (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@36 f_14@@66) (= (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@57) o2_2@@36 f_14@@66) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@36 f_14@@66)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@36 f_14@@66))
))) (forall ((o2_2@@37 T@Ref) (f_14@@67 T@Field_22376_22377) ) (!  (=> (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@37 f_14@@67) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@57) o2_2@@37 f_14@@67) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@37 f_14@@67)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@37 f_14@@67))
))) (forall ((o2_2@@38 T@Ref) (f_14@@68 T@Field_38414_38419) ) (!  (=> (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@38 f_14@@68) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@57) o2_2@@38 f_14@@68) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@38 f_14@@68)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@38 f_14@@68))
))) (forall ((o2_2@@39 T@Ref) (f_14@@69 T@Field_24505_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@39 f_14@@69) (= (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@57) o2_2@@39 f_14@@69) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@39 f_14@@69)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@39 f_14@@69))
))) (forall ((o2_2@@40 T@Ref) (f_14@@70 T@Field_24505_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@40 f_14@@70) (= (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@57) o2_2@@40 f_14@@70) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@40 f_14@@70)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@40 f_14@@70))
))) (forall ((o2_2@@41 T@Ref) (f_14@@71 T@Field_24505_53) ) (!  (=> (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@41 f_14@@71) (= (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@57) o2_2@@41 f_14@@71) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@41 f_14@@71)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@41 f_14@@71))
))) (forall ((o2_2@@42 T@Ref) (f_14@@72 T@Field_24505_24506) ) (!  (=> (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@42 f_14@@72) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@57) o2_2@@42 f_14@@72) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@42 f_14@@72)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@42 f_14@@72))
))) (forall ((o2_2@@43 T@Ref) (f_14@@73 T@Field_30711_30716) ) (!  (=> (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@43 f_14@@73) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@57) o2_2@@43 f_14@@73) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@43 f_14@@73)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@43 f_14@@73))
))) (forall ((o2_2@@44 T@Ref) (f_14@@74 T@Field_24558_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@44 f_14@@74) (= (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@57) o2_2@@44 f_14@@74) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@44 f_14@@74)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@44 f_14@@74))
))) (forall ((o2_2@@45 T@Ref) (f_14@@75 T@Field_24558_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@45 f_14@@75) (= (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@57) o2_2@@45 f_14@@75) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@45 f_14@@75)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@45 f_14@@75))
))) (forall ((o2_2@@46 T@Ref) (f_14@@76 T@Field_24558_53) ) (!  (=> (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@46 f_14@@76) (= (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@57) o2_2@@46 f_14@@76) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@46 f_14@@76)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@46 f_14@@76))
))) (forall ((o2_2@@47 T@Ref) (f_14@@77 T@Field_24558_24559) ) (!  (=> (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@47 f_14@@77) (= (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@57) o2_2@@47 f_14@@77) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@47 f_14@@77)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@47 f_14@@77))
))) (forall ((o2_2@@48 T@Ref) (f_14@@78 T@Field_39736_39741) ) (!  (=> (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@48 f_14@@78) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@57) o2_2@@48 f_14@@78) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@48 f_14@@78)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@48 f_14@@78))
))) (forall ((o2_2@@49 T@Ref) (f_14@@79 T@Field_25026_3093) ) (!  (=> (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@49 f_14@@79) (= (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@57) o2_2@@49 f_14@@79) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@49 f_14@@79)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@49 f_14@@79))
))) (forall ((o2_2@@50 T@Ref) (f_14@@80 T@Field_25026_9320) ) (!  (=> (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@50 f_14@@80) (= (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@57) o2_2@@50 f_14@@80) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@50 f_14@@80)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@50 f_14@@80))
))) (forall ((o2_2@@51 T@Ref) (f_14@@81 T@Field_25026_53) ) (!  (=> (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@51 f_14@@81) (= (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@57) o2_2@@51 f_14@@81) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@51 f_14@@81)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@51 f_14@@81))
))) (forall ((o2_2@@52 T@Ref) (f_14@@82 T@Field_25026_25027) ) (!  (=> (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@52 f_14@@82) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@57) o2_2@@52 f_14@@82) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@52 f_14@@82)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@52 f_14@@82))
))) (forall ((o2_2@@53 T@Ref) (f_14@@83 T@Field_38936_38941) ) (!  (=> (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@53 f_14@@83) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) o2_2@@53 f_14@@83) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@53 f_14@@83)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@53 f_14@@83))
))) (forall ((o2_2@@54 T@Ref) (f_14@@84 T@Field_27408_3093) ) (!  (=> (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@54 f_14@@84) (= (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@57) o2_2@@54 f_14@@84) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@54 f_14@@84)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@54 f_14@@84))
))) (forall ((o2_2@@55 T@Ref) (f_14@@85 T@Field_27408_9320) ) (!  (=> (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@55 f_14@@85) (= (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@57) o2_2@@55 f_14@@85) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@55 f_14@@85)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@55 f_14@@85))
))) (forall ((o2_2@@56 T@Ref) (f_14@@86 T@Field_27408_53) ) (!  (=> (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@56 f_14@@86) (= (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@57) o2_2@@56 f_14@@86) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@56 f_14@@86)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@56 f_14@@86))
))) (forall ((o2_2@@57 T@Ref) (f_14@@87 T@Field_27408_27409) ) (!  (=> (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@57 f_14@@87) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@57) o2_2@@57 f_14@@87) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@57 f_14@@87)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@57 f_14@@87))
))) (forall ((o2_2@@58 T@Ref) (f_14@@88 T@Field_35363_35368) ) (!  (=> (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@57) null (PredicateMaskField_9481 pm_f_2@@12))) o2_2@@58 f_14@@88) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@57) o2_2@@58 f_14@@88) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@58 f_14@@88)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@44) o2_2@@58 f_14@@88))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@57 ExhaleHeap@@44 Mask@@108) (IsPredicateField_9481_9482 pm_f_2@@12))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_15214) (ExhaleHeap@@45 T@PolymorphicMapType_15214) (Mask@@109 T@PolymorphicMapType_15235) (pm_f_2@@13 T@Field_24558_24559) ) (!  (=> (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@45 Mask@@109) (=> (and (HasDirectPerm_24558_22377 Mask@@109 null pm_f_2@@13) (IsPredicateField_9505_9506 pm_f_2@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_2@@59 T@Ref) (f_14@@89 T@Field_21300_3093) ) (!  (=> (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@59 f_14@@89) (= (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@58) o2_2@@59 f_14@@89) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@59 f_14@@89)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@59 f_14@@89))
)) (forall ((o2_2@@60 T@Ref) (f_14@@90 T@Field_15287_15288) ) (!  (=> (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@60 f_14@@90) (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@58) o2_2@@60 f_14@@90) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@60 f_14@@90)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@60 f_14@@90))
))) (forall ((o2_2@@61 T@Ref) (f_14@@91 T@Field_15274_53) ) (!  (=> (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@61 f_14@@91) (= (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@58) o2_2@@61 f_14@@91) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@61 f_14@@91)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@61 f_14@@91))
))) (forall ((o2_2@@62 T@Ref) (f_14@@92 T@Field_9317_22377) ) (!  (=> (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@62 f_14@@92) (= (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@58) o2_2@@62 f_14@@92) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@62 f_14@@92)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@62 f_14@@92))
))) (forall ((o2_2@@63 T@Ref) (f_14@@93 T@Field_9317_30716) ) (!  (=> (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@63 f_14@@93) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@58) o2_2@@63 f_14@@93) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@63 f_14@@93)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@63 f_14@@93))
))) (forall ((o2_2@@64 T@Ref) (f_14@@94 T@Field_22376_3093) ) (!  (=> (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@64 f_14@@94) (= (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@58) o2_2@@64 f_14@@94) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@64 f_14@@94)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@64 f_14@@94))
))) (forall ((o2_2@@65 T@Ref) (f_14@@95 T@Field_22376_9320) ) (!  (=> (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@65 f_14@@95) (= (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@58) o2_2@@65 f_14@@95) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@65 f_14@@95)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@65 f_14@@95))
))) (forall ((o2_2@@66 T@Ref) (f_14@@96 T@Field_22376_53) ) (!  (=> (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@66 f_14@@96) (= (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@58) o2_2@@66 f_14@@96) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@66 f_14@@96)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@66 f_14@@96))
))) (forall ((o2_2@@67 T@Ref) (f_14@@97 T@Field_22376_22377) ) (!  (=> (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@67 f_14@@97) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@58) o2_2@@67 f_14@@97) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@67 f_14@@97)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@67 f_14@@97))
))) (forall ((o2_2@@68 T@Ref) (f_14@@98 T@Field_38414_38419) ) (!  (=> (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@68 f_14@@98) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@58) o2_2@@68 f_14@@98) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@68 f_14@@98)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@68 f_14@@98))
))) (forall ((o2_2@@69 T@Ref) (f_14@@99 T@Field_24505_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@69 f_14@@99) (= (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@58) o2_2@@69 f_14@@99) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@69 f_14@@99)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@69 f_14@@99))
))) (forall ((o2_2@@70 T@Ref) (f_14@@100 T@Field_24505_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@70 f_14@@100) (= (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@58) o2_2@@70 f_14@@100) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@70 f_14@@100)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@70 f_14@@100))
))) (forall ((o2_2@@71 T@Ref) (f_14@@101 T@Field_24505_53) ) (!  (=> (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@71 f_14@@101) (= (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@58) o2_2@@71 f_14@@101) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@71 f_14@@101)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@71 f_14@@101))
))) (forall ((o2_2@@72 T@Ref) (f_14@@102 T@Field_24505_24506) ) (!  (=> (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@72 f_14@@102) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@58) o2_2@@72 f_14@@102) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@72 f_14@@102)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@72 f_14@@102))
))) (forall ((o2_2@@73 T@Ref) (f_14@@103 T@Field_30711_30716) ) (!  (=> (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@73 f_14@@103) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@58) o2_2@@73 f_14@@103) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@73 f_14@@103)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@73 f_14@@103))
))) (forall ((o2_2@@74 T@Ref) (f_14@@104 T@Field_24558_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@74 f_14@@104) (= (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@58) o2_2@@74 f_14@@104) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@74 f_14@@104)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@74 f_14@@104))
))) (forall ((o2_2@@75 T@Ref) (f_14@@105 T@Field_24558_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@75 f_14@@105) (= (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@58) o2_2@@75 f_14@@105) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@75 f_14@@105)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@75 f_14@@105))
))) (forall ((o2_2@@76 T@Ref) (f_14@@106 T@Field_24558_53) ) (!  (=> (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@76 f_14@@106) (= (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@58) o2_2@@76 f_14@@106) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@76 f_14@@106)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@76 f_14@@106))
))) (forall ((o2_2@@77 T@Ref) (f_14@@107 T@Field_24558_24559) ) (!  (=> (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@77 f_14@@107) (= (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@58) o2_2@@77 f_14@@107) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@77 f_14@@107)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@77 f_14@@107))
))) (forall ((o2_2@@78 T@Ref) (f_14@@108 T@Field_39736_39741) ) (!  (=> (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@78 f_14@@108) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) o2_2@@78 f_14@@108) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@78 f_14@@108)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@78 f_14@@108))
))) (forall ((o2_2@@79 T@Ref) (f_14@@109 T@Field_25026_3093) ) (!  (=> (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@79 f_14@@109) (= (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@58) o2_2@@79 f_14@@109) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@79 f_14@@109)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@79 f_14@@109))
))) (forall ((o2_2@@80 T@Ref) (f_14@@110 T@Field_25026_9320) ) (!  (=> (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@80 f_14@@110) (= (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@58) o2_2@@80 f_14@@110) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@80 f_14@@110)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@80 f_14@@110))
))) (forall ((o2_2@@81 T@Ref) (f_14@@111 T@Field_25026_53) ) (!  (=> (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@81 f_14@@111) (= (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@58) o2_2@@81 f_14@@111) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@81 f_14@@111)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@81 f_14@@111))
))) (forall ((o2_2@@82 T@Ref) (f_14@@112 T@Field_25026_25027) ) (!  (=> (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@82 f_14@@112) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@58) o2_2@@82 f_14@@112) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@82 f_14@@112)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@82 f_14@@112))
))) (forall ((o2_2@@83 T@Ref) (f_14@@113 T@Field_38936_38941) ) (!  (=> (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@83 f_14@@113) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@58) o2_2@@83 f_14@@113) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@83 f_14@@113)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@83 f_14@@113))
))) (forall ((o2_2@@84 T@Ref) (f_14@@114 T@Field_27408_3093) ) (!  (=> (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@84 f_14@@114) (= (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@58) o2_2@@84 f_14@@114) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@84 f_14@@114)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@84 f_14@@114))
))) (forall ((o2_2@@85 T@Ref) (f_14@@115 T@Field_27408_9320) ) (!  (=> (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@85 f_14@@115) (= (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@58) o2_2@@85 f_14@@115) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@85 f_14@@115)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@85 f_14@@115))
))) (forall ((o2_2@@86 T@Ref) (f_14@@116 T@Field_27408_53) ) (!  (=> (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@86 f_14@@116) (= (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@58) o2_2@@86 f_14@@116) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@86 f_14@@116)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@86 f_14@@116))
))) (forall ((o2_2@@87 T@Ref) (f_14@@117 T@Field_27408_27409) ) (!  (=> (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@87 f_14@@117) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@58) o2_2@@87 f_14@@117) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@87 f_14@@117)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@87 f_14@@117))
))) (forall ((o2_2@@88 T@Ref) (f_14@@118 T@Field_35363_35368) ) (!  (=> (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@58) null (PredicateMaskField_9505 pm_f_2@@13))) o2_2@@88 f_14@@118) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@58) o2_2@@88 f_14@@118) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@88 f_14@@118)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@45) o2_2@@88 f_14@@118))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@58 ExhaleHeap@@45 Mask@@109) (IsPredicateField_9505_9506 pm_f_2@@13))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_15214) (ExhaleHeap@@46 T@PolymorphicMapType_15214) (Mask@@110 T@PolymorphicMapType_15235) (pm_f_2@@14 T@Field_24505_24506) ) (!  (=> (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@46 Mask@@110) (=> (and (HasDirectPerm_24505_22377 Mask@@110 null pm_f_2@@14) (IsPredicateField_9527_9528 pm_f_2@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_2@@89 T@Ref) (f_14@@119 T@Field_21300_3093) ) (!  (=> (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@89 f_14@@119) (= (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@59) o2_2@@89 f_14@@119) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@89 f_14@@119)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@89 f_14@@119))
)) (forall ((o2_2@@90 T@Ref) (f_14@@120 T@Field_15287_15288) ) (!  (=> (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@90 f_14@@120) (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@59) o2_2@@90 f_14@@120) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@90 f_14@@120)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@90 f_14@@120))
))) (forall ((o2_2@@91 T@Ref) (f_14@@121 T@Field_15274_53) ) (!  (=> (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@91 f_14@@121) (= (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@59) o2_2@@91 f_14@@121) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@91 f_14@@121)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@91 f_14@@121))
))) (forall ((o2_2@@92 T@Ref) (f_14@@122 T@Field_9317_22377) ) (!  (=> (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@92 f_14@@122) (= (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@59) o2_2@@92 f_14@@122) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@92 f_14@@122)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@92 f_14@@122))
))) (forall ((o2_2@@93 T@Ref) (f_14@@123 T@Field_9317_30716) ) (!  (=> (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@93 f_14@@123) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@59) o2_2@@93 f_14@@123) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@93 f_14@@123)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@93 f_14@@123))
))) (forall ((o2_2@@94 T@Ref) (f_14@@124 T@Field_22376_3093) ) (!  (=> (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@94 f_14@@124) (= (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@59) o2_2@@94 f_14@@124) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@94 f_14@@124)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@94 f_14@@124))
))) (forall ((o2_2@@95 T@Ref) (f_14@@125 T@Field_22376_9320) ) (!  (=> (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@95 f_14@@125) (= (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@59) o2_2@@95 f_14@@125) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@95 f_14@@125)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@95 f_14@@125))
))) (forall ((o2_2@@96 T@Ref) (f_14@@126 T@Field_22376_53) ) (!  (=> (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@96 f_14@@126) (= (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@59) o2_2@@96 f_14@@126) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@96 f_14@@126)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@96 f_14@@126))
))) (forall ((o2_2@@97 T@Ref) (f_14@@127 T@Field_22376_22377) ) (!  (=> (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@97 f_14@@127) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@59) o2_2@@97 f_14@@127) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@97 f_14@@127)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@97 f_14@@127))
))) (forall ((o2_2@@98 T@Ref) (f_14@@128 T@Field_38414_38419) ) (!  (=> (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@98 f_14@@128) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@59) o2_2@@98 f_14@@128) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@98 f_14@@128)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@98 f_14@@128))
))) (forall ((o2_2@@99 T@Ref) (f_14@@129 T@Field_24505_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@99 f_14@@129) (= (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@59) o2_2@@99 f_14@@129) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@99 f_14@@129)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@99 f_14@@129))
))) (forall ((o2_2@@100 T@Ref) (f_14@@130 T@Field_24505_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@100 f_14@@130) (= (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@59) o2_2@@100 f_14@@130) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@100 f_14@@130)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@100 f_14@@130))
))) (forall ((o2_2@@101 T@Ref) (f_14@@131 T@Field_24505_53) ) (!  (=> (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@101 f_14@@131) (= (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@59) o2_2@@101 f_14@@131) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@101 f_14@@131)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@101 f_14@@131))
))) (forall ((o2_2@@102 T@Ref) (f_14@@132 T@Field_24505_24506) ) (!  (=> (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@102 f_14@@132) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@59) o2_2@@102 f_14@@132) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@102 f_14@@132)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@102 f_14@@132))
))) (forall ((o2_2@@103 T@Ref) (f_14@@133 T@Field_30711_30716) ) (!  (=> (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@103 f_14@@133) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) o2_2@@103 f_14@@133) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@103 f_14@@133)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@103 f_14@@133))
))) (forall ((o2_2@@104 T@Ref) (f_14@@134 T@Field_24558_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@104 f_14@@134) (= (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@59) o2_2@@104 f_14@@134) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@104 f_14@@134)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@104 f_14@@134))
))) (forall ((o2_2@@105 T@Ref) (f_14@@135 T@Field_24558_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@105 f_14@@135) (= (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@59) o2_2@@105 f_14@@135) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@105 f_14@@135)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@105 f_14@@135))
))) (forall ((o2_2@@106 T@Ref) (f_14@@136 T@Field_24558_53) ) (!  (=> (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@106 f_14@@136) (= (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@59) o2_2@@106 f_14@@136) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@106 f_14@@136)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@106 f_14@@136))
))) (forall ((o2_2@@107 T@Ref) (f_14@@137 T@Field_24558_24559) ) (!  (=> (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@107 f_14@@137) (= (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@59) o2_2@@107 f_14@@137) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@107 f_14@@137)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@107 f_14@@137))
))) (forall ((o2_2@@108 T@Ref) (f_14@@138 T@Field_39736_39741) ) (!  (=> (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@108 f_14@@138) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@59) o2_2@@108 f_14@@138) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@108 f_14@@138)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@108 f_14@@138))
))) (forall ((o2_2@@109 T@Ref) (f_14@@139 T@Field_25026_3093) ) (!  (=> (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@109 f_14@@139) (= (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@59) o2_2@@109 f_14@@139) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@109 f_14@@139)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@109 f_14@@139))
))) (forall ((o2_2@@110 T@Ref) (f_14@@140 T@Field_25026_9320) ) (!  (=> (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@110 f_14@@140) (= (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@59) o2_2@@110 f_14@@140) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@110 f_14@@140)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@110 f_14@@140))
))) (forall ((o2_2@@111 T@Ref) (f_14@@141 T@Field_25026_53) ) (!  (=> (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@111 f_14@@141) (= (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@59) o2_2@@111 f_14@@141) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@111 f_14@@141)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@111 f_14@@141))
))) (forall ((o2_2@@112 T@Ref) (f_14@@142 T@Field_25026_25027) ) (!  (=> (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@112 f_14@@142) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@59) o2_2@@112 f_14@@142) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@112 f_14@@142)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@112 f_14@@142))
))) (forall ((o2_2@@113 T@Ref) (f_14@@143 T@Field_38936_38941) ) (!  (=> (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@113 f_14@@143) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@59) o2_2@@113 f_14@@143) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@113 f_14@@143)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@113 f_14@@143))
))) (forall ((o2_2@@114 T@Ref) (f_14@@144 T@Field_27408_3093) ) (!  (=> (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@114 f_14@@144) (= (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@59) o2_2@@114 f_14@@144) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@114 f_14@@144)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@114 f_14@@144))
))) (forall ((o2_2@@115 T@Ref) (f_14@@145 T@Field_27408_9320) ) (!  (=> (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@115 f_14@@145) (= (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@59) o2_2@@115 f_14@@145) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@115 f_14@@145)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@115 f_14@@145))
))) (forall ((o2_2@@116 T@Ref) (f_14@@146 T@Field_27408_53) ) (!  (=> (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@116 f_14@@146) (= (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@59) o2_2@@116 f_14@@146) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@116 f_14@@146)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@116 f_14@@146))
))) (forall ((o2_2@@117 T@Ref) (f_14@@147 T@Field_27408_27409) ) (!  (=> (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@117 f_14@@147) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@59) o2_2@@117 f_14@@147) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@117 f_14@@147)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@117 f_14@@147))
))) (forall ((o2_2@@118 T@Ref) (f_14@@148 T@Field_35363_35368) ) (!  (=> (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@59) null (PredicateMaskField_9527 pm_f_2@@14))) o2_2@@118 f_14@@148) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@59) o2_2@@118 f_14@@148) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@118 f_14@@148)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@46) o2_2@@118 f_14@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@59 ExhaleHeap@@46 Mask@@110) (IsPredicateField_9527_9528 pm_f_2@@14))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_15214) (ExhaleHeap@@47 T@PolymorphicMapType_15214) (Mask@@111 T@PolymorphicMapType_15235) (pm_f_2@@15 T@Field_22376_22377) ) (!  (=> (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@47 Mask@@111) (=> (and (HasDirectPerm_22376_22377 Mask@@111 null pm_f_2@@15) (IsPredicateField_9459_9460 pm_f_2@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_2@@119 T@Ref) (f_14@@149 T@Field_21300_3093) ) (!  (=> (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@119 f_14@@149) (= (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@60) o2_2@@119 f_14@@149) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@119 f_14@@149)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@119 f_14@@149))
)) (forall ((o2_2@@120 T@Ref) (f_14@@150 T@Field_15287_15288) ) (!  (=> (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@120 f_14@@150) (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@60) o2_2@@120 f_14@@150) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@120 f_14@@150)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@120 f_14@@150))
))) (forall ((o2_2@@121 T@Ref) (f_14@@151 T@Field_15274_53) ) (!  (=> (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@121 f_14@@151) (= (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@60) o2_2@@121 f_14@@151) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@121 f_14@@151)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@121 f_14@@151))
))) (forall ((o2_2@@122 T@Ref) (f_14@@152 T@Field_9317_22377) ) (!  (=> (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@122 f_14@@152) (= (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@60) o2_2@@122 f_14@@152) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@122 f_14@@152)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@122 f_14@@152))
))) (forall ((o2_2@@123 T@Ref) (f_14@@153 T@Field_9317_30716) ) (!  (=> (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@123 f_14@@153) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@60) o2_2@@123 f_14@@153) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@123 f_14@@153)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@123 f_14@@153))
))) (forall ((o2_2@@124 T@Ref) (f_14@@154 T@Field_22376_3093) ) (!  (=> (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@124 f_14@@154) (= (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@60) o2_2@@124 f_14@@154) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@124 f_14@@154)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@124 f_14@@154))
))) (forall ((o2_2@@125 T@Ref) (f_14@@155 T@Field_22376_9320) ) (!  (=> (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@125 f_14@@155) (= (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@60) o2_2@@125 f_14@@155) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@125 f_14@@155)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@125 f_14@@155))
))) (forall ((o2_2@@126 T@Ref) (f_14@@156 T@Field_22376_53) ) (!  (=> (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@126 f_14@@156) (= (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@60) o2_2@@126 f_14@@156) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@126 f_14@@156)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@126 f_14@@156))
))) (forall ((o2_2@@127 T@Ref) (f_14@@157 T@Field_22376_22377) ) (!  (=> (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@127 f_14@@157) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@60) o2_2@@127 f_14@@157) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@127 f_14@@157)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@127 f_14@@157))
))) (forall ((o2_2@@128 T@Ref) (f_14@@158 T@Field_38414_38419) ) (!  (=> (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@128 f_14@@158) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) o2_2@@128 f_14@@158) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@128 f_14@@158)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@128 f_14@@158))
))) (forall ((o2_2@@129 T@Ref) (f_14@@159 T@Field_24505_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@129 f_14@@159) (= (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@60) o2_2@@129 f_14@@159) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@129 f_14@@159)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@129 f_14@@159))
))) (forall ((o2_2@@130 T@Ref) (f_14@@160 T@Field_24505_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@130 f_14@@160) (= (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@60) o2_2@@130 f_14@@160) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@130 f_14@@160)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@130 f_14@@160))
))) (forall ((o2_2@@131 T@Ref) (f_14@@161 T@Field_24505_53) ) (!  (=> (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@131 f_14@@161) (= (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@60) o2_2@@131 f_14@@161) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@131 f_14@@161)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@131 f_14@@161))
))) (forall ((o2_2@@132 T@Ref) (f_14@@162 T@Field_24505_24506) ) (!  (=> (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@132 f_14@@162) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@60) o2_2@@132 f_14@@162) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@132 f_14@@162)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@132 f_14@@162))
))) (forall ((o2_2@@133 T@Ref) (f_14@@163 T@Field_30711_30716) ) (!  (=> (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@133 f_14@@163) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@60) o2_2@@133 f_14@@163) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@133 f_14@@163)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@133 f_14@@163))
))) (forall ((o2_2@@134 T@Ref) (f_14@@164 T@Field_24558_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@134 f_14@@164) (= (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@60) o2_2@@134 f_14@@164) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@134 f_14@@164)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@134 f_14@@164))
))) (forall ((o2_2@@135 T@Ref) (f_14@@165 T@Field_24558_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@135 f_14@@165) (= (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@60) o2_2@@135 f_14@@165) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@135 f_14@@165)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@135 f_14@@165))
))) (forall ((o2_2@@136 T@Ref) (f_14@@166 T@Field_24558_53) ) (!  (=> (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@136 f_14@@166) (= (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@60) o2_2@@136 f_14@@166) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@136 f_14@@166)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@136 f_14@@166))
))) (forall ((o2_2@@137 T@Ref) (f_14@@167 T@Field_24558_24559) ) (!  (=> (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@137 f_14@@167) (= (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@60) o2_2@@137 f_14@@167) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@137 f_14@@167)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@137 f_14@@167))
))) (forall ((o2_2@@138 T@Ref) (f_14@@168 T@Field_39736_39741) ) (!  (=> (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@138 f_14@@168) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@60) o2_2@@138 f_14@@168) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@138 f_14@@168)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@138 f_14@@168))
))) (forall ((o2_2@@139 T@Ref) (f_14@@169 T@Field_25026_3093) ) (!  (=> (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@139 f_14@@169) (= (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@60) o2_2@@139 f_14@@169) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@139 f_14@@169)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@139 f_14@@169))
))) (forall ((o2_2@@140 T@Ref) (f_14@@170 T@Field_25026_9320) ) (!  (=> (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@140 f_14@@170) (= (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@60) o2_2@@140 f_14@@170) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@140 f_14@@170)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@140 f_14@@170))
))) (forall ((o2_2@@141 T@Ref) (f_14@@171 T@Field_25026_53) ) (!  (=> (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@141 f_14@@171) (= (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@60) o2_2@@141 f_14@@171) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@141 f_14@@171)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@141 f_14@@171))
))) (forall ((o2_2@@142 T@Ref) (f_14@@172 T@Field_25026_25027) ) (!  (=> (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@142 f_14@@172) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@60) o2_2@@142 f_14@@172) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@142 f_14@@172)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@142 f_14@@172))
))) (forall ((o2_2@@143 T@Ref) (f_14@@173 T@Field_38936_38941) ) (!  (=> (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@143 f_14@@173) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@60) o2_2@@143 f_14@@173) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@143 f_14@@173)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@143 f_14@@173))
))) (forall ((o2_2@@144 T@Ref) (f_14@@174 T@Field_27408_3093) ) (!  (=> (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@144 f_14@@174) (= (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@60) o2_2@@144 f_14@@174) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@144 f_14@@174)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@144 f_14@@174))
))) (forall ((o2_2@@145 T@Ref) (f_14@@175 T@Field_27408_9320) ) (!  (=> (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@145 f_14@@175) (= (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@60) o2_2@@145 f_14@@175) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@145 f_14@@175)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@145 f_14@@175))
))) (forall ((o2_2@@146 T@Ref) (f_14@@176 T@Field_27408_53) ) (!  (=> (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@146 f_14@@176) (= (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@60) o2_2@@146 f_14@@176) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@146 f_14@@176)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@146 f_14@@176))
))) (forall ((o2_2@@147 T@Ref) (f_14@@177 T@Field_27408_27409) ) (!  (=> (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@147 f_14@@177) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@60) o2_2@@147 f_14@@177) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@147 f_14@@177)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@147 f_14@@177))
))) (forall ((o2_2@@148 T@Ref) (f_14@@178 T@Field_35363_35368) ) (!  (=> (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@60) null (PredicateMaskField_9459 pm_f_2@@15))) o2_2@@148 f_14@@178) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@60) o2_2@@148 f_14@@178) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@148 f_14@@178)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@47) o2_2@@148 f_14@@178))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@60 ExhaleHeap@@47 Mask@@111) (IsPredicateField_9459_9460 pm_f_2@@15))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_15214) (ExhaleHeap@@48 T@PolymorphicMapType_15214) (Mask@@112 T@PolymorphicMapType_15235) (pm_f_2@@16 T@Field_9317_22377) ) (!  (=> (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@48 Mask@@112) (=> (and (HasDirectPerm_9317_22377 Mask@@112 null pm_f_2@@16) (IsPredicateField_9317_52946 pm_f_2@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_2@@149 T@Ref) (f_14@@179 T@Field_21300_3093) ) (!  (=> (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@149 f_14@@179) (= (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@61) o2_2@@149 f_14@@179) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@149 f_14@@179)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@149 f_14@@179))
)) (forall ((o2_2@@150 T@Ref) (f_14@@180 T@Field_15287_15288) ) (!  (=> (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@150 f_14@@180) (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@61) o2_2@@150 f_14@@180) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@150 f_14@@180)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@150 f_14@@180))
))) (forall ((o2_2@@151 T@Ref) (f_14@@181 T@Field_15274_53) ) (!  (=> (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@151 f_14@@181) (= (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@61) o2_2@@151 f_14@@181) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@151 f_14@@181)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@151 f_14@@181))
))) (forall ((o2_2@@152 T@Ref) (f_14@@182 T@Field_9317_22377) ) (!  (=> (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@152 f_14@@182) (= (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@61) o2_2@@152 f_14@@182) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@152 f_14@@182)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@152 f_14@@182))
))) (forall ((o2_2@@153 T@Ref) (f_14@@183 T@Field_9317_30716) ) (!  (=> (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@153 f_14@@183) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) o2_2@@153 f_14@@183) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@153 f_14@@183)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@153 f_14@@183))
))) (forall ((o2_2@@154 T@Ref) (f_14@@184 T@Field_22376_3093) ) (!  (=> (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@154 f_14@@184) (= (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@61) o2_2@@154 f_14@@184) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@154 f_14@@184)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@154 f_14@@184))
))) (forall ((o2_2@@155 T@Ref) (f_14@@185 T@Field_22376_9320) ) (!  (=> (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@155 f_14@@185) (= (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@61) o2_2@@155 f_14@@185) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@155 f_14@@185)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@155 f_14@@185))
))) (forall ((o2_2@@156 T@Ref) (f_14@@186 T@Field_22376_53) ) (!  (=> (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@156 f_14@@186) (= (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@61) o2_2@@156 f_14@@186) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@156 f_14@@186)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@156 f_14@@186))
))) (forall ((o2_2@@157 T@Ref) (f_14@@187 T@Field_22376_22377) ) (!  (=> (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@157 f_14@@187) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@61) o2_2@@157 f_14@@187) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@157 f_14@@187)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@157 f_14@@187))
))) (forall ((o2_2@@158 T@Ref) (f_14@@188 T@Field_38414_38419) ) (!  (=> (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@158 f_14@@188) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@61) o2_2@@158 f_14@@188) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@158 f_14@@188)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@158 f_14@@188))
))) (forall ((o2_2@@159 T@Ref) (f_14@@189 T@Field_24505_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@159 f_14@@189) (= (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@61) o2_2@@159 f_14@@189) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@159 f_14@@189)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@159 f_14@@189))
))) (forall ((o2_2@@160 T@Ref) (f_14@@190 T@Field_24505_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@160 f_14@@190) (= (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@61) o2_2@@160 f_14@@190) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@160 f_14@@190)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@160 f_14@@190))
))) (forall ((o2_2@@161 T@Ref) (f_14@@191 T@Field_24505_53) ) (!  (=> (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@161 f_14@@191) (= (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@61) o2_2@@161 f_14@@191) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@161 f_14@@191)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@161 f_14@@191))
))) (forall ((o2_2@@162 T@Ref) (f_14@@192 T@Field_24505_24506) ) (!  (=> (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@162 f_14@@192) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@61) o2_2@@162 f_14@@192) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@162 f_14@@192)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@162 f_14@@192))
))) (forall ((o2_2@@163 T@Ref) (f_14@@193 T@Field_30711_30716) ) (!  (=> (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@163 f_14@@193) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@61) o2_2@@163 f_14@@193) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@163 f_14@@193)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@163 f_14@@193))
))) (forall ((o2_2@@164 T@Ref) (f_14@@194 T@Field_24558_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@164 f_14@@194) (= (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@61) o2_2@@164 f_14@@194) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@164 f_14@@194)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@164 f_14@@194))
))) (forall ((o2_2@@165 T@Ref) (f_14@@195 T@Field_24558_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@165 f_14@@195) (= (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@61) o2_2@@165 f_14@@195) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@165 f_14@@195)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@165 f_14@@195))
))) (forall ((o2_2@@166 T@Ref) (f_14@@196 T@Field_24558_53) ) (!  (=> (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@166 f_14@@196) (= (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@61) o2_2@@166 f_14@@196) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@166 f_14@@196)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@166 f_14@@196))
))) (forall ((o2_2@@167 T@Ref) (f_14@@197 T@Field_24558_24559) ) (!  (=> (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@167 f_14@@197) (= (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@61) o2_2@@167 f_14@@197) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@167 f_14@@197)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@167 f_14@@197))
))) (forall ((o2_2@@168 T@Ref) (f_14@@198 T@Field_39736_39741) ) (!  (=> (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@168 f_14@@198) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@61) o2_2@@168 f_14@@198) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@168 f_14@@198)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@168 f_14@@198))
))) (forall ((o2_2@@169 T@Ref) (f_14@@199 T@Field_25026_3093) ) (!  (=> (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@169 f_14@@199) (= (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@61) o2_2@@169 f_14@@199) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@169 f_14@@199)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@169 f_14@@199))
))) (forall ((o2_2@@170 T@Ref) (f_14@@200 T@Field_25026_9320) ) (!  (=> (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@170 f_14@@200) (= (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@61) o2_2@@170 f_14@@200) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@170 f_14@@200)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@170 f_14@@200))
))) (forall ((o2_2@@171 T@Ref) (f_14@@201 T@Field_25026_53) ) (!  (=> (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@171 f_14@@201) (= (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@61) o2_2@@171 f_14@@201) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@171 f_14@@201)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@171 f_14@@201))
))) (forall ((o2_2@@172 T@Ref) (f_14@@202 T@Field_25026_25027) ) (!  (=> (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@172 f_14@@202) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@61) o2_2@@172 f_14@@202) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@172 f_14@@202)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@172 f_14@@202))
))) (forall ((o2_2@@173 T@Ref) (f_14@@203 T@Field_38936_38941) ) (!  (=> (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@173 f_14@@203) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@61) o2_2@@173 f_14@@203) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@173 f_14@@203)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@173 f_14@@203))
))) (forall ((o2_2@@174 T@Ref) (f_14@@204 T@Field_27408_3093) ) (!  (=> (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@174 f_14@@204) (= (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@61) o2_2@@174 f_14@@204) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@174 f_14@@204)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@174 f_14@@204))
))) (forall ((o2_2@@175 T@Ref) (f_14@@205 T@Field_27408_9320) ) (!  (=> (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@175 f_14@@205) (= (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@61) o2_2@@175 f_14@@205) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@175 f_14@@205)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@175 f_14@@205))
))) (forall ((o2_2@@176 T@Ref) (f_14@@206 T@Field_27408_53) ) (!  (=> (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@176 f_14@@206) (= (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@61) o2_2@@176 f_14@@206) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@176 f_14@@206)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@176 f_14@@206))
))) (forall ((o2_2@@177 T@Ref) (f_14@@207 T@Field_27408_27409) ) (!  (=> (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@177 f_14@@207) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@61) o2_2@@177 f_14@@207) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@177 f_14@@207)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@177 f_14@@207))
))) (forall ((o2_2@@178 T@Ref) (f_14@@208 T@Field_35363_35368) ) (!  (=> (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@61) null (PredicateMaskField_9317 pm_f_2@@16))) o2_2@@178 f_14@@208) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@61) o2_2@@178 f_14@@208) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@178 f_14@@208)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@48) o2_2@@178 f_14@@208))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@61 ExhaleHeap@@48 Mask@@112) (IsPredicateField_9317_52946 pm_f_2@@16))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_15214) (ExhaleHeap@@49 T@PolymorphicMapType_15214) (Mask@@113 T@PolymorphicMapType_15235) (pm_f_2@@17 T@Field_27408_27409) ) (!  (=> (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@49 Mask@@113) (=> (and (HasDirectPerm_27408_22377 Mask@@113 null pm_f_2@@17) (IsWandField_27408_64660 pm_f_2@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_2@@179 T@Ref) (f_14@@209 T@Field_21300_3093) ) (!  (=> (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@179 f_14@@209) (= (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@62) o2_2@@179 f_14@@209) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@179 f_14@@209)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@179 f_14@@209))
)) (forall ((o2_2@@180 T@Ref) (f_14@@210 T@Field_15287_15288) ) (!  (=> (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@180 f_14@@210) (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@62) o2_2@@180 f_14@@210) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@180 f_14@@210)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@180 f_14@@210))
))) (forall ((o2_2@@181 T@Ref) (f_14@@211 T@Field_15274_53) ) (!  (=> (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@181 f_14@@211) (= (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@62) o2_2@@181 f_14@@211) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@181 f_14@@211)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@181 f_14@@211))
))) (forall ((o2_2@@182 T@Ref) (f_14@@212 T@Field_9317_22377) ) (!  (=> (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@182 f_14@@212) (= (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@62) o2_2@@182 f_14@@212) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@182 f_14@@212)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@182 f_14@@212))
))) (forall ((o2_2@@183 T@Ref) (f_14@@213 T@Field_9317_30716) ) (!  (=> (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@183 f_14@@213) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@62) o2_2@@183 f_14@@213) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@183 f_14@@213)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@183 f_14@@213))
))) (forall ((o2_2@@184 T@Ref) (f_14@@214 T@Field_22376_3093) ) (!  (=> (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@184 f_14@@214) (= (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@62) o2_2@@184 f_14@@214) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@184 f_14@@214)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@184 f_14@@214))
))) (forall ((o2_2@@185 T@Ref) (f_14@@215 T@Field_22376_9320) ) (!  (=> (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@185 f_14@@215) (= (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@62) o2_2@@185 f_14@@215) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@185 f_14@@215)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@185 f_14@@215))
))) (forall ((o2_2@@186 T@Ref) (f_14@@216 T@Field_22376_53) ) (!  (=> (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@186 f_14@@216) (= (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@62) o2_2@@186 f_14@@216) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@186 f_14@@216)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@186 f_14@@216))
))) (forall ((o2_2@@187 T@Ref) (f_14@@217 T@Field_22376_22377) ) (!  (=> (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@187 f_14@@217) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@62) o2_2@@187 f_14@@217) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@187 f_14@@217)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@187 f_14@@217))
))) (forall ((o2_2@@188 T@Ref) (f_14@@218 T@Field_38414_38419) ) (!  (=> (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@188 f_14@@218) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@62) o2_2@@188 f_14@@218) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@188 f_14@@218)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@188 f_14@@218))
))) (forall ((o2_2@@189 T@Ref) (f_14@@219 T@Field_24505_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@189 f_14@@219) (= (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@62) o2_2@@189 f_14@@219) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@189 f_14@@219)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@189 f_14@@219))
))) (forall ((o2_2@@190 T@Ref) (f_14@@220 T@Field_24505_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@190 f_14@@220) (= (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@62) o2_2@@190 f_14@@220) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@190 f_14@@220)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@190 f_14@@220))
))) (forall ((o2_2@@191 T@Ref) (f_14@@221 T@Field_24505_53) ) (!  (=> (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@191 f_14@@221) (= (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@62) o2_2@@191 f_14@@221) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@191 f_14@@221)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@191 f_14@@221))
))) (forall ((o2_2@@192 T@Ref) (f_14@@222 T@Field_24505_24506) ) (!  (=> (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@192 f_14@@222) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@62) o2_2@@192 f_14@@222) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@192 f_14@@222)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@192 f_14@@222))
))) (forall ((o2_2@@193 T@Ref) (f_14@@223 T@Field_30711_30716) ) (!  (=> (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@193 f_14@@223) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@62) o2_2@@193 f_14@@223) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@193 f_14@@223)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@193 f_14@@223))
))) (forall ((o2_2@@194 T@Ref) (f_14@@224 T@Field_24558_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@194 f_14@@224) (= (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@62) o2_2@@194 f_14@@224) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@194 f_14@@224)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@194 f_14@@224))
))) (forall ((o2_2@@195 T@Ref) (f_14@@225 T@Field_24558_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@195 f_14@@225) (= (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@62) o2_2@@195 f_14@@225) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@195 f_14@@225)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@195 f_14@@225))
))) (forall ((o2_2@@196 T@Ref) (f_14@@226 T@Field_24558_53) ) (!  (=> (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@196 f_14@@226) (= (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@62) o2_2@@196 f_14@@226) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@196 f_14@@226)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@196 f_14@@226))
))) (forall ((o2_2@@197 T@Ref) (f_14@@227 T@Field_24558_24559) ) (!  (=> (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@197 f_14@@227) (= (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@62) o2_2@@197 f_14@@227) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@197 f_14@@227)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@197 f_14@@227))
))) (forall ((o2_2@@198 T@Ref) (f_14@@228 T@Field_39736_39741) ) (!  (=> (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@198 f_14@@228) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@62) o2_2@@198 f_14@@228) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@198 f_14@@228)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@198 f_14@@228))
))) (forall ((o2_2@@199 T@Ref) (f_14@@229 T@Field_25026_3093) ) (!  (=> (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@199 f_14@@229) (= (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@62) o2_2@@199 f_14@@229) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@199 f_14@@229)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@199 f_14@@229))
))) (forall ((o2_2@@200 T@Ref) (f_14@@230 T@Field_25026_9320) ) (!  (=> (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@200 f_14@@230) (= (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@62) o2_2@@200 f_14@@230) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@200 f_14@@230)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@200 f_14@@230))
))) (forall ((o2_2@@201 T@Ref) (f_14@@231 T@Field_25026_53) ) (!  (=> (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@201 f_14@@231) (= (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@62) o2_2@@201 f_14@@231) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@201 f_14@@231)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@201 f_14@@231))
))) (forall ((o2_2@@202 T@Ref) (f_14@@232 T@Field_25026_25027) ) (!  (=> (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@202 f_14@@232) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@62) o2_2@@202 f_14@@232) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@202 f_14@@232)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@202 f_14@@232))
))) (forall ((o2_2@@203 T@Ref) (f_14@@233 T@Field_38936_38941) ) (!  (=> (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@203 f_14@@233) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@62) o2_2@@203 f_14@@233) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@203 f_14@@233)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@203 f_14@@233))
))) (forall ((o2_2@@204 T@Ref) (f_14@@234 T@Field_27408_3093) ) (!  (=> (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@204 f_14@@234) (= (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@62) o2_2@@204 f_14@@234) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@204 f_14@@234)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@204 f_14@@234))
))) (forall ((o2_2@@205 T@Ref) (f_14@@235 T@Field_27408_9320) ) (!  (=> (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@205 f_14@@235) (= (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@62) o2_2@@205 f_14@@235) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@205 f_14@@235)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@205 f_14@@235))
))) (forall ((o2_2@@206 T@Ref) (f_14@@236 T@Field_27408_53) ) (!  (=> (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@206 f_14@@236) (= (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@62) o2_2@@206 f_14@@236) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@206 f_14@@236)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@206 f_14@@236))
))) (forall ((o2_2@@207 T@Ref) (f_14@@237 T@Field_27408_27409) ) (!  (=> (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@207 f_14@@237) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@62) o2_2@@207 f_14@@237) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@207 f_14@@237)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@207 f_14@@237))
))) (forall ((o2_2@@208 T@Ref) (f_14@@238 T@Field_35363_35368) ) (!  (=> (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) null (WandMaskField_27408 pm_f_2@@17))) o2_2@@208 f_14@@238) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@62) o2_2@@208 f_14@@238) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@208 f_14@@238)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@49) o2_2@@208 f_14@@238))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@62 ExhaleHeap@@49 Mask@@113) (IsWandField_27408_64660 pm_f_2@@17))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_15214) (ExhaleHeap@@50 T@PolymorphicMapType_15214) (Mask@@114 T@PolymorphicMapType_15235) (pm_f_2@@18 T@Field_25026_25027) ) (!  (=> (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@50 Mask@@114) (=> (and (HasDirectPerm_25026_22377 Mask@@114 null pm_f_2@@18) (IsWandField_25026_64303 pm_f_2@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_2@@209 T@Ref) (f_14@@239 T@Field_21300_3093) ) (!  (=> (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@209 f_14@@239) (= (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@63) o2_2@@209 f_14@@239) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@209 f_14@@239)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@209 f_14@@239))
)) (forall ((o2_2@@210 T@Ref) (f_14@@240 T@Field_15287_15288) ) (!  (=> (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@210 f_14@@240) (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@63) o2_2@@210 f_14@@240) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@210 f_14@@240)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@210 f_14@@240))
))) (forall ((o2_2@@211 T@Ref) (f_14@@241 T@Field_15274_53) ) (!  (=> (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@211 f_14@@241) (= (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@63) o2_2@@211 f_14@@241) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@211 f_14@@241)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@211 f_14@@241))
))) (forall ((o2_2@@212 T@Ref) (f_14@@242 T@Field_9317_22377) ) (!  (=> (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@212 f_14@@242) (= (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@63) o2_2@@212 f_14@@242) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@212 f_14@@242)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@212 f_14@@242))
))) (forall ((o2_2@@213 T@Ref) (f_14@@243 T@Field_9317_30716) ) (!  (=> (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@213 f_14@@243) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@63) o2_2@@213 f_14@@243) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@213 f_14@@243)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@213 f_14@@243))
))) (forall ((o2_2@@214 T@Ref) (f_14@@244 T@Field_22376_3093) ) (!  (=> (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@214 f_14@@244) (= (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@63) o2_2@@214 f_14@@244) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@214 f_14@@244)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@214 f_14@@244))
))) (forall ((o2_2@@215 T@Ref) (f_14@@245 T@Field_22376_9320) ) (!  (=> (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@215 f_14@@245) (= (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@63) o2_2@@215 f_14@@245) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@215 f_14@@245)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@215 f_14@@245))
))) (forall ((o2_2@@216 T@Ref) (f_14@@246 T@Field_22376_53) ) (!  (=> (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@216 f_14@@246) (= (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@63) o2_2@@216 f_14@@246) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@216 f_14@@246)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@216 f_14@@246))
))) (forall ((o2_2@@217 T@Ref) (f_14@@247 T@Field_22376_22377) ) (!  (=> (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@217 f_14@@247) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@63) o2_2@@217 f_14@@247) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@217 f_14@@247)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@217 f_14@@247))
))) (forall ((o2_2@@218 T@Ref) (f_14@@248 T@Field_38414_38419) ) (!  (=> (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@218 f_14@@248) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@63) o2_2@@218 f_14@@248) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@218 f_14@@248)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@218 f_14@@248))
))) (forall ((o2_2@@219 T@Ref) (f_14@@249 T@Field_24505_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@219 f_14@@249) (= (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@63) o2_2@@219 f_14@@249) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@219 f_14@@249)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@219 f_14@@249))
))) (forall ((o2_2@@220 T@Ref) (f_14@@250 T@Field_24505_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@220 f_14@@250) (= (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@63) o2_2@@220 f_14@@250) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@220 f_14@@250)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@220 f_14@@250))
))) (forall ((o2_2@@221 T@Ref) (f_14@@251 T@Field_24505_53) ) (!  (=> (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@221 f_14@@251) (= (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@63) o2_2@@221 f_14@@251) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@221 f_14@@251)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@221 f_14@@251))
))) (forall ((o2_2@@222 T@Ref) (f_14@@252 T@Field_24505_24506) ) (!  (=> (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@222 f_14@@252) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@63) o2_2@@222 f_14@@252) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@222 f_14@@252)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@222 f_14@@252))
))) (forall ((o2_2@@223 T@Ref) (f_14@@253 T@Field_30711_30716) ) (!  (=> (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@223 f_14@@253) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@63) o2_2@@223 f_14@@253) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@223 f_14@@253)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@223 f_14@@253))
))) (forall ((o2_2@@224 T@Ref) (f_14@@254 T@Field_24558_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@224 f_14@@254) (= (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@63) o2_2@@224 f_14@@254) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@224 f_14@@254)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@224 f_14@@254))
))) (forall ((o2_2@@225 T@Ref) (f_14@@255 T@Field_24558_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@225 f_14@@255) (= (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@63) o2_2@@225 f_14@@255) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@225 f_14@@255)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@225 f_14@@255))
))) (forall ((o2_2@@226 T@Ref) (f_14@@256 T@Field_24558_53) ) (!  (=> (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@226 f_14@@256) (= (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@63) o2_2@@226 f_14@@256) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@226 f_14@@256)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@226 f_14@@256))
))) (forall ((o2_2@@227 T@Ref) (f_14@@257 T@Field_24558_24559) ) (!  (=> (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@227 f_14@@257) (= (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@63) o2_2@@227 f_14@@257) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@227 f_14@@257)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@227 f_14@@257))
))) (forall ((o2_2@@228 T@Ref) (f_14@@258 T@Field_39736_39741) ) (!  (=> (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@228 f_14@@258) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@63) o2_2@@228 f_14@@258) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@228 f_14@@258)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@228 f_14@@258))
))) (forall ((o2_2@@229 T@Ref) (f_14@@259 T@Field_25026_3093) ) (!  (=> (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@229 f_14@@259) (= (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@63) o2_2@@229 f_14@@259) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@229 f_14@@259)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@229 f_14@@259))
))) (forall ((o2_2@@230 T@Ref) (f_14@@260 T@Field_25026_9320) ) (!  (=> (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@230 f_14@@260) (= (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@63) o2_2@@230 f_14@@260) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@230 f_14@@260)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@230 f_14@@260))
))) (forall ((o2_2@@231 T@Ref) (f_14@@261 T@Field_25026_53) ) (!  (=> (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@231 f_14@@261) (= (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@63) o2_2@@231 f_14@@261) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@231 f_14@@261)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@231 f_14@@261))
))) (forall ((o2_2@@232 T@Ref) (f_14@@262 T@Field_25026_25027) ) (!  (=> (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@232 f_14@@262) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@63) o2_2@@232 f_14@@262) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@232 f_14@@262)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@232 f_14@@262))
))) (forall ((o2_2@@233 T@Ref) (f_14@@263 T@Field_38936_38941) ) (!  (=> (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@233 f_14@@263) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) o2_2@@233 f_14@@263) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@233 f_14@@263)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@233 f_14@@263))
))) (forall ((o2_2@@234 T@Ref) (f_14@@264 T@Field_27408_3093) ) (!  (=> (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@234 f_14@@264) (= (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@63) o2_2@@234 f_14@@264) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@234 f_14@@264)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@234 f_14@@264))
))) (forall ((o2_2@@235 T@Ref) (f_14@@265 T@Field_27408_9320) ) (!  (=> (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@235 f_14@@265) (= (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@63) o2_2@@235 f_14@@265) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@235 f_14@@265)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@235 f_14@@265))
))) (forall ((o2_2@@236 T@Ref) (f_14@@266 T@Field_27408_53) ) (!  (=> (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@236 f_14@@266) (= (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@63) o2_2@@236 f_14@@266) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@236 f_14@@266)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@236 f_14@@266))
))) (forall ((o2_2@@237 T@Ref) (f_14@@267 T@Field_27408_27409) ) (!  (=> (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@237 f_14@@267) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@63) o2_2@@237 f_14@@267) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@237 f_14@@267)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@237 f_14@@267))
))) (forall ((o2_2@@238 T@Ref) (f_14@@268 T@Field_35363_35368) ) (!  (=> (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@63) null (WandMaskField_25026 pm_f_2@@18))) o2_2@@238 f_14@@268) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@63) o2_2@@238 f_14@@268) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@238 f_14@@268)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@50) o2_2@@238 f_14@@268))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@63 ExhaleHeap@@50 Mask@@114) (IsWandField_25026_64303 pm_f_2@@18))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_15214) (ExhaleHeap@@51 T@PolymorphicMapType_15214) (Mask@@115 T@PolymorphicMapType_15235) (pm_f_2@@19 T@Field_24558_24559) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@51 Mask@@115) (=> (and (HasDirectPerm_24558_22377 Mask@@115 null pm_f_2@@19) (IsWandField_24558_63946 pm_f_2@@19)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_2@@239 T@Ref) (f_14@@269 T@Field_21300_3093) ) (!  (=> (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@239 f_14@@269) (= (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@64) o2_2@@239 f_14@@269) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@239 f_14@@269)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@239 f_14@@269))
)) (forall ((o2_2@@240 T@Ref) (f_14@@270 T@Field_15287_15288) ) (!  (=> (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@240 f_14@@270) (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@64) o2_2@@240 f_14@@270) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@240 f_14@@270)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@240 f_14@@270))
))) (forall ((o2_2@@241 T@Ref) (f_14@@271 T@Field_15274_53) ) (!  (=> (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@241 f_14@@271) (= (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@64) o2_2@@241 f_14@@271) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@241 f_14@@271)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@241 f_14@@271))
))) (forall ((o2_2@@242 T@Ref) (f_14@@272 T@Field_9317_22377) ) (!  (=> (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@242 f_14@@272) (= (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@64) o2_2@@242 f_14@@272) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@242 f_14@@272)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@242 f_14@@272))
))) (forall ((o2_2@@243 T@Ref) (f_14@@273 T@Field_9317_30716) ) (!  (=> (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@243 f_14@@273) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@64) o2_2@@243 f_14@@273) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@243 f_14@@273)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@243 f_14@@273))
))) (forall ((o2_2@@244 T@Ref) (f_14@@274 T@Field_22376_3093) ) (!  (=> (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@244 f_14@@274) (= (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@64) o2_2@@244 f_14@@274) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@244 f_14@@274)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@244 f_14@@274))
))) (forall ((o2_2@@245 T@Ref) (f_14@@275 T@Field_22376_9320) ) (!  (=> (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@245 f_14@@275) (= (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@64) o2_2@@245 f_14@@275) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@245 f_14@@275)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@245 f_14@@275))
))) (forall ((o2_2@@246 T@Ref) (f_14@@276 T@Field_22376_53) ) (!  (=> (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@246 f_14@@276) (= (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@64) o2_2@@246 f_14@@276) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@246 f_14@@276)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@246 f_14@@276))
))) (forall ((o2_2@@247 T@Ref) (f_14@@277 T@Field_22376_22377) ) (!  (=> (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@247 f_14@@277) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@64) o2_2@@247 f_14@@277) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@247 f_14@@277)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@247 f_14@@277))
))) (forall ((o2_2@@248 T@Ref) (f_14@@278 T@Field_38414_38419) ) (!  (=> (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@248 f_14@@278) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@64) o2_2@@248 f_14@@278) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@248 f_14@@278)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@248 f_14@@278))
))) (forall ((o2_2@@249 T@Ref) (f_14@@279 T@Field_24505_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@249 f_14@@279) (= (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@64) o2_2@@249 f_14@@279) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@249 f_14@@279)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@249 f_14@@279))
))) (forall ((o2_2@@250 T@Ref) (f_14@@280 T@Field_24505_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@250 f_14@@280) (= (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@64) o2_2@@250 f_14@@280) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@250 f_14@@280)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@250 f_14@@280))
))) (forall ((o2_2@@251 T@Ref) (f_14@@281 T@Field_24505_53) ) (!  (=> (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@251 f_14@@281) (= (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@64) o2_2@@251 f_14@@281) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@251 f_14@@281)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@251 f_14@@281))
))) (forall ((o2_2@@252 T@Ref) (f_14@@282 T@Field_24505_24506) ) (!  (=> (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@252 f_14@@282) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@64) o2_2@@252 f_14@@282) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@252 f_14@@282)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@252 f_14@@282))
))) (forall ((o2_2@@253 T@Ref) (f_14@@283 T@Field_30711_30716) ) (!  (=> (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@253 f_14@@283) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@64) o2_2@@253 f_14@@283) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@253 f_14@@283)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@253 f_14@@283))
))) (forall ((o2_2@@254 T@Ref) (f_14@@284 T@Field_24558_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@254 f_14@@284) (= (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@64) o2_2@@254 f_14@@284) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@254 f_14@@284)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@254 f_14@@284))
))) (forall ((o2_2@@255 T@Ref) (f_14@@285 T@Field_24558_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@255 f_14@@285) (= (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@64) o2_2@@255 f_14@@285) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@255 f_14@@285)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@255 f_14@@285))
))) (forall ((o2_2@@256 T@Ref) (f_14@@286 T@Field_24558_53) ) (!  (=> (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@256 f_14@@286) (= (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@64) o2_2@@256 f_14@@286) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@256 f_14@@286)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@256 f_14@@286))
))) (forall ((o2_2@@257 T@Ref) (f_14@@287 T@Field_24558_24559) ) (!  (=> (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@257 f_14@@287) (= (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@64) o2_2@@257 f_14@@287) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@257 f_14@@287)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@257 f_14@@287))
))) (forall ((o2_2@@258 T@Ref) (f_14@@288 T@Field_39736_39741) ) (!  (=> (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@258 f_14@@288) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) o2_2@@258 f_14@@288) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@258 f_14@@288)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@258 f_14@@288))
))) (forall ((o2_2@@259 T@Ref) (f_14@@289 T@Field_25026_3093) ) (!  (=> (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@259 f_14@@289) (= (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@64) o2_2@@259 f_14@@289) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@259 f_14@@289)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@259 f_14@@289))
))) (forall ((o2_2@@260 T@Ref) (f_14@@290 T@Field_25026_9320) ) (!  (=> (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@260 f_14@@290) (= (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@64) o2_2@@260 f_14@@290) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@260 f_14@@290)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@260 f_14@@290))
))) (forall ((o2_2@@261 T@Ref) (f_14@@291 T@Field_25026_53) ) (!  (=> (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@261 f_14@@291) (= (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@64) o2_2@@261 f_14@@291) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@261 f_14@@291)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@261 f_14@@291))
))) (forall ((o2_2@@262 T@Ref) (f_14@@292 T@Field_25026_25027) ) (!  (=> (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@262 f_14@@292) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@64) o2_2@@262 f_14@@292) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@262 f_14@@292)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@262 f_14@@292))
))) (forall ((o2_2@@263 T@Ref) (f_14@@293 T@Field_38936_38941) ) (!  (=> (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@263 f_14@@293) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@64) o2_2@@263 f_14@@293) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@263 f_14@@293)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@263 f_14@@293))
))) (forall ((o2_2@@264 T@Ref) (f_14@@294 T@Field_27408_3093) ) (!  (=> (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@264 f_14@@294) (= (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@64) o2_2@@264 f_14@@294) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@264 f_14@@294)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@264 f_14@@294))
))) (forall ((o2_2@@265 T@Ref) (f_14@@295 T@Field_27408_9320) ) (!  (=> (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@265 f_14@@295) (= (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@64) o2_2@@265 f_14@@295) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@265 f_14@@295)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@265 f_14@@295))
))) (forall ((o2_2@@266 T@Ref) (f_14@@296 T@Field_27408_53) ) (!  (=> (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@266 f_14@@296) (= (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@64) o2_2@@266 f_14@@296) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@266 f_14@@296)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@266 f_14@@296))
))) (forall ((o2_2@@267 T@Ref) (f_14@@297 T@Field_27408_27409) ) (!  (=> (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@267 f_14@@297) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@64) o2_2@@267 f_14@@297) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@267 f_14@@297)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@267 f_14@@297))
))) (forall ((o2_2@@268 T@Ref) (f_14@@298 T@Field_35363_35368) ) (!  (=> (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@64) null (WandMaskField_24558 pm_f_2@@19))) o2_2@@268 f_14@@298) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@64) o2_2@@268 f_14@@298) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@268 f_14@@298)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@51) o2_2@@268 f_14@@298))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@51 Mask@@115) (IsWandField_24558_63946 pm_f_2@@19))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_15214) (ExhaleHeap@@52 T@PolymorphicMapType_15214) (Mask@@116 T@PolymorphicMapType_15235) (pm_f_2@@20 T@Field_24505_24506) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@52 Mask@@116) (=> (and (HasDirectPerm_24505_22377 Mask@@116 null pm_f_2@@20) (IsWandField_24505_63589 pm_f_2@@20)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_2@@269 T@Ref) (f_14@@299 T@Field_21300_3093) ) (!  (=> (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@269 f_14@@299) (= (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@65) o2_2@@269 f_14@@299) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@269 f_14@@299)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@269 f_14@@299))
)) (forall ((o2_2@@270 T@Ref) (f_14@@300 T@Field_15287_15288) ) (!  (=> (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@270 f_14@@300) (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@65) o2_2@@270 f_14@@300) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@270 f_14@@300)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@270 f_14@@300))
))) (forall ((o2_2@@271 T@Ref) (f_14@@301 T@Field_15274_53) ) (!  (=> (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@271 f_14@@301) (= (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@65) o2_2@@271 f_14@@301) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@271 f_14@@301)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@271 f_14@@301))
))) (forall ((o2_2@@272 T@Ref) (f_14@@302 T@Field_9317_22377) ) (!  (=> (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@272 f_14@@302) (= (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@65) o2_2@@272 f_14@@302) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@272 f_14@@302)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@272 f_14@@302))
))) (forall ((o2_2@@273 T@Ref) (f_14@@303 T@Field_9317_30716) ) (!  (=> (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@273 f_14@@303) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@65) o2_2@@273 f_14@@303) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@273 f_14@@303)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@273 f_14@@303))
))) (forall ((o2_2@@274 T@Ref) (f_14@@304 T@Field_22376_3093) ) (!  (=> (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@274 f_14@@304) (= (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@65) o2_2@@274 f_14@@304) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@274 f_14@@304)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@274 f_14@@304))
))) (forall ((o2_2@@275 T@Ref) (f_14@@305 T@Field_22376_9320) ) (!  (=> (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@275 f_14@@305) (= (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@65) o2_2@@275 f_14@@305) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@275 f_14@@305)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@275 f_14@@305))
))) (forall ((o2_2@@276 T@Ref) (f_14@@306 T@Field_22376_53) ) (!  (=> (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@276 f_14@@306) (= (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@65) o2_2@@276 f_14@@306) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@276 f_14@@306)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@276 f_14@@306))
))) (forall ((o2_2@@277 T@Ref) (f_14@@307 T@Field_22376_22377) ) (!  (=> (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@277 f_14@@307) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@65) o2_2@@277 f_14@@307) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@277 f_14@@307)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@277 f_14@@307))
))) (forall ((o2_2@@278 T@Ref) (f_14@@308 T@Field_38414_38419) ) (!  (=> (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@278 f_14@@308) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@65) o2_2@@278 f_14@@308) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@278 f_14@@308)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@278 f_14@@308))
))) (forall ((o2_2@@279 T@Ref) (f_14@@309 T@Field_24505_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@279 f_14@@309) (= (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@65) o2_2@@279 f_14@@309) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@279 f_14@@309)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@279 f_14@@309))
))) (forall ((o2_2@@280 T@Ref) (f_14@@310 T@Field_24505_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@280 f_14@@310) (= (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@65) o2_2@@280 f_14@@310) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@280 f_14@@310)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@280 f_14@@310))
))) (forall ((o2_2@@281 T@Ref) (f_14@@311 T@Field_24505_53) ) (!  (=> (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@281 f_14@@311) (= (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@65) o2_2@@281 f_14@@311) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@281 f_14@@311)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@281 f_14@@311))
))) (forall ((o2_2@@282 T@Ref) (f_14@@312 T@Field_24505_24506) ) (!  (=> (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@282 f_14@@312) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@65) o2_2@@282 f_14@@312) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@282 f_14@@312)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@282 f_14@@312))
))) (forall ((o2_2@@283 T@Ref) (f_14@@313 T@Field_30711_30716) ) (!  (=> (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@283 f_14@@313) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) o2_2@@283 f_14@@313) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@283 f_14@@313)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@283 f_14@@313))
))) (forall ((o2_2@@284 T@Ref) (f_14@@314 T@Field_24558_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@284 f_14@@314) (= (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@65) o2_2@@284 f_14@@314) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@284 f_14@@314)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@284 f_14@@314))
))) (forall ((o2_2@@285 T@Ref) (f_14@@315 T@Field_24558_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@285 f_14@@315) (= (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@65) o2_2@@285 f_14@@315) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@285 f_14@@315)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@285 f_14@@315))
))) (forall ((o2_2@@286 T@Ref) (f_14@@316 T@Field_24558_53) ) (!  (=> (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@286 f_14@@316) (= (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@65) o2_2@@286 f_14@@316) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@286 f_14@@316)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@286 f_14@@316))
))) (forall ((o2_2@@287 T@Ref) (f_14@@317 T@Field_24558_24559) ) (!  (=> (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@287 f_14@@317) (= (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@65) o2_2@@287 f_14@@317) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@287 f_14@@317)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@287 f_14@@317))
))) (forall ((o2_2@@288 T@Ref) (f_14@@318 T@Field_39736_39741) ) (!  (=> (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@288 f_14@@318) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@65) o2_2@@288 f_14@@318) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@288 f_14@@318)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@288 f_14@@318))
))) (forall ((o2_2@@289 T@Ref) (f_14@@319 T@Field_25026_3093) ) (!  (=> (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@289 f_14@@319) (= (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@65) o2_2@@289 f_14@@319) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@289 f_14@@319)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@289 f_14@@319))
))) (forall ((o2_2@@290 T@Ref) (f_14@@320 T@Field_25026_9320) ) (!  (=> (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@290 f_14@@320) (= (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@65) o2_2@@290 f_14@@320) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@290 f_14@@320)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@290 f_14@@320))
))) (forall ((o2_2@@291 T@Ref) (f_14@@321 T@Field_25026_53) ) (!  (=> (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@291 f_14@@321) (= (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@65) o2_2@@291 f_14@@321) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@291 f_14@@321)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@291 f_14@@321))
))) (forall ((o2_2@@292 T@Ref) (f_14@@322 T@Field_25026_25027) ) (!  (=> (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@292 f_14@@322) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@65) o2_2@@292 f_14@@322) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@292 f_14@@322)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@292 f_14@@322))
))) (forall ((o2_2@@293 T@Ref) (f_14@@323 T@Field_38936_38941) ) (!  (=> (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@293 f_14@@323) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@65) o2_2@@293 f_14@@323) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@293 f_14@@323)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@293 f_14@@323))
))) (forall ((o2_2@@294 T@Ref) (f_14@@324 T@Field_27408_3093) ) (!  (=> (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@294 f_14@@324) (= (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@65) o2_2@@294 f_14@@324) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@294 f_14@@324)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@294 f_14@@324))
))) (forall ((o2_2@@295 T@Ref) (f_14@@325 T@Field_27408_9320) ) (!  (=> (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@295 f_14@@325) (= (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@65) o2_2@@295 f_14@@325) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@295 f_14@@325)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@295 f_14@@325))
))) (forall ((o2_2@@296 T@Ref) (f_14@@326 T@Field_27408_53) ) (!  (=> (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@296 f_14@@326) (= (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@65) o2_2@@296 f_14@@326) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@296 f_14@@326)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@296 f_14@@326))
))) (forall ((o2_2@@297 T@Ref) (f_14@@327 T@Field_27408_27409) ) (!  (=> (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@297 f_14@@327) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@65) o2_2@@297 f_14@@327) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@297 f_14@@327)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@297 f_14@@327))
))) (forall ((o2_2@@298 T@Ref) (f_14@@328 T@Field_35363_35368) ) (!  (=> (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@65) null (WandMaskField_24505 pm_f_2@@20))) o2_2@@298 f_14@@328) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@65) o2_2@@298 f_14@@328) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@298 f_14@@328)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@52) o2_2@@298 f_14@@328))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@52 Mask@@116) (IsWandField_24505_63589 pm_f_2@@20))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_15214) (ExhaleHeap@@53 T@PolymorphicMapType_15214) (Mask@@117 T@PolymorphicMapType_15235) (pm_f_2@@21 T@Field_22376_22377) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@53 Mask@@117) (=> (and (HasDirectPerm_22376_22377 Mask@@117 null pm_f_2@@21) (IsWandField_22376_63232 pm_f_2@@21)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_2@@299 T@Ref) (f_14@@329 T@Field_21300_3093) ) (!  (=> (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@299 f_14@@329) (= (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@66) o2_2@@299 f_14@@329) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@299 f_14@@329)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@299 f_14@@329))
)) (forall ((o2_2@@300 T@Ref) (f_14@@330 T@Field_15287_15288) ) (!  (=> (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@300 f_14@@330) (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@66) o2_2@@300 f_14@@330) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@300 f_14@@330)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@300 f_14@@330))
))) (forall ((o2_2@@301 T@Ref) (f_14@@331 T@Field_15274_53) ) (!  (=> (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@301 f_14@@331) (= (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@66) o2_2@@301 f_14@@331) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@301 f_14@@331)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@301 f_14@@331))
))) (forall ((o2_2@@302 T@Ref) (f_14@@332 T@Field_9317_22377) ) (!  (=> (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@302 f_14@@332) (= (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@66) o2_2@@302 f_14@@332) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@302 f_14@@332)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@302 f_14@@332))
))) (forall ((o2_2@@303 T@Ref) (f_14@@333 T@Field_9317_30716) ) (!  (=> (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@303 f_14@@333) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@66) o2_2@@303 f_14@@333) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@303 f_14@@333)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@303 f_14@@333))
))) (forall ((o2_2@@304 T@Ref) (f_14@@334 T@Field_22376_3093) ) (!  (=> (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@304 f_14@@334) (= (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@66) o2_2@@304 f_14@@334) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@304 f_14@@334)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@304 f_14@@334))
))) (forall ((o2_2@@305 T@Ref) (f_14@@335 T@Field_22376_9320) ) (!  (=> (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@305 f_14@@335) (= (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@66) o2_2@@305 f_14@@335) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@305 f_14@@335)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@305 f_14@@335))
))) (forall ((o2_2@@306 T@Ref) (f_14@@336 T@Field_22376_53) ) (!  (=> (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@306 f_14@@336) (= (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@66) o2_2@@306 f_14@@336) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@306 f_14@@336)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@306 f_14@@336))
))) (forall ((o2_2@@307 T@Ref) (f_14@@337 T@Field_22376_22377) ) (!  (=> (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@307 f_14@@337) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@66) o2_2@@307 f_14@@337) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@307 f_14@@337)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@307 f_14@@337))
))) (forall ((o2_2@@308 T@Ref) (f_14@@338 T@Field_38414_38419) ) (!  (=> (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@308 f_14@@338) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) o2_2@@308 f_14@@338) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@308 f_14@@338)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@308 f_14@@338))
))) (forall ((o2_2@@309 T@Ref) (f_14@@339 T@Field_24505_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@309 f_14@@339) (= (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@66) o2_2@@309 f_14@@339) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@309 f_14@@339)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@309 f_14@@339))
))) (forall ((o2_2@@310 T@Ref) (f_14@@340 T@Field_24505_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@310 f_14@@340) (= (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@66) o2_2@@310 f_14@@340) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@310 f_14@@340)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@310 f_14@@340))
))) (forall ((o2_2@@311 T@Ref) (f_14@@341 T@Field_24505_53) ) (!  (=> (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@311 f_14@@341) (= (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@66) o2_2@@311 f_14@@341) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@311 f_14@@341)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@311 f_14@@341))
))) (forall ((o2_2@@312 T@Ref) (f_14@@342 T@Field_24505_24506) ) (!  (=> (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@312 f_14@@342) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@66) o2_2@@312 f_14@@342) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@312 f_14@@342)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@312 f_14@@342))
))) (forall ((o2_2@@313 T@Ref) (f_14@@343 T@Field_30711_30716) ) (!  (=> (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@313 f_14@@343) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@66) o2_2@@313 f_14@@343) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@313 f_14@@343)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@313 f_14@@343))
))) (forall ((o2_2@@314 T@Ref) (f_14@@344 T@Field_24558_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@314 f_14@@344) (= (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@66) o2_2@@314 f_14@@344) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@314 f_14@@344)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@314 f_14@@344))
))) (forall ((o2_2@@315 T@Ref) (f_14@@345 T@Field_24558_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@315 f_14@@345) (= (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@66) o2_2@@315 f_14@@345) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@315 f_14@@345)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@315 f_14@@345))
))) (forall ((o2_2@@316 T@Ref) (f_14@@346 T@Field_24558_53) ) (!  (=> (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@316 f_14@@346) (= (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@66) o2_2@@316 f_14@@346) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@316 f_14@@346)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@316 f_14@@346))
))) (forall ((o2_2@@317 T@Ref) (f_14@@347 T@Field_24558_24559) ) (!  (=> (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@317 f_14@@347) (= (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@66) o2_2@@317 f_14@@347) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@317 f_14@@347)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@317 f_14@@347))
))) (forall ((o2_2@@318 T@Ref) (f_14@@348 T@Field_39736_39741) ) (!  (=> (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@318 f_14@@348) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@66) o2_2@@318 f_14@@348) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@318 f_14@@348)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@318 f_14@@348))
))) (forall ((o2_2@@319 T@Ref) (f_14@@349 T@Field_25026_3093) ) (!  (=> (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@319 f_14@@349) (= (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@66) o2_2@@319 f_14@@349) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@319 f_14@@349)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@319 f_14@@349))
))) (forall ((o2_2@@320 T@Ref) (f_14@@350 T@Field_25026_9320) ) (!  (=> (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@320 f_14@@350) (= (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@66) o2_2@@320 f_14@@350) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@320 f_14@@350)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@320 f_14@@350))
))) (forall ((o2_2@@321 T@Ref) (f_14@@351 T@Field_25026_53) ) (!  (=> (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@321 f_14@@351) (= (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@66) o2_2@@321 f_14@@351) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@321 f_14@@351)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@321 f_14@@351))
))) (forall ((o2_2@@322 T@Ref) (f_14@@352 T@Field_25026_25027) ) (!  (=> (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@322 f_14@@352) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@66) o2_2@@322 f_14@@352) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@322 f_14@@352)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@322 f_14@@352))
))) (forall ((o2_2@@323 T@Ref) (f_14@@353 T@Field_38936_38941) ) (!  (=> (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@323 f_14@@353) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@66) o2_2@@323 f_14@@353) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@323 f_14@@353)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@323 f_14@@353))
))) (forall ((o2_2@@324 T@Ref) (f_14@@354 T@Field_27408_3093) ) (!  (=> (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@324 f_14@@354) (= (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@66) o2_2@@324 f_14@@354) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@324 f_14@@354)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@324 f_14@@354))
))) (forall ((o2_2@@325 T@Ref) (f_14@@355 T@Field_27408_9320) ) (!  (=> (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@325 f_14@@355) (= (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@66) o2_2@@325 f_14@@355) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@325 f_14@@355)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@325 f_14@@355))
))) (forall ((o2_2@@326 T@Ref) (f_14@@356 T@Field_27408_53) ) (!  (=> (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@326 f_14@@356) (= (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@66) o2_2@@326 f_14@@356) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@326 f_14@@356)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@326 f_14@@356))
))) (forall ((o2_2@@327 T@Ref) (f_14@@357 T@Field_27408_27409) ) (!  (=> (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@327 f_14@@357) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@66) o2_2@@327 f_14@@357) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@327 f_14@@357)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@327 f_14@@357))
))) (forall ((o2_2@@328 T@Ref) (f_14@@358 T@Field_35363_35368) ) (!  (=> (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@66) null (WandMaskField_22376 pm_f_2@@21))) o2_2@@328 f_14@@358) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@66) o2_2@@328 f_14@@358) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@328 f_14@@358)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@53) o2_2@@328 f_14@@358))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@53 Mask@@117) (IsWandField_22376_63232 pm_f_2@@21))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_15214) (ExhaleHeap@@54 T@PolymorphicMapType_15214) (Mask@@118 T@PolymorphicMapType_15235) (pm_f_2@@22 T@Field_9317_22377) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@54 Mask@@118) (=> (and (HasDirectPerm_9317_22377 Mask@@118 null pm_f_2@@22) (IsWandField_9317_62875 pm_f_2@@22)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_2@@329 T@Ref) (f_14@@359 T@Field_21300_3093) ) (!  (=> (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@329 f_14@@359) (= (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@67) o2_2@@329 f_14@@359) (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@329 f_14@@359)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@329 f_14@@359))
)) (forall ((o2_2@@330 T@Ref) (f_14@@360 T@Field_15287_15288) ) (!  (=> (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@330 f_14@@360) (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@67) o2_2@@330 f_14@@360) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@330 f_14@@360)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@330 f_14@@360))
))) (forall ((o2_2@@331 T@Ref) (f_14@@361 T@Field_15274_53) ) (!  (=> (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@331 f_14@@361) (= (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@67) o2_2@@331 f_14@@361) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@331 f_14@@361)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@331 f_14@@361))
))) (forall ((o2_2@@332 T@Ref) (f_14@@362 T@Field_9317_22377) ) (!  (=> (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@332 f_14@@362) (= (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@67) o2_2@@332 f_14@@362) (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@332 f_14@@362)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@332 f_14@@362))
))) (forall ((o2_2@@333 T@Ref) (f_14@@363 T@Field_9317_30716) ) (!  (=> (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@333 f_14@@363) (= (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) o2_2@@333 f_14@@363) (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@333 f_14@@363)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@333 f_14@@363))
))) (forall ((o2_2@@334 T@Ref) (f_14@@364 T@Field_22376_3093) ) (!  (=> (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@334 f_14@@364) (= (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@67) o2_2@@334 f_14@@364) (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@334 f_14@@364)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@334 f_14@@364))
))) (forall ((o2_2@@335 T@Ref) (f_14@@365 T@Field_22376_9320) ) (!  (=> (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@335 f_14@@365) (= (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@67) o2_2@@335 f_14@@365) (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@335 f_14@@365)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@335 f_14@@365))
))) (forall ((o2_2@@336 T@Ref) (f_14@@366 T@Field_22376_53) ) (!  (=> (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@336 f_14@@366) (= (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@67) o2_2@@336 f_14@@366) (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@336 f_14@@366)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@336 f_14@@366))
))) (forall ((o2_2@@337 T@Ref) (f_14@@367 T@Field_22376_22377) ) (!  (=> (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@337 f_14@@367) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@67) o2_2@@337 f_14@@367) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@337 f_14@@367)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@337 f_14@@367))
))) (forall ((o2_2@@338 T@Ref) (f_14@@368 T@Field_38414_38419) ) (!  (=> (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@338 f_14@@368) (= (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@67) o2_2@@338 f_14@@368) (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@338 f_14@@368)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@338 f_14@@368))
))) (forall ((o2_2@@339 T@Ref) (f_14@@369 T@Field_24505_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@339 f_14@@369) (= (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@67) o2_2@@339 f_14@@369) (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@339 f_14@@369)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@339 f_14@@369))
))) (forall ((o2_2@@340 T@Ref) (f_14@@370 T@Field_24505_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@340 f_14@@370) (= (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@67) o2_2@@340 f_14@@370) (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@340 f_14@@370)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@340 f_14@@370))
))) (forall ((o2_2@@341 T@Ref) (f_14@@371 T@Field_24505_53) ) (!  (=> (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@341 f_14@@371) (= (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@67) o2_2@@341 f_14@@371) (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@341 f_14@@371)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@341 f_14@@371))
))) (forall ((o2_2@@342 T@Ref) (f_14@@372 T@Field_24505_24506) ) (!  (=> (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@342 f_14@@372) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@67) o2_2@@342 f_14@@372) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@342 f_14@@372)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@342 f_14@@372))
))) (forall ((o2_2@@343 T@Ref) (f_14@@373 T@Field_30711_30716) ) (!  (=> (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@343 f_14@@373) (= (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@67) o2_2@@343 f_14@@373) (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@343 f_14@@373)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@343 f_14@@373))
))) (forall ((o2_2@@344 T@Ref) (f_14@@374 T@Field_24558_3093) ) (!  (=> (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@344 f_14@@374) (= (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@67) o2_2@@344 f_14@@374) (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@344 f_14@@374)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@344 f_14@@374))
))) (forall ((o2_2@@345 T@Ref) (f_14@@375 T@Field_24558_9320) ) (!  (=> (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@345 f_14@@375) (= (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@67) o2_2@@345 f_14@@375) (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@345 f_14@@375)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@345 f_14@@375))
))) (forall ((o2_2@@346 T@Ref) (f_14@@376 T@Field_24558_53) ) (!  (=> (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@346 f_14@@376) (= (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@67) o2_2@@346 f_14@@376) (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@346 f_14@@376)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@346 f_14@@376))
))) (forall ((o2_2@@347 T@Ref) (f_14@@377 T@Field_24558_24559) ) (!  (=> (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@347 f_14@@377) (= (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@67) o2_2@@347 f_14@@377) (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@347 f_14@@377)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@347 f_14@@377))
))) (forall ((o2_2@@348 T@Ref) (f_14@@378 T@Field_39736_39741) ) (!  (=> (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@348 f_14@@378) (= (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@67) o2_2@@348 f_14@@378) (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@348 f_14@@378)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@348 f_14@@378))
))) (forall ((o2_2@@349 T@Ref) (f_14@@379 T@Field_25026_3093) ) (!  (=> (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@349 f_14@@379) (= (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@67) o2_2@@349 f_14@@379) (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@349 f_14@@379)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@349 f_14@@379))
))) (forall ((o2_2@@350 T@Ref) (f_14@@380 T@Field_25026_9320) ) (!  (=> (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@350 f_14@@380) (= (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@67) o2_2@@350 f_14@@380) (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@350 f_14@@380)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@350 f_14@@380))
))) (forall ((o2_2@@351 T@Ref) (f_14@@381 T@Field_25026_53) ) (!  (=> (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@351 f_14@@381) (= (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@67) o2_2@@351 f_14@@381) (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@351 f_14@@381)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@351 f_14@@381))
))) (forall ((o2_2@@352 T@Ref) (f_14@@382 T@Field_25026_25027) ) (!  (=> (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@352 f_14@@382) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@67) o2_2@@352 f_14@@382) (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@352 f_14@@382)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@352 f_14@@382))
))) (forall ((o2_2@@353 T@Ref) (f_14@@383 T@Field_38936_38941) ) (!  (=> (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@353 f_14@@383) (= (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@67) o2_2@@353 f_14@@383) (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@353 f_14@@383)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@353 f_14@@383))
))) (forall ((o2_2@@354 T@Ref) (f_14@@384 T@Field_27408_3093) ) (!  (=> (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@354 f_14@@384) (= (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@67) o2_2@@354 f_14@@384) (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@354 f_14@@384)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@354 f_14@@384))
))) (forall ((o2_2@@355 T@Ref) (f_14@@385 T@Field_27408_9320) ) (!  (=> (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@355 f_14@@385) (= (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@67) o2_2@@355 f_14@@385) (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@355 f_14@@385)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@355 f_14@@385))
))) (forall ((o2_2@@356 T@Ref) (f_14@@386 T@Field_27408_53) ) (!  (=> (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@356 f_14@@386) (= (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@67) o2_2@@356 f_14@@386) (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@356 f_14@@386)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@356 f_14@@386))
))) (forall ((o2_2@@357 T@Ref) (f_14@@387 T@Field_27408_27409) ) (!  (=> (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@357 f_14@@387) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@67) o2_2@@357 f_14@@387) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@357 f_14@@387)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@357 f_14@@387))
))) (forall ((o2_2@@358 T@Ref) (f_14@@388 T@Field_35363_35368) ) (!  (=> (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@67) null (WandMaskField_9317 pm_f_2@@22))) o2_2@@358 f_14@@388) (= (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@67) o2_2@@358 f_14@@388) (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@358 f_14@@388)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| ExhaleHeap@@54) o2_2@@358 f_14@@388))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@54 Mask@@118) (IsWandField_9317_62875 pm_f_2@@22))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15235) (SummandMask1 T@PolymorphicMapType_15235) (SummandMask2 T@PolymorphicMapType_15235) (o_2@@119 T@Ref) (f_4@@119 T@Field_35363_35368) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| ResultMask) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| SummandMask1) o_2@@119 f_4@@119) (select (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| SummandMask2) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| ResultMask) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| SummandMask1) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| SummandMask2) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15235) (SummandMask1@@0 T@PolymorphicMapType_15235) (SummandMask2@@0 T@PolymorphicMapType_15235) (o_2@@120 T@Ref) (f_4@@120 T@Field_27408_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| ResultMask@@0) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| SummandMask1@@0) o_2@@120 f_4@@120) (select (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| SummandMask2@@0) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| ResultMask@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| SummandMask1@@0) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| SummandMask2@@0) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15235) (SummandMask1@@1 T@PolymorphicMapType_15235) (SummandMask2@@1 T@PolymorphicMapType_15235) (o_2@@121 T@Ref) (f_4@@121 T@Field_27408_9320) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| ResultMask@@1) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| SummandMask1@@1) o_2@@121 f_4@@121) (select (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| SummandMask2@@1) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| ResultMask@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| SummandMask1@@1) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| SummandMask2@@1) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15235) (SummandMask1@@2 T@PolymorphicMapType_15235) (SummandMask2@@2 T@PolymorphicMapType_15235) (o_2@@122 T@Ref) (f_4@@122 T@Field_27408_3093) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| ResultMask@@2) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| SummandMask1@@2) o_2@@122 f_4@@122) (select (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| SummandMask2@@2) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| ResultMask@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| SummandMask1@@2) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| SummandMask2@@2) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15235) (SummandMask1@@3 T@PolymorphicMapType_15235) (SummandMask2@@3 T@PolymorphicMapType_15235) (o_2@@123 T@Ref) (f_4@@123 T@Field_27408_27409) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| ResultMask@@3) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| SummandMask1@@3) o_2@@123 f_4@@123) (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| SummandMask2@@3) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| ResultMask@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| SummandMask1@@3) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| SummandMask2@@3) o_2@@123 f_4@@123))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15235) (SummandMask1@@4 T@PolymorphicMapType_15235) (SummandMask2@@4 T@PolymorphicMapType_15235) (o_2@@124 T@Ref) (f_4@@124 T@Field_39736_39741) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| ResultMask@@4) o_2@@124 f_4@@124) (+ (select (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| SummandMask1@@4) o_2@@124 f_4@@124) (select (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| SummandMask2@@4) o_2@@124 f_4@@124))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| ResultMask@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| SummandMask1@@4) o_2@@124 f_4@@124))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| SummandMask2@@4) o_2@@124 f_4@@124))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_15235) (SummandMask1@@5 T@PolymorphicMapType_15235) (SummandMask2@@5 T@PolymorphicMapType_15235) (o_2@@125 T@Ref) (f_4@@125 T@Field_24558_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| ResultMask@@5) o_2@@125 f_4@@125) (+ (select (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| SummandMask1@@5) o_2@@125 f_4@@125) (select (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| SummandMask2@@5) o_2@@125 f_4@@125))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| ResultMask@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| SummandMask1@@5) o_2@@125 f_4@@125))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| SummandMask2@@5) o_2@@125 f_4@@125))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_15235) (SummandMask1@@6 T@PolymorphicMapType_15235) (SummandMask2@@6 T@PolymorphicMapType_15235) (o_2@@126 T@Ref) (f_4@@126 T@Field_24558_9320) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| ResultMask@@6) o_2@@126 f_4@@126) (+ (select (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| SummandMask1@@6) o_2@@126 f_4@@126) (select (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| SummandMask2@@6) o_2@@126 f_4@@126))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| ResultMask@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| SummandMask1@@6) o_2@@126 f_4@@126))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| SummandMask2@@6) o_2@@126 f_4@@126))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_15235) (SummandMask1@@7 T@PolymorphicMapType_15235) (SummandMask2@@7 T@PolymorphicMapType_15235) (o_2@@127 T@Ref) (f_4@@127 T@Field_24558_3093) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| ResultMask@@7) o_2@@127 f_4@@127) (+ (select (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| SummandMask1@@7) o_2@@127 f_4@@127) (select (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| SummandMask2@@7) o_2@@127 f_4@@127))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| ResultMask@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| SummandMask1@@7) o_2@@127 f_4@@127))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| SummandMask2@@7) o_2@@127 f_4@@127))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_15235) (SummandMask1@@8 T@PolymorphicMapType_15235) (SummandMask2@@8 T@PolymorphicMapType_15235) (o_2@@128 T@Ref) (f_4@@128 T@Field_24558_24559) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| ResultMask@@8) o_2@@128 f_4@@128) (+ (select (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| SummandMask1@@8) o_2@@128 f_4@@128) (select (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| SummandMask2@@8) o_2@@128 f_4@@128))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| ResultMask@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| SummandMask1@@8) o_2@@128 f_4@@128))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| SummandMask2@@8) o_2@@128 f_4@@128))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_15235) (SummandMask1@@9 T@PolymorphicMapType_15235) (SummandMask2@@9 T@PolymorphicMapType_15235) (o_2@@129 T@Ref) (f_4@@129 T@Field_38936_38941) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| ResultMask@@9) o_2@@129 f_4@@129) (+ (select (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| SummandMask1@@9) o_2@@129 f_4@@129) (select (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| SummandMask2@@9) o_2@@129 f_4@@129))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| ResultMask@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| SummandMask1@@9) o_2@@129 f_4@@129))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| SummandMask2@@9) o_2@@129 f_4@@129))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_15235) (SummandMask1@@10 T@PolymorphicMapType_15235) (SummandMask2@@10 T@PolymorphicMapType_15235) (o_2@@130 T@Ref) (f_4@@130 T@Field_25026_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| ResultMask@@10) o_2@@130 f_4@@130) (+ (select (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| SummandMask1@@10) o_2@@130 f_4@@130) (select (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| SummandMask2@@10) o_2@@130 f_4@@130))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| ResultMask@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| SummandMask1@@10) o_2@@130 f_4@@130))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| SummandMask2@@10) o_2@@130 f_4@@130))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_15235) (SummandMask1@@11 T@PolymorphicMapType_15235) (SummandMask2@@11 T@PolymorphicMapType_15235) (o_2@@131 T@Ref) (f_4@@131 T@Field_25026_9320) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| ResultMask@@11) o_2@@131 f_4@@131) (+ (select (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| SummandMask1@@11) o_2@@131 f_4@@131) (select (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| SummandMask2@@11) o_2@@131 f_4@@131))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| ResultMask@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| SummandMask1@@11) o_2@@131 f_4@@131))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| SummandMask2@@11) o_2@@131 f_4@@131))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_15235) (SummandMask1@@12 T@PolymorphicMapType_15235) (SummandMask2@@12 T@PolymorphicMapType_15235) (o_2@@132 T@Ref) (f_4@@132 T@Field_25026_3093) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| ResultMask@@12) o_2@@132 f_4@@132) (+ (select (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| SummandMask1@@12) o_2@@132 f_4@@132) (select (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| SummandMask2@@12) o_2@@132 f_4@@132))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| ResultMask@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| SummandMask1@@12) o_2@@132 f_4@@132))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| SummandMask2@@12) o_2@@132 f_4@@132))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_15235) (SummandMask1@@13 T@PolymorphicMapType_15235) (SummandMask2@@13 T@PolymorphicMapType_15235) (o_2@@133 T@Ref) (f_4@@133 T@Field_25026_25027) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| ResultMask@@13) o_2@@133 f_4@@133) (+ (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| SummandMask1@@13) o_2@@133 f_4@@133) (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| SummandMask2@@13) o_2@@133 f_4@@133))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| ResultMask@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| SummandMask1@@13) o_2@@133 f_4@@133))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| SummandMask2@@13) o_2@@133 f_4@@133))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_15235) (SummandMask1@@14 T@PolymorphicMapType_15235) (SummandMask2@@14 T@PolymorphicMapType_15235) (o_2@@134 T@Ref) (f_4@@134 T@Field_9317_30716) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| ResultMask@@14) o_2@@134 f_4@@134) (+ (select (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| SummandMask1@@14) o_2@@134 f_4@@134) (select (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| SummandMask2@@14) o_2@@134 f_4@@134))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| ResultMask@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| SummandMask1@@14) o_2@@134 f_4@@134))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| SummandMask2@@14) o_2@@134 f_4@@134))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_15235) (SummandMask1@@15 T@PolymorphicMapType_15235) (SummandMask2@@15 T@PolymorphicMapType_15235) (o_2@@135 T@Ref) (f_4@@135 T@Field_15274_53) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| ResultMask@@15) o_2@@135 f_4@@135) (+ (select (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| SummandMask1@@15) o_2@@135 f_4@@135) (select (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| SummandMask2@@15) o_2@@135 f_4@@135))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| ResultMask@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| SummandMask1@@15) o_2@@135 f_4@@135))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| SummandMask2@@15) o_2@@135 f_4@@135))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_15235) (SummandMask1@@16 T@PolymorphicMapType_15235) (SummandMask2@@16 T@PolymorphicMapType_15235) (o_2@@136 T@Ref) (f_4@@136 T@Field_15287_15288) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| ResultMask@@16) o_2@@136 f_4@@136) (+ (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| SummandMask1@@16) o_2@@136 f_4@@136) (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| SummandMask2@@16) o_2@@136 f_4@@136))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| ResultMask@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| SummandMask1@@16) o_2@@136 f_4@@136))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| SummandMask2@@16) o_2@@136 f_4@@136))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_15235) (SummandMask1@@17 T@PolymorphicMapType_15235) (SummandMask2@@17 T@PolymorphicMapType_15235) (o_2@@137 T@Ref) (f_4@@137 T@Field_21300_3093) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| ResultMask@@17) o_2@@137 f_4@@137) (+ (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| SummandMask1@@17) o_2@@137 f_4@@137) (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| SummandMask2@@17) o_2@@137 f_4@@137))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| ResultMask@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| SummandMask1@@17) o_2@@137 f_4@@137))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| SummandMask2@@17) o_2@@137 f_4@@137))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_15235) (SummandMask1@@18 T@PolymorphicMapType_15235) (SummandMask2@@18 T@PolymorphicMapType_15235) (o_2@@138 T@Ref) (f_4@@138 T@Field_9317_22377) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| ResultMask@@18) o_2@@138 f_4@@138) (+ (select (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| SummandMask1@@18) o_2@@138 f_4@@138) (select (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| SummandMask2@@18) o_2@@138 f_4@@138))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| ResultMask@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| SummandMask1@@18) o_2@@138 f_4@@138))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| SummandMask2@@18) o_2@@138 f_4@@138))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_15235) (SummandMask1@@19 T@PolymorphicMapType_15235) (SummandMask2@@19 T@PolymorphicMapType_15235) (o_2@@139 T@Ref) (f_4@@139 T@Field_30711_30716) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| ResultMask@@19) o_2@@139 f_4@@139) (+ (select (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| SummandMask1@@19) o_2@@139 f_4@@139) (select (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| SummandMask2@@19) o_2@@139 f_4@@139))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| ResultMask@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| SummandMask1@@19) o_2@@139 f_4@@139))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| SummandMask2@@19) o_2@@139 f_4@@139))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_15235) (SummandMask1@@20 T@PolymorphicMapType_15235) (SummandMask2@@20 T@PolymorphicMapType_15235) (o_2@@140 T@Ref) (f_4@@140 T@Field_24505_53) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| ResultMask@@20) o_2@@140 f_4@@140) (+ (select (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| SummandMask1@@20) o_2@@140 f_4@@140) (select (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| SummandMask2@@20) o_2@@140 f_4@@140))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| ResultMask@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| SummandMask1@@20) o_2@@140 f_4@@140))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| SummandMask2@@20) o_2@@140 f_4@@140))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_15235) (SummandMask1@@21 T@PolymorphicMapType_15235) (SummandMask2@@21 T@PolymorphicMapType_15235) (o_2@@141 T@Ref) (f_4@@141 T@Field_24505_9320) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| ResultMask@@21) o_2@@141 f_4@@141) (+ (select (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| SummandMask1@@21) o_2@@141 f_4@@141) (select (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| SummandMask2@@21) o_2@@141 f_4@@141))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| ResultMask@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| SummandMask1@@21) o_2@@141 f_4@@141))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| SummandMask2@@21) o_2@@141 f_4@@141))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_15235) (SummandMask1@@22 T@PolymorphicMapType_15235) (SummandMask2@@22 T@PolymorphicMapType_15235) (o_2@@142 T@Ref) (f_4@@142 T@Field_24505_3093) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| ResultMask@@22) o_2@@142 f_4@@142) (+ (select (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| SummandMask1@@22) o_2@@142 f_4@@142) (select (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| SummandMask2@@22) o_2@@142 f_4@@142))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| ResultMask@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| SummandMask1@@22) o_2@@142 f_4@@142))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| SummandMask2@@22) o_2@@142 f_4@@142))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_15235) (SummandMask1@@23 T@PolymorphicMapType_15235) (SummandMask2@@23 T@PolymorphicMapType_15235) (o_2@@143 T@Ref) (f_4@@143 T@Field_24505_24506) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| ResultMask@@23) o_2@@143 f_4@@143) (+ (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| SummandMask1@@23) o_2@@143 f_4@@143) (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| SummandMask2@@23) o_2@@143 f_4@@143))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| ResultMask@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| SummandMask1@@23) o_2@@143 f_4@@143))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| SummandMask2@@23) o_2@@143 f_4@@143))
)))
(assert (forall ((ResultMask@@24 T@PolymorphicMapType_15235) (SummandMask1@@24 T@PolymorphicMapType_15235) (SummandMask2@@24 T@PolymorphicMapType_15235) (o_2@@144 T@Ref) (f_4@@144 T@Field_38414_38419) ) (!  (=> (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (= (select (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| ResultMask@@24) o_2@@144 f_4@@144) (+ (select (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| SummandMask1@@24) o_2@@144 f_4@@144) (select (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| SummandMask2@@24) o_2@@144 f_4@@144))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| ResultMask@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| SummandMask1@@24) o_2@@144 f_4@@144))
 :pattern ( (sumMask ResultMask@@24 SummandMask1@@24 SummandMask2@@24) (select (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| SummandMask2@@24) o_2@@144 f_4@@144))
)))
(assert (forall ((ResultMask@@25 T@PolymorphicMapType_15235) (SummandMask1@@25 T@PolymorphicMapType_15235) (SummandMask2@@25 T@PolymorphicMapType_15235) (o_2@@145 T@Ref) (f_4@@145 T@Field_22376_53) ) (!  (=> (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (= (select (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| ResultMask@@25) o_2@@145 f_4@@145) (+ (select (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| SummandMask1@@25) o_2@@145 f_4@@145) (select (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| SummandMask2@@25) o_2@@145 f_4@@145))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| ResultMask@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| SummandMask1@@25) o_2@@145 f_4@@145))
 :pattern ( (sumMask ResultMask@@25 SummandMask1@@25 SummandMask2@@25) (select (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| SummandMask2@@25) o_2@@145 f_4@@145))
)))
(assert (forall ((ResultMask@@26 T@PolymorphicMapType_15235) (SummandMask1@@26 T@PolymorphicMapType_15235) (SummandMask2@@26 T@PolymorphicMapType_15235) (o_2@@146 T@Ref) (f_4@@146 T@Field_22376_9320) ) (!  (=> (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (= (select (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| ResultMask@@26) o_2@@146 f_4@@146) (+ (select (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| SummandMask1@@26) o_2@@146 f_4@@146) (select (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| SummandMask2@@26) o_2@@146 f_4@@146))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| ResultMask@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| SummandMask1@@26) o_2@@146 f_4@@146))
 :pattern ( (sumMask ResultMask@@26 SummandMask1@@26 SummandMask2@@26) (select (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| SummandMask2@@26) o_2@@146 f_4@@146))
)))
(assert (forall ((ResultMask@@27 T@PolymorphicMapType_15235) (SummandMask1@@27 T@PolymorphicMapType_15235) (SummandMask2@@27 T@PolymorphicMapType_15235) (o_2@@147 T@Ref) (f_4@@147 T@Field_22376_3093) ) (!  (=> (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (= (select (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| ResultMask@@27) o_2@@147 f_4@@147) (+ (select (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| SummandMask1@@27) o_2@@147 f_4@@147) (select (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| SummandMask2@@27) o_2@@147 f_4@@147))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| ResultMask@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| SummandMask1@@27) o_2@@147 f_4@@147))
 :pattern ( (sumMask ResultMask@@27 SummandMask1@@27 SummandMask2@@27) (select (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| SummandMask2@@27) o_2@@147 f_4@@147))
)))
(assert (forall ((ResultMask@@28 T@PolymorphicMapType_15235) (SummandMask1@@28 T@PolymorphicMapType_15235) (SummandMask2@@28 T@PolymorphicMapType_15235) (o_2@@148 T@Ref) (f_4@@148 T@Field_22376_22377) ) (!  (=> (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (= (select (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| ResultMask@@28) o_2@@148 f_4@@148) (+ (select (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| SummandMask1@@28) o_2@@148 f_4@@148) (select (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| SummandMask2@@28) o_2@@148 f_4@@148))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| ResultMask@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| SummandMask1@@28) o_2@@148 f_4@@148))
 :pattern ( (sumMask ResultMask@@28 SummandMask1@@28 SummandMask2@@28) (select (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| SummandMask2@@28) o_2@@148 f_4@@148))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2971| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2971| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.560:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2971| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_21463) (b T@Seq_21463) ) (!  (=> (|Seq#Equal_21463| a b) (= a b))
 :qid |stdinbpl.533:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_21463| a b))
)))
(assert (forall ((a@@0 T@Seq_2971) (b@@0 T@Seq_2971) ) (!  (=> (|Seq#Equal_2971| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.533:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2971| a@@0 b@@0))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_15214) (l1_1@@1 T@Ref) (l2@@1 T@Ref) (k@@1 Int) ) (!  (and (= (listLength Heap@@68 l1_1@@1 l2@@1 k@@1) (|listLength'| Heap@@68 l1_1@@1 l2@@1 k@@1)) (dummyFunction_4443 (|listLength#triggerStateless| l1_1@@1 l2@@1 k@@1)))
 :qid |stdinbpl.853:15|
 :skolemid |82|
 :pattern ( (listLength Heap@@68 l1_1@@1 l2@@1 k@@1))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_15214) (Mask@@119 T@PolymorphicMapType_15235) (l_1@@3 T@Ref) ) (!  (=> (and (state Heap@@69 Mask@@119) (< AssumeFunctionsAbove 1)) (= (someFun Heap@@69 l_1@@3) (+ 1 (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@69) l_1@@3 elem))))
 :qid |stdinbpl.740:15|
 :skolemid |73|
 :pattern ( (state Heap@@69 Mask@@119) (someFun Heap@@69 l_1@@3))
 :pattern ( (state Heap@@69 Mask@@119) (|someFun#triggerStateless| l_1@@3) (|list#trigger_9527| Heap@@69 (list l_1@@3)) (|otherList#trigger_9505| Heap@@69 (otherList l_1@@3)))
)))
(assert (forall ((s@@17 T@Seq_21463) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length_9341| s@@17))) (|Seq#ContainsTrigger_9341| s@@17 (|Seq#Index_9341| s@@17 i@@8)))
 :qid |stdinbpl.426:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_9341| s@@17 i@@8))
)))
(assert (forall ((s@@18 T@Seq_2971) (i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length_2971| s@@18))) (|Seq#ContainsTrigger_2971| s@@18 (|Seq#Index_2971| s@@18 i@@9)))
 :qid |stdinbpl.426:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2971| s@@18 i@@9))
)))
(assert (forall ((s0@@3 T@Seq_21463) (s1@@3 T@Seq_21463) ) (!  (and (=> (= s0@@3 |Seq#Empty_9341|) (= (|Seq#Append_21463| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_9341|) (= (|Seq#Append_21463| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.244:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_21463| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2971) (s1@@4 T@Seq_2971) ) (!  (and (=> (= s0@@4 |Seq#Empty_2971|) (= (|Seq#Append_2971| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2971|) (= (|Seq#Append_2971| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.244:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2971| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_9341| (|Seq#Singleton_9341| t@@3) 0) t@@3)
 :qid |stdinbpl.248:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_9341| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2971| (|Seq#Singleton_2971| t@@4) 0) t@@4)
 :qid |stdinbpl.248:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2971| t@@4))
)))
(assert (forall ((s@@19 T@Seq_21463) ) (! (<= 0 (|Seq#Length_9341| s@@19))
 :qid |stdinbpl.227:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_9341| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2971) ) (! (<= 0 (|Seq#Length_2971| s@@20))
 :qid |stdinbpl.227:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2971| s@@20))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_15214) (s_1@@1 T@Seq_21463) ) (!  (and (= (foo_1 Heap@@70 s_1@@1) (|foo'| Heap@@70 s_1@@1)) (dummyFunction_3574 (|foo#triggerStateless| s_1@@1)))
 :qid |stdinbpl.593:15|
 :skolemid |58|
 :pattern ( (foo_1 Heap@@70 s_1@@1))
)))
(assert (forall ((this@@15 T@Ref) (i@@10 Int) ) (! (= (getPredWandId_9481_9482 (someList this@@15 i@@10)) 1)
 :qid |stdinbpl.1190:15|
 :skolemid |100|
 :pattern ( (someList this@@15 i@@10))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_15214) (Mask@@120 T@PolymorphicMapType_15235) (l1_1@@2 T@Ref) (l2@@2 T@Ref) (k@@2 Int) ) (!  (=> (and (state Heap@@71 Mask@@120) (< AssumeFunctionsAbove 2)) (= (listLength Heap@@71 l1_1@@2 l2@@2 k@@2) (+ (+ (ite (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@71) l1_1@@2 next) null) 1 (+ 1 (|listLength'| Heap@@71 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@71) l1_1@@2 next) l2@@2 k@@2))) (|listLength'| Heap@@71 l1_1@@2 l2@@2 (- k@@2 1))) (ite (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@71) l2@@2 next2) null) 1 (+ 1 (|listLength'| Heap@@71 l1_1@@2 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@71) l2@@2 next2) k@@2))))))
 :qid |stdinbpl.863:15|
 :skolemid |84|
 :pattern ( (state Heap@@71 Mask@@120) (listLength Heap@@71 l1_1@@2 l2@@2 k@@2))
 :pattern ( (state Heap@@71 Mask@@120) (|listLength#triggerStateless| l1_1@@2 l2@@2 k@@2) (|list2#trigger_9552| Heap@@71 (list2 l2@@2)) (|list#trigger_9527| Heap@@71 (list l1_1@@2)))
)))
(assert (forall ((s0@@5 T@Seq_21463) (s1@@5 T@Seq_21463) ) (!  (=> (|Seq#Equal_21463| s0@@5 s1@@5) (and (= (|Seq#Length_9341| s0@@5) (|Seq#Length_9341| s1@@5)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_9341| s0@@5))) (= (|Seq#Index_9341| s0@@5 j@@7) (|Seq#Index_9341| s1@@5 j@@7)))
 :qid |stdinbpl.523:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_9341| s0@@5 j@@7))
 :pattern ( (|Seq#Index_9341| s1@@5 j@@7))
))))
 :qid |stdinbpl.520:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_21463| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2971) (s1@@6 T@Seq_2971) ) (!  (=> (|Seq#Equal_2971| s0@@6 s1@@6) (and (= (|Seq#Length_2971| s0@@6) (|Seq#Length_2971| s1@@6)) (forall ((j@@8 Int) ) (!  (=> (and (<= 0 j@@8) (< j@@8 (|Seq#Length_2971| s0@@6))) (= (|Seq#Index_2971| s0@@6 j@@8) (|Seq#Index_2971| s1@@6 j@@8)))
 :qid |stdinbpl.523:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2971| s0@@6 j@@8))
 :pattern ( (|Seq#Index_2971| s1@@6 j@@8))
))))
 :qid |stdinbpl.520:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2971| s0@@6 s1@@6))
)))
(assert (forall ((self@@3 T@Ref) ) (! (= (getPredWandId_9459_9460 (P self@@3)) 0)
 :qid |stdinbpl.1155:15|
 :skolemid |94|
 :pattern ( (P self@@3))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_9341| (|Seq#Singleton_9341| t@@5)) 1)
 :qid |stdinbpl.235:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_9341| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2971| (|Seq#Singleton_2971| t@@6)) 1)
 :qid |stdinbpl.235:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2971| t@@6))
)))
(assert (forall ((this@@16 T@Ref) ) (! (= (getPredWandId_9505_9506 (otherList this@@16)) 2)
 :qid |stdinbpl.1240:15|
 :skolemid |106|
 :pattern ( (otherList this@@16))
)))
(assert (forall ((this@@17 T@Ref) ) (! (= (getPredWandId_9527_9528 (list this@@17)) 3)
 :qid |stdinbpl.1275:15|
 :skolemid |112|
 :pattern ( (list this@@17))
)))
(assert (forall ((this@@18 T@Ref) ) (! (= (getPredWandId_9552_9553 (list2 this@@18)) 4)
 :qid |stdinbpl.1347:15|
 :skolemid |118|
 :pattern ( (list2 this@@18))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_15214) (Heap1Heap@@0 T@PolymorphicMapType_15214) (s_1@@2 T@Seq_21463) ) (!  (=> (and (=  (and (and (<= 0 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap@@0 s_1@@2) (|foo#condqp1| Heap1Heap@@0 s_1@@2))) (< (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap@@0 s_1@@2) (|foo#condqp1| Heap1Heap@@0 s_1@@2)) (|Seq#Length_9341| s_1@@2))) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap@@0 s_1@@2) (|foo#condqp1| Heap1Heap@@0 s_1@@2))) (< (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap@@0 s_1@@2) (|foo#condqp1| Heap1Heap@@0 s_1@@2)) (|Seq#Length_9341| s_1@@2))) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap@@0 s_1@@2) (|foo#condqp1| Heap1Heap@@0 s_1@@2))) (< (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap@@0 s_1@@2) (|foo#condqp1| Heap1Heap@@0 s_1@@2)) (|Seq#Length_9341| s_1@@2))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap2Heap@@0) null (P (|Seq#Index_9341| s_1@@2 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap@@0 s_1@@2) (|foo#condqp1| Heap1Heap@@0 s_1@@2))))) (select (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap1Heap@@0) null (P (|Seq#Index_9341| s_1@@2 (|sk_foo#condqp1| (|foo#condqp1| Heap2Heap@@0 s_1@@2) (|foo#condqp1| Heap1Heap@@0 s_1@@2)))))))) (= (|foo#condqp1| Heap2Heap@@0 s_1@@2) (|foo#condqp1| Heap1Heap@@0 s_1@@2)))
 :qid |stdinbpl.623:15|
 :skolemid |63|
 :pattern ( (|foo#condqp1| Heap2Heap@@0 s_1@@2) (|foo#condqp1| Heap1Heap@@0 s_1@@2) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_15214) (Mask@@121 T@PolymorphicMapType_15235) (s_1@@3 T@Seq_21463) ) (!  (=> (state Heap@@72 Mask@@121) (= (|foo'| Heap@@72 s_1@@3) (|foo#frame| (FrameFragment_3372 (|foo#condqp1| Heap@@72 s_1@@3)) s_1@@3)))
 :qid |stdinbpl.613:15|
 :skolemid |62|
 :pattern ( (state Heap@@72 Mask@@121) (|foo'| Heap@@72 s_1@@3))
)))
(assert (forall ((this@@19 T@Ref) (i@@11 Int) ) (! (= (PredicateMaskField_9481 (someList this@@19 i@@11)) (|someList#sm| this@@19 i@@11))
 :qid |stdinbpl.1182:15|
 :skolemid |98|
 :pattern ( (PredicateMaskField_9481 (someList this@@19 i@@11)))
)))
(assert (forall ((s@@21 T@Seq_21463) (t@@7 T@Seq_21463) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_9341| s@@21))) (= (|Seq#Take_9341| (|Seq#Append_21463| s@@21 t@@7) n@@17) (|Seq#Take_9341| s@@21 n@@17)))
 :qid |stdinbpl.377:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_9341| (|Seq#Append_21463| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2971) (t@@8 T@Seq_2971) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2971| s@@22))) (= (|Seq#Take_2971| (|Seq#Append_2971| s@@22 t@@8) n@@18) (|Seq#Take_2971| s@@22 n@@18)))
 :qid |stdinbpl.377:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2971| (|Seq#Append_2971| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_21463) (i@@12 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length_9341| s@@23))) (= (|Seq#Length_9341| (|Seq#Update_9341| s@@23 i@@12 v@@2)) (|Seq#Length_9341| s@@23)))
 :qid |stdinbpl.276:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_9341| (|Seq#Update_9341| s@@23 i@@12 v@@2)))
 :pattern ( (|Seq#Length_9341| s@@23) (|Seq#Update_9341| s@@23 i@@12 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2971) (i@@13 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 (|Seq#Length_2971| s@@24))) (= (|Seq#Length_2971| (|Seq#Update_2971| s@@24 i@@13 v@@3)) (|Seq#Length_2971| s@@24)))
 :qid |stdinbpl.276:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2971| (|Seq#Update_2971| s@@24 i@@13 v@@3)))
 :pattern ( (|Seq#Length_2971| s@@24) (|Seq#Update_2971| s@@24 i@@13 v@@3))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_15214) (o_7 T@Ref) (f_15 T@Field_35363_35368) (v@@4 T@PolymorphicMapType_15763) ) (! (succHeap Heap@@73 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@73) (store (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@73) o_7 f_15 v@@4) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@73)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@73) (store (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@73) o_7 f_15 v@@4) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@73) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@73)))
)))
(assert (forall ((Heap@@74 T@PolymorphicMapType_15214) (o_7@@0 T@Ref) (f_15@@0 T@Field_27408_3093) (v@@5 Int) ) (! (succHeap Heap@@74 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@74) (store (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@74) o_7@@0 f_15@@0 v@@5) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@74)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@74) (store (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@74) o_7@@0 f_15@@0 v@@5) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@74) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@74)))
)))
(assert (forall ((Heap@@75 T@PolymorphicMapType_15214) (o_7@@1 T@Ref) (f_15@@1 T@Field_27408_27409) (v@@6 T@FrameType) ) (! (succHeap Heap@@75 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@75) (store (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@75) o_7@@1 f_15@@1 v@@6) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@75)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@75) (store (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@75) o_7@@1 f_15@@1 v@@6) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@75) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@75)))
)))
(assert (forall ((Heap@@76 T@PolymorphicMapType_15214) (o_7@@2 T@Ref) (f_15@@2 T@Field_27408_9320) (v@@7 T@Ref) ) (! (succHeap Heap@@76 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@76) (store (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@76) o_7@@2 f_15@@2 v@@7) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@76)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@76) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@76) (store (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@76) o_7@@2 f_15@@2 v@@7) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@76)))
)))
(assert (forall ((Heap@@77 T@PolymorphicMapType_15214) (o_7@@3 T@Ref) (f_15@@3 T@Field_27408_53) (v@@8 Bool) ) (! (succHeap Heap@@77 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@77) (store (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@77) o_7@@3 f_15@@3 v@@8)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@77) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@77) (store (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@77) o_7@@3 f_15@@3 v@@8)))
)))
(assert (forall ((Heap@@78 T@PolymorphicMapType_15214) (o_7@@4 T@Ref) (f_15@@4 T@Field_38936_38941) (v@@9 T@PolymorphicMapType_15763) ) (! (succHeap Heap@@78 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@78) (store (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@78) o_7@@4 f_15@@4 v@@9) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@78)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@78) (store (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@78) o_7@@4 f_15@@4 v@@9) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@78) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@78)))
)))
(assert (forall ((Heap@@79 T@PolymorphicMapType_15214) (o_7@@5 T@Ref) (f_15@@5 T@Field_25026_3093) (v@@10 Int) ) (! (succHeap Heap@@79 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@79) (store (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@79) o_7@@5 f_15@@5 v@@10) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@79)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@79) (store (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@79) o_7@@5 f_15@@5 v@@10) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@79) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@79)))
)))
(assert (forall ((Heap@@80 T@PolymorphicMapType_15214) (o_7@@6 T@Ref) (f_15@@6 T@Field_25026_25027) (v@@11 T@FrameType) ) (! (succHeap Heap@@80 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@80) (store (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@80) o_7@@6 f_15@@6 v@@11) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@80)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@80) (store (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@80) o_7@@6 f_15@@6 v@@11) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@80) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@80)))
)))
(assert (forall ((Heap@@81 T@PolymorphicMapType_15214) (o_7@@7 T@Ref) (f_15@@7 T@Field_25026_9320) (v@@12 T@Ref) ) (! (succHeap Heap@@81 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@81) (store (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@81) o_7@@7 f_15@@7 v@@12) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@81)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@81) (store (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@81) o_7@@7 f_15@@7 v@@12) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@81) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@81)))
)))
(assert (forall ((Heap@@82 T@PolymorphicMapType_15214) (o_7@@8 T@Ref) (f_15@@8 T@Field_25026_53) (v@@13 Bool) ) (! (succHeap Heap@@82 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@82) (store (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@82) o_7@@8 f_15@@8 v@@13) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@82)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@82) (store (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@82) o_7@@8 f_15@@8 v@@13) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@82) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@82)))
)))
(assert (forall ((Heap@@83 T@PolymorphicMapType_15214) (o_7@@9 T@Ref) (f_15@@9 T@Field_39736_39741) (v@@14 T@PolymorphicMapType_15763) ) (! (succHeap Heap@@83 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@83) (store (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@83) o_7@@9 f_15@@9 v@@14) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@83)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@83) (store (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@83) o_7@@9 f_15@@9 v@@14) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@83) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@83)))
)))
(assert (forall ((Heap@@84 T@PolymorphicMapType_15214) (o_7@@10 T@Ref) (f_15@@10 T@Field_24558_3093) (v@@15 Int) ) (! (succHeap Heap@@84 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@84) (store (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@84) o_7@@10 f_15@@10 v@@15) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@84)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@84) (store (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@84) o_7@@10 f_15@@10 v@@15) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@84) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@84)))
)))
(assert (forall ((Heap@@85 T@PolymorphicMapType_15214) (o_7@@11 T@Ref) (f_15@@11 T@Field_24558_24559) (v@@16 T@FrameType) ) (! (succHeap Heap@@85 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@85) (store (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@85) o_7@@11 f_15@@11 v@@16) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@85)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@85) (store (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@85) o_7@@11 f_15@@11 v@@16) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@85) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@85)))
)))
(assert (forall ((Heap@@86 T@PolymorphicMapType_15214) (o_7@@12 T@Ref) (f_15@@12 T@Field_24558_9320) (v@@17 T@Ref) ) (! (succHeap Heap@@86 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@86) (store (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@86) o_7@@12 f_15@@12 v@@17) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@86)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@86) (store (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@86) o_7@@12 f_15@@12 v@@17) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@86) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@86)))
)))
(assert (forall ((Heap@@87 T@PolymorphicMapType_15214) (o_7@@13 T@Ref) (f_15@@13 T@Field_24558_53) (v@@18 Bool) ) (! (succHeap Heap@@87 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@87) (store (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@87) o_7@@13 f_15@@13 v@@18) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@87)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@87) (store (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@87) o_7@@13 f_15@@13 v@@18) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@87) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@87)))
)))
(assert (forall ((Heap@@88 T@PolymorphicMapType_15214) (o_7@@14 T@Ref) (f_15@@14 T@Field_30711_30716) (v@@19 T@PolymorphicMapType_15763) ) (! (succHeap Heap@@88 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@88) (store (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@88) o_7@@14 f_15@@14 v@@19) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@88)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@88) (store (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@88) o_7@@14 f_15@@14 v@@19) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@88) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@88)))
)))
(assert (forall ((Heap@@89 T@PolymorphicMapType_15214) (o_7@@15 T@Ref) (f_15@@15 T@Field_24505_3093) (v@@20 Int) ) (! (succHeap Heap@@89 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@89) (store (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@89) o_7@@15 f_15@@15 v@@20) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@89)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@89) (store (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@89) o_7@@15 f_15@@15 v@@20) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@89) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@89)))
)))
(assert (forall ((Heap@@90 T@PolymorphicMapType_15214) (o_7@@16 T@Ref) (f_15@@16 T@Field_24505_24506) (v@@21 T@FrameType) ) (! (succHeap Heap@@90 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@90) (store (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@90) o_7@@16 f_15@@16 v@@21) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@90)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@90) (store (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@90) o_7@@16 f_15@@16 v@@21) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@90) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@90)))
)))
(assert (forall ((Heap@@91 T@PolymorphicMapType_15214) (o_7@@17 T@Ref) (f_15@@17 T@Field_24505_9320) (v@@22 T@Ref) ) (! (succHeap Heap@@91 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@91) (store (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@91) o_7@@17 f_15@@17 v@@22) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@91)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@91) (store (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@91) o_7@@17 f_15@@17 v@@22) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@91) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@91)))
)))
(assert (forall ((Heap@@92 T@PolymorphicMapType_15214) (o_7@@18 T@Ref) (f_15@@18 T@Field_24505_53) (v@@23 Bool) ) (! (succHeap Heap@@92 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@92) (store (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@92) o_7@@18 f_15@@18 v@@23) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@92)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@92) (store (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@92) o_7@@18 f_15@@18 v@@23) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@92) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@92)))
)))
(assert (forall ((Heap@@93 T@PolymorphicMapType_15214) (o_7@@19 T@Ref) (f_15@@19 T@Field_38414_38419) (v@@24 T@PolymorphicMapType_15763) ) (! (succHeap Heap@@93 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@93) (store (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@93) o_7@@19 f_15@@19 v@@24) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@93)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@93) (store (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@93) o_7@@19 f_15@@19 v@@24) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@93) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@93)))
)))
(assert (forall ((Heap@@94 T@PolymorphicMapType_15214) (o_7@@20 T@Ref) (f_15@@20 T@Field_22376_3093) (v@@25 Int) ) (! (succHeap Heap@@94 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@94) (store (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@94) o_7@@20 f_15@@20 v@@25) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@94)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@94) (store (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@94) o_7@@20 f_15@@20 v@@25) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@94) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@94)))
)))
(assert (forall ((Heap@@95 T@PolymorphicMapType_15214) (o_7@@21 T@Ref) (f_15@@21 T@Field_22376_22377) (v@@26 T@FrameType) ) (! (succHeap Heap@@95 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@95) (store (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@95) o_7@@21 f_15@@21 v@@26) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@95)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@95) (store (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@95) o_7@@21 f_15@@21 v@@26) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@95) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@95)))
)))
(assert (forall ((Heap@@96 T@PolymorphicMapType_15214) (o_7@@22 T@Ref) (f_15@@22 T@Field_22376_9320) (v@@27 T@Ref) ) (! (succHeap Heap@@96 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@96) (store (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@96) o_7@@22 f_15@@22 v@@27) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@96)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@96) (store (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@96) o_7@@22 f_15@@22 v@@27) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@96) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@96)))
)))
(assert (forall ((Heap@@97 T@PolymorphicMapType_15214) (o_7@@23 T@Ref) (f_15@@23 T@Field_22376_53) (v@@28 Bool) ) (! (succHeap Heap@@97 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@97) (store (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@97) o_7@@23 f_15@@23 v@@28) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@97)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@97) (store (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@97) o_7@@23 f_15@@23 v@@28) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@97) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@97)))
)))
(assert (forall ((Heap@@98 T@PolymorphicMapType_15214) (o_7@@24 T@Ref) (f_15@@24 T@Field_9317_30716) (v@@29 T@PolymorphicMapType_15763) ) (! (succHeap Heap@@98 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@98) (store (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@98) o_7@@24 f_15@@24 v@@29) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@98)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@98) (store (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@98) o_7@@24 f_15@@24 v@@29) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@98) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@98)))
)))
(assert (forall ((Heap@@99 T@PolymorphicMapType_15214) (o_7@@25 T@Ref) (f_15@@25 T@Field_21300_3093) (v@@30 Int) ) (! (succHeap Heap@@99 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@99) (store (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@99) o_7@@25 f_15@@25 v@@30) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@99)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@99) (store (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@99) o_7@@25 f_15@@25 v@@30) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@99) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@99)))
)))
(assert (forall ((Heap@@100 T@PolymorphicMapType_15214) (o_7@@26 T@Ref) (f_15@@26 T@Field_9317_22377) (v@@31 T@FrameType) ) (! (succHeap Heap@@100 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@100) (store (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@100) o_7@@26 f_15@@26 v@@31) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@100)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@100) (store (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@100) o_7@@26 f_15@@26 v@@31) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@100) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@100)))
)))
(assert (forall ((Heap@@101 T@PolymorphicMapType_15214) (o_7@@27 T@Ref) (f_15@@27 T@Field_15287_15288) (v@@32 T@Ref) ) (! (succHeap Heap@@101 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@101) (store (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@101) o_7@@27 f_15@@27 v@@32) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@101)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@101) (store (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@101) o_7@@27 f_15@@27 v@@32) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@101) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@101)))
)))
(assert (forall ((Heap@@102 T@PolymorphicMapType_15214) (o_7@@28 T@Ref) (f_15@@28 T@Field_15274_53) (v@@33 Bool) ) (! (succHeap Heap@@102 (PolymorphicMapType_15214 (store (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@102) o_7@@28 f_15@@28 v@@33) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@102)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15214 (store (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@102) o_7@@28 f_15@@28 v@@33) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@102) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@102)))
)))
(assert (forall ((self@@4 T@Ref) ) (! (= (PredicateMaskField_9459 (P self@@4)) (|P#sm| self@@4))
 :qid |stdinbpl.1147:15|
 :skolemid |92|
 :pattern ( (PredicateMaskField_9459 (P self@@4)))
)))
(assert (forall ((this@@20 T@Ref) ) (! (= (PredicateMaskField_9505 (otherList this@@20)) (|otherList#sm| this@@20))
 :qid |stdinbpl.1232:15|
 :skolemid |104|
 :pattern ( (PredicateMaskField_9505 (otherList this@@20)))
)))
(assert (forall ((this@@21 T@Ref) ) (! (= (PredicateMaskField_9527 (list this@@21)) (|list#sm| this@@21))
 :qid |stdinbpl.1267:15|
 :skolemid |110|
 :pattern ( (PredicateMaskField_9527 (list this@@21)))
)))
(assert (forall ((this@@22 T@Ref) ) (! (= (PredicateMaskField_9552 (list2 this@@22)) (|list2#sm| this@@22))
 :qid |stdinbpl.1339:15|
 :skolemid |116|
 :pattern ( (PredicateMaskField_9552 (list2 this@@22)))
)))
(assert (forall ((s@@25 T@Seq_21463) (t@@9 T@Seq_21463) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_9341| s@@25))) (= (|Seq#Drop_9341| (|Seq#Append_21463| s@@25 t@@9) n@@19) (|Seq#Append_21463| (|Seq#Drop_9341| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.391:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_9341| (|Seq#Append_21463| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2971) (t@@10 T@Seq_2971) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2971| s@@26))) (= (|Seq#Drop_2971| (|Seq#Append_2971| s@@26 t@@10) n@@20) (|Seq#Append_2971| (|Seq#Drop_2971| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.391:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2971| (|Seq#Append_2971| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_21463) (n@@21 Int) (i@@14 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@14)) (< i@@14 (|Seq#Length_9341| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@14 n@@21) n@@21) i@@14) (= (|Seq#Index_9341| (|Seq#Drop_9341| s@@27 n@@21) (|Seq#Sub| i@@14 n@@21)) (|Seq#Index_9341| s@@27 i@@14))))
 :qid |stdinbpl.327:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_9341| s@@27 n@@21) (|Seq#Index_9341| s@@27 i@@14))
)))
(assert (forall ((s@@28 T@Seq_2971) (n@@22 Int) (i@@15 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@15)) (< i@@15 (|Seq#Length_2971| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@15 n@@22) n@@22) i@@15) (= (|Seq#Index_2971| (|Seq#Drop_2971| s@@28 n@@22) (|Seq#Sub| i@@15 n@@22)) (|Seq#Index_2971| s@@28 i@@15))))
 :qid |stdinbpl.327:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2971| s@@28 n@@22) (|Seq#Index_2971| s@@28 i@@15))
)))
(assert (forall ((Heap@@103 T@PolymorphicMapType_15214) (Mask@@122 T@PolymorphicMapType_15235) (l1_1@@3 T@Ref) (l2@@3 T@Ref) (k@@3 Int) ) (!  (=> (state Heap@@103 Mask@@122) (= (|listLength'| Heap@@103 l1_1@@3 l2@@3 k@@3) (|listLength#frame| (CombineFrames (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@103) null (list l1_1@@3)) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@103) null (list2 l2@@3))) l1_1@@3 l2@@3 k@@3)))
 :qid |stdinbpl.870:15|
 :skolemid |85|
 :pattern ( (state Heap@@103 Mask@@122) (|listLength'| Heap@@103 l1_1@@3 l2@@3 k@@3))
 :pattern ( (state Heap@@103 Mask@@122) (|listLength#triggerStateless| l1_1@@3 l2@@3 k@@3) (|list2#trigger_9552| Heap@@103 (list2 l2@@3)) (|list#trigger_9527| Heap@@103 (list l1_1@@3)))
)))
(assert (forall ((s0@@7 T@Seq_21463) (s1@@7 T@Seq_21463) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_9341|)) (not (= s1@@7 |Seq#Empty_9341|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_9341| s0@@7))) (= (|Seq#Index_9341| (|Seq#Append_21463| s0@@7 s1@@7) n@@23) (|Seq#Index_9341| s0@@7 n@@23)))
 :qid |stdinbpl.267:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_9341| (|Seq#Append_21463| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_9341| s0@@7 n@@23) (|Seq#Append_21463| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2971) (s1@@8 T@Seq_2971) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2971|)) (not (= s1@@8 |Seq#Empty_2971|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2971| s0@@8))) (= (|Seq#Index_2971| (|Seq#Append_2971| s0@@8 s1@@8) n@@24) (|Seq#Index_2971| s0@@8 n@@24)))
 :qid |stdinbpl.267:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2971| (|Seq#Append_2971| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2971| s0@@8 n@@24) (|Seq#Append_2971| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_21463) (s1@@9 T@Seq_21463) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_9341|)) (not (= s1@@9 |Seq#Empty_9341|))) (<= 0 m)) (< m (|Seq#Length_9341| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_9341| s0@@9)) (|Seq#Length_9341| s0@@9)) m) (= (|Seq#Index_9341| (|Seq#Append_21463| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_9341| s0@@9))) (|Seq#Index_9341| s1@@9 m))))
 :qid |stdinbpl.272:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_9341| s1@@9 m) (|Seq#Append_21463| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2971) (s1@@10 T@Seq_2971) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2971|)) (not (= s1@@10 |Seq#Empty_2971|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2971| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2971| s0@@10)) (|Seq#Length_2971| s0@@10)) m@@0) (= (|Seq#Index_2971| (|Seq#Append_2971| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2971| s0@@10))) (|Seq#Index_2971| s1@@10 m@@0))))
 :qid |stdinbpl.272:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2971| s1@@10 m@@0) (|Seq#Append_2971| s0@@10 s1@@10))
)))
(assert (forall ((o_7@@29 T@Ref) (f_13 T@Field_15287_15288) (Heap@@104 T@PolymorphicMapType_15214) ) (!  (=> (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@104) o_7@@29 $allocated) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@104) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@104) o_7@@29 f_13) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@104) o_7@@29 f_13))
)))
(assert (forall ((s@@29 T@Seq_21463) (x@@3 T@Ref) (i@@16 Int) ) (!  (=> (and (and (<= 0 i@@16) (< i@@16 (|Seq#Length_9341| s@@29))) (= (|Seq#Index_9341| s@@29 i@@16) x@@3)) (|Seq#Contains_21463| s@@29 x@@3))
 :qid |stdinbpl.424:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_21463| s@@29 x@@3) (|Seq#Index_9341| s@@29 i@@16))
)))
(assert (forall ((s@@30 T@Seq_2971) (x@@4 Int) (i@@17 Int) ) (!  (=> (and (and (<= 0 i@@17) (< i@@17 (|Seq#Length_2971| s@@30))) (= (|Seq#Index_2971| s@@30 i@@17) x@@4)) (|Seq#Contains_2971| s@@30 x@@4))
 :qid |stdinbpl.424:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2971| s@@30 x@@4) (|Seq#Index_2971| s@@30 i@@17))
)))
(assert (forall ((s0@@11 T@Seq_21463) (s1@@11 T@Seq_21463) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_21463| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21463| s0@@11 s1@@11))) (not (= (|Seq#Length_9341| s0@@11) (|Seq#Length_9341| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21463| s0@@11 s1@@11))) (= (|Seq#Length_9341| s0@@11) (|Seq#Length_9341| s1@@11))) (= (|Seq#SkolemDiff_21463| s0@@11 s1@@11) (|Seq#SkolemDiff_21463| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_21463| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_21463| s0@@11 s1@@11) (|Seq#Length_9341| s0@@11))) (not (= (|Seq#Index_9341| s0@@11 (|Seq#SkolemDiff_21463| s0@@11 s1@@11)) (|Seq#Index_9341| s1@@11 (|Seq#SkolemDiff_21463| s0@@11 s1@@11))))))
 :qid |stdinbpl.528:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_21463| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2971) (s1@@12 T@Seq_2971) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2971| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2971| s0@@12 s1@@12))) (not (= (|Seq#Length_2971| s0@@12) (|Seq#Length_2971| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2971| s0@@12 s1@@12))) (= (|Seq#Length_2971| s0@@12) (|Seq#Length_2971| s1@@12))) (= (|Seq#SkolemDiff_2971| s0@@12 s1@@12) (|Seq#SkolemDiff_2971| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2971| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2971| s0@@12 s1@@12) (|Seq#Length_2971| s0@@12))) (not (= (|Seq#Index_2971| s0@@12 (|Seq#SkolemDiff_2971| s0@@12 s1@@12)) (|Seq#Index_2971| s1@@12 (|Seq#SkolemDiff_2971| s0@@12 s1@@12))))))
 :qid |stdinbpl.528:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2971| s0@@12 s1@@12))
)))
(assert (forall ((p@@6 T@Field_25026_25027) (v_1@@5 T@FrameType) (q T@Field_25026_25027) (w@@5 T@FrameType) (r T@Field_25026_25027) (u T@FrameType) ) (!  (=> (and (InsidePredicate_25026_25026 p@@6 v_1@@5 q w@@5) (InsidePredicate_25026_25026 q w@@5 r u)) (InsidePredicate_25026_25026 p@@6 v_1@@5 r u))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_25026 p@@6 v_1@@5 q w@@5) (InsidePredicate_25026_25026 q w@@5 r u))
)))
(assert (forall ((p@@7 T@Field_25026_25027) (v_1@@6 T@FrameType) (q@@0 T@Field_25026_25027) (w@@6 T@FrameType) (r@@0 T@Field_24558_24559) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_25026 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_25026_24558 q@@0 w@@6 r@@0 u@@0)) (InsidePredicate_25026_24558 p@@7 v_1@@6 r@@0 u@@0))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_25026 p@@7 v_1@@6 q@@0 w@@6) (InsidePredicate_25026_24558 q@@0 w@@6 r@@0 u@@0))
)))
(assert (forall ((p@@8 T@Field_25026_25027) (v_1@@7 T@FrameType) (q@@1 T@Field_25026_25027) (w@@7 T@FrameType) (r@@1 T@Field_22376_22377) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_25026 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_25026_22376 q@@1 w@@7 r@@1 u@@1)) (InsidePredicate_25026_22376 p@@8 v_1@@7 r@@1 u@@1))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_25026 p@@8 v_1@@7 q@@1 w@@7) (InsidePredicate_25026_22376 q@@1 w@@7 r@@1 u@@1))
)))
(assert (forall ((p@@9 T@Field_25026_25027) (v_1@@8 T@FrameType) (q@@2 T@Field_25026_25027) (w@@8 T@FrameType) (r@@2 T@Field_9317_22377) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_25026 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_25026_15274 q@@2 w@@8 r@@2 u@@2)) (InsidePredicate_25026_15274 p@@9 v_1@@8 r@@2 u@@2))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_25026 p@@9 v_1@@8 q@@2 w@@8) (InsidePredicate_25026_15274 q@@2 w@@8 r@@2 u@@2))
)))
(assert (forall ((p@@10 T@Field_25026_25027) (v_1@@9 T@FrameType) (q@@3 T@Field_25026_25027) (w@@9 T@FrameType) (r@@3 T@Field_27408_27409) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_25026 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_25026_9552 q@@3 w@@9 r@@3 u@@3)) (InsidePredicate_25026_9552 p@@10 v_1@@9 r@@3 u@@3))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_25026 p@@10 v_1@@9 q@@3 w@@9) (InsidePredicate_25026_9552 q@@3 w@@9 r@@3 u@@3))
)))
(assert (forall ((p@@11 T@Field_25026_25027) (v_1@@10 T@FrameType) (q@@4 T@Field_25026_25027) (w@@10 T@FrameType) (r@@4 T@Field_24505_24506) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_25026 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_25026_9527 q@@4 w@@10 r@@4 u@@4)) (InsidePredicate_25026_9527 p@@11 v_1@@10 r@@4 u@@4))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_25026 p@@11 v_1@@10 q@@4 w@@10) (InsidePredicate_25026_9527 q@@4 w@@10 r@@4 u@@4))
)))
(assert (forall ((p@@12 T@Field_25026_25027) (v_1@@11 T@FrameType) (q@@5 T@Field_24558_24559) (w@@11 T@FrameType) (r@@5 T@Field_25026_25027) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_24558 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_24558_25026 q@@5 w@@11 r@@5 u@@5)) (InsidePredicate_25026_25026 p@@12 v_1@@11 r@@5 u@@5))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_24558 p@@12 v_1@@11 q@@5 w@@11) (InsidePredicate_24558_25026 q@@5 w@@11 r@@5 u@@5))
)))
(assert (forall ((p@@13 T@Field_25026_25027) (v_1@@12 T@FrameType) (q@@6 T@Field_24558_24559) (w@@12 T@FrameType) (r@@6 T@Field_24558_24559) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_24558 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_24558_24558 q@@6 w@@12 r@@6 u@@6)) (InsidePredicate_25026_24558 p@@13 v_1@@12 r@@6 u@@6))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_24558 p@@13 v_1@@12 q@@6 w@@12) (InsidePredicate_24558_24558 q@@6 w@@12 r@@6 u@@6))
)))
(assert (forall ((p@@14 T@Field_25026_25027) (v_1@@13 T@FrameType) (q@@7 T@Field_24558_24559) (w@@13 T@FrameType) (r@@7 T@Field_22376_22377) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_24558 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_24558_22376 q@@7 w@@13 r@@7 u@@7)) (InsidePredicate_25026_22376 p@@14 v_1@@13 r@@7 u@@7))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_24558 p@@14 v_1@@13 q@@7 w@@13) (InsidePredicate_24558_22376 q@@7 w@@13 r@@7 u@@7))
)))
(assert (forall ((p@@15 T@Field_25026_25027) (v_1@@14 T@FrameType) (q@@8 T@Field_24558_24559) (w@@14 T@FrameType) (r@@8 T@Field_9317_22377) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_24558 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_24558_15274 q@@8 w@@14 r@@8 u@@8)) (InsidePredicate_25026_15274 p@@15 v_1@@14 r@@8 u@@8))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_24558 p@@15 v_1@@14 q@@8 w@@14) (InsidePredicate_24558_15274 q@@8 w@@14 r@@8 u@@8))
)))
(assert (forall ((p@@16 T@Field_25026_25027) (v_1@@15 T@FrameType) (q@@9 T@Field_24558_24559) (w@@15 T@FrameType) (r@@9 T@Field_27408_27409) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_24558 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_24558_9552 q@@9 w@@15 r@@9 u@@9)) (InsidePredicate_25026_9552 p@@16 v_1@@15 r@@9 u@@9))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_24558 p@@16 v_1@@15 q@@9 w@@15) (InsidePredicate_24558_9552 q@@9 w@@15 r@@9 u@@9))
)))
(assert (forall ((p@@17 T@Field_25026_25027) (v_1@@16 T@FrameType) (q@@10 T@Field_24558_24559) (w@@16 T@FrameType) (r@@10 T@Field_24505_24506) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_24558 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_24558_9527 q@@10 w@@16 r@@10 u@@10)) (InsidePredicate_25026_9527 p@@17 v_1@@16 r@@10 u@@10))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_24558 p@@17 v_1@@16 q@@10 w@@16) (InsidePredicate_24558_9527 q@@10 w@@16 r@@10 u@@10))
)))
(assert (forall ((p@@18 T@Field_25026_25027) (v_1@@17 T@FrameType) (q@@11 T@Field_22376_22377) (w@@17 T@FrameType) (r@@11 T@Field_25026_25027) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_22376 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_22376_25026 q@@11 w@@17 r@@11 u@@11)) (InsidePredicate_25026_25026 p@@18 v_1@@17 r@@11 u@@11))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_22376 p@@18 v_1@@17 q@@11 w@@17) (InsidePredicate_22376_25026 q@@11 w@@17 r@@11 u@@11))
)))
(assert (forall ((p@@19 T@Field_25026_25027) (v_1@@18 T@FrameType) (q@@12 T@Field_22376_22377) (w@@18 T@FrameType) (r@@12 T@Field_24558_24559) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_22376 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_22376_24558 q@@12 w@@18 r@@12 u@@12)) (InsidePredicate_25026_24558 p@@19 v_1@@18 r@@12 u@@12))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_22376 p@@19 v_1@@18 q@@12 w@@18) (InsidePredicate_22376_24558 q@@12 w@@18 r@@12 u@@12))
)))
(assert (forall ((p@@20 T@Field_25026_25027) (v_1@@19 T@FrameType) (q@@13 T@Field_22376_22377) (w@@19 T@FrameType) (r@@13 T@Field_22376_22377) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_22376 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_22376_22376 q@@13 w@@19 r@@13 u@@13)) (InsidePredicate_25026_22376 p@@20 v_1@@19 r@@13 u@@13))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_22376 p@@20 v_1@@19 q@@13 w@@19) (InsidePredicate_22376_22376 q@@13 w@@19 r@@13 u@@13))
)))
(assert (forall ((p@@21 T@Field_25026_25027) (v_1@@20 T@FrameType) (q@@14 T@Field_22376_22377) (w@@20 T@FrameType) (r@@14 T@Field_9317_22377) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_22376 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_22376_15274 q@@14 w@@20 r@@14 u@@14)) (InsidePredicate_25026_15274 p@@21 v_1@@20 r@@14 u@@14))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_22376 p@@21 v_1@@20 q@@14 w@@20) (InsidePredicate_22376_15274 q@@14 w@@20 r@@14 u@@14))
)))
(assert (forall ((p@@22 T@Field_25026_25027) (v_1@@21 T@FrameType) (q@@15 T@Field_22376_22377) (w@@21 T@FrameType) (r@@15 T@Field_27408_27409) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_22376 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_22376_9552 q@@15 w@@21 r@@15 u@@15)) (InsidePredicate_25026_9552 p@@22 v_1@@21 r@@15 u@@15))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_22376 p@@22 v_1@@21 q@@15 w@@21) (InsidePredicate_22376_9552 q@@15 w@@21 r@@15 u@@15))
)))
(assert (forall ((p@@23 T@Field_25026_25027) (v_1@@22 T@FrameType) (q@@16 T@Field_22376_22377) (w@@22 T@FrameType) (r@@16 T@Field_24505_24506) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_22376 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_22376_9527 q@@16 w@@22 r@@16 u@@16)) (InsidePredicate_25026_9527 p@@23 v_1@@22 r@@16 u@@16))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_22376 p@@23 v_1@@22 q@@16 w@@22) (InsidePredicate_22376_9527 q@@16 w@@22 r@@16 u@@16))
)))
(assert (forall ((p@@24 T@Field_25026_25027) (v_1@@23 T@FrameType) (q@@17 T@Field_9317_22377) (w@@23 T@FrameType) (r@@17 T@Field_25026_25027) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_15274 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_15274_25026 q@@17 w@@23 r@@17 u@@17)) (InsidePredicate_25026_25026 p@@24 v_1@@23 r@@17 u@@17))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_15274 p@@24 v_1@@23 q@@17 w@@23) (InsidePredicate_15274_25026 q@@17 w@@23 r@@17 u@@17))
)))
(assert (forall ((p@@25 T@Field_25026_25027) (v_1@@24 T@FrameType) (q@@18 T@Field_9317_22377) (w@@24 T@FrameType) (r@@18 T@Field_24558_24559) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_15274 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_15274_24558 q@@18 w@@24 r@@18 u@@18)) (InsidePredicate_25026_24558 p@@25 v_1@@24 r@@18 u@@18))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_15274 p@@25 v_1@@24 q@@18 w@@24) (InsidePredicate_15274_24558 q@@18 w@@24 r@@18 u@@18))
)))
(assert (forall ((p@@26 T@Field_25026_25027) (v_1@@25 T@FrameType) (q@@19 T@Field_9317_22377) (w@@25 T@FrameType) (r@@19 T@Field_22376_22377) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_15274 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_15274_22376 q@@19 w@@25 r@@19 u@@19)) (InsidePredicate_25026_22376 p@@26 v_1@@25 r@@19 u@@19))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_15274 p@@26 v_1@@25 q@@19 w@@25) (InsidePredicate_15274_22376 q@@19 w@@25 r@@19 u@@19))
)))
(assert (forall ((p@@27 T@Field_25026_25027) (v_1@@26 T@FrameType) (q@@20 T@Field_9317_22377) (w@@26 T@FrameType) (r@@20 T@Field_9317_22377) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_15274 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_15274_15274 q@@20 w@@26 r@@20 u@@20)) (InsidePredicate_25026_15274 p@@27 v_1@@26 r@@20 u@@20))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_15274 p@@27 v_1@@26 q@@20 w@@26) (InsidePredicate_15274_15274 q@@20 w@@26 r@@20 u@@20))
)))
(assert (forall ((p@@28 T@Field_25026_25027) (v_1@@27 T@FrameType) (q@@21 T@Field_9317_22377) (w@@27 T@FrameType) (r@@21 T@Field_27408_27409) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_15274 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_15274_9552 q@@21 w@@27 r@@21 u@@21)) (InsidePredicate_25026_9552 p@@28 v_1@@27 r@@21 u@@21))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_15274 p@@28 v_1@@27 q@@21 w@@27) (InsidePredicate_15274_9552 q@@21 w@@27 r@@21 u@@21))
)))
(assert (forall ((p@@29 T@Field_25026_25027) (v_1@@28 T@FrameType) (q@@22 T@Field_9317_22377) (w@@28 T@FrameType) (r@@22 T@Field_24505_24506) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_15274 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_15274_9527 q@@22 w@@28 r@@22 u@@22)) (InsidePredicate_25026_9527 p@@29 v_1@@28 r@@22 u@@22))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_15274 p@@29 v_1@@28 q@@22 w@@28) (InsidePredicate_15274_9527 q@@22 w@@28 r@@22 u@@22))
)))
(assert (forall ((p@@30 T@Field_25026_25027) (v_1@@29 T@FrameType) (q@@23 T@Field_27408_27409) (w@@29 T@FrameType) (r@@23 T@Field_25026_25027) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_9552 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_9552_25026 q@@23 w@@29 r@@23 u@@23)) (InsidePredicate_25026_25026 p@@30 v_1@@29 r@@23 u@@23))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_9552 p@@30 v_1@@29 q@@23 w@@29) (InsidePredicate_9552_25026 q@@23 w@@29 r@@23 u@@23))
)))
(assert (forall ((p@@31 T@Field_25026_25027) (v_1@@30 T@FrameType) (q@@24 T@Field_27408_27409) (w@@30 T@FrameType) (r@@24 T@Field_24558_24559) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_9552 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_9552_24558 q@@24 w@@30 r@@24 u@@24)) (InsidePredicate_25026_24558 p@@31 v_1@@30 r@@24 u@@24))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_9552 p@@31 v_1@@30 q@@24 w@@30) (InsidePredicate_9552_24558 q@@24 w@@30 r@@24 u@@24))
)))
(assert (forall ((p@@32 T@Field_25026_25027) (v_1@@31 T@FrameType) (q@@25 T@Field_27408_27409) (w@@31 T@FrameType) (r@@25 T@Field_22376_22377) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_9552 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_9552_22376 q@@25 w@@31 r@@25 u@@25)) (InsidePredicate_25026_22376 p@@32 v_1@@31 r@@25 u@@25))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_9552 p@@32 v_1@@31 q@@25 w@@31) (InsidePredicate_9552_22376 q@@25 w@@31 r@@25 u@@25))
)))
(assert (forall ((p@@33 T@Field_25026_25027) (v_1@@32 T@FrameType) (q@@26 T@Field_27408_27409) (w@@32 T@FrameType) (r@@26 T@Field_9317_22377) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_9552 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_9552_15274 q@@26 w@@32 r@@26 u@@26)) (InsidePredicate_25026_15274 p@@33 v_1@@32 r@@26 u@@26))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_9552 p@@33 v_1@@32 q@@26 w@@32) (InsidePredicate_9552_15274 q@@26 w@@32 r@@26 u@@26))
)))
(assert (forall ((p@@34 T@Field_25026_25027) (v_1@@33 T@FrameType) (q@@27 T@Field_27408_27409) (w@@33 T@FrameType) (r@@27 T@Field_27408_27409) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_9552 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_9552_9552 q@@27 w@@33 r@@27 u@@27)) (InsidePredicate_25026_9552 p@@34 v_1@@33 r@@27 u@@27))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_9552 p@@34 v_1@@33 q@@27 w@@33) (InsidePredicate_9552_9552 q@@27 w@@33 r@@27 u@@27))
)))
(assert (forall ((p@@35 T@Field_25026_25027) (v_1@@34 T@FrameType) (q@@28 T@Field_27408_27409) (w@@34 T@FrameType) (r@@28 T@Field_24505_24506) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_9552 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_9552_9527 q@@28 w@@34 r@@28 u@@28)) (InsidePredicate_25026_9527 p@@35 v_1@@34 r@@28 u@@28))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_9552 p@@35 v_1@@34 q@@28 w@@34) (InsidePredicate_9552_9527 q@@28 w@@34 r@@28 u@@28))
)))
(assert (forall ((p@@36 T@Field_25026_25027) (v_1@@35 T@FrameType) (q@@29 T@Field_24505_24506) (w@@35 T@FrameType) (r@@29 T@Field_25026_25027) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_9527 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_9527_25026 q@@29 w@@35 r@@29 u@@29)) (InsidePredicate_25026_25026 p@@36 v_1@@35 r@@29 u@@29))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_9527 p@@36 v_1@@35 q@@29 w@@35) (InsidePredicate_9527_25026 q@@29 w@@35 r@@29 u@@29))
)))
(assert (forall ((p@@37 T@Field_25026_25027) (v_1@@36 T@FrameType) (q@@30 T@Field_24505_24506) (w@@36 T@FrameType) (r@@30 T@Field_24558_24559) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_9527 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_9527_24558 q@@30 w@@36 r@@30 u@@30)) (InsidePredicate_25026_24558 p@@37 v_1@@36 r@@30 u@@30))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_9527 p@@37 v_1@@36 q@@30 w@@36) (InsidePredicate_9527_24558 q@@30 w@@36 r@@30 u@@30))
)))
(assert (forall ((p@@38 T@Field_25026_25027) (v_1@@37 T@FrameType) (q@@31 T@Field_24505_24506) (w@@37 T@FrameType) (r@@31 T@Field_22376_22377) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_9527 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_9527_22376 q@@31 w@@37 r@@31 u@@31)) (InsidePredicate_25026_22376 p@@38 v_1@@37 r@@31 u@@31))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_9527 p@@38 v_1@@37 q@@31 w@@37) (InsidePredicate_9527_22376 q@@31 w@@37 r@@31 u@@31))
)))
(assert (forall ((p@@39 T@Field_25026_25027) (v_1@@38 T@FrameType) (q@@32 T@Field_24505_24506) (w@@38 T@FrameType) (r@@32 T@Field_9317_22377) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_9527 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_9527_15274 q@@32 w@@38 r@@32 u@@32)) (InsidePredicate_25026_15274 p@@39 v_1@@38 r@@32 u@@32))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_9527 p@@39 v_1@@38 q@@32 w@@38) (InsidePredicate_9527_15274 q@@32 w@@38 r@@32 u@@32))
)))
(assert (forall ((p@@40 T@Field_25026_25027) (v_1@@39 T@FrameType) (q@@33 T@Field_24505_24506) (w@@39 T@FrameType) (r@@33 T@Field_27408_27409) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_9527 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_9527_9552 q@@33 w@@39 r@@33 u@@33)) (InsidePredicate_25026_9552 p@@40 v_1@@39 r@@33 u@@33))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_9527 p@@40 v_1@@39 q@@33 w@@39) (InsidePredicate_9527_9552 q@@33 w@@39 r@@33 u@@33))
)))
(assert (forall ((p@@41 T@Field_25026_25027) (v_1@@40 T@FrameType) (q@@34 T@Field_24505_24506) (w@@40 T@FrameType) (r@@34 T@Field_24505_24506) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_25026_9527 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_9527_9527 q@@34 w@@40 r@@34 u@@34)) (InsidePredicate_25026_9527 p@@41 v_1@@40 r@@34 u@@34))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_25026_9527 p@@41 v_1@@40 q@@34 w@@40) (InsidePredicate_9527_9527 q@@34 w@@40 r@@34 u@@34))
)))
(assert (forall ((p@@42 T@Field_24558_24559) (v_1@@41 T@FrameType) (q@@35 T@Field_25026_25027) (w@@41 T@FrameType) (r@@35 T@Field_25026_25027) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_25026 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_25026_25026 q@@35 w@@41 r@@35 u@@35)) (InsidePredicate_24558_25026 p@@42 v_1@@41 r@@35 u@@35))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_25026 p@@42 v_1@@41 q@@35 w@@41) (InsidePredicate_25026_25026 q@@35 w@@41 r@@35 u@@35))
)))
(assert (forall ((p@@43 T@Field_24558_24559) (v_1@@42 T@FrameType) (q@@36 T@Field_25026_25027) (w@@42 T@FrameType) (r@@36 T@Field_24558_24559) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_25026 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_25026_24558 q@@36 w@@42 r@@36 u@@36)) (InsidePredicate_24558_24558 p@@43 v_1@@42 r@@36 u@@36))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_25026 p@@43 v_1@@42 q@@36 w@@42) (InsidePredicate_25026_24558 q@@36 w@@42 r@@36 u@@36))
)))
(assert (forall ((p@@44 T@Field_24558_24559) (v_1@@43 T@FrameType) (q@@37 T@Field_25026_25027) (w@@43 T@FrameType) (r@@37 T@Field_22376_22377) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_25026 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_25026_22376 q@@37 w@@43 r@@37 u@@37)) (InsidePredicate_24558_22376 p@@44 v_1@@43 r@@37 u@@37))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_25026 p@@44 v_1@@43 q@@37 w@@43) (InsidePredicate_25026_22376 q@@37 w@@43 r@@37 u@@37))
)))
(assert (forall ((p@@45 T@Field_24558_24559) (v_1@@44 T@FrameType) (q@@38 T@Field_25026_25027) (w@@44 T@FrameType) (r@@38 T@Field_9317_22377) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_25026 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_25026_15274 q@@38 w@@44 r@@38 u@@38)) (InsidePredicate_24558_15274 p@@45 v_1@@44 r@@38 u@@38))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_25026 p@@45 v_1@@44 q@@38 w@@44) (InsidePredicate_25026_15274 q@@38 w@@44 r@@38 u@@38))
)))
(assert (forall ((p@@46 T@Field_24558_24559) (v_1@@45 T@FrameType) (q@@39 T@Field_25026_25027) (w@@45 T@FrameType) (r@@39 T@Field_27408_27409) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_25026 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_25026_9552 q@@39 w@@45 r@@39 u@@39)) (InsidePredicate_24558_9552 p@@46 v_1@@45 r@@39 u@@39))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_25026 p@@46 v_1@@45 q@@39 w@@45) (InsidePredicate_25026_9552 q@@39 w@@45 r@@39 u@@39))
)))
(assert (forall ((p@@47 T@Field_24558_24559) (v_1@@46 T@FrameType) (q@@40 T@Field_25026_25027) (w@@46 T@FrameType) (r@@40 T@Field_24505_24506) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_25026 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_25026_9527 q@@40 w@@46 r@@40 u@@40)) (InsidePredicate_24558_9527 p@@47 v_1@@46 r@@40 u@@40))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_25026 p@@47 v_1@@46 q@@40 w@@46) (InsidePredicate_25026_9527 q@@40 w@@46 r@@40 u@@40))
)))
(assert (forall ((p@@48 T@Field_24558_24559) (v_1@@47 T@FrameType) (q@@41 T@Field_24558_24559) (w@@47 T@FrameType) (r@@41 T@Field_25026_25027) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_24558 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_24558_25026 q@@41 w@@47 r@@41 u@@41)) (InsidePredicate_24558_25026 p@@48 v_1@@47 r@@41 u@@41))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_24558 p@@48 v_1@@47 q@@41 w@@47) (InsidePredicate_24558_25026 q@@41 w@@47 r@@41 u@@41))
)))
(assert (forall ((p@@49 T@Field_24558_24559) (v_1@@48 T@FrameType) (q@@42 T@Field_24558_24559) (w@@48 T@FrameType) (r@@42 T@Field_24558_24559) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_24558 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_24558_24558 q@@42 w@@48 r@@42 u@@42)) (InsidePredicate_24558_24558 p@@49 v_1@@48 r@@42 u@@42))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_24558 p@@49 v_1@@48 q@@42 w@@48) (InsidePredicate_24558_24558 q@@42 w@@48 r@@42 u@@42))
)))
(assert (forall ((p@@50 T@Field_24558_24559) (v_1@@49 T@FrameType) (q@@43 T@Field_24558_24559) (w@@49 T@FrameType) (r@@43 T@Field_22376_22377) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_24558 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_24558_22376 q@@43 w@@49 r@@43 u@@43)) (InsidePredicate_24558_22376 p@@50 v_1@@49 r@@43 u@@43))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_24558 p@@50 v_1@@49 q@@43 w@@49) (InsidePredicate_24558_22376 q@@43 w@@49 r@@43 u@@43))
)))
(assert (forall ((p@@51 T@Field_24558_24559) (v_1@@50 T@FrameType) (q@@44 T@Field_24558_24559) (w@@50 T@FrameType) (r@@44 T@Field_9317_22377) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_24558 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_24558_15274 q@@44 w@@50 r@@44 u@@44)) (InsidePredicate_24558_15274 p@@51 v_1@@50 r@@44 u@@44))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_24558 p@@51 v_1@@50 q@@44 w@@50) (InsidePredicate_24558_15274 q@@44 w@@50 r@@44 u@@44))
)))
(assert (forall ((p@@52 T@Field_24558_24559) (v_1@@51 T@FrameType) (q@@45 T@Field_24558_24559) (w@@51 T@FrameType) (r@@45 T@Field_27408_27409) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_24558 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_24558_9552 q@@45 w@@51 r@@45 u@@45)) (InsidePredicate_24558_9552 p@@52 v_1@@51 r@@45 u@@45))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_24558 p@@52 v_1@@51 q@@45 w@@51) (InsidePredicate_24558_9552 q@@45 w@@51 r@@45 u@@45))
)))
(assert (forall ((p@@53 T@Field_24558_24559) (v_1@@52 T@FrameType) (q@@46 T@Field_24558_24559) (w@@52 T@FrameType) (r@@46 T@Field_24505_24506) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_24558 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_24558_9527 q@@46 w@@52 r@@46 u@@46)) (InsidePredicate_24558_9527 p@@53 v_1@@52 r@@46 u@@46))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_24558 p@@53 v_1@@52 q@@46 w@@52) (InsidePredicate_24558_9527 q@@46 w@@52 r@@46 u@@46))
)))
(assert (forall ((p@@54 T@Field_24558_24559) (v_1@@53 T@FrameType) (q@@47 T@Field_22376_22377) (w@@53 T@FrameType) (r@@47 T@Field_25026_25027) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_22376 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_22376_25026 q@@47 w@@53 r@@47 u@@47)) (InsidePredicate_24558_25026 p@@54 v_1@@53 r@@47 u@@47))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_22376 p@@54 v_1@@53 q@@47 w@@53) (InsidePredicate_22376_25026 q@@47 w@@53 r@@47 u@@47))
)))
(assert (forall ((p@@55 T@Field_24558_24559) (v_1@@54 T@FrameType) (q@@48 T@Field_22376_22377) (w@@54 T@FrameType) (r@@48 T@Field_24558_24559) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_22376 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_22376_24558 q@@48 w@@54 r@@48 u@@48)) (InsidePredicate_24558_24558 p@@55 v_1@@54 r@@48 u@@48))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_22376 p@@55 v_1@@54 q@@48 w@@54) (InsidePredicate_22376_24558 q@@48 w@@54 r@@48 u@@48))
)))
(assert (forall ((p@@56 T@Field_24558_24559) (v_1@@55 T@FrameType) (q@@49 T@Field_22376_22377) (w@@55 T@FrameType) (r@@49 T@Field_22376_22377) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_22376 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_22376_22376 q@@49 w@@55 r@@49 u@@49)) (InsidePredicate_24558_22376 p@@56 v_1@@55 r@@49 u@@49))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_22376 p@@56 v_1@@55 q@@49 w@@55) (InsidePredicate_22376_22376 q@@49 w@@55 r@@49 u@@49))
)))
(assert (forall ((p@@57 T@Field_24558_24559) (v_1@@56 T@FrameType) (q@@50 T@Field_22376_22377) (w@@56 T@FrameType) (r@@50 T@Field_9317_22377) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_22376 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_22376_15274 q@@50 w@@56 r@@50 u@@50)) (InsidePredicate_24558_15274 p@@57 v_1@@56 r@@50 u@@50))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_22376 p@@57 v_1@@56 q@@50 w@@56) (InsidePredicate_22376_15274 q@@50 w@@56 r@@50 u@@50))
)))
(assert (forall ((p@@58 T@Field_24558_24559) (v_1@@57 T@FrameType) (q@@51 T@Field_22376_22377) (w@@57 T@FrameType) (r@@51 T@Field_27408_27409) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_22376 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_22376_9552 q@@51 w@@57 r@@51 u@@51)) (InsidePredicate_24558_9552 p@@58 v_1@@57 r@@51 u@@51))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_22376 p@@58 v_1@@57 q@@51 w@@57) (InsidePredicate_22376_9552 q@@51 w@@57 r@@51 u@@51))
)))
(assert (forall ((p@@59 T@Field_24558_24559) (v_1@@58 T@FrameType) (q@@52 T@Field_22376_22377) (w@@58 T@FrameType) (r@@52 T@Field_24505_24506) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_22376 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_22376_9527 q@@52 w@@58 r@@52 u@@52)) (InsidePredicate_24558_9527 p@@59 v_1@@58 r@@52 u@@52))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_22376 p@@59 v_1@@58 q@@52 w@@58) (InsidePredicate_22376_9527 q@@52 w@@58 r@@52 u@@52))
)))
(assert (forall ((p@@60 T@Field_24558_24559) (v_1@@59 T@FrameType) (q@@53 T@Field_9317_22377) (w@@59 T@FrameType) (r@@53 T@Field_25026_25027) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_15274 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_15274_25026 q@@53 w@@59 r@@53 u@@53)) (InsidePredicate_24558_25026 p@@60 v_1@@59 r@@53 u@@53))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_15274 p@@60 v_1@@59 q@@53 w@@59) (InsidePredicate_15274_25026 q@@53 w@@59 r@@53 u@@53))
)))
(assert (forall ((p@@61 T@Field_24558_24559) (v_1@@60 T@FrameType) (q@@54 T@Field_9317_22377) (w@@60 T@FrameType) (r@@54 T@Field_24558_24559) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_15274 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_15274_24558 q@@54 w@@60 r@@54 u@@54)) (InsidePredicate_24558_24558 p@@61 v_1@@60 r@@54 u@@54))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_15274 p@@61 v_1@@60 q@@54 w@@60) (InsidePredicate_15274_24558 q@@54 w@@60 r@@54 u@@54))
)))
(assert (forall ((p@@62 T@Field_24558_24559) (v_1@@61 T@FrameType) (q@@55 T@Field_9317_22377) (w@@61 T@FrameType) (r@@55 T@Field_22376_22377) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_15274 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_15274_22376 q@@55 w@@61 r@@55 u@@55)) (InsidePredicate_24558_22376 p@@62 v_1@@61 r@@55 u@@55))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_15274 p@@62 v_1@@61 q@@55 w@@61) (InsidePredicate_15274_22376 q@@55 w@@61 r@@55 u@@55))
)))
(assert (forall ((p@@63 T@Field_24558_24559) (v_1@@62 T@FrameType) (q@@56 T@Field_9317_22377) (w@@62 T@FrameType) (r@@56 T@Field_9317_22377) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_15274 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_15274_15274 q@@56 w@@62 r@@56 u@@56)) (InsidePredicate_24558_15274 p@@63 v_1@@62 r@@56 u@@56))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_15274 p@@63 v_1@@62 q@@56 w@@62) (InsidePredicate_15274_15274 q@@56 w@@62 r@@56 u@@56))
)))
(assert (forall ((p@@64 T@Field_24558_24559) (v_1@@63 T@FrameType) (q@@57 T@Field_9317_22377) (w@@63 T@FrameType) (r@@57 T@Field_27408_27409) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_15274 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_15274_9552 q@@57 w@@63 r@@57 u@@57)) (InsidePredicate_24558_9552 p@@64 v_1@@63 r@@57 u@@57))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_15274 p@@64 v_1@@63 q@@57 w@@63) (InsidePredicate_15274_9552 q@@57 w@@63 r@@57 u@@57))
)))
(assert (forall ((p@@65 T@Field_24558_24559) (v_1@@64 T@FrameType) (q@@58 T@Field_9317_22377) (w@@64 T@FrameType) (r@@58 T@Field_24505_24506) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_15274 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_15274_9527 q@@58 w@@64 r@@58 u@@58)) (InsidePredicate_24558_9527 p@@65 v_1@@64 r@@58 u@@58))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_15274 p@@65 v_1@@64 q@@58 w@@64) (InsidePredicate_15274_9527 q@@58 w@@64 r@@58 u@@58))
)))
(assert (forall ((p@@66 T@Field_24558_24559) (v_1@@65 T@FrameType) (q@@59 T@Field_27408_27409) (w@@65 T@FrameType) (r@@59 T@Field_25026_25027) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_9552 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_9552_25026 q@@59 w@@65 r@@59 u@@59)) (InsidePredicate_24558_25026 p@@66 v_1@@65 r@@59 u@@59))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_9552 p@@66 v_1@@65 q@@59 w@@65) (InsidePredicate_9552_25026 q@@59 w@@65 r@@59 u@@59))
)))
(assert (forall ((p@@67 T@Field_24558_24559) (v_1@@66 T@FrameType) (q@@60 T@Field_27408_27409) (w@@66 T@FrameType) (r@@60 T@Field_24558_24559) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_9552 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_9552_24558 q@@60 w@@66 r@@60 u@@60)) (InsidePredicate_24558_24558 p@@67 v_1@@66 r@@60 u@@60))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_9552 p@@67 v_1@@66 q@@60 w@@66) (InsidePredicate_9552_24558 q@@60 w@@66 r@@60 u@@60))
)))
(assert (forall ((p@@68 T@Field_24558_24559) (v_1@@67 T@FrameType) (q@@61 T@Field_27408_27409) (w@@67 T@FrameType) (r@@61 T@Field_22376_22377) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_9552 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_9552_22376 q@@61 w@@67 r@@61 u@@61)) (InsidePredicate_24558_22376 p@@68 v_1@@67 r@@61 u@@61))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_9552 p@@68 v_1@@67 q@@61 w@@67) (InsidePredicate_9552_22376 q@@61 w@@67 r@@61 u@@61))
)))
(assert (forall ((p@@69 T@Field_24558_24559) (v_1@@68 T@FrameType) (q@@62 T@Field_27408_27409) (w@@68 T@FrameType) (r@@62 T@Field_9317_22377) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_9552 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_9552_15274 q@@62 w@@68 r@@62 u@@62)) (InsidePredicate_24558_15274 p@@69 v_1@@68 r@@62 u@@62))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_9552 p@@69 v_1@@68 q@@62 w@@68) (InsidePredicate_9552_15274 q@@62 w@@68 r@@62 u@@62))
)))
(assert (forall ((p@@70 T@Field_24558_24559) (v_1@@69 T@FrameType) (q@@63 T@Field_27408_27409) (w@@69 T@FrameType) (r@@63 T@Field_27408_27409) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_9552 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_9552_9552 q@@63 w@@69 r@@63 u@@63)) (InsidePredicate_24558_9552 p@@70 v_1@@69 r@@63 u@@63))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_9552 p@@70 v_1@@69 q@@63 w@@69) (InsidePredicate_9552_9552 q@@63 w@@69 r@@63 u@@63))
)))
(assert (forall ((p@@71 T@Field_24558_24559) (v_1@@70 T@FrameType) (q@@64 T@Field_27408_27409) (w@@70 T@FrameType) (r@@64 T@Field_24505_24506) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_9552 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_9552_9527 q@@64 w@@70 r@@64 u@@64)) (InsidePredicate_24558_9527 p@@71 v_1@@70 r@@64 u@@64))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_9552 p@@71 v_1@@70 q@@64 w@@70) (InsidePredicate_9552_9527 q@@64 w@@70 r@@64 u@@64))
)))
(assert (forall ((p@@72 T@Field_24558_24559) (v_1@@71 T@FrameType) (q@@65 T@Field_24505_24506) (w@@71 T@FrameType) (r@@65 T@Field_25026_25027) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_9527 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_9527_25026 q@@65 w@@71 r@@65 u@@65)) (InsidePredicate_24558_25026 p@@72 v_1@@71 r@@65 u@@65))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_9527 p@@72 v_1@@71 q@@65 w@@71) (InsidePredicate_9527_25026 q@@65 w@@71 r@@65 u@@65))
)))
(assert (forall ((p@@73 T@Field_24558_24559) (v_1@@72 T@FrameType) (q@@66 T@Field_24505_24506) (w@@72 T@FrameType) (r@@66 T@Field_24558_24559) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_9527 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_9527_24558 q@@66 w@@72 r@@66 u@@66)) (InsidePredicate_24558_24558 p@@73 v_1@@72 r@@66 u@@66))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_9527 p@@73 v_1@@72 q@@66 w@@72) (InsidePredicate_9527_24558 q@@66 w@@72 r@@66 u@@66))
)))
(assert (forall ((p@@74 T@Field_24558_24559) (v_1@@73 T@FrameType) (q@@67 T@Field_24505_24506) (w@@73 T@FrameType) (r@@67 T@Field_22376_22377) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_9527 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_9527_22376 q@@67 w@@73 r@@67 u@@67)) (InsidePredicate_24558_22376 p@@74 v_1@@73 r@@67 u@@67))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_9527 p@@74 v_1@@73 q@@67 w@@73) (InsidePredicate_9527_22376 q@@67 w@@73 r@@67 u@@67))
)))
(assert (forall ((p@@75 T@Field_24558_24559) (v_1@@74 T@FrameType) (q@@68 T@Field_24505_24506) (w@@74 T@FrameType) (r@@68 T@Field_9317_22377) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_9527 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_9527_15274 q@@68 w@@74 r@@68 u@@68)) (InsidePredicate_24558_15274 p@@75 v_1@@74 r@@68 u@@68))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_9527 p@@75 v_1@@74 q@@68 w@@74) (InsidePredicate_9527_15274 q@@68 w@@74 r@@68 u@@68))
)))
(assert (forall ((p@@76 T@Field_24558_24559) (v_1@@75 T@FrameType) (q@@69 T@Field_24505_24506) (w@@75 T@FrameType) (r@@69 T@Field_27408_27409) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_9527 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_9527_9552 q@@69 w@@75 r@@69 u@@69)) (InsidePredicate_24558_9552 p@@76 v_1@@75 r@@69 u@@69))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_9527 p@@76 v_1@@75 q@@69 w@@75) (InsidePredicate_9527_9552 q@@69 w@@75 r@@69 u@@69))
)))
(assert (forall ((p@@77 T@Field_24558_24559) (v_1@@76 T@FrameType) (q@@70 T@Field_24505_24506) (w@@76 T@FrameType) (r@@70 T@Field_24505_24506) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_24558_9527 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_9527_9527 q@@70 w@@76 r@@70 u@@70)) (InsidePredicate_24558_9527 p@@77 v_1@@76 r@@70 u@@70))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24558_9527 p@@77 v_1@@76 q@@70 w@@76) (InsidePredicate_9527_9527 q@@70 w@@76 r@@70 u@@70))
)))
(assert (forall ((p@@78 T@Field_22376_22377) (v_1@@77 T@FrameType) (q@@71 T@Field_25026_25027) (w@@77 T@FrameType) (r@@71 T@Field_25026_25027) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_25026 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_25026_25026 q@@71 w@@77 r@@71 u@@71)) (InsidePredicate_22376_25026 p@@78 v_1@@77 r@@71 u@@71))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_25026 p@@78 v_1@@77 q@@71 w@@77) (InsidePredicate_25026_25026 q@@71 w@@77 r@@71 u@@71))
)))
(assert (forall ((p@@79 T@Field_22376_22377) (v_1@@78 T@FrameType) (q@@72 T@Field_25026_25027) (w@@78 T@FrameType) (r@@72 T@Field_24558_24559) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_25026 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_25026_24558 q@@72 w@@78 r@@72 u@@72)) (InsidePredicate_22376_24558 p@@79 v_1@@78 r@@72 u@@72))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_25026 p@@79 v_1@@78 q@@72 w@@78) (InsidePredicate_25026_24558 q@@72 w@@78 r@@72 u@@72))
)))
(assert (forall ((p@@80 T@Field_22376_22377) (v_1@@79 T@FrameType) (q@@73 T@Field_25026_25027) (w@@79 T@FrameType) (r@@73 T@Field_22376_22377) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_25026 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_25026_22376 q@@73 w@@79 r@@73 u@@73)) (InsidePredicate_22376_22376 p@@80 v_1@@79 r@@73 u@@73))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_25026 p@@80 v_1@@79 q@@73 w@@79) (InsidePredicate_25026_22376 q@@73 w@@79 r@@73 u@@73))
)))
(assert (forall ((p@@81 T@Field_22376_22377) (v_1@@80 T@FrameType) (q@@74 T@Field_25026_25027) (w@@80 T@FrameType) (r@@74 T@Field_9317_22377) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_25026 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_25026_15274 q@@74 w@@80 r@@74 u@@74)) (InsidePredicate_22376_15274 p@@81 v_1@@80 r@@74 u@@74))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_25026 p@@81 v_1@@80 q@@74 w@@80) (InsidePredicate_25026_15274 q@@74 w@@80 r@@74 u@@74))
)))
(assert (forall ((p@@82 T@Field_22376_22377) (v_1@@81 T@FrameType) (q@@75 T@Field_25026_25027) (w@@81 T@FrameType) (r@@75 T@Field_27408_27409) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_25026 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_25026_9552 q@@75 w@@81 r@@75 u@@75)) (InsidePredicate_22376_9552 p@@82 v_1@@81 r@@75 u@@75))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_25026 p@@82 v_1@@81 q@@75 w@@81) (InsidePredicate_25026_9552 q@@75 w@@81 r@@75 u@@75))
)))
(assert (forall ((p@@83 T@Field_22376_22377) (v_1@@82 T@FrameType) (q@@76 T@Field_25026_25027) (w@@82 T@FrameType) (r@@76 T@Field_24505_24506) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_25026 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_25026_9527 q@@76 w@@82 r@@76 u@@76)) (InsidePredicate_22376_9527 p@@83 v_1@@82 r@@76 u@@76))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_25026 p@@83 v_1@@82 q@@76 w@@82) (InsidePredicate_25026_9527 q@@76 w@@82 r@@76 u@@76))
)))
(assert (forall ((p@@84 T@Field_22376_22377) (v_1@@83 T@FrameType) (q@@77 T@Field_24558_24559) (w@@83 T@FrameType) (r@@77 T@Field_25026_25027) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_24558 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_24558_25026 q@@77 w@@83 r@@77 u@@77)) (InsidePredicate_22376_25026 p@@84 v_1@@83 r@@77 u@@77))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_24558 p@@84 v_1@@83 q@@77 w@@83) (InsidePredicate_24558_25026 q@@77 w@@83 r@@77 u@@77))
)))
(assert (forall ((p@@85 T@Field_22376_22377) (v_1@@84 T@FrameType) (q@@78 T@Field_24558_24559) (w@@84 T@FrameType) (r@@78 T@Field_24558_24559) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_24558 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_24558_24558 q@@78 w@@84 r@@78 u@@78)) (InsidePredicate_22376_24558 p@@85 v_1@@84 r@@78 u@@78))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_24558 p@@85 v_1@@84 q@@78 w@@84) (InsidePredicate_24558_24558 q@@78 w@@84 r@@78 u@@78))
)))
(assert (forall ((p@@86 T@Field_22376_22377) (v_1@@85 T@FrameType) (q@@79 T@Field_24558_24559) (w@@85 T@FrameType) (r@@79 T@Field_22376_22377) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_24558 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_24558_22376 q@@79 w@@85 r@@79 u@@79)) (InsidePredicate_22376_22376 p@@86 v_1@@85 r@@79 u@@79))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_24558 p@@86 v_1@@85 q@@79 w@@85) (InsidePredicate_24558_22376 q@@79 w@@85 r@@79 u@@79))
)))
(assert (forall ((p@@87 T@Field_22376_22377) (v_1@@86 T@FrameType) (q@@80 T@Field_24558_24559) (w@@86 T@FrameType) (r@@80 T@Field_9317_22377) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_24558 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_24558_15274 q@@80 w@@86 r@@80 u@@80)) (InsidePredicate_22376_15274 p@@87 v_1@@86 r@@80 u@@80))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_24558 p@@87 v_1@@86 q@@80 w@@86) (InsidePredicate_24558_15274 q@@80 w@@86 r@@80 u@@80))
)))
(assert (forall ((p@@88 T@Field_22376_22377) (v_1@@87 T@FrameType) (q@@81 T@Field_24558_24559) (w@@87 T@FrameType) (r@@81 T@Field_27408_27409) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_24558 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_24558_9552 q@@81 w@@87 r@@81 u@@81)) (InsidePredicate_22376_9552 p@@88 v_1@@87 r@@81 u@@81))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_24558 p@@88 v_1@@87 q@@81 w@@87) (InsidePredicate_24558_9552 q@@81 w@@87 r@@81 u@@81))
)))
(assert (forall ((p@@89 T@Field_22376_22377) (v_1@@88 T@FrameType) (q@@82 T@Field_24558_24559) (w@@88 T@FrameType) (r@@82 T@Field_24505_24506) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_24558 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_24558_9527 q@@82 w@@88 r@@82 u@@82)) (InsidePredicate_22376_9527 p@@89 v_1@@88 r@@82 u@@82))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_24558 p@@89 v_1@@88 q@@82 w@@88) (InsidePredicate_24558_9527 q@@82 w@@88 r@@82 u@@82))
)))
(assert (forall ((p@@90 T@Field_22376_22377) (v_1@@89 T@FrameType) (q@@83 T@Field_22376_22377) (w@@89 T@FrameType) (r@@83 T@Field_25026_25027) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_22376 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_22376_25026 q@@83 w@@89 r@@83 u@@83)) (InsidePredicate_22376_25026 p@@90 v_1@@89 r@@83 u@@83))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_22376 p@@90 v_1@@89 q@@83 w@@89) (InsidePredicate_22376_25026 q@@83 w@@89 r@@83 u@@83))
)))
(assert (forall ((p@@91 T@Field_22376_22377) (v_1@@90 T@FrameType) (q@@84 T@Field_22376_22377) (w@@90 T@FrameType) (r@@84 T@Field_24558_24559) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_22376 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_22376_24558 q@@84 w@@90 r@@84 u@@84)) (InsidePredicate_22376_24558 p@@91 v_1@@90 r@@84 u@@84))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_22376 p@@91 v_1@@90 q@@84 w@@90) (InsidePredicate_22376_24558 q@@84 w@@90 r@@84 u@@84))
)))
(assert (forall ((p@@92 T@Field_22376_22377) (v_1@@91 T@FrameType) (q@@85 T@Field_22376_22377) (w@@91 T@FrameType) (r@@85 T@Field_22376_22377) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_22376 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_22376_22376 q@@85 w@@91 r@@85 u@@85)) (InsidePredicate_22376_22376 p@@92 v_1@@91 r@@85 u@@85))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_22376 p@@92 v_1@@91 q@@85 w@@91) (InsidePredicate_22376_22376 q@@85 w@@91 r@@85 u@@85))
)))
(assert (forall ((p@@93 T@Field_22376_22377) (v_1@@92 T@FrameType) (q@@86 T@Field_22376_22377) (w@@92 T@FrameType) (r@@86 T@Field_9317_22377) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_22376 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_22376_15274 q@@86 w@@92 r@@86 u@@86)) (InsidePredicate_22376_15274 p@@93 v_1@@92 r@@86 u@@86))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_22376 p@@93 v_1@@92 q@@86 w@@92) (InsidePredicate_22376_15274 q@@86 w@@92 r@@86 u@@86))
)))
(assert (forall ((p@@94 T@Field_22376_22377) (v_1@@93 T@FrameType) (q@@87 T@Field_22376_22377) (w@@93 T@FrameType) (r@@87 T@Field_27408_27409) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_22376 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_22376_9552 q@@87 w@@93 r@@87 u@@87)) (InsidePredicate_22376_9552 p@@94 v_1@@93 r@@87 u@@87))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_22376 p@@94 v_1@@93 q@@87 w@@93) (InsidePredicate_22376_9552 q@@87 w@@93 r@@87 u@@87))
)))
(assert (forall ((p@@95 T@Field_22376_22377) (v_1@@94 T@FrameType) (q@@88 T@Field_22376_22377) (w@@94 T@FrameType) (r@@88 T@Field_24505_24506) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_22376 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_22376_9527 q@@88 w@@94 r@@88 u@@88)) (InsidePredicate_22376_9527 p@@95 v_1@@94 r@@88 u@@88))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_22376 p@@95 v_1@@94 q@@88 w@@94) (InsidePredicate_22376_9527 q@@88 w@@94 r@@88 u@@88))
)))
(assert (forall ((p@@96 T@Field_22376_22377) (v_1@@95 T@FrameType) (q@@89 T@Field_9317_22377) (w@@95 T@FrameType) (r@@89 T@Field_25026_25027) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_15274 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_15274_25026 q@@89 w@@95 r@@89 u@@89)) (InsidePredicate_22376_25026 p@@96 v_1@@95 r@@89 u@@89))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_15274 p@@96 v_1@@95 q@@89 w@@95) (InsidePredicate_15274_25026 q@@89 w@@95 r@@89 u@@89))
)))
(assert (forall ((p@@97 T@Field_22376_22377) (v_1@@96 T@FrameType) (q@@90 T@Field_9317_22377) (w@@96 T@FrameType) (r@@90 T@Field_24558_24559) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_15274 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_15274_24558 q@@90 w@@96 r@@90 u@@90)) (InsidePredicate_22376_24558 p@@97 v_1@@96 r@@90 u@@90))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_15274 p@@97 v_1@@96 q@@90 w@@96) (InsidePredicate_15274_24558 q@@90 w@@96 r@@90 u@@90))
)))
(assert (forall ((p@@98 T@Field_22376_22377) (v_1@@97 T@FrameType) (q@@91 T@Field_9317_22377) (w@@97 T@FrameType) (r@@91 T@Field_22376_22377) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_15274 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_15274_22376 q@@91 w@@97 r@@91 u@@91)) (InsidePredicate_22376_22376 p@@98 v_1@@97 r@@91 u@@91))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_15274 p@@98 v_1@@97 q@@91 w@@97) (InsidePredicate_15274_22376 q@@91 w@@97 r@@91 u@@91))
)))
(assert (forall ((p@@99 T@Field_22376_22377) (v_1@@98 T@FrameType) (q@@92 T@Field_9317_22377) (w@@98 T@FrameType) (r@@92 T@Field_9317_22377) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_15274 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_15274_15274 q@@92 w@@98 r@@92 u@@92)) (InsidePredicate_22376_15274 p@@99 v_1@@98 r@@92 u@@92))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_15274 p@@99 v_1@@98 q@@92 w@@98) (InsidePredicate_15274_15274 q@@92 w@@98 r@@92 u@@92))
)))
(assert (forall ((p@@100 T@Field_22376_22377) (v_1@@99 T@FrameType) (q@@93 T@Field_9317_22377) (w@@99 T@FrameType) (r@@93 T@Field_27408_27409) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_15274 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_15274_9552 q@@93 w@@99 r@@93 u@@93)) (InsidePredicate_22376_9552 p@@100 v_1@@99 r@@93 u@@93))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_15274 p@@100 v_1@@99 q@@93 w@@99) (InsidePredicate_15274_9552 q@@93 w@@99 r@@93 u@@93))
)))
(assert (forall ((p@@101 T@Field_22376_22377) (v_1@@100 T@FrameType) (q@@94 T@Field_9317_22377) (w@@100 T@FrameType) (r@@94 T@Field_24505_24506) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_15274 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_15274_9527 q@@94 w@@100 r@@94 u@@94)) (InsidePredicate_22376_9527 p@@101 v_1@@100 r@@94 u@@94))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_15274 p@@101 v_1@@100 q@@94 w@@100) (InsidePredicate_15274_9527 q@@94 w@@100 r@@94 u@@94))
)))
(assert (forall ((p@@102 T@Field_22376_22377) (v_1@@101 T@FrameType) (q@@95 T@Field_27408_27409) (w@@101 T@FrameType) (r@@95 T@Field_25026_25027) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_9552 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_9552_25026 q@@95 w@@101 r@@95 u@@95)) (InsidePredicate_22376_25026 p@@102 v_1@@101 r@@95 u@@95))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_9552 p@@102 v_1@@101 q@@95 w@@101) (InsidePredicate_9552_25026 q@@95 w@@101 r@@95 u@@95))
)))
(assert (forall ((p@@103 T@Field_22376_22377) (v_1@@102 T@FrameType) (q@@96 T@Field_27408_27409) (w@@102 T@FrameType) (r@@96 T@Field_24558_24559) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_9552 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_9552_24558 q@@96 w@@102 r@@96 u@@96)) (InsidePredicate_22376_24558 p@@103 v_1@@102 r@@96 u@@96))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_9552 p@@103 v_1@@102 q@@96 w@@102) (InsidePredicate_9552_24558 q@@96 w@@102 r@@96 u@@96))
)))
(assert (forall ((p@@104 T@Field_22376_22377) (v_1@@103 T@FrameType) (q@@97 T@Field_27408_27409) (w@@103 T@FrameType) (r@@97 T@Field_22376_22377) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_9552 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_9552_22376 q@@97 w@@103 r@@97 u@@97)) (InsidePredicate_22376_22376 p@@104 v_1@@103 r@@97 u@@97))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_9552 p@@104 v_1@@103 q@@97 w@@103) (InsidePredicate_9552_22376 q@@97 w@@103 r@@97 u@@97))
)))
(assert (forall ((p@@105 T@Field_22376_22377) (v_1@@104 T@FrameType) (q@@98 T@Field_27408_27409) (w@@104 T@FrameType) (r@@98 T@Field_9317_22377) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_9552 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_9552_15274 q@@98 w@@104 r@@98 u@@98)) (InsidePredicate_22376_15274 p@@105 v_1@@104 r@@98 u@@98))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_9552 p@@105 v_1@@104 q@@98 w@@104) (InsidePredicate_9552_15274 q@@98 w@@104 r@@98 u@@98))
)))
(assert (forall ((p@@106 T@Field_22376_22377) (v_1@@105 T@FrameType) (q@@99 T@Field_27408_27409) (w@@105 T@FrameType) (r@@99 T@Field_27408_27409) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_9552 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_9552_9552 q@@99 w@@105 r@@99 u@@99)) (InsidePredicate_22376_9552 p@@106 v_1@@105 r@@99 u@@99))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_9552 p@@106 v_1@@105 q@@99 w@@105) (InsidePredicate_9552_9552 q@@99 w@@105 r@@99 u@@99))
)))
(assert (forall ((p@@107 T@Field_22376_22377) (v_1@@106 T@FrameType) (q@@100 T@Field_27408_27409) (w@@106 T@FrameType) (r@@100 T@Field_24505_24506) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_9552 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_9552_9527 q@@100 w@@106 r@@100 u@@100)) (InsidePredicate_22376_9527 p@@107 v_1@@106 r@@100 u@@100))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_9552 p@@107 v_1@@106 q@@100 w@@106) (InsidePredicate_9552_9527 q@@100 w@@106 r@@100 u@@100))
)))
(assert (forall ((p@@108 T@Field_22376_22377) (v_1@@107 T@FrameType) (q@@101 T@Field_24505_24506) (w@@107 T@FrameType) (r@@101 T@Field_25026_25027) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_9527 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_9527_25026 q@@101 w@@107 r@@101 u@@101)) (InsidePredicate_22376_25026 p@@108 v_1@@107 r@@101 u@@101))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_9527 p@@108 v_1@@107 q@@101 w@@107) (InsidePredicate_9527_25026 q@@101 w@@107 r@@101 u@@101))
)))
(assert (forall ((p@@109 T@Field_22376_22377) (v_1@@108 T@FrameType) (q@@102 T@Field_24505_24506) (w@@108 T@FrameType) (r@@102 T@Field_24558_24559) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_9527 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_9527_24558 q@@102 w@@108 r@@102 u@@102)) (InsidePredicate_22376_24558 p@@109 v_1@@108 r@@102 u@@102))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_9527 p@@109 v_1@@108 q@@102 w@@108) (InsidePredicate_9527_24558 q@@102 w@@108 r@@102 u@@102))
)))
(assert (forall ((p@@110 T@Field_22376_22377) (v_1@@109 T@FrameType) (q@@103 T@Field_24505_24506) (w@@109 T@FrameType) (r@@103 T@Field_22376_22377) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_9527 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_9527_22376 q@@103 w@@109 r@@103 u@@103)) (InsidePredicate_22376_22376 p@@110 v_1@@109 r@@103 u@@103))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_9527 p@@110 v_1@@109 q@@103 w@@109) (InsidePredicate_9527_22376 q@@103 w@@109 r@@103 u@@103))
)))
(assert (forall ((p@@111 T@Field_22376_22377) (v_1@@110 T@FrameType) (q@@104 T@Field_24505_24506) (w@@110 T@FrameType) (r@@104 T@Field_9317_22377) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_9527 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_9527_15274 q@@104 w@@110 r@@104 u@@104)) (InsidePredicate_22376_15274 p@@111 v_1@@110 r@@104 u@@104))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_9527 p@@111 v_1@@110 q@@104 w@@110) (InsidePredicate_9527_15274 q@@104 w@@110 r@@104 u@@104))
)))
(assert (forall ((p@@112 T@Field_22376_22377) (v_1@@111 T@FrameType) (q@@105 T@Field_24505_24506) (w@@111 T@FrameType) (r@@105 T@Field_27408_27409) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_9527 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_9527_9552 q@@105 w@@111 r@@105 u@@105)) (InsidePredicate_22376_9552 p@@112 v_1@@111 r@@105 u@@105))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_9527 p@@112 v_1@@111 q@@105 w@@111) (InsidePredicate_9527_9552 q@@105 w@@111 r@@105 u@@105))
)))
(assert (forall ((p@@113 T@Field_22376_22377) (v_1@@112 T@FrameType) (q@@106 T@Field_24505_24506) (w@@112 T@FrameType) (r@@106 T@Field_24505_24506) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_22376_9527 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_9527_9527 q@@106 w@@112 r@@106 u@@106)) (InsidePredicate_22376_9527 p@@113 v_1@@112 r@@106 u@@106))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_22376_9527 p@@113 v_1@@112 q@@106 w@@112) (InsidePredicate_9527_9527 q@@106 w@@112 r@@106 u@@106))
)))
(assert (forall ((p@@114 T@Field_9317_22377) (v_1@@113 T@FrameType) (q@@107 T@Field_25026_25027) (w@@113 T@FrameType) (r@@107 T@Field_25026_25027) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_25026 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_25026_25026 q@@107 w@@113 r@@107 u@@107)) (InsidePredicate_15274_25026 p@@114 v_1@@113 r@@107 u@@107))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_25026 p@@114 v_1@@113 q@@107 w@@113) (InsidePredicate_25026_25026 q@@107 w@@113 r@@107 u@@107))
)))
(assert (forall ((p@@115 T@Field_9317_22377) (v_1@@114 T@FrameType) (q@@108 T@Field_25026_25027) (w@@114 T@FrameType) (r@@108 T@Field_24558_24559) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_25026 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_25026_24558 q@@108 w@@114 r@@108 u@@108)) (InsidePredicate_15274_24558 p@@115 v_1@@114 r@@108 u@@108))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_25026 p@@115 v_1@@114 q@@108 w@@114) (InsidePredicate_25026_24558 q@@108 w@@114 r@@108 u@@108))
)))
(assert (forall ((p@@116 T@Field_9317_22377) (v_1@@115 T@FrameType) (q@@109 T@Field_25026_25027) (w@@115 T@FrameType) (r@@109 T@Field_22376_22377) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_25026 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_25026_22376 q@@109 w@@115 r@@109 u@@109)) (InsidePredicate_15274_22376 p@@116 v_1@@115 r@@109 u@@109))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_25026 p@@116 v_1@@115 q@@109 w@@115) (InsidePredicate_25026_22376 q@@109 w@@115 r@@109 u@@109))
)))
(assert (forall ((p@@117 T@Field_9317_22377) (v_1@@116 T@FrameType) (q@@110 T@Field_25026_25027) (w@@116 T@FrameType) (r@@110 T@Field_9317_22377) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_25026 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_25026_15274 q@@110 w@@116 r@@110 u@@110)) (InsidePredicate_15274_15274 p@@117 v_1@@116 r@@110 u@@110))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_25026 p@@117 v_1@@116 q@@110 w@@116) (InsidePredicate_25026_15274 q@@110 w@@116 r@@110 u@@110))
)))
(assert (forall ((p@@118 T@Field_9317_22377) (v_1@@117 T@FrameType) (q@@111 T@Field_25026_25027) (w@@117 T@FrameType) (r@@111 T@Field_27408_27409) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_25026 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_25026_9552 q@@111 w@@117 r@@111 u@@111)) (InsidePredicate_15274_9552 p@@118 v_1@@117 r@@111 u@@111))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_25026 p@@118 v_1@@117 q@@111 w@@117) (InsidePredicate_25026_9552 q@@111 w@@117 r@@111 u@@111))
)))
(assert (forall ((p@@119 T@Field_9317_22377) (v_1@@118 T@FrameType) (q@@112 T@Field_25026_25027) (w@@118 T@FrameType) (r@@112 T@Field_24505_24506) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_25026 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_25026_9527 q@@112 w@@118 r@@112 u@@112)) (InsidePredicate_15274_9527 p@@119 v_1@@118 r@@112 u@@112))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_25026 p@@119 v_1@@118 q@@112 w@@118) (InsidePredicate_25026_9527 q@@112 w@@118 r@@112 u@@112))
)))
(assert (forall ((p@@120 T@Field_9317_22377) (v_1@@119 T@FrameType) (q@@113 T@Field_24558_24559) (w@@119 T@FrameType) (r@@113 T@Field_25026_25027) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_24558 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_24558_25026 q@@113 w@@119 r@@113 u@@113)) (InsidePredicate_15274_25026 p@@120 v_1@@119 r@@113 u@@113))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_24558 p@@120 v_1@@119 q@@113 w@@119) (InsidePredicate_24558_25026 q@@113 w@@119 r@@113 u@@113))
)))
(assert (forall ((p@@121 T@Field_9317_22377) (v_1@@120 T@FrameType) (q@@114 T@Field_24558_24559) (w@@120 T@FrameType) (r@@114 T@Field_24558_24559) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_24558 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_24558_24558 q@@114 w@@120 r@@114 u@@114)) (InsidePredicate_15274_24558 p@@121 v_1@@120 r@@114 u@@114))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_24558 p@@121 v_1@@120 q@@114 w@@120) (InsidePredicate_24558_24558 q@@114 w@@120 r@@114 u@@114))
)))
(assert (forall ((p@@122 T@Field_9317_22377) (v_1@@121 T@FrameType) (q@@115 T@Field_24558_24559) (w@@121 T@FrameType) (r@@115 T@Field_22376_22377) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_24558 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_24558_22376 q@@115 w@@121 r@@115 u@@115)) (InsidePredicate_15274_22376 p@@122 v_1@@121 r@@115 u@@115))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_24558 p@@122 v_1@@121 q@@115 w@@121) (InsidePredicate_24558_22376 q@@115 w@@121 r@@115 u@@115))
)))
(assert (forall ((p@@123 T@Field_9317_22377) (v_1@@122 T@FrameType) (q@@116 T@Field_24558_24559) (w@@122 T@FrameType) (r@@116 T@Field_9317_22377) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_24558 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_24558_15274 q@@116 w@@122 r@@116 u@@116)) (InsidePredicate_15274_15274 p@@123 v_1@@122 r@@116 u@@116))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_24558 p@@123 v_1@@122 q@@116 w@@122) (InsidePredicate_24558_15274 q@@116 w@@122 r@@116 u@@116))
)))
(assert (forall ((p@@124 T@Field_9317_22377) (v_1@@123 T@FrameType) (q@@117 T@Field_24558_24559) (w@@123 T@FrameType) (r@@117 T@Field_27408_27409) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_24558 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_24558_9552 q@@117 w@@123 r@@117 u@@117)) (InsidePredicate_15274_9552 p@@124 v_1@@123 r@@117 u@@117))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_24558 p@@124 v_1@@123 q@@117 w@@123) (InsidePredicate_24558_9552 q@@117 w@@123 r@@117 u@@117))
)))
(assert (forall ((p@@125 T@Field_9317_22377) (v_1@@124 T@FrameType) (q@@118 T@Field_24558_24559) (w@@124 T@FrameType) (r@@118 T@Field_24505_24506) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_24558 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_24558_9527 q@@118 w@@124 r@@118 u@@118)) (InsidePredicate_15274_9527 p@@125 v_1@@124 r@@118 u@@118))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_24558 p@@125 v_1@@124 q@@118 w@@124) (InsidePredicate_24558_9527 q@@118 w@@124 r@@118 u@@118))
)))
(assert (forall ((p@@126 T@Field_9317_22377) (v_1@@125 T@FrameType) (q@@119 T@Field_22376_22377) (w@@125 T@FrameType) (r@@119 T@Field_25026_25027) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_22376 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_22376_25026 q@@119 w@@125 r@@119 u@@119)) (InsidePredicate_15274_25026 p@@126 v_1@@125 r@@119 u@@119))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_22376 p@@126 v_1@@125 q@@119 w@@125) (InsidePredicate_22376_25026 q@@119 w@@125 r@@119 u@@119))
)))
(assert (forall ((p@@127 T@Field_9317_22377) (v_1@@126 T@FrameType) (q@@120 T@Field_22376_22377) (w@@126 T@FrameType) (r@@120 T@Field_24558_24559) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_22376 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_22376_24558 q@@120 w@@126 r@@120 u@@120)) (InsidePredicate_15274_24558 p@@127 v_1@@126 r@@120 u@@120))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_22376 p@@127 v_1@@126 q@@120 w@@126) (InsidePredicate_22376_24558 q@@120 w@@126 r@@120 u@@120))
)))
(assert (forall ((p@@128 T@Field_9317_22377) (v_1@@127 T@FrameType) (q@@121 T@Field_22376_22377) (w@@127 T@FrameType) (r@@121 T@Field_22376_22377) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_22376 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_22376_22376 q@@121 w@@127 r@@121 u@@121)) (InsidePredicate_15274_22376 p@@128 v_1@@127 r@@121 u@@121))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_22376 p@@128 v_1@@127 q@@121 w@@127) (InsidePredicate_22376_22376 q@@121 w@@127 r@@121 u@@121))
)))
(assert (forall ((p@@129 T@Field_9317_22377) (v_1@@128 T@FrameType) (q@@122 T@Field_22376_22377) (w@@128 T@FrameType) (r@@122 T@Field_9317_22377) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_22376 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_22376_15274 q@@122 w@@128 r@@122 u@@122)) (InsidePredicate_15274_15274 p@@129 v_1@@128 r@@122 u@@122))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_22376 p@@129 v_1@@128 q@@122 w@@128) (InsidePredicate_22376_15274 q@@122 w@@128 r@@122 u@@122))
)))
(assert (forall ((p@@130 T@Field_9317_22377) (v_1@@129 T@FrameType) (q@@123 T@Field_22376_22377) (w@@129 T@FrameType) (r@@123 T@Field_27408_27409) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_22376 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_22376_9552 q@@123 w@@129 r@@123 u@@123)) (InsidePredicate_15274_9552 p@@130 v_1@@129 r@@123 u@@123))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_22376 p@@130 v_1@@129 q@@123 w@@129) (InsidePredicate_22376_9552 q@@123 w@@129 r@@123 u@@123))
)))
(assert (forall ((p@@131 T@Field_9317_22377) (v_1@@130 T@FrameType) (q@@124 T@Field_22376_22377) (w@@130 T@FrameType) (r@@124 T@Field_24505_24506) (u@@124 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_22376 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_22376_9527 q@@124 w@@130 r@@124 u@@124)) (InsidePredicate_15274_9527 p@@131 v_1@@130 r@@124 u@@124))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_22376 p@@131 v_1@@130 q@@124 w@@130) (InsidePredicate_22376_9527 q@@124 w@@130 r@@124 u@@124))
)))
(assert (forall ((p@@132 T@Field_9317_22377) (v_1@@131 T@FrameType) (q@@125 T@Field_9317_22377) (w@@131 T@FrameType) (r@@125 T@Field_25026_25027) (u@@125 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_15274 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_15274_25026 q@@125 w@@131 r@@125 u@@125)) (InsidePredicate_15274_25026 p@@132 v_1@@131 r@@125 u@@125))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_15274 p@@132 v_1@@131 q@@125 w@@131) (InsidePredicate_15274_25026 q@@125 w@@131 r@@125 u@@125))
)))
(assert (forall ((p@@133 T@Field_9317_22377) (v_1@@132 T@FrameType) (q@@126 T@Field_9317_22377) (w@@132 T@FrameType) (r@@126 T@Field_24558_24559) (u@@126 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_15274 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_15274_24558 q@@126 w@@132 r@@126 u@@126)) (InsidePredicate_15274_24558 p@@133 v_1@@132 r@@126 u@@126))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_15274 p@@133 v_1@@132 q@@126 w@@132) (InsidePredicate_15274_24558 q@@126 w@@132 r@@126 u@@126))
)))
(assert (forall ((p@@134 T@Field_9317_22377) (v_1@@133 T@FrameType) (q@@127 T@Field_9317_22377) (w@@133 T@FrameType) (r@@127 T@Field_22376_22377) (u@@127 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_15274 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_15274_22376 q@@127 w@@133 r@@127 u@@127)) (InsidePredicate_15274_22376 p@@134 v_1@@133 r@@127 u@@127))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_15274 p@@134 v_1@@133 q@@127 w@@133) (InsidePredicate_15274_22376 q@@127 w@@133 r@@127 u@@127))
)))
(assert (forall ((p@@135 T@Field_9317_22377) (v_1@@134 T@FrameType) (q@@128 T@Field_9317_22377) (w@@134 T@FrameType) (r@@128 T@Field_9317_22377) (u@@128 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_15274 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_15274_15274 q@@128 w@@134 r@@128 u@@128)) (InsidePredicate_15274_15274 p@@135 v_1@@134 r@@128 u@@128))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_15274 p@@135 v_1@@134 q@@128 w@@134) (InsidePredicate_15274_15274 q@@128 w@@134 r@@128 u@@128))
)))
(assert (forall ((p@@136 T@Field_9317_22377) (v_1@@135 T@FrameType) (q@@129 T@Field_9317_22377) (w@@135 T@FrameType) (r@@129 T@Field_27408_27409) (u@@129 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_15274 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_15274_9552 q@@129 w@@135 r@@129 u@@129)) (InsidePredicate_15274_9552 p@@136 v_1@@135 r@@129 u@@129))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_15274 p@@136 v_1@@135 q@@129 w@@135) (InsidePredicate_15274_9552 q@@129 w@@135 r@@129 u@@129))
)))
(assert (forall ((p@@137 T@Field_9317_22377) (v_1@@136 T@FrameType) (q@@130 T@Field_9317_22377) (w@@136 T@FrameType) (r@@130 T@Field_24505_24506) (u@@130 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_15274 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_15274_9527 q@@130 w@@136 r@@130 u@@130)) (InsidePredicate_15274_9527 p@@137 v_1@@136 r@@130 u@@130))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_15274 p@@137 v_1@@136 q@@130 w@@136) (InsidePredicate_15274_9527 q@@130 w@@136 r@@130 u@@130))
)))
(assert (forall ((p@@138 T@Field_9317_22377) (v_1@@137 T@FrameType) (q@@131 T@Field_27408_27409) (w@@137 T@FrameType) (r@@131 T@Field_25026_25027) (u@@131 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_9552 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_9552_25026 q@@131 w@@137 r@@131 u@@131)) (InsidePredicate_15274_25026 p@@138 v_1@@137 r@@131 u@@131))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_9552 p@@138 v_1@@137 q@@131 w@@137) (InsidePredicate_9552_25026 q@@131 w@@137 r@@131 u@@131))
)))
(assert (forall ((p@@139 T@Field_9317_22377) (v_1@@138 T@FrameType) (q@@132 T@Field_27408_27409) (w@@138 T@FrameType) (r@@132 T@Field_24558_24559) (u@@132 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_9552 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_9552_24558 q@@132 w@@138 r@@132 u@@132)) (InsidePredicate_15274_24558 p@@139 v_1@@138 r@@132 u@@132))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_9552 p@@139 v_1@@138 q@@132 w@@138) (InsidePredicate_9552_24558 q@@132 w@@138 r@@132 u@@132))
)))
(assert (forall ((p@@140 T@Field_9317_22377) (v_1@@139 T@FrameType) (q@@133 T@Field_27408_27409) (w@@139 T@FrameType) (r@@133 T@Field_22376_22377) (u@@133 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_9552 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_9552_22376 q@@133 w@@139 r@@133 u@@133)) (InsidePredicate_15274_22376 p@@140 v_1@@139 r@@133 u@@133))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_9552 p@@140 v_1@@139 q@@133 w@@139) (InsidePredicate_9552_22376 q@@133 w@@139 r@@133 u@@133))
)))
(assert (forall ((p@@141 T@Field_9317_22377) (v_1@@140 T@FrameType) (q@@134 T@Field_27408_27409) (w@@140 T@FrameType) (r@@134 T@Field_9317_22377) (u@@134 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_9552 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_9552_15274 q@@134 w@@140 r@@134 u@@134)) (InsidePredicate_15274_15274 p@@141 v_1@@140 r@@134 u@@134))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_9552 p@@141 v_1@@140 q@@134 w@@140) (InsidePredicate_9552_15274 q@@134 w@@140 r@@134 u@@134))
)))
(assert (forall ((p@@142 T@Field_9317_22377) (v_1@@141 T@FrameType) (q@@135 T@Field_27408_27409) (w@@141 T@FrameType) (r@@135 T@Field_27408_27409) (u@@135 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_9552 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_9552_9552 q@@135 w@@141 r@@135 u@@135)) (InsidePredicate_15274_9552 p@@142 v_1@@141 r@@135 u@@135))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_9552 p@@142 v_1@@141 q@@135 w@@141) (InsidePredicate_9552_9552 q@@135 w@@141 r@@135 u@@135))
)))
(assert (forall ((p@@143 T@Field_9317_22377) (v_1@@142 T@FrameType) (q@@136 T@Field_27408_27409) (w@@142 T@FrameType) (r@@136 T@Field_24505_24506) (u@@136 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_9552 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_9552_9527 q@@136 w@@142 r@@136 u@@136)) (InsidePredicate_15274_9527 p@@143 v_1@@142 r@@136 u@@136))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_9552 p@@143 v_1@@142 q@@136 w@@142) (InsidePredicate_9552_9527 q@@136 w@@142 r@@136 u@@136))
)))
(assert (forall ((p@@144 T@Field_9317_22377) (v_1@@143 T@FrameType) (q@@137 T@Field_24505_24506) (w@@143 T@FrameType) (r@@137 T@Field_25026_25027) (u@@137 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_9527 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_9527_25026 q@@137 w@@143 r@@137 u@@137)) (InsidePredicate_15274_25026 p@@144 v_1@@143 r@@137 u@@137))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_9527 p@@144 v_1@@143 q@@137 w@@143) (InsidePredicate_9527_25026 q@@137 w@@143 r@@137 u@@137))
)))
(assert (forall ((p@@145 T@Field_9317_22377) (v_1@@144 T@FrameType) (q@@138 T@Field_24505_24506) (w@@144 T@FrameType) (r@@138 T@Field_24558_24559) (u@@138 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_9527 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_9527_24558 q@@138 w@@144 r@@138 u@@138)) (InsidePredicate_15274_24558 p@@145 v_1@@144 r@@138 u@@138))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_9527 p@@145 v_1@@144 q@@138 w@@144) (InsidePredicate_9527_24558 q@@138 w@@144 r@@138 u@@138))
)))
(assert (forall ((p@@146 T@Field_9317_22377) (v_1@@145 T@FrameType) (q@@139 T@Field_24505_24506) (w@@145 T@FrameType) (r@@139 T@Field_22376_22377) (u@@139 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_9527 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_9527_22376 q@@139 w@@145 r@@139 u@@139)) (InsidePredicate_15274_22376 p@@146 v_1@@145 r@@139 u@@139))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_9527 p@@146 v_1@@145 q@@139 w@@145) (InsidePredicate_9527_22376 q@@139 w@@145 r@@139 u@@139))
)))
(assert (forall ((p@@147 T@Field_9317_22377) (v_1@@146 T@FrameType) (q@@140 T@Field_24505_24506) (w@@146 T@FrameType) (r@@140 T@Field_9317_22377) (u@@140 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_9527 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_9527_15274 q@@140 w@@146 r@@140 u@@140)) (InsidePredicate_15274_15274 p@@147 v_1@@146 r@@140 u@@140))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_9527 p@@147 v_1@@146 q@@140 w@@146) (InsidePredicate_9527_15274 q@@140 w@@146 r@@140 u@@140))
)))
(assert (forall ((p@@148 T@Field_9317_22377) (v_1@@147 T@FrameType) (q@@141 T@Field_24505_24506) (w@@147 T@FrameType) (r@@141 T@Field_27408_27409) (u@@141 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_9527 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_9527_9552 q@@141 w@@147 r@@141 u@@141)) (InsidePredicate_15274_9552 p@@148 v_1@@147 r@@141 u@@141))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_9527 p@@148 v_1@@147 q@@141 w@@147) (InsidePredicate_9527_9552 q@@141 w@@147 r@@141 u@@141))
)))
(assert (forall ((p@@149 T@Field_9317_22377) (v_1@@148 T@FrameType) (q@@142 T@Field_24505_24506) (w@@148 T@FrameType) (r@@142 T@Field_24505_24506) (u@@142 T@FrameType) ) (!  (=> (and (InsidePredicate_15274_9527 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_9527_9527 q@@142 w@@148 r@@142 u@@142)) (InsidePredicate_15274_9527 p@@149 v_1@@148 r@@142 u@@142))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15274_9527 p@@149 v_1@@148 q@@142 w@@148) (InsidePredicate_9527_9527 q@@142 w@@148 r@@142 u@@142))
)))
(assert (forall ((p@@150 T@Field_27408_27409) (v_1@@149 T@FrameType) (q@@143 T@Field_25026_25027) (w@@149 T@FrameType) (r@@143 T@Field_25026_25027) (u@@143 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_25026 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_25026_25026 q@@143 w@@149 r@@143 u@@143)) (InsidePredicate_9552_25026 p@@150 v_1@@149 r@@143 u@@143))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_25026 p@@150 v_1@@149 q@@143 w@@149) (InsidePredicate_25026_25026 q@@143 w@@149 r@@143 u@@143))
)))
(assert (forall ((p@@151 T@Field_27408_27409) (v_1@@150 T@FrameType) (q@@144 T@Field_25026_25027) (w@@150 T@FrameType) (r@@144 T@Field_24558_24559) (u@@144 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_25026 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_25026_24558 q@@144 w@@150 r@@144 u@@144)) (InsidePredicate_9552_24558 p@@151 v_1@@150 r@@144 u@@144))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_25026 p@@151 v_1@@150 q@@144 w@@150) (InsidePredicate_25026_24558 q@@144 w@@150 r@@144 u@@144))
)))
(assert (forall ((p@@152 T@Field_27408_27409) (v_1@@151 T@FrameType) (q@@145 T@Field_25026_25027) (w@@151 T@FrameType) (r@@145 T@Field_22376_22377) (u@@145 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_25026 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_25026_22376 q@@145 w@@151 r@@145 u@@145)) (InsidePredicate_9552_22376 p@@152 v_1@@151 r@@145 u@@145))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_25026 p@@152 v_1@@151 q@@145 w@@151) (InsidePredicate_25026_22376 q@@145 w@@151 r@@145 u@@145))
)))
(assert (forall ((p@@153 T@Field_27408_27409) (v_1@@152 T@FrameType) (q@@146 T@Field_25026_25027) (w@@152 T@FrameType) (r@@146 T@Field_9317_22377) (u@@146 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_25026 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_25026_15274 q@@146 w@@152 r@@146 u@@146)) (InsidePredicate_9552_15274 p@@153 v_1@@152 r@@146 u@@146))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_25026 p@@153 v_1@@152 q@@146 w@@152) (InsidePredicate_25026_15274 q@@146 w@@152 r@@146 u@@146))
)))
(assert (forall ((p@@154 T@Field_27408_27409) (v_1@@153 T@FrameType) (q@@147 T@Field_25026_25027) (w@@153 T@FrameType) (r@@147 T@Field_27408_27409) (u@@147 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_25026 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_25026_9552 q@@147 w@@153 r@@147 u@@147)) (InsidePredicate_9552_9552 p@@154 v_1@@153 r@@147 u@@147))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_25026 p@@154 v_1@@153 q@@147 w@@153) (InsidePredicate_25026_9552 q@@147 w@@153 r@@147 u@@147))
)))
(assert (forall ((p@@155 T@Field_27408_27409) (v_1@@154 T@FrameType) (q@@148 T@Field_25026_25027) (w@@154 T@FrameType) (r@@148 T@Field_24505_24506) (u@@148 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_25026 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_25026_9527 q@@148 w@@154 r@@148 u@@148)) (InsidePredicate_9552_9527 p@@155 v_1@@154 r@@148 u@@148))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_25026 p@@155 v_1@@154 q@@148 w@@154) (InsidePredicate_25026_9527 q@@148 w@@154 r@@148 u@@148))
)))
(assert (forall ((p@@156 T@Field_27408_27409) (v_1@@155 T@FrameType) (q@@149 T@Field_24558_24559) (w@@155 T@FrameType) (r@@149 T@Field_25026_25027) (u@@149 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_24558 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_24558_25026 q@@149 w@@155 r@@149 u@@149)) (InsidePredicate_9552_25026 p@@156 v_1@@155 r@@149 u@@149))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_24558 p@@156 v_1@@155 q@@149 w@@155) (InsidePredicate_24558_25026 q@@149 w@@155 r@@149 u@@149))
)))
(assert (forall ((p@@157 T@Field_27408_27409) (v_1@@156 T@FrameType) (q@@150 T@Field_24558_24559) (w@@156 T@FrameType) (r@@150 T@Field_24558_24559) (u@@150 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_24558 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_24558_24558 q@@150 w@@156 r@@150 u@@150)) (InsidePredicate_9552_24558 p@@157 v_1@@156 r@@150 u@@150))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_24558 p@@157 v_1@@156 q@@150 w@@156) (InsidePredicate_24558_24558 q@@150 w@@156 r@@150 u@@150))
)))
(assert (forall ((p@@158 T@Field_27408_27409) (v_1@@157 T@FrameType) (q@@151 T@Field_24558_24559) (w@@157 T@FrameType) (r@@151 T@Field_22376_22377) (u@@151 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_24558 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_24558_22376 q@@151 w@@157 r@@151 u@@151)) (InsidePredicate_9552_22376 p@@158 v_1@@157 r@@151 u@@151))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_24558 p@@158 v_1@@157 q@@151 w@@157) (InsidePredicate_24558_22376 q@@151 w@@157 r@@151 u@@151))
)))
(assert (forall ((p@@159 T@Field_27408_27409) (v_1@@158 T@FrameType) (q@@152 T@Field_24558_24559) (w@@158 T@FrameType) (r@@152 T@Field_9317_22377) (u@@152 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_24558 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_24558_15274 q@@152 w@@158 r@@152 u@@152)) (InsidePredicate_9552_15274 p@@159 v_1@@158 r@@152 u@@152))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_24558 p@@159 v_1@@158 q@@152 w@@158) (InsidePredicate_24558_15274 q@@152 w@@158 r@@152 u@@152))
)))
(assert (forall ((p@@160 T@Field_27408_27409) (v_1@@159 T@FrameType) (q@@153 T@Field_24558_24559) (w@@159 T@FrameType) (r@@153 T@Field_27408_27409) (u@@153 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_24558 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_24558_9552 q@@153 w@@159 r@@153 u@@153)) (InsidePredicate_9552_9552 p@@160 v_1@@159 r@@153 u@@153))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_24558 p@@160 v_1@@159 q@@153 w@@159) (InsidePredicate_24558_9552 q@@153 w@@159 r@@153 u@@153))
)))
(assert (forall ((p@@161 T@Field_27408_27409) (v_1@@160 T@FrameType) (q@@154 T@Field_24558_24559) (w@@160 T@FrameType) (r@@154 T@Field_24505_24506) (u@@154 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_24558 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_24558_9527 q@@154 w@@160 r@@154 u@@154)) (InsidePredicate_9552_9527 p@@161 v_1@@160 r@@154 u@@154))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_24558 p@@161 v_1@@160 q@@154 w@@160) (InsidePredicate_24558_9527 q@@154 w@@160 r@@154 u@@154))
)))
(assert (forall ((p@@162 T@Field_27408_27409) (v_1@@161 T@FrameType) (q@@155 T@Field_22376_22377) (w@@161 T@FrameType) (r@@155 T@Field_25026_25027) (u@@155 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_22376 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_22376_25026 q@@155 w@@161 r@@155 u@@155)) (InsidePredicate_9552_25026 p@@162 v_1@@161 r@@155 u@@155))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_22376 p@@162 v_1@@161 q@@155 w@@161) (InsidePredicate_22376_25026 q@@155 w@@161 r@@155 u@@155))
)))
(assert (forall ((p@@163 T@Field_27408_27409) (v_1@@162 T@FrameType) (q@@156 T@Field_22376_22377) (w@@162 T@FrameType) (r@@156 T@Field_24558_24559) (u@@156 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_22376 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_22376_24558 q@@156 w@@162 r@@156 u@@156)) (InsidePredicate_9552_24558 p@@163 v_1@@162 r@@156 u@@156))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_22376 p@@163 v_1@@162 q@@156 w@@162) (InsidePredicate_22376_24558 q@@156 w@@162 r@@156 u@@156))
)))
(assert (forall ((p@@164 T@Field_27408_27409) (v_1@@163 T@FrameType) (q@@157 T@Field_22376_22377) (w@@163 T@FrameType) (r@@157 T@Field_22376_22377) (u@@157 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_22376 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_22376_22376 q@@157 w@@163 r@@157 u@@157)) (InsidePredicate_9552_22376 p@@164 v_1@@163 r@@157 u@@157))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_22376 p@@164 v_1@@163 q@@157 w@@163) (InsidePredicate_22376_22376 q@@157 w@@163 r@@157 u@@157))
)))
(assert (forall ((p@@165 T@Field_27408_27409) (v_1@@164 T@FrameType) (q@@158 T@Field_22376_22377) (w@@164 T@FrameType) (r@@158 T@Field_9317_22377) (u@@158 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_22376 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_22376_15274 q@@158 w@@164 r@@158 u@@158)) (InsidePredicate_9552_15274 p@@165 v_1@@164 r@@158 u@@158))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_22376 p@@165 v_1@@164 q@@158 w@@164) (InsidePredicate_22376_15274 q@@158 w@@164 r@@158 u@@158))
)))
(assert (forall ((p@@166 T@Field_27408_27409) (v_1@@165 T@FrameType) (q@@159 T@Field_22376_22377) (w@@165 T@FrameType) (r@@159 T@Field_27408_27409) (u@@159 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_22376 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_22376_9552 q@@159 w@@165 r@@159 u@@159)) (InsidePredicate_9552_9552 p@@166 v_1@@165 r@@159 u@@159))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_22376 p@@166 v_1@@165 q@@159 w@@165) (InsidePredicate_22376_9552 q@@159 w@@165 r@@159 u@@159))
)))
(assert (forall ((p@@167 T@Field_27408_27409) (v_1@@166 T@FrameType) (q@@160 T@Field_22376_22377) (w@@166 T@FrameType) (r@@160 T@Field_24505_24506) (u@@160 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_22376 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_22376_9527 q@@160 w@@166 r@@160 u@@160)) (InsidePredicate_9552_9527 p@@167 v_1@@166 r@@160 u@@160))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_22376 p@@167 v_1@@166 q@@160 w@@166) (InsidePredicate_22376_9527 q@@160 w@@166 r@@160 u@@160))
)))
(assert (forall ((p@@168 T@Field_27408_27409) (v_1@@167 T@FrameType) (q@@161 T@Field_9317_22377) (w@@167 T@FrameType) (r@@161 T@Field_25026_25027) (u@@161 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_15274 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_15274_25026 q@@161 w@@167 r@@161 u@@161)) (InsidePredicate_9552_25026 p@@168 v_1@@167 r@@161 u@@161))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_15274 p@@168 v_1@@167 q@@161 w@@167) (InsidePredicate_15274_25026 q@@161 w@@167 r@@161 u@@161))
)))
(assert (forall ((p@@169 T@Field_27408_27409) (v_1@@168 T@FrameType) (q@@162 T@Field_9317_22377) (w@@168 T@FrameType) (r@@162 T@Field_24558_24559) (u@@162 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_15274 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_15274_24558 q@@162 w@@168 r@@162 u@@162)) (InsidePredicate_9552_24558 p@@169 v_1@@168 r@@162 u@@162))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_15274 p@@169 v_1@@168 q@@162 w@@168) (InsidePredicate_15274_24558 q@@162 w@@168 r@@162 u@@162))
)))
(assert (forall ((p@@170 T@Field_27408_27409) (v_1@@169 T@FrameType) (q@@163 T@Field_9317_22377) (w@@169 T@FrameType) (r@@163 T@Field_22376_22377) (u@@163 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_15274 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_15274_22376 q@@163 w@@169 r@@163 u@@163)) (InsidePredicate_9552_22376 p@@170 v_1@@169 r@@163 u@@163))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_15274 p@@170 v_1@@169 q@@163 w@@169) (InsidePredicate_15274_22376 q@@163 w@@169 r@@163 u@@163))
)))
(assert (forall ((p@@171 T@Field_27408_27409) (v_1@@170 T@FrameType) (q@@164 T@Field_9317_22377) (w@@170 T@FrameType) (r@@164 T@Field_9317_22377) (u@@164 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_15274 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_15274_15274 q@@164 w@@170 r@@164 u@@164)) (InsidePredicate_9552_15274 p@@171 v_1@@170 r@@164 u@@164))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_15274 p@@171 v_1@@170 q@@164 w@@170) (InsidePredicate_15274_15274 q@@164 w@@170 r@@164 u@@164))
)))
(assert (forall ((p@@172 T@Field_27408_27409) (v_1@@171 T@FrameType) (q@@165 T@Field_9317_22377) (w@@171 T@FrameType) (r@@165 T@Field_27408_27409) (u@@165 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_15274 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_15274_9552 q@@165 w@@171 r@@165 u@@165)) (InsidePredicate_9552_9552 p@@172 v_1@@171 r@@165 u@@165))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_15274 p@@172 v_1@@171 q@@165 w@@171) (InsidePredicate_15274_9552 q@@165 w@@171 r@@165 u@@165))
)))
(assert (forall ((p@@173 T@Field_27408_27409) (v_1@@172 T@FrameType) (q@@166 T@Field_9317_22377) (w@@172 T@FrameType) (r@@166 T@Field_24505_24506) (u@@166 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_15274 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_15274_9527 q@@166 w@@172 r@@166 u@@166)) (InsidePredicate_9552_9527 p@@173 v_1@@172 r@@166 u@@166))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_15274 p@@173 v_1@@172 q@@166 w@@172) (InsidePredicate_15274_9527 q@@166 w@@172 r@@166 u@@166))
)))
(assert (forall ((p@@174 T@Field_27408_27409) (v_1@@173 T@FrameType) (q@@167 T@Field_27408_27409) (w@@173 T@FrameType) (r@@167 T@Field_25026_25027) (u@@167 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_9552 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_9552_25026 q@@167 w@@173 r@@167 u@@167)) (InsidePredicate_9552_25026 p@@174 v_1@@173 r@@167 u@@167))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_9552 p@@174 v_1@@173 q@@167 w@@173) (InsidePredicate_9552_25026 q@@167 w@@173 r@@167 u@@167))
)))
(assert (forall ((p@@175 T@Field_27408_27409) (v_1@@174 T@FrameType) (q@@168 T@Field_27408_27409) (w@@174 T@FrameType) (r@@168 T@Field_24558_24559) (u@@168 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_9552 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_9552_24558 q@@168 w@@174 r@@168 u@@168)) (InsidePredicate_9552_24558 p@@175 v_1@@174 r@@168 u@@168))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_9552 p@@175 v_1@@174 q@@168 w@@174) (InsidePredicate_9552_24558 q@@168 w@@174 r@@168 u@@168))
)))
(assert (forall ((p@@176 T@Field_27408_27409) (v_1@@175 T@FrameType) (q@@169 T@Field_27408_27409) (w@@175 T@FrameType) (r@@169 T@Field_22376_22377) (u@@169 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_9552 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_9552_22376 q@@169 w@@175 r@@169 u@@169)) (InsidePredicate_9552_22376 p@@176 v_1@@175 r@@169 u@@169))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_9552 p@@176 v_1@@175 q@@169 w@@175) (InsidePredicate_9552_22376 q@@169 w@@175 r@@169 u@@169))
)))
(assert (forall ((p@@177 T@Field_27408_27409) (v_1@@176 T@FrameType) (q@@170 T@Field_27408_27409) (w@@176 T@FrameType) (r@@170 T@Field_9317_22377) (u@@170 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_9552 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_9552_15274 q@@170 w@@176 r@@170 u@@170)) (InsidePredicate_9552_15274 p@@177 v_1@@176 r@@170 u@@170))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_9552 p@@177 v_1@@176 q@@170 w@@176) (InsidePredicate_9552_15274 q@@170 w@@176 r@@170 u@@170))
)))
(assert (forall ((p@@178 T@Field_27408_27409) (v_1@@177 T@FrameType) (q@@171 T@Field_27408_27409) (w@@177 T@FrameType) (r@@171 T@Field_27408_27409) (u@@171 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_9552 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_9552_9552 q@@171 w@@177 r@@171 u@@171)) (InsidePredicate_9552_9552 p@@178 v_1@@177 r@@171 u@@171))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_9552 p@@178 v_1@@177 q@@171 w@@177) (InsidePredicate_9552_9552 q@@171 w@@177 r@@171 u@@171))
)))
(assert (forall ((p@@179 T@Field_27408_27409) (v_1@@178 T@FrameType) (q@@172 T@Field_27408_27409) (w@@178 T@FrameType) (r@@172 T@Field_24505_24506) (u@@172 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_9552 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_9552_9527 q@@172 w@@178 r@@172 u@@172)) (InsidePredicate_9552_9527 p@@179 v_1@@178 r@@172 u@@172))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_9552 p@@179 v_1@@178 q@@172 w@@178) (InsidePredicate_9552_9527 q@@172 w@@178 r@@172 u@@172))
)))
(assert (forall ((p@@180 T@Field_27408_27409) (v_1@@179 T@FrameType) (q@@173 T@Field_24505_24506) (w@@179 T@FrameType) (r@@173 T@Field_25026_25027) (u@@173 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_9527 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_9527_25026 q@@173 w@@179 r@@173 u@@173)) (InsidePredicate_9552_25026 p@@180 v_1@@179 r@@173 u@@173))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_9527 p@@180 v_1@@179 q@@173 w@@179) (InsidePredicate_9527_25026 q@@173 w@@179 r@@173 u@@173))
)))
(assert (forall ((p@@181 T@Field_27408_27409) (v_1@@180 T@FrameType) (q@@174 T@Field_24505_24506) (w@@180 T@FrameType) (r@@174 T@Field_24558_24559) (u@@174 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_9527 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_9527_24558 q@@174 w@@180 r@@174 u@@174)) (InsidePredicate_9552_24558 p@@181 v_1@@180 r@@174 u@@174))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_9527 p@@181 v_1@@180 q@@174 w@@180) (InsidePredicate_9527_24558 q@@174 w@@180 r@@174 u@@174))
)))
(assert (forall ((p@@182 T@Field_27408_27409) (v_1@@181 T@FrameType) (q@@175 T@Field_24505_24506) (w@@181 T@FrameType) (r@@175 T@Field_22376_22377) (u@@175 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_9527 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_9527_22376 q@@175 w@@181 r@@175 u@@175)) (InsidePredicate_9552_22376 p@@182 v_1@@181 r@@175 u@@175))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_9527 p@@182 v_1@@181 q@@175 w@@181) (InsidePredicate_9527_22376 q@@175 w@@181 r@@175 u@@175))
)))
(assert (forall ((p@@183 T@Field_27408_27409) (v_1@@182 T@FrameType) (q@@176 T@Field_24505_24506) (w@@182 T@FrameType) (r@@176 T@Field_9317_22377) (u@@176 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_9527 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_9527_15274 q@@176 w@@182 r@@176 u@@176)) (InsidePredicate_9552_15274 p@@183 v_1@@182 r@@176 u@@176))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_9527 p@@183 v_1@@182 q@@176 w@@182) (InsidePredicate_9527_15274 q@@176 w@@182 r@@176 u@@176))
)))
(assert (forall ((p@@184 T@Field_27408_27409) (v_1@@183 T@FrameType) (q@@177 T@Field_24505_24506) (w@@183 T@FrameType) (r@@177 T@Field_27408_27409) (u@@177 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_9527 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_9527_9552 q@@177 w@@183 r@@177 u@@177)) (InsidePredicate_9552_9552 p@@184 v_1@@183 r@@177 u@@177))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_9527 p@@184 v_1@@183 q@@177 w@@183) (InsidePredicate_9527_9552 q@@177 w@@183 r@@177 u@@177))
)))
(assert (forall ((p@@185 T@Field_27408_27409) (v_1@@184 T@FrameType) (q@@178 T@Field_24505_24506) (w@@184 T@FrameType) (r@@178 T@Field_24505_24506) (u@@178 T@FrameType) ) (!  (=> (and (InsidePredicate_9552_9527 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_9527_9527 q@@178 w@@184 r@@178 u@@178)) (InsidePredicate_9552_9527 p@@185 v_1@@184 r@@178 u@@178))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9552_9527 p@@185 v_1@@184 q@@178 w@@184) (InsidePredicate_9527_9527 q@@178 w@@184 r@@178 u@@178))
)))
(assert (forall ((p@@186 T@Field_24505_24506) (v_1@@185 T@FrameType) (q@@179 T@Field_25026_25027) (w@@185 T@FrameType) (r@@179 T@Field_25026_25027) (u@@179 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_25026 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_25026_25026 q@@179 w@@185 r@@179 u@@179)) (InsidePredicate_9527_25026 p@@186 v_1@@185 r@@179 u@@179))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_25026 p@@186 v_1@@185 q@@179 w@@185) (InsidePredicate_25026_25026 q@@179 w@@185 r@@179 u@@179))
)))
(assert (forall ((p@@187 T@Field_24505_24506) (v_1@@186 T@FrameType) (q@@180 T@Field_25026_25027) (w@@186 T@FrameType) (r@@180 T@Field_24558_24559) (u@@180 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_25026 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_25026_24558 q@@180 w@@186 r@@180 u@@180)) (InsidePredicate_9527_24558 p@@187 v_1@@186 r@@180 u@@180))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_25026 p@@187 v_1@@186 q@@180 w@@186) (InsidePredicate_25026_24558 q@@180 w@@186 r@@180 u@@180))
)))
(assert (forall ((p@@188 T@Field_24505_24506) (v_1@@187 T@FrameType) (q@@181 T@Field_25026_25027) (w@@187 T@FrameType) (r@@181 T@Field_22376_22377) (u@@181 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_25026 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_25026_22376 q@@181 w@@187 r@@181 u@@181)) (InsidePredicate_9527_22376 p@@188 v_1@@187 r@@181 u@@181))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_25026 p@@188 v_1@@187 q@@181 w@@187) (InsidePredicate_25026_22376 q@@181 w@@187 r@@181 u@@181))
)))
(assert (forall ((p@@189 T@Field_24505_24506) (v_1@@188 T@FrameType) (q@@182 T@Field_25026_25027) (w@@188 T@FrameType) (r@@182 T@Field_9317_22377) (u@@182 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_25026 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_25026_15274 q@@182 w@@188 r@@182 u@@182)) (InsidePredicate_9527_15274 p@@189 v_1@@188 r@@182 u@@182))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_25026 p@@189 v_1@@188 q@@182 w@@188) (InsidePredicate_25026_15274 q@@182 w@@188 r@@182 u@@182))
)))
(assert (forall ((p@@190 T@Field_24505_24506) (v_1@@189 T@FrameType) (q@@183 T@Field_25026_25027) (w@@189 T@FrameType) (r@@183 T@Field_27408_27409) (u@@183 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_25026 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_25026_9552 q@@183 w@@189 r@@183 u@@183)) (InsidePredicate_9527_9552 p@@190 v_1@@189 r@@183 u@@183))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_25026 p@@190 v_1@@189 q@@183 w@@189) (InsidePredicate_25026_9552 q@@183 w@@189 r@@183 u@@183))
)))
(assert (forall ((p@@191 T@Field_24505_24506) (v_1@@190 T@FrameType) (q@@184 T@Field_25026_25027) (w@@190 T@FrameType) (r@@184 T@Field_24505_24506) (u@@184 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_25026 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_25026_9527 q@@184 w@@190 r@@184 u@@184)) (InsidePredicate_9527_9527 p@@191 v_1@@190 r@@184 u@@184))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_25026 p@@191 v_1@@190 q@@184 w@@190) (InsidePredicate_25026_9527 q@@184 w@@190 r@@184 u@@184))
)))
(assert (forall ((p@@192 T@Field_24505_24506) (v_1@@191 T@FrameType) (q@@185 T@Field_24558_24559) (w@@191 T@FrameType) (r@@185 T@Field_25026_25027) (u@@185 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_24558 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_24558_25026 q@@185 w@@191 r@@185 u@@185)) (InsidePredicate_9527_25026 p@@192 v_1@@191 r@@185 u@@185))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_24558 p@@192 v_1@@191 q@@185 w@@191) (InsidePredicate_24558_25026 q@@185 w@@191 r@@185 u@@185))
)))
(assert (forall ((p@@193 T@Field_24505_24506) (v_1@@192 T@FrameType) (q@@186 T@Field_24558_24559) (w@@192 T@FrameType) (r@@186 T@Field_24558_24559) (u@@186 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_24558 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_24558_24558 q@@186 w@@192 r@@186 u@@186)) (InsidePredicate_9527_24558 p@@193 v_1@@192 r@@186 u@@186))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_24558 p@@193 v_1@@192 q@@186 w@@192) (InsidePredicate_24558_24558 q@@186 w@@192 r@@186 u@@186))
)))
(assert (forall ((p@@194 T@Field_24505_24506) (v_1@@193 T@FrameType) (q@@187 T@Field_24558_24559) (w@@193 T@FrameType) (r@@187 T@Field_22376_22377) (u@@187 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_24558 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_24558_22376 q@@187 w@@193 r@@187 u@@187)) (InsidePredicate_9527_22376 p@@194 v_1@@193 r@@187 u@@187))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_24558 p@@194 v_1@@193 q@@187 w@@193) (InsidePredicate_24558_22376 q@@187 w@@193 r@@187 u@@187))
)))
(assert (forall ((p@@195 T@Field_24505_24506) (v_1@@194 T@FrameType) (q@@188 T@Field_24558_24559) (w@@194 T@FrameType) (r@@188 T@Field_9317_22377) (u@@188 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_24558 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_24558_15274 q@@188 w@@194 r@@188 u@@188)) (InsidePredicate_9527_15274 p@@195 v_1@@194 r@@188 u@@188))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_24558 p@@195 v_1@@194 q@@188 w@@194) (InsidePredicate_24558_15274 q@@188 w@@194 r@@188 u@@188))
)))
(assert (forall ((p@@196 T@Field_24505_24506) (v_1@@195 T@FrameType) (q@@189 T@Field_24558_24559) (w@@195 T@FrameType) (r@@189 T@Field_27408_27409) (u@@189 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_24558 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_24558_9552 q@@189 w@@195 r@@189 u@@189)) (InsidePredicate_9527_9552 p@@196 v_1@@195 r@@189 u@@189))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_24558 p@@196 v_1@@195 q@@189 w@@195) (InsidePredicate_24558_9552 q@@189 w@@195 r@@189 u@@189))
)))
(assert (forall ((p@@197 T@Field_24505_24506) (v_1@@196 T@FrameType) (q@@190 T@Field_24558_24559) (w@@196 T@FrameType) (r@@190 T@Field_24505_24506) (u@@190 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_24558 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_24558_9527 q@@190 w@@196 r@@190 u@@190)) (InsidePredicate_9527_9527 p@@197 v_1@@196 r@@190 u@@190))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_24558 p@@197 v_1@@196 q@@190 w@@196) (InsidePredicate_24558_9527 q@@190 w@@196 r@@190 u@@190))
)))
(assert (forall ((p@@198 T@Field_24505_24506) (v_1@@197 T@FrameType) (q@@191 T@Field_22376_22377) (w@@197 T@FrameType) (r@@191 T@Field_25026_25027) (u@@191 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_22376 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_22376_25026 q@@191 w@@197 r@@191 u@@191)) (InsidePredicate_9527_25026 p@@198 v_1@@197 r@@191 u@@191))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_22376 p@@198 v_1@@197 q@@191 w@@197) (InsidePredicate_22376_25026 q@@191 w@@197 r@@191 u@@191))
)))
(assert (forall ((p@@199 T@Field_24505_24506) (v_1@@198 T@FrameType) (q@@192 T@Field_22376_22377) (w@@198 T@FrameType) (r@@192 T@Field_24558_24559) (u@@192 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_22376 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_22376_24558 q@@192 w@@198 r@@192 u@@192)) (InsidePredicate_9527_24558 p@@199 v_1@@198 r@@192 u@@192))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_22376 p@@199 v_1@@198 q@@192 w@@198) (InsidePredicate_22376_24558 q@@192 w@@198 r@@192 u@@192))
)))
(assert (forall ((p@@200 T@Field_24505_24506) (v_1@@199 T@FrameType) (q@@193 T@Field_22376_22377) (w@@199 T@FrameType) (r@@193 T@Field_22376_22377) (u@@193 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_22376 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_22376_22376 q@@193 w@@199 r@@193 u@@193)) (InsidePredicate_9527_22376 p@@200 v_1@@199 r@@193 u@@193))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_22376 p@@200 v_1@@199 q@@193 w@@199) (InsidePredicate_22376_22376 q@@193 w@@199 r@@193 u@@193))
)))
(assert (forall ((p@@201 T@Field_24505_24506) (v_1@@200 T@FrameType) (q@@194 T@Field_22376_22377) (w@@200 T@FrameType) (r@@194 T@Field_9317_22377) (u@@194 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_22376 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_22376_15274 q@@194 w@@200 r@@194 u@@194)) (InsidePredicate_9527_15274 p@@201 v_1@@200 r@@194 u@@194))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_22376 p@@201 v_1@@200 q@@194 w@@200) (InsidePredicate_22376_15274 q@@194 w@@200 r@@194 u@@194))
)))
(assert (forall ((p@@202 T@Field_24505_24506) (v_1@@201 T@FrameType) (q@@195 T@Field_22376_22377) (w@@201 T@FrameType) (r@@195 T@Field_27408_27409) (u@@195 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_22376 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_22376_9552 q@@195 w@@201 r@@195 u@@195)) (InsidePredicate_9527_9552 p@@202 v_1@@201 r@@195 u@@195))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_22376 p@@202 v_1@@201 q@@195 w@@201) (InsidePredicate_22376_9552 q@@195 w@@201 r@@195 u@@195))
)))
(assert (forall ((p@@203 T@Field_24505_24506) (v_1@@202 T@FrameType) (q@@196 T@Field_22376_22377) (w@@202 T@FrameType) (r@@196 T@Field_24505_24506) (u@@196 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_22376 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_22376_9527 q@@196 w@@202 r@@196 u@@196)) (InsidePredicate_9527_9527 p@@203 v_1@@202 r@@196 u@@196))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_22376 p@@203 v_1@@202 q@@196 w@@202) (InsidePredicate_22376_9527 q@@196 w@@202 r@@196 u@@196))
)))
(assert (forall ((p@@204 T@Field_24505_24506) (v_1@@203 T@FrameType) (q@@197 T@Field_9317_22377) (w@@203 T@FrameType) (r@@197 T@Field_25026_25027) (u@@197 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_15274 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_15274_25026 q@@197 w@@203 r@@197 u@@197)) (InsidePredicate_9527_25026 p@@204 v_1@@203 r@@197 u@@197))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_15274 p@@204 v_1@@203 q@@197 w@@203) (InsidePredicate_15274_25026 q@@197 w@@203 r@@197 u@@197))
)))
(assert (forall ((p@@205 T@Field_24505_24506) (v_1@@204 T@FrameType) (q@@198 T@Field_9317_22377) (w@@204 T@FrameType) (r@@198 T@Field_24558_24559) (u@@198 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_15274 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_15274_24558 q@@198 w@@204 r@@198 u@@198)) (InsidePredicate_9527_24558 p@@205 v_1@@204 r@@198 u@@198))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_15274 p@@205 v_1@@204 q@@198 w@@204) (InsidePredicate_15274_24558 q@@198 w@@204 r@@198 u@@198))
)))
(assert (forall ((p@@206 T@Field_24505_24506) (v_1@@205 T@FrameType) (q@@199 T@Field_9317_22377) (w@@205 T@FrameType) (r@@199 T@Field_22376_22377) (u@@199 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_15274 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_15274_22376 q@@199 w@@205 r@@199 u@@199)) (InsidePredicate_9527_22376 p@@206 v_1@@205 r@@199 u@@199))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_15274 p@@206 v_1@@205 q@@199 w@@205) (InsidePredicate_15274_22376 q@@199 w@@205 r@@199 u@@199))
)))
(assert (forall ((p@@207 T@Field_24505_24506) (v_1@@206 T@FrameType) (q@@200 T@Field_9317_22377) (w@@206 T@FrameType) (r@@200 T@Field_9317_22377) (u@@200 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_15274 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_15274_15274 q@@200 w@@206 r@@200 u@@200)) (InsidePredicate_9527_15274 p@@207 v_1@@206 r@@200 u@@200))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_15274 p@@207 v_1@@206 q@@200 w@@206) (InsidePredicate_15274_15274 q@@200 w@@206 r@@200 u@@200))
)))
(assert (forall ((p@@208 T@Field_24505_24506) (v_1@@207 T@FrameType) (q@@201 T@Field_9317_22377) (w@@207 T@FrameType) (r@@201 T@Field_27408_27409) (u@@201 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_15274 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_15274_9552 q@@201 w@@207 r@@201 u@@201)) (InsidePredicate_9527_9552 p@@208 v_1@@207 r@@201 u@@201))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_15274 p@@208 v_1@@207 q@@201 w@@207) (InsidePredicate_15274_9552 q@@201 w@@207 r@@201 u@@201))
)))
(assert (forall ((p@@209 T@Field_24505_24506) (v_1@@208 T@FrameType) (q@@202 T@Field_9317_22377) (w@@208 T@FrameType) (r@@202 T@Field_24505_24506) (u@@202 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_15274 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_15274_9527 q@@202 w@@208 r@@202 u@@202)) (InsidePredicate_9527_9527 p@@209 v_1@@208 r@@202 u@@202))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_15274 p@@209 v_1@@208 q@@202 w@@208) (InsidePredicate_15274_9527 q@@202 w@@208 r@@202 u@@202))
)))
(assert (forall ((p@@210 T@Field_24505_24506) (v_1@@209 T@FrameType) (q@@203 T@Field_27408_27409) (w@@209 T@FrameType) (r@@203 T@Field_25026_25027) (u@@203 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_9552 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_9552_25026 q@@203 w@@209 r@@203 u@@203)) (InsidePredicate_9527_25026 p@@210 v_1@@209 r@@203 u@@203))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_9552 p@@210 v_1@@209 q@@203 w@@209) (InsidePredicate_9552_25026 q@@203 w@@209 r@@203 u@@203))
)))
(assert (forall ((p@@211 T@Field_24505_24506) (v_1@@210 T@FrameType) (q@@204 T@Field_27408_27409) (w@@210 T@FrameType) (r@@204 T@Field_24558_24559) (u@@204 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_9552 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_9552_24558 q@@204 w@@210 r@@204 u@@204)) (InsidePredicate_9527_24558 p@@211 v_1@@210 r@@204 u@@204))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_9552 p@@211 v_1@@210 q@@204 w@@210) (InsidePredicate_9552_24558 q@@204 w@@210 r@@204 u@@204))
)))
(assert (forall ((p@@212 T@Field_24505_24506) (v_1@@211 T@FrameType) (q@@205 T@Field_27408_27409) (w@@211 T@FrameType) (r@@205 T@Field_22376_22377) (u@@205 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_9552 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_9552_22376 q@@205 w@@211 r@@205 u@@205)) (InsidePredicate_9527_22376 p@@212 v_1@@211 r@@205 u@@205))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_9552 p@@212 v_1@@211 q@@205 w@@211) (InsidePredicate_9552_22376 q@@205 w@@211 r@@205 u@@205))
)))
(assert (forall ((p@@213 T@Field_24505_24506) (v_1@@212 T@FrameType) (q@@206 T@Field_27408_27409) (w@@212 T@FrameType) (r@@206 T@Field_9317_22377) (u@@206 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_9552 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_9552_15274 q@@206 w@@212 r@@206 u@@206)) (InsidePredicate_9527_15274 p@@213 v_1@@212 r@@206 u@@206))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_9552 p@@213 v_1@@212 q@@206 w@@212) (InsidePredicate_9552_15274 q@@206 w@@212 r@@206 u@@206))
)))
(assert (forall ((p@@214 T@Field_24505_24506) (v_1@@213 T@FrameType) (q@@207 T@Field_27408_27409) (w@@213 T@FrameType) (r@@207 T@Field_27408_27409) (u@@207 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_9552 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_9552_9552 q@@207 w@@213 r@@207 u@@207)) (InsidePredicate_9527_9552 p@@214 v_1@@213 r@@207 u@@207))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_9552 p@@214 v_1@@213 q@@207 w@@213) (InsidePredicate_9552_9552 q@@207 w@@213 r@@207 u@@207))
)))
(assert (forall ((p@@215 T@Field_24505_24506) (v_1@@214 T@FrameType) (q@@208 T@Field_27408_27409) (w@@214 T@FrameType) (r@@208 T@Field_24505_24506) (u@@208 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_9552 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_9552_9527 q@@208 w@@214 r@@208 u@@208)) (InsidePredicate_9527_9527 p@@215 v_1@@214 r@@208 u@@208))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_9552 p@@215 v_1@@214 q@@208 w@@214) (InsidePredicate_9552_9527 q@@208 w@@214 r@@208 u@@208))
)))
(assert (forall ((p@@216 T@Field_24505_24506) (v_1@@215 T@FrameType) (q@@209 T@Field_24505_24506) (w@@215 T@FrameType) (r@@209 T@Field_25026_25027) (u@@209 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_9527 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_9527_25026 q@@209 w@@215 r@@209 u@@209)) (InsidePredicate_9527_25026 p@@216 v_1@@215 r@@209 u@@209))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_9527 p@@216 v_1@@215 q@@209 w@@215) (InsidePredicate_9527_25026 q@@209 w@@215 r@@209 u@@209))
)))
(assert (forall ((p@@217 T@Field_24505_24506) (v_1@@216 T@FrameType) (q@@210 T@Field_24505_24506) (w@@216 T@FrameType) (r@@210 T@Field_24558_24559) (u@@210 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_9527 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_9527_24558 q@@210 w@@216 r@@210 u@@210)) (InsidePredicate_9527_24558 p@@217 v_1@@216 r@@210 u@@210))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_9527 p@@217 v_1@@216 q@@210 w@@216) (InsidePredicate_9527_24558 q@@210 w@@216 r@@210 u@@210))
)))
(assert (forall ((p@@218 T@Field_24505_24506) (v_1@@217 T@FrameType) (q@@211 T@Field_24505_24506) (w@@217 T@FrameType) (r@@211 T@Field_22376_22377) (u@@211 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_9527 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_9527_22376 q@@211 w@@217 r@@211 u@@211)) (InsidePredicate_9527_22376 p@@218 v_1@@217 r@@211 u@@211))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_9527 p@@218 v_1@@217 q@@211 w@@217) (InsidePredicate_9527_22376 q@@211 w@@217 r@@211 u@@211))
)))
(assert (forall ((p@@219 T@Field_24505_24506) (v_1@@218 T@FrameType) (q@@212 T@Field_24505_24506) (w@@218 T@FrameType) (r@@212 T@Field_9317_22377) (u@@212 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_9527 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_9527_15274 q@@212 w@@218 r@@212 u@@212)) (InsidePredicate_9527_15274 p@@219 v_1@@218 r@@212 u@@212))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_9527 p@@219 v_1@@218 q@@212 w@@218) (InsidePredicate_9527_15274 q@@212 w@@218 r@@212 u@@212))
)))
(assert (forall ((p@@220 T@Field_24505_24506) (v_1@@219 T@FrameType) (q@@213 T@Field_24505_24506) (w@@219 T@FrameType) (r@@213 T@Field_27408_27409) (u@@213 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_9527 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_9527_9552 q@@213 w@@219 r@@213 u@@213)) (InsidePredicate_9527_9552 p@@220 v_1@@219 r@@213 u@@213))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_9527 p@@220 v_1@@219 q@@213 w@@219) (InsidePredicate_9527_9552 q@@213 w@@219 r@@213 u@@213))
)))
(assert (forall ((p@@221 T@Field_24505_24506) (v_1@@220 T@FrameType) (q@@214 T@Field_24505_24506) (w@@220 T@FrameType) (r@@214 T@Field_24505_24506) (u@@214 T@FrameType) ) (!  (=> (and (InsidePredicate_9527_9527 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_9527_9527 q@@214 w@@220 r@@214 u@@214)) (InsidePredicate_9527_9527 p@@221 v_1@@220 r@@214 u@@214))
 :qid |stdinbpl.195:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_9527_9527 p@@221 v_1@@220 q@@214 w@@220) (InsidePredicate_9527_9527 q@@214 w@@220 r@@214 u@@214))
)))
(assert (forall ((s@@31 T@Seq_21463) ) (!  (=> (= (|Seq#Length_9341| s@@31) 0) (= s@@31 |Seq#Empty_9341|))
 :qid |stdinbpl.231:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_9341| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2971) ) (!  (=> (= (|Seq#Length_2971| s@@32) 0) (= s@@32 |Seq#Empty_2971|))
 :qid |stdinbpl.231:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2971| s@@32))
)))
(assert (forall ((s@@33 T@Seq_21463) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_9341| s@@33 n@@25) |Seq#Empty_9341|))
 :qid |stdinbpl.407:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_9341| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2971) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2971| s@@34 n@@26) |Seq#Empty_2971|))
 :qid |stdinbpl.407:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2971| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@19 () T@PolymorphicMapType_15214)
(declare-fun Mask@1 () T@PolymorphicMapType_15235)
(declare-fun Result@0 () Int)
(declare-fun l1_1@@4 () T@Ref)
(declare-fun l2@@4 () T@Ref)
(declare-fun k@@4 () Int)
(declare-fun Heap@17 () T@PolymorphicMapType_15214)
(declare-fun newPMask@4 () T@PolymorphicMapType_15763)
(declare-fun Heap@18 () T@PolymorphicMapType_15214)
(declare-fun Heap@15 () T@PolymorphicMapType_15214)
(declare-fun Heap@16 () T@PolymorphicMapType_15214)
(declare-fun Heap@13 () T@PolymorphicMapType_15214)
(declare-fun newPMask@3 () T@PolymorphicMapType_15763)
(declare-fun Heap@14 () T@PolymorphicMapType_15214)
(declare-fun Heap@11 () T@PolymorphicMapType_15214)
(declare-fun Heap@12 () T@PolymorphicMapType_15214)
(declare-fun Heap@9 () T@PolymorphicMapType_15214)
(declare-fun newPMask@2 () T@PolymorphicMapType_15763)
(declare-fun Heap@10 () T@PolymorphicMapType_15214)
(declare-fun Heap@8 () T@PolymorphicMapType_15214)
(declare-fun Heap@7 () T@PolymorphicMapType_15214)
(declare-fun UnfoldingMask@7 () T@PolymorphicMapType_15235)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_15235)
(declare-fun UnfoldingMask@6 () T@PolymorphicMapType_15235)
(declare-fun FrameFragment_9320 (T@Ref) T@FrameType)
(declare-fun FrameFragment_9528 (T@FrameType) T@FrameType)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_15235)
(declare-fun Heap@5 () T@PolymorphicMapType_15214)
(declare-fun newPMask@1 () T@PolymorphicMapType_15763)
(declare-fun Heap@6 () T@PolymorphicMapType_15214)
(declare-fun Heap@3 () T@PolymorphicMapType_15214)
(declare-fun Heap@4 () T@PolymorphicMapType_15214)
(declare-fun Heap@1 () T@PolymorphicMapType_15214)
(declare-fun newPMask@0 () T@PolymorphicMapType_15763)
(declare-fun Heap@2 () T@PolymorphicMapType_15214)
(declare-fun Heap@0 () T@PolymorphicMapType_15214)
(declare-fun Heap@@105 () T@PolymorphicMapType_15214)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_15235)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_15235)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_15235)
(declare-fun Mask@0 () T@PolymorphicMapType_15235)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_15235)
(set-info :boogie-vc-id |listLength#definedness|)
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
 (=> (= (ControlFlow 0 0) 49) (let ((anon27_correct  (=> (state Heap@19 Mask@1) (=> (and (= Result@0 (+ (+ (ite (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@19) l1_1@@4 next) null) 1 (+ 1 (listLength Heap@19 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@19) l1_1@@4 next) l2@@4 k@@4))) (listLength Heap@19 l1_1@@4 l2@@4 (- k@@4 1))) (ite (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@19) l2@@4 next2) null) 1 (+ 1 (listLength Heap@19 l1_1@@4 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@19) l2@@4 next2) k@@4))))) (= (ControlFlow 0 11) (- 0 10))) (> Result@0 0)))))
(let ((anon39_Else_correct  (=> (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2) null) (=> (and (= Heap@19 Heap@17) (= (ControlFlow 0 13) 11)) anon27_correct))))
(let ((anon39_Then_correct  (=> (not (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_56 T@Ref) (f T@Field_21300_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56 f) (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56 f)) (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| newPMask@4) o_56 f))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| newPMask@4) o_56 f))
)) (forall ((o_56@@0 T@Ref) (f@@0 T@Field_15287_15288) ) (!  (=> (or (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@0 f@@0) (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@0 f@@0)) (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| newPMask@4) o_56@@0 f@@0))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| newPMask@4) o_56@@0 f@@0))
))) (forall ((o_56@@1 T@Ref) (f@@1 T@Field_15274_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@1 f@@1) (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@1 f@@1)) (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| newPMask@4) o_56@@1 f@@1))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| newPMask@4) o_56@@1 f@@1))
))) (forall ((o_56@@2 T@Ref) (f@@2 T@Field_9317_22377) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@2 f@@2) (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@2 f@@2)) (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| newPMask@4) o_56@@2 f@@2))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| newPMask@4) o_56@@2 f@@2))
))) (forall ((o_56@@3 T@Ref) (f@@3 T@Field_9317_30716) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@3 f@@3) (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@3 f@@3)) (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| newPMask@4) o_56@@3 f@@3))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| newPMask@4) o_56@@3 f@@3))
))) (forall ((o_56@@4 T@Ref) (f@@4 T@Field_22376_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@4 f@@4) (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@4 f@@4)) (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| newPMask@4) o_56@@4 f@@4))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| newPMask@4) o_56@@4 f@@4))
))) (forall ((o_56@@5 T@Ref) (f@@5 T@Field_22376_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@5 f@@5) (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@5 f@@5)) (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| newPMask@4) o_56@@5 f@@5))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| newPMask@4) o_56@@5 f@@5))
))) (forall ((o_56@@6 T@Ref) (f@@6 T@Field_22376_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@6 f@@6) (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@6 f@@6)) (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| newPMask@4) o_56@@6 f@@6))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| newPMask@4) o_56@@6 f@@6))
))) (forall ((o_56@@7 T@Ref) (f@@7 T@Field_22376_22377) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@7 f@@7) (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@7 f@@7)) (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| newPMask@4) o_56@@7 f@@7))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| newPMask@4) o_56@@7 f@@7))
))) (forall ((o_56@@8 T@Ref) (f@@8 T@Field_38414_38419) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@8 f@@8) (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@8 f@@8)) (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| newPMask@4) o_56@@8 f@@8))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| newPMask@4) o_56@@8 f@@8))
))) (forall ((o_56@@9 T@Ref) (f@@9 T@Field_24505_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@9 f@@9) (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@9 f@@9)) (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| newPMask@4) o_56@@9 f@@9))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| newPMask@4) o_56@@9 f@@9))
))) (forall ((o_56@@10 T@Ref) (f@@10 T@Field_24505_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@10 f@@10) (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@10 f@@10)) (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| newPMask@4) o_56@@10 f@@10))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| newPMask@4) o_56@@10 f@@10))
))) (forall ((o_56@@11 T@Ref) (f@@11 T@Field_24505_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@11 f@@11) (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@11 f@@11)) (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| newPMask@4) o_56@@11 f@@11))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| newPMask@4) o_56@@11 f@@11))
))) (forall ((o_56@@12 T@Ref) (f@@12 T@Field_24505_24506) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@12 f@@12) (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@12 f@@12)) (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| newPMask@4) o_56@@12 f@@12))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| newPMask@4) o_56@@12 f@@12))
))) (forall ((o_56@@13 T@Ref) (f@@13 T@Field_30711_30716) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@13 f@@13) (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@13 f@@13)) (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| newPMask@4) o_56@@13 f@@13))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| newPMask@4) o_56@@13 f@@13))
))) (forall ((o_56@@14 T@Ref) (f@@14 T@Field_24558_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@14 f@@14) (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@14 f@@14)) (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| newPMask@4) o_56@@14 f@@14))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| newPMask@4) o_56@@14 f@@14))
))) (forall ((o_56@@15 T@Ref) (f@@15 T@Field_24558_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@15 f@@15) (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@15 f@@15)) (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| newPMask@4) o_56@@15 f@@15))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| newPMask@4) o_56@@15 f@@15))
))) (forall ((o_56@@16 T@Ref) (f@@16 T@Field_24558_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@16 f@@16) (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@16 f@@16)) (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| newPMask@4) o_56@@16 f@@16))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| newPMask@4) o_56@@16 f@@16))
))) (forall ((o_56@@17 T@Ref) (f@@17 T@Field_24558_24559) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@17 f@@17) (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@17 f@@17)) (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| newPMask@4) o_56@@17 f@@17))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| newPMask@4) o_56@@17 f@@17))
))) (forall ((o_56@@18 T@Ref) (f@@18 T@Field_39736_39741) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@18 f@@18) (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@18 f@@18)) (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| newPMask@4) o_56@@18 f@@18))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| newPMask@4) o_56@@18 f@@18))
))) (forall ((o_56@@19 T@Ref) (f@@19 T@Field_25026_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@19 f@@19) (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@19 f@@19)) (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| newPMask@4) o_56@@19 f@@19))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| newPMask@4) o_56@@19 f@@19))
))) (forall ((o_56@@20 T@Ref) (f@@20 T@Field_25026_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@20 f@@20) (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@20 f@@20)) (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| newPMask@4) o_56@@20 f@@20))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| newPMask@4) o_56@@20 f@@20))
))) (forall ((o_56@@21 T@Ref) (f@@21 T@Field_25026_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@21 f@@21) (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@21 f@@21)) (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| newPMask@4) o_56@@21 f@@21))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| newPMask@4) o_56@@21 f@@21))
))) (forall ((o_56@@22 T@Ref) (f@@22 T@Field_25026_25027) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@22 f@@22) (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@22 f@@22)) (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| newPMask@4) o_56@@22 f@@22))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| newPMask@4) o_56@@22 f@@22))
))) (forall ((o_56@@23 T@Ref) (f@@23 T@Field_38936_38941) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@23 f@@23) (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@23 f@@23)) (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| newPMask@4) o_56@@23 f@@23))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| newPMask@4) o_56@@23 f@@23))
))) (forall ((o_56@@24 T@Ref) (f@@24 T@Field_27408_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@24 f@@24) (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@24 f@@24)) (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| newPMask@4) o_56@@24 f@@24))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| newPMask@4) o_56@@24 f@@24))
))) (forall ((o_56@@25 T@Ref) (f@@25 T@Field_27408_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@25 f@@25) (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@25 f@@25)) (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| newPMask@4) o_56@@25 f@@25))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| newPMask@4) o_56@@25 f@@25))
))) (forall ((o_56@@26 T@Ref) (f@@26 T@Field_27408_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@26 f@@26) (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@26 f@@26)) (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| newPMask@4) o_56@@26 f@@26))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| newPMask@4) o_56@@26 f@@26))
))) (forall ((o_56@@27 T@Ref) (f@@27 T@Field_27408_27409) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@27 f@@27) (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@27 f@@27)) (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| newPMask@4) o_56@@27 f@@27))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| newPMask@4) o_56@@27 f@@27))
))) (forall ((o_56@@28 T@Ref) (f@@28 T@Field_35363_35368) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4))) o_56@@28 f@@28) (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) l2@@4 next2)))) o_56@@28 f@@28)) (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| newPMask@4) o_56@@28 f@@28))
 :qid |stdinbpl.1122:33|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| newPMask@4) o_56@@28 f@@28))
))) (= Heap@18 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@17) (store (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@17) null (|list2#sm| l2@@4) newPMask@4) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@17) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@17)))) (and (= Heap@19 Heap@18) (= (ControlFlow 0 12) 11))) anon27_correct))))
(let ((anon25_correct  (=> (and (and (state Heap@15 Mask@1) (state Heap@15 Mask@1)) (and (= Heap@16 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@15) (store (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4) (PolymorphicMapType_15763 (store (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) l2@@4 elem2 true) (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@15) null (|list2#sm| l2@@4))))) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@15) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@15))) (= Heap@17 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@16) (store (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4) (PolymorphicMapType_15763 (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (store (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) l2@@4 next2 true) (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@16) null (|list2#sm| l2@@4))))) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@16) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@16))))) (and (=> (= (ControlFlow 0 14) 12) anon39_Then_correct) (=> (= (ControlFlow 0 14) 13) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next) null) (=> (and (= Heap@15 Heap@13) (= (ControlFlow 0 16) 14)) anon25_correct))))
(let ((anon38_Then_correct  (=> (not (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_74 T@Ref) (f_83 T@Field_21300_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74 f_83) (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74 f_83)) (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| newPMask@3) o_74 f_83))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| newPMask@3) o_74 f_83))
)) (forall ((o_74@@0 T@Ref) (f_83@@0 T@Field_15287_15288) ) (!  (=> (or (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@0 f_83@@0) (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@0 f_83@@0)) (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| newPMask@3) o_74@@0 f_83@@0))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| newPMask@3) o_74@@0 f_83@@0))
))) (forall ((o_74@@1 T@Ref) (f_83@@1 T@Field_15274_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@1 f_83@@1) (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@1 f_83@@1)) (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| newPMask@3) o_74@@1 f_83@@1))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| newPMask@3) o_74@@1 f_83@@1))
))) (forall ((o_74@@2 T@Ref) (f_83@@2 T@Field_9317_22377) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@2 f_83@@2) (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@2 f_83@@2)) (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| newPMask@3) o_74@@2 f_83@@2))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| newPMask@3) o_74@@2 f_83@@2))
))) (forall ((o_74@@3 T@Ref) (f_83@@3 T@Field_9317_30716) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@3 f_83@@3) (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@3 f_83@@3)) (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| newPMask@3) o_74@@3 f_83@@3))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| newPMask@3) o_74@@3 f_83@@3))
))) (forall ((o_74@@4 T@Ref) (f_83@@4 T@Field_22376_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@4 f_83@@4) (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@4 f_83@@4)) (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| newPMask@3) o_74@@4 f_83@@4))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| newPMask@3) o_74@@4 f_83@@4))
))) (forall ((o_74@@5 T@Ref) (f_83@@5 T@Field_22376_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@5 f_83@@5) (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@5 f_83@@5)) (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| newPMask@3) o_74@@5 f_83@@5))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| newPMask@3) o_74@@5 f_83@@5))
))) (forall ((o_74@@6 T@Ref) (f_83@@6 T@Field_22376_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@6 f_83@@6) (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@6 f_83@@6)) (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| newPMask@3) o_74@@6 f_83@@6))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| newPMask@3) o_74@@6 f_83@@6))
))) (forall ((o_74@@7 T@Ref) (f_83@@7 T@Field_22376_22377) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@7 f_83@@7) (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@7 f_83@@7)) (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| newPMask@3) o_74@@7 f_83@@7))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| newPMask@3) o_74@@7 f_83@@7))
))) (forall ((o_74@@8 T@Ref) (f_83@@8 T@Field_38414_38419) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@8 f_83@@8) (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@8 f_83@@8)) (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| newPMask@3) o_74@@8 f_83@@8))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| newPMask@3) o_74@@8 f_83@@8))
))) (forall ((o_74@@9 T@Ref) (f_83@@9 T@Field_24505_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@9 f_83@@9) (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@9 f_83@@9)) (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| newPMask@3) o_74@@9 f_83@@9))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| newPMask@3) o_74@@9 f_83@@9))
))) (forall ((o_74@@10 T@Ref) (f_83@@10 T@Field_24505_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@10 f_83@@10) (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@10 f_83@@10)) (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| newPMask@3) o_74@@10 f_83@@10))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| newPMask@3) o_74@@10 f_83@@10))
))) (forall ((o_74@@11 T@Ref) (f_83@@11 T@Field_24505_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@11 f_83@@11) (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@11 f_83@@11)) (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| newPMask@3) o_74@@11 f_83@@11))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| newPMask@3) o_74@@11 f_83@@11))
))) (forall ((o_74@@12 T@Ref) (f_83@@12 T@Field_24505_24506) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@12 f_83@@12) (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@12 f_83@@12)) (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| newPMask@3) o_74@@12 f_83@@12))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| newPMask@3) o_74@@12 f_83@@12))
))) (forall ((o_74@@13 T@Ref) (f_83@@13 T@Field_30711_30716) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@13 f_83@@13) (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@13 f_83@@13)) (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| newPMask@3) o_74@@13 f_83@@13))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| newPMask@3) o_74@@13 f_83@@13))
))) (forall ((o_74@@14 T@Ref) (f_83@@14 T@Field_24558_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@14 f_83@@14) (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@14 f_83@@14)) (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| newPMask@3) o_74@@14 f_83@@14))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| newPMask@3) o_74@@14 f_83@@14))
))) (forall ((o_74@@15 T@Ref) (f_83@@15 T@Field_24558_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@15 f_83@@15) (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@15 f_83@@15)) (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| newPMask@3) o_74@@15 f_83@@15))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| newPMask@3) o_74@@15 f_83@@15))
))) (forall ((o_74@@16 T@Ref) (f_83@@16 T@Field_24558_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@16 f_83@@16) (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@16 f_83@@16)) (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| newPMask@3) o_74@@16 f_83@@16))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| newPMask@3) o_74@@16 f_83@@16))
))) (forall ((o_74@@17 T@Ref) (f_83@@17 T@Field_24558_24559) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@17 f_83@@17) (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@17 f_83@@17)) (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| newPMask@3) o_74@@17 f_83@@17))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| newPMask@3) o_74@@17 f_83@@17))
))) (forall ((o_74@@18 T@Ref) (f_83@@18 T@Field_39736_39741) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@18 f_83@@18) (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@18 f_83@@18)) (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| newPMask@3) o_74@@18 f_83@@18))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| newPMask@3) o_74@@18 f_83@@18))
))) (forall ((o_74@@19 T@Ref) (f_83@@19 T@Field_25026_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@19 f_83@@19) (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@19 f_83@@19)) (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| newPMask@3) o_74@@19 f_83@@19))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| newPMask@3) o_74@@19 f_83@@19))
))) (forall ((o_74@@20 T@Ref) (f_83@@20 T@Field_25026_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@20 f_83@@20) (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@20 f_83@@20)) (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| newPMask@3) o_74@@20 f_83@@20))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| newPMask@3) o_74@@20 f_83@@20))
))) (forall ((o_74@@21 T@Ref) (f_83@@21 T@Field_25026_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@21 f_83@@21) (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@21 f_83@@21)) (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| newPMask@3) o_74@@21 f_83@@21))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| newPMask@3) o_74@@21 f_83@@21))
))) (forall ((o_74@@22 T@Ref) (f_83@@22 T@Field_25026_25027) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@22 f_83@@22) (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@22 f_83@@22)) (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| newPMask@3) o_74@@22 f_83@@22))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| newPMask@3) o_74@@22 f_83@@22))
))) (forall ((o_74@@23 T@Ref) (f_83@@23 T@Field_38936_38941) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@23 f_83@@23) (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@23 f_83@@23)) (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| newPMask@3) o_74@@23 f_83@@23))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| newPMask@3) o_74@@23 f_83@@23))
))) (forall ((o_74@@24 T@Ref) (f_83@@24 T@Field_27408_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@24 f_83@@24) (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@24 f_83@@24)) (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| newPMask@3) o_74@@24 f_83@@24))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| newPMask@3) o_74@@24 f_83@@24))
))) (forall ((o_74@@25 T@Ref) (f_83@@25 T@Field_27408_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@25 f_83@@25) (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@25 f_83@@25)) (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| newPMask@3) o_74@@25 f_83@@25))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| newPMask@3) o_74@@25 f_83@@25))
))) (forall ((o_74@@26 T@Ref) (f_83@@26 T@Field_27408_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@26 f_83@@26) (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@26 f_83@@26)) (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| newPMask@3) o_74@@26 f_83@@26))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| newPMask@3) o_74@@26 f_83@@26))
))) (forall ((o_74@@27 T@Ref) (f_83@@27 T@Field_27408_27409) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@27 f_83@@27) (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@27 f_83@@27)) (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| newPMask@3) o_74@@27 f_83@@27))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| newPMask@3) o_74@@27 f_83@@27))
))) (forall ((o_74@@28 T@Ref) (f_83@@28 T@Field_35363_35368) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4))) o_74@@28 f_83@@28) (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) l1_1@@4 next)))) o_74@@28 f_83@@28)) (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| newPMask@3) o_74@@28 f_83@@28))
 :qid |stdinbpl.1109:33|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| newPMask@3) o_74@@28 f_83@@28))
))) (= Heap@14 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@13) (store (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@13) null (|list#sm| l1_1@@4) newPMask@3) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@13) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@13)))) (and (= Heap@15 Heap@14) (= (ControlFlow 0 15) 14))) anon25_correct))))
(let ((anon23_correct  (=> (state Heap@11 Mask@1) (=> (and (= Heap@12 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@11) (store (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4) (PolymorphicMapType_15763 (store (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) l1_1@@4 elem true) (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@11) null (|list#sm| l1_1@@4))))) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@11) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@11))) (= Heap@13 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@12) (store (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4) (PolymorphicMapType_15763 (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (store (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) l1_1@@4 next true) (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@12) null (|list#sm| l1_1@@4))))) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@12) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@12)))) (and (=> (= (ControlFlow 0 17) 15) anon38_Then_correct) (=> (= (ControlFlow 0 17) 16) anon38_Else_correct))))))
(let ((anon37_Else_correct  (=> (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2) null) (=> (and (= Heap@11 Heap@9) (= (ControlFlow 0 19) 17)) anon23_correct))))
(let ((anon37_Then_correct  (=> (not (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_65 T@Ref) (f_74 T@Field_21300_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65 f_74) (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65 f_74)) (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| newPMask@2) o_65 f_74))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| newPMask@2) o_65 f_74))
)) (forall ((o_65@@0 T@Ref) (f_74@@0 T@Field_15287_15288) ) (!  (=> (or (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@0 f_74@@0) (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@0 f_74@@0)) (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| newPMask@2) o_65@@0 f_74@@0))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| newPMask@2) o_65@@0 f_74@@0))
))) (forall ((o_65@@1 T@Ref) (f_74@@1 T@Field_15274_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@1 f_74@@1) (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@1 f_74@@1)) (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| newPMask@2) o_65@@1 f_74@@1))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| newPMask@2) o_65@@1 f_74@@1))
))) (forall ((o_65@@2 T@Ref) (f_74@@2 T@Field_9317_22377) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@2 f_74@@2) (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@2 f_74@@2)) (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| newPMask@2) o_65@@2 f_74@@2))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| newPMask@2) o_65@@2 f_74@@2))
))) (forall ((o_65@@3 T@Ref) (f_74@@3 T@Field_9317_30716) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@3 f_74@@3) (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@3 f_74@@3)) (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| newPMask@2) o_65@@3 f_74@@3))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| newPMask@2) o_65@@3 f_74@@3))
))) (forall ((o_65@@4 T@Ref) (f_74@@4 T@Field_22376_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@4 f_74@@4) (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@4 f_74@@4)) (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| newPMask@2) o_65@@4 f_74@@4))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| newPMask@2) o_65@@4 f_74@@4))
))) (forall ((o_65@@5 T@Ref) (f_74@@5 T@Field_22376_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@5 f_74@@5) (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@5 f_74@@5)) (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| newPMask@2) o_65@@5 f_74@@5))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| newPMask@2) o_65@@5 f_74@@5))
))) (forall ((o_65@@6 T@Ref) (f_74@@6 T@Field_22376_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@6 f_74@@6) (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@6 f_74@@6)) (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| newPMask@2) o_65@@6 f_74@@6))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| newPMask@2) o_65@@6 f_74@@6))
))) (forall ((o_65@@7 T@Ref) (f_74@@7 T@Field_22376_22377) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@7 f_74@@7) (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@7 f_74@@7)) (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| newPMask@2) o_65@@7 f_74@@7))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| newPMask@2) o_65@@7 f_74@@7))
))) (forall ((o_65@@8 T@Ref) (f_74@@8 T@Field_38414_38419) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@8 f_74@@8) (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@8 f_74@@8)) (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| newPMask@2) o_65@@8 f_74@@8))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| newPMask@2) o_65@@8 f_74@@8))
))) (forall ((o_65@@9 T@Ref) (f_74@@9 T@Field_24505_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@9 f_74@@9) (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@9 f_74@@9)) (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| newPMask@2) o_65@@9 f_74@@9))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| newPMask@2) o_65@@9 f_74@@9))
))) (forall ((o_65@@10 T@Ref) (f_74@@10 T@Field_24505_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@10 f_74@@10) (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@10 f_74@@10)) (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| newPMask@2) o_65@@10 f_74@@10))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| newPMask@2) o_65@@10 f_74@@10))
))) (forall ((o_65@@11 T@Ref) (f_74@@11 T@Field_24505_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@11 f_74@@11) (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@11 f_74@@11)) (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| newPMask@2) o_65@@11 f_74@@11))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| newPMask@2) o_65@@11 f_74@@11))
))) (forall ((o_65@@12 T@Ref) (f_74@@12 T@Field_24505_24506) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@12 f_74@@12) (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@12 f_74@@12)) (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| newPMask@2) o_65@@12 f_74@@12))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| newPMask@2) o_65@@12 f_74@@12))
))) (forall ((o_65@@13 T@Ref) (f_74@@13 T@Field_30711_30716) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@13 f_74@@13) (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@13 f_74@@13)) (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| newPMask@2) o_65@@13 f_74@@13))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| newPMask@2) o_65@@13 f_74@@13))
))) (forall ((o_65@@14 T@Ref) (f_74@@14 T@Field_24558_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@14 f_74@@14) (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@14 f_74@@14)) (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| newPMask@2) o_65@@14 f_74@@14))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| newPMask@2) o_65@@14 f_74@@14))
))) (forall ((o_65@@15 T@Ref) (f_74@@15 T@Field_24558_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@15 f_74@@15) (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@15 f_74@@15)) (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| newPMask@2) o_65@@15 f_74@@15))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| newPMask@2) o_65@@15 f_74@@15))
))) (forall ((o_65@@16 T@Ref) (f_74@@16 T@Field_24558_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@16 f_74@@16) (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@16 f_74@@16)) (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| newPMask@2) o_65@@16 f_74@@16))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| newPMask@2) o_65@@16 f_74@@16))
))) (forall ((o_65@@17 T@Ref) (f_74@@17 T@Field_24558_24559) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@17 f_74@@17) (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@17 f_74@@17)) (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| newPMask@2) o_65@@17 f_74@@17))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| newPMask@2) o_65@@17 f_74@@17))
))) (forall ((o_65@@18 T@Ref) (f_74@@18 T@Field_39736_39741) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@18 f_74@@18) (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@18 f_74@@18)) (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| newPMask@2) o_65@@18 f_74@@18))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| newPMask@2) o_65@@18 f_74@@18))
))) (forall ((o_65@@19 T@Ref) (f_74@@19 T@Field_25026_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@19 f_74@@19) (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@19 f_74@@19)) (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| newPMask@2) o_65@@19 f_74@@19))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| newPMask@2) o_65@@19 f_74@@19))
))) (forall ((o_65@@20 T@Ref) (f_74@@20 T@Field_25026_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@20 f_74@@20) (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@20 f_74@@20)) (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| newPMask@2) o_65@@20 f_74@@20))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| newPMask@2) o_65@@20 f_74@@20))
))) (forall ((o_65@@21 T@Ref) (f_74@@21 T@Field_25026_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@21 f_74@@21) (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@21 f_74@@21)) (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| newPMask@2) o_65@@21 f_74@@21))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| newPMask@2) o_65@@21 f_74@@21))
))) (forall ((o_65@@22 T@Ref) (f_74@@22 T@Field_25026_25027) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@22 f_74@@22) (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@22 f_74@@22)) (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| newPMask@2) o_65@@22 f_74@@22))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| newPMask@2) o_65@@22 f_74@@22))
))) (forall ((o_65@@23 T@Ref) (f_74@@23 T@Field_38936_38941) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@23 f_74@@23) (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@23 f_74@@23)) (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| newPMask@2) o_65@@23 f_74@@23))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| newPMask@2) o_65@@23 f_74@@23))
))) (forall ((o_65@@24 T@Ref) (f_74@@24 T@Field_27408_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@24 f_74@@24) (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@24 f_74@@24)) (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| newPMask@2) o_65@@24 f_74@@24))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| newPMask@2) o_65@@24 f_74@@24))
))) (forall ((o_65@@25 T@Ref) (f_74@@25 T@Field_27408_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@25 f_74@@25) (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@25 f_74@@25)) (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| newPMask@2) o_65@@25 f_74@@25))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| newPMask@2) o_65@@25 f_74@@25))
))) (forall ((o_65@@26 T@Ref) (f_74@@26 T@Field_27408_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@26 f_74@@26) (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@26 f_74@@26)) (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| newPMask@2) o_65@@26 f_74@@26))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| newPMask@2) o_65@@26 f_74@@26))
))) (forall ((o_65@@27 T@Ref) (f_74@@27 T@Field_27408_27409) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@27 f_74@@27) (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@27 f_74@@27)) (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| newPMask@2) o_65@@27 f_74@@27))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| newPMask@2) o_65@@27 f_74@@27))
))) (forall ((o_65@@28 T@Ref) (f_74@@28 T@Field_35363_35368) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4))) o_65@@28 f_74@@28) (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) l2@@4 next2)))) o_65@@28 f_74@@28)) (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| newPMask@2) o_65@@28 f_74@@28))
 :qid |stdinbpl.1096:33|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| newPMask@2) o_65@@28 f_74@@28))
))) (= Heap@10 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@9) (store (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@9) null (|list2#sm| l2@@4) newPMask@2) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@9) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@9)))) (and (= Heap@11 Heap@10) (= (ControlFlow 0 18) 17))) anon23_correct))))
(let ((anon21_correct  (=> (and (= Heap@8 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@7) (store (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4) (PolymorphicMapType_15763 (store (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) l2@@4 elem2 true) (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@7) null (|list2#sm| l2@@4))))) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@7) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@7))) (= Heap@9 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@8) (store (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4) (PolymorphicMapType_15763 (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (store (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) l2@@4 next2 true) (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))) (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@8) null (|list2#sm| l2@@4))))) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@8) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@8)))) (and (=> (= (ControlFlow 0 20) 18) anon37_Then_correct) (=> (= (ControlFlow 0 20) 19) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (and (|listLength#trigger| (CombineFrames (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@7) null (list l1_1@@4)) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@7) null (list2 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2)))) l1_1@@4 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2) k@@4) (= (ControlFlow 0 22) 20)) anon21_correct)))
(let ((anon35_Then_correct  (=> (and (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2) null) (= (ControlFlow 0 21) 20)) anon21_correct)))
(let ((anon36_Then_correct  (and (=> (= (ControlFlow 0 8) (- 0 9)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| UnfoldingMask@7) null (list l1_1@@4))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| UnfoldingMask@7) null (list l1_1@@4)))) (=> (= (ControlFlow 0 8) (- 0 7)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| UnfoldingMask@7) null (list2 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2))))))))))
(let ((anon35_Else_correct  (=> (not (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2) null)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (HasDirectPerm_9319_9320 UnfoldingMask@7 l2@@4 next2)) (=> (HasDirectPerm_9319_9320 UnfoldingMask@7 l2@@4 next2) (and (=> (= (ControlFlow 0 23) 8) anon36_Then_correct) (=> (= (ControlFlow 0 23) 22) anon36_Else_correct)))))))
(let ((anon16_correct  (=> (state Heap@7 UnfoldingMask@7) (and (=> (= (ControlFlow 0 25) (- 0 26)) (HasDirectPerm_9319_9320 UnfoldingMask@7 l2@@4 next2)) (=> (HasDirectPerm_9319_9320 UnfoldingMask@7 l2@@4 next2) (and (=> (= (ControlFlow 0 25) 21) anon35_Then_correct) (=> (= (ControlFlow 0 25) 23) anon35_Else_correct)))))))
(let ((anon34_Else_correct  (=> (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2) null) (=> (and (= UnfoldingMask@7 UnfoldingMask@5) (= (ControlFlow 0 28) 25)) anon16_correct))))
(let ((anon34_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2) null)) (= UnfoldingMask@6 (PolymorphicMapType_15235 (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| UnfoldingMask@5) (store (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| UnfoldingMask@5) null (list2 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2)) (+ (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| UnfoldingMask@5) null (list2 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2))) FullPerm)) (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| UnfoldingMask@5) (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| UnfoldingMask@5)))) (=> (and (and (InsidePredicate_9552_9552 (list2 l2@@4) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@7) null (list2 l2@@4)) (list2 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2)) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@7) null (list2 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2)))) (state Heap@7 UnfoldingMask@6)) (and (= UnfoldingMask@7 UnfoldingMask@6) (= (ControlFlow 0 27) 25))) anon16_correct))))
(let ((anon14_correct  (=> (and (and (state Heap@7 Mask@1) (state Heap@7 Mask@1)) (and (|list2#trigger_9552| Heap@7 (list2 l2@@4)) (= (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@7) null (list2 l2@@4)) (CombineFrames (FrameFragment_3372 (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@7) l2@@4 elem2)) (CombineFrames (FrameFragment_9320 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2)) (FrameFragment_9528 (ite (not (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2) null)) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@7) null (list2 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@7) l2@@4 next2))) EmptyFrame))))))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| Mask@1) null (list2 l2@@4))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| Mask@1) null (list2 l2@@4)))) (=> (and (not (= l2@@4 null)) (= UnfoldingMask@4 (PolymorphicMapType_15235 (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| Mask@1) (store (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| Mask@1) l2@@4 elem2 (+ (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| Mask@1) l2@@4 elem2) FullPerm)) (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| Mask@1)))) (=> (and (and (state Heap@7 UnfoldingMask@4) (not (= l2@@4 null))) (and (= UnfoldingMask@5 (PolymorphicMapType_15235 (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| UnfoldingMask@4) (store (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| UnfoldingMask@4) l2@@4 next2 (+ (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| UnfoldingMask@4) l2@@4 next2) FullPerm)) (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| UnfoldingMask@4) (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| UnfoldingMask@4))) (state Heap@7 UnfoldingMask@5))) (and (=> (= (ControlFlow 0 29) 27) anon34_Then_correct) (=> (= (ControlFlow 0 29) 28) anon34_Else_correct)))))))))
(let ((anon33_Else_correct  (=> (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next) null) (=> (and (= Heap@7 Heap@5) (= (ControlFlow 0 32) 29)) anon14_correct))))
(let ((anon33_Then_correct  (=> (not (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_75 T@Ref) (f_84 T@Field_21300_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75 f_84) (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75 f_84)) (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| newPMask@1) o_75 f_84))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| newPMask@1) o_75 f_84))
)) (forall ((o_75@@0 T@Ref) (f_84@@0 T@Field_15287_15288) ) (!  (=> (or (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@0 f_84@@0) (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@0 f_84@@0)) (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| newPMask@1) o_75@@0 f_84@@0))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| newPMask@1) o_75@@0 f_84@@0))
))) (forall ((o_75@@1 T@Ref) (f_84@@1 T@Field_15274_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@1 f_84@@1) (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@1 f_84@@1)) (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| newPMask@1) o_75@@1 f_84@@1))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| newPMask@1) o_75@@1 f_84@@1))
))) (forall ((o_75@@2 T@Ref) (f_84@@2 T@Field_9317_22377) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@2 f_84@@2) (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@2 f_84@@2)) (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| newPMask@1) o_75@@2 f_84@@2))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| newPMask@1) o_75@@2 f_84@@2))
))) (forall ((o_75@@3 T@Ref) (f_84@@3 T@Field_9317_30716) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@3 f_84@@3) (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@3 f_84@@3)) (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| newPMask@1) o_75@@3 f_84@@3))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| newPMask@1) o_75@@3 f_84@@3))
))) (forall ((o_75@@4 T@Ref) (f_84@@4 T@Field_22376_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@4 f_84@@4) (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@4 f_84@@4)) (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| newPMask@1) o_75@@4 f_84@@4))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| newPMask@1) o_75@@4 f_84@@4))
))) (forall ((o_75@@5 T@Ref) (f_84@@5 T@Field_22376_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@5 f_84@@5) (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@5 f_84@@5)) (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| newPMask@1) o_75@@5 f_84@@5))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| newPMask@1) o_75@@5 f_84@@5))
))) (forall ((o_75@@6 T@Ref) (f_84@@6 T@Field_22376_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@6 f_84@@6) (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@6 f_84@@6)) (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| newPMask@1) o_75@@6 f_84@@6))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| newPMask@1) o_75@@6 f_84@@6))
))) (forall ((o_75@@7 T@Ref) (f_84@@7 T@Field_22376_22377) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@7 f_84@@7) (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@7 f_84@@7)) (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| newPMask@1) o_75@@7 f_84@@7))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| newPMask@1) o_75@@7 f_84@@7))
))) (forall ((o_75@@8 T@Ref) (f_84@@8 T@Field_38414_38419) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@8 f_84@@8) (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@8 f_84@@8)) (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| newPMask@1) o_75@@8 f_84@@8))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| newPMask@1) o_75@@8 f_84@@8))
))) (forall ((o_75@@9 T@Ref) (f_84@@9 T@Field_24505_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@9 f_84@@9) (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@9 f_84@@9)) (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| newPMask@1) o_75@@9 f_84@@9))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| newPMask@1) o_75@@9 f_84@@9))
))) (forall ((o_75@@10 T@Ref) (f_84@@10 T@Field_24505_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@10 f_84@@10) (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@10 f_84@@10)) (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| newPMask@1) o_75@@10 f_84@@10))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| newPMask@1) o_75@@10 f_84@@10))
))) (forall ((o_75@@11 T@Ref) (f_84@@11 T@Field_24505_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@11 f_84@@11) (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@11 f_84@@11)) (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| newPMask@1) o_75@@11 f_84@@11))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| newPMask@1) o_75@@11 f_84@@11))
))) (forall ((o_75@@12 T@Ref) (f_84@@12 T@Field_24505_24506) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@12 f_84@@12) (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@12 f_84@@12)) (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| newPMask@1) o_75@@12 f_84@@12))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| newPMask@1) o_75@@12 f_84@@12))
))) (forall ((o_75@@13 T@Ref) (f_84@@13 T@Field_30711_30716) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@13 f_84@@13) (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@13 f_84@@13)) (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| newPMask@1) o_75@@13 f_84@@13))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| newPMask@1) o_75@@13 f_84@@13))
))) (forall ((o_75@@14 T@Ref) (f_84@@14 T@Field_24558_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@14 f_84@@14) (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@14 f_84@@14)) (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| newPMask@1) o_75@@14 f_84@@14))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| newPMask@1) o_75@@14 f_84@@14))
))) (forall ((o_75@@15 T@Ref) (f_84@@15 T@Field_24558_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@15 f_84@@15) (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@15 f_84@@15)) (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| newPMask@1) o_75@@15 f_84@@15))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| newPMask@1) o_75@@15 f_84@@15))
))) (forall ((o_75@@16 T@Ref) (f_84@@16 T@Field_24558_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@16 f_84@@16) (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@16 f_84@@16)) (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| newPMask@1) o_75@@16 f_84@@16))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| newPMask@1) o_75@@16 f_84@@16))
))) (forall ((o_75@@17 T@Ref) (f_84@@17 T@Field_24558_24559) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@17 f_84@@17) (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@17 f_84@@17)) (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| newPMask@1) o_75@@17 f_84@@17))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| newPMask@1) o_75@@17 f_84@@17))
))) (forall ((o_75@@18 T@Ref) (f_84@@18 T@Field_39736_39741) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@18 f_84@@18) (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@18 f_84@@18)) (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| newPMask@1) o_75@@18 f_84@@18))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| newPMask@1) o_75@@18 f_84@@18))
))) (forall ((o_75@@19 T@Ref) (f_84@@19 T@Field_25026_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@19 f_84@@19) (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@19 f_84@@19)) (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| newPMask@1) o_75@@19 f_84@@19))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| newPMask@1) o_75@@19 f_84@@19))
))) (forall ((o_75@@20 T@Ref) (f_84@@20 T@Field_25026_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@20 f_84@@20) (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@20 f_84@@20)) (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| newPMask@1) o_75@@20 f_84@@20))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| newPMask@1) o_75@@20 f_84@@20))
))) (forall ((o_75@@21 T@Ref) (f_84@@21 T@Field_25026_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@21 f_84@@21) (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@21 f_84@@21)) (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| newPMask@1) o_75@@21 f_84@@21))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| newPMask@1) o_75@@21 f_84@@21))
))) (forall ((o_75@@22 T@Ref) (f_84@@22 T@Field_25026_25027) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@22 f_84@@22) (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@22 f_84@@22)) (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| newPMask@1) o_75@@22 f_84@@22))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| newPMask@1) o_75@@22 f_84@@22))
))) (forall ((o_75@@23 T@Ref) (f_84@@23 T@Field_38936_38941) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@23 f_84@@23) (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@23 f_84@@23)) (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| newPMask@1) o_75@@23 f_84@@23))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| newPMask@1) o_75@@23 f_84@@23))
))) (forall ((o_75@@24 T@Ref) (f_84@@24 T@Field_27408_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@24 f_84@@24) (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@24 f_84@@24)) (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| newPMask@1) o_75@@24 f_84@@24))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| newPMask@1) o_75@@24 f_84@@24))
))) (forall ((o_75@@25 T@Ref) (f_84@@25 T@Field_27408_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@25 f_84@@25) (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@25 f_84@@25)) (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| newPMask@1) o_75@@25 f_84@@25))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| newPMask@1) o_75@@25 f_84@@25))
))) (forall ((o_75@@26 T@Ref) (f_84@@26 T@Field_27408_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@26 f_84@@26) (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@26 f_84@@26)) (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| newPMask@1) o_75@@26 f_84@@26))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| newPMask@1) o_75@@26 f_84@@26))
))) (forall ((o_75@@27 T@Ref) (f_84@@27 T@Field_27408_27409) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@27 f_84@@27) (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@27 f_84@@27)) (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| newPMask@1) o_75@@27 f_84@@27))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| newPMask@1) o_75@@27 f_84@@27))
))) (forall ((o_75@@28 T@Ref) (f_84@@28 T@Field_35363_35368) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4))) o_75@@28 f_84@@28) (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) l1_1@@4 next)))) o_75@@28 f_84@@28)) (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| newPMask@1) o_75@@28 f_84@@28))
 :qid |stdinbpl.1028:33|
 :skolemid |88|
 :pattern ( (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| newPMask@1) o_75@@28 f_84@@28))
))) (= Heap@6 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@5) (store (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@5) null (|list#sm| l1_1@@4) newPMask@1) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@5) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@5)))) (and (= Heap@7 Heap@6) (= (ControlFlow 0 31) 29))) anon14_correct))))
(let ((anon32_Else_correct  (=> (and (and (|listLength#trigger| (CombineFrames (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@3) null (list l1_1@@4)) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@3) null (list2 l2@@4))) l1_1@@4 l2@@4 (- k@@4 1)) (state Heap@3 Mask@1)) (and (= Heap@4 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@3) (store (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4) (PolymorphicMapType_15763 (store (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) l1_1@@4 elem true) (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@3) null (|list#sm| l1_1@@4))))) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@3) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@3))) (= Heap@5 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@4) (store (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4) (PolymorphicMapType_15763 (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (store (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) l1_1@@4 next true) (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@4) null (|list#sm| l1_1@@4))))) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@4) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@4))))) (and (=> (= (ControlFlow 0 33) 31) anon33_Then_correct) (=> (= (ControlFlow 0 33) 32) anon33_Else_correct)))))
(let ((anon32_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| Mask@1) null (list l1_1@@4))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| Mask@1) null (list l1_1@@4)))) (=> (= (ControlFlow 0 5) (- 0 4)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| Mask@1) null (list2 l2@@4)))))))))
(let ((anon9_correct  (=> (state Heap@3 Mask@1) (=> (and (|someList#trigger_9481| Heap@3 (someList l1_1@@4 k@@4)) (= (select (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@3) null (someList l1_1@@4 k@@4)) EmptyFrame)) (and (=> (= (ControlFlow 0 34) (- 0 35)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| Mask@1) null (someList l1_1@@4 k@@4))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| Mask@1) null (someList l1_1@@4 k@@4)))) (=> (state Heap@3 Mask@1) (and (=> (= (ControlFlow 0 34) 5) anon32_Then_correct) (=> (= (ControlFlow 0 34) 33) anon32_Else_correct)))))))))
(let ((anon31_Else_correct  (=> (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next) null) (=> (and (= Heap@3 Heap@1) (= (ControlFlow 0 37) 34)) anon9_correct))))
(let ((anon31_Then_correct  (=> (not (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next) null)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_64 T@Ref) (f_73 T@Field_21300_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64 f_73) (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64 f_73)) (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| newPMask@0) o_64 f_73))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| newPMask@0) o_64 f_73))
)) (forall ((o_64@@0 T@Ref) (f_73@@0 T@Field_15287_15288) ) (!  (=> (or (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@0 f_73@@0) (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@0 f_73@@0)) (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| newPMask@0) o_64@@0 f_73@@0))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| newPMask@0) o_64@@0 f_73@@0))
))) (forall ((o_64@@1 T@Ref) (f_73@@1 T@Field_15274_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@1 f_73@@1) (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@1 f_73@@1)) (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| newPMask@0) o_64@@1 f_73@@1))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| newPMask@0) o_64@@1 f_73@@1))
))) (forall ((o_64@@2 T@Ref) (f_73@@2 T@Field_9317_22377) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@2 f_73@@2) (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@2 f_73@@2)) (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| newPMask@0) o_64@@2 f_73@@2))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| newPMask@0) o_64@@2 f_73@@2))
))) (forall ((o_64@@3 T@Ref) (f_73@@3 T@Field_9317_30716) ) (!  (=> (or (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@3 f_73@@3) (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@3 f_73@@3)) (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| newPMask@0) o_64@@3 f_73@@3))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| newPMask@0) o_64@@3 f_73@@3))
))) (forall ((o_64@@4 T@Ref) (f_73@@4 T@Field_22376_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@4 f_73@@4) (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@4 f_73@@4)) (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| newPMask@0) o_64@@4 f_73@@4))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| newPMask@0) o_64@@4 f_73@@4))
))) (forall ((o_64@@5 T@Ref) (f_73@@5 T@Field_22376_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@5 f_73@@5) (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@5 f_73@@5)) (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| newPMask@0) o_64@@5 f_73@@5))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| newPMask@0) o_64@@5 f_73@@5))
))) (forall ((o_64@@6 T@Ref) (f_73@@6 T@Field_22376_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@6 f_73@@6) (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@6 f_73@@6)) (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| newPMask@0) o_64@@6 f_73@@6))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| newPMask@0) o_64@@6 f_73@@6))
))) (forall ((o_64@@7 T@Ref) (f_73@@7 T@Field_22376_22377) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@7 f_73@@7) (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@7 f_73@@7)) (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| newPMask@0) o_64@@7 f_73@@7))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| newPMask@0) o_64@@7 f_73@@7))
))) (forall ((o_64@@8 T@Ref) (f_73@@8 T@Field_38414_38419) ) (!  (=> (or (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@8 f_73@@8) (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@8 f_73@@8)) (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| newPMask@0) o_64@@8 f_73@@8))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| newPMask@0) o_64@@8 f_73@@8))
))) (forall ((o_64@@9 T@Ref) (f_73@@9 T@Field_24505_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@9 f_73@@9) (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@9 f_73@@9)) (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| newPMask@0) o_64@@9 f_73@@9))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| newPMask@0) o_64@@9 f_73@@9))
))) (forall ((o_64@@10 T@Ref) (f_73@@10 T@Field_24505_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@10 f_73@@10) (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@10 f_73@@10)) (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| newPMask@0) o_64@@10 f_73@@10))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| newPMask@0) o_64@@10 f_73@@10))
))) (forall ((o_64@@11 T@Ref) (f_73@@11 T@Field_24505_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@11 f_73@@11) (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@11 f_73@@11)) (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| newPMask@0) o_64@@11 f_73@@11))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| newPMask@0) o_64@@11 f_73@@11))
))) (forall ((o_64@@12 T@Ref) (f_73@@12 T@Field_24505_24506) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@12 f_73@@12) (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@12 f_73@@12)) (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| newPMask@0) o_64@@12 f_73@@12))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| newPMask@0) o_64@@12 f_73@@12))
))) (forall ((o_64@@13 T@Ref) (f_73@@13 T@Field_30711_30716) ) (!  (=> (or (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@13 f_73@@13) (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@13 f_73@@13)) (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| newPMask@0) o_64@@13 f_73@@13))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| newPMask@0) o_64@@13 f_73@@13))
))) (forall ((o_64@@14 T@Ref) (f_73@@14 T@Field_24558_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@14 f_73@@14) (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@14 f_73@@14)) (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| newPMask@0) o_64@@14 f_73@@14))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| newPMask@0) o_64@@14 f_73@@14))
))) (forall ((o_64@@15 T@Ref) (f_73@@15 T@Field_24558_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@15 f_73@@15) (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@15 f_73@@15)) (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| newPMask@0) o_64@@15 f_73@@15))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| newPMask@0) o_64@@15 f_73@@15))
))) (forall ((o_64@@16 T@Ref) (f_73@@16 T@Field_24558_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@16 f_73@@16) (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@16 f_73@@16)) (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| newPMask@0) o_64@@16 f_73@@16))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| newPMask@0) o_64@@16 f_73@@16))
))) (forall ((o_64@@17 T@Ref) (f_73@@17 T@Field_24558_24559) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@17 f_73@@17) (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@17 f_73@@17)) (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| newPMask@0) o_64@@17 f_73@@17))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| newPMask@0) o_64@@17 f_73@@17))
))) (forall ((o_64@@18 T@Ref) (f_73@@18 T@Field_39736_39741) ) (!  (=> (or (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@18 f_73@@18) (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@18 f_73@@18)) (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| newPMask@0) o_64@@18 f_73@@18))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| newPMask@0) o_64@@18 f_73@@18))
))) (forall ((o_64@@19 T@Ref) (f_73@@19 T@Field_25026_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@19 f_73@@19) (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@19 f_73@@19)) (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| newPMask@0) o_64@@19 f_73@@19))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| newPMask@0) o_64@@19 f_73@@19))
))) (forall ((o_64@@20 T@Ref) (f_73@@20 T@Field_25026_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@20 f_73@@20) (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@20 f_73@@20)) (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| newPMask@0) o_64@@20 f_73@@20))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| newPMask@0) o_64@@20 f_73@@20))
))) (forall ((o_64@@21 T@Ref) (f_73@@21 T@Field_25026_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@21 f_73@@21) (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@21 f_73@@21)) (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| newPMask@0) o_64@@21 f_73@@21))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| newPMask@0) o_64@@21 f_73@@21))
))) (forall ((o_64@@22 T@Ref) (f_73@@22 T@Field_25026_25027) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@22 f_73@@22) (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@22 f_73@@22)) (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| newPMask@0) o_64@@22 f_73@@22))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| newPMask@0) o_64@@22 f_73@@22))
))) (forall ((o_64@@23 T@Ref) (f_73@@23 T@Field_38936_38941) ) (!  (=> (or (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@23 f_73@@23) (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@23 f_73@@23)) (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| newPMask@0) o_64@@23 f_73@@23))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| newPMask@0) o_64@@23 f_73@@23))
))) (forall ((o_64@@24 T@Ref) (f_73@@24 T@Field_27408_3093) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@24 f_73@@24) (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@24 f_73@@24)) (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| newPMask@0) o_64@@24 f_73@@24))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| newPMask@0) o_64@@24 f_73@@24))
))) (forall ((o_64@@25 T@Ref) (f_73@@25 T@Field_27408_9320) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@25 f_73@@25) (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@25 f_73@@25)) (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| newPMask@0) o_64@@25 f_73@@25))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| newPMask@0) o_64@@25 f_73@@25))
))) (forall ((o_64@@26 T@Ref) (f_73@@26 T@Field_27408_53) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@26 f_73@@26) (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@26 f_73@@26)) (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| newPMask@0) o_64@@26 f_73@@26))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| newPMask@0) o_64@@26 f_73@@26))
))) (forall ((o_64@@27 T@Ref) (f_73@@27 T@Field_27408_27409) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@27 f_73@@27) (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@27 f_73@@27)) (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| newPMask@0) o_64@@27 f_73@@27))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| newPMask@0) o_64@@27 f_73@@27))
))) (forall ((o_64@@28 T@Ref) (f_73@@28 T@Field_35363_35368) ) (!  (=> (or (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4))) o_64@@28 f_73@@28) (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) l1_1@@4 next)))) o_64@@28 f_73@@28)) (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| newPMask@0) o_64@@28 f_73@@28))
 :qid |stdinbpl.981:33|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| newPMask@0) o_64@@28 f_73@@28))
))) (= Heap@2 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@1) (store (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@1) null (|list#sm| l1_1@@4) newPMask@0) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@1) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@1)))) (and (= Heap@3 Heap@2) (= (ControlFlow 0 36) 34))) anon9_correct))))
(let ((anon7_correct  (=> (and (= Heap@0 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@105) (store (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4) (PolymorphicMapType_15763 (store (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) l1_1@@4 elem true) (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@@105) null (|list#sm| l1_1@@4))))) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@@105) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@@105))) (= Heap@1 (PolymorphicMapType_15214 (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_9459_9460#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_9505_9506#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_9481_9482#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@0) (store (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4) (PolymorphicMapType_15763 (|PolymorphicMapType_15763_9317_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (store (|PolymorphicMapType_15763_9319_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) l1_1@@4 next true) (|PolymorphicMapType_15763_9317_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_9317_55703#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_22376_56751#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24505_57799#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_24558_58847#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_25026_59895#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_3093#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_9320#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_53#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_22377#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))) (|PolymorphicMapType_15763_27408_60943#PolymorphicMapType_15763| (select (|PolymorphicMapType_15214_9531_30803#PolymorphicMapType_15214| Heap@0) null (|list#sm| l1_1@@4))))) (|PolymorphicMapType_15214_9556_35455#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_9317_22377#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_9317_46981#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_22376_3093#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_22376_9320#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_22376_53#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_22376_48142#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_24505_3093#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_24505_9320#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_24505_53#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_24558_3093#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_24558_9320#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_24558_53#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_24558_50421#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_25026_3093#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_25026_9320#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_25026_53#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_25026_51582#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_27408_3093#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_27408_9320#PolymorphicMapType_15214| Heap@0) (|PolymorphicMapType_15214_27408_53#PolymorphicMapType_15214| Heap@0)))) (and (=> (= (ControlFlow 0 38) 36) anon31_Then_correct) (=> (= (ControlFlow 0 38) 37) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (and (|listLength#trigger| (CombineFrames (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@105) null (list (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next))) (select (|PolymorphicMapType_15214_9552_9553#PolymorphicMapType_15214| Heap@@105) null (list2 l2@@4))) (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next) l2@@4 k@@4) (= (ControlFlow 0 40) 38)) anon7_correct)))
(let ((anon29_Then_correct  (=> (and (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next) null) (= (ControlFlow 0 39) 38)) anon7_correct)))
(let ((anon30_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| UnfoldingMask@3) null (list (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next)))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| UnfoldingMask@3) null (list (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| UnfoldingMask@3) null (list2 l2@@4)))))))))
(let ((anon29_Else_correct  (=> (not (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next) null)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (HasDirectPerm_9319_9320 UnfoldingMask@3 l1_1@@4 next)) (=> (HasDirectPerm_9319_9320 UnfoldingMask@3 l1_1@@4 next) (and (=> (= (ControlFlow 0 41) 2) anon30_Then_correct) (=> (= (ControlFlow 0 41) 40) anon30_Else_correct)))))))
(let ((anon2_correct  (=> (state Heap@@105 UnfoldingMask@3) (and (=> (= (ControlFlow 0 43) (- 0 44)) (HasDirectPerm_9319_9320 UnfoldingMask@3 l1_1@@4 next)) (=> (HasDirectPerm_9319_9320 UnfoldingMask@3 l1_1@@4 next) (and (=> (= (ControlFlow 0 43) 39) anon29_Then_correct) (=> (= (ControlFlow 0 43) 41) anon29_Else_correct)))))))
(let ((anon28_Else_correct  (=> (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next) null) (=> (and (= UnfoldingMask@3 UnfoldingMask@1) (= (ControlFlow 0 46) 43)) anon2_correct))))
(let ((anon28_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next) null)) (= UnfoldingMask@2 (PolymorphicMapType_15235 (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| UnfoldingMask@1) (store (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| UnfoldingMask@1) null (list (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next)) (+ (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| UnfoldingMask@1) null (list (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next))) FullPerm)) (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| UnfoldingMask@1) (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| UnfoldingMask@1)))) (=> (and (and (InsidePredicate_9527_9527 (list l1_1@@4) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@105) null (list l1_1@@4)) (list (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next)) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@105) null (list (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next)))) (state Heap@@105 UnfoldingMask@2)) (and (= UnfoldingMask@3 UnfoldingMask@2) (= (ControlFlow 0 45) 43))) anon2_correct))))
(let ((anon0_correct  (=> (and (and (state Heap@@105 ZeroMask) (not AssumePermUpperBound)) (and (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@105) l1_1@@4 $allocated) (select (|PolymorphicMapType_15214_9121_53#PolymorphicMapType_15214| Heap@@105) l2@@4 $allocated))) (=> (and (and (and (= AssumeFunctionsAbove 2) (= Mask@0 (PolymorphicMapType_15235 (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| ZeroMask) (store (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| ZeroMask) null (list l1_1@@4) (+ (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| ZeroMask) null (list l1_1@@4)) FullPerm)) (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| ZeroMask) (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| ZeroMask)))) (and (state Heap@@105 Mask@0) (= Mask@1 (PolymorphicMapType_15235 (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| Mask@0) (store (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| Mask@0) null (list2 l2@@4) (+ (select (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| Mask@0) null (list2 l2@@4)) FullPerm)) (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| Mask@0) (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| Mask@0))))) (and (and (state Heap@@105 Mask@1) (state Heap@@105 Mask@1)) (and (|list#trigger_9527| Heap@@105 (list l1_1@@4)) (= (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@105) null (list l1_1@@4)) (CombineFrames (FrameFragment_3372 (select (|PolymorphicMapType_15214_9317_3093#PolymorphicMapType_15214| Heap@@105) l1_1@@4 elem)) (CombineFrames (FrameFragment_9320 (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next)) (FrameFragment_9528 (ite (not (= (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next) null)) (select (|PolymorphicMapType_15214_9527_9528#PolymorphicMapType_15214| Heap@@105) null (list (select (|PolymorphicMapType_15214_9124_9125#PolymorphicMapType_15214| Heap@@105) l1_1@@4 next))) EmptyFrame)))))))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| Mask@1) null (list l1_1@@4))))) (=> (=> (< NoPerm FullPerm) (< NoPerm (select (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| Mask@1) null (list l1_1@@4)))) (=> (and (not (= l1_1@@4 null)) (= UnfoldingMask@0 (PolymorphicMapType_15235 (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| Mask@1) (store (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| Mask@1) l1_1@@4 elem (+ (select (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| Mask@1) l1_1@@4 elem) FullPerm)) (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| Mask@1) (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| Mask@1)))) (=> (and (and (state Heap@@105 UnfoldingMask@0) (not (= l1_1@@4 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_15235 (|PolymorphicMapType_15235_9459_9460#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9527_9528#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9317_3093#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9481_9482#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9505_9506#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9552_9553#PolymorphicMapType_15235| UnfoldingMask@0) (store (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| UnfoldingMask@0) l1_1@@4 next (+ (select (|PolymorphicMapType_15235_9319_9320#PolymorphicMapType_15235| UnfoldingMask@0) l1_1@@4 next) FullPerm)) (|PolymorphicMapType_15235_9459_3093#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9459_9320#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9459_53#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9459_76134#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9527_3093#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9527_9320#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9527_53#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9527_76545#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9317_9460#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9317_53#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9317_76944#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9481_3093#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9481_9320#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9481_53#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9481_77355#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9505_3093#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9505_9320#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9505_53#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9505_77766#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9552_3093#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9552_9320#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9552_53#PolymorphicMapType_15235| UnfoldingMask@0) (|PolymorphicMapType_15235_9552_78177#PolymorphicMapType_15235| UnfoldingMask@0))) (state Heap@@105 UnfoldingMask@1))) (and (=> (= (ControlFlow 0 47) 45) anon28_Then_correct) (=> (= (ControlFlow 0 47) 46) anon28_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 49) 47) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))
))
(check-sat)
