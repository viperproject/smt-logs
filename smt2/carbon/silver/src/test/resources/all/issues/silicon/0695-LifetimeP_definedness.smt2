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
(declare-sort T@Field_35857_53 0)
(declare-sort T@Field_35870_35871 0)
(declare-sort T@Field_46129_46130 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_48667_48668 0)
(declare-sort T@Field_51131_51132 0)
(declare-sort T@Field_52884_52885 0)
(declare-sort T@Field_53810_53815 0)
(declare-sort T@Field_54199_54204 0)
(declare-sort T@Field_56951_56952 0)
(declare-sort T@Field_58189_58190 0)
(declare-sort T@Field_56974_56979 0)
(declare-sort T@Field_58490_58495 0)
(declare-sort T@Field_60906_60911 0)
(declare-sort T@Field_43998_44003 0)
(declare-sort T@Field_69392_69393 0)
(declare-sort T@Field_69405_69410 0)
(declare-sort T@Field_20354_20576 0)
(declare-sort T@Field_20354_4202 0)
(declare-sort T@Field_20354_43193 0)
(declare-sort T@Field_20575_20355 0)
(declare-sort T@Field_20575_53 0)
(declare-sort T@Field_20575_4202 0)
(declare-sort T@Field_20756_20355 0)
(declare-sort T@Field_20756_53 0)
(declare-sort T@Field_20756_4202 0)
(declare-sort T@Field_20728_20355 0)
(declare-sort T@Field_20728_53 0)
(declare-sort T@Field_20728_4202 0)
(declare-sort T@Field_20866_20355 0)
(declare-sort T@Field_20866_53 0)
(declare-sort T@Field_20866_4202 0)
(declare-sort T@Field_43157_20355 0)
(declare-sort T@Field_43222_43223 0)
(declare-sort T@Field_43157_53 0)
(declare-sort T@Field_43157_4202 0)
(declare-sort T@Field_43188_43193 0)
(declare-sort T@Field_43983_20355 0)
(declare-sort T@Field_44016_44017 0)
(declare-sort T@Field_43983_53 0)
(declare-sort T@Field_43983_4612 0)
(declare-sort T@Field_48667_20355 0)
(declare-sort T@Field_48667_53 0)
(declare-sort T@Field_48667_4202 0)
(declare-sort T@Field_59245_59250 0)
(declare-sort T@Field_52884_20355 0)
(declare-sort T@Field_52884_53 0)
(declare-sort T@Field_52884_4202 0)
(declare-sort T@Field_56169_20355 0)
(declare-sort T@Field_56169_56170 0)
(declare-sort T@Field_56169_53 0)
(declare-sort T@Field_56169_4202 0)
(declare-sort T@Field_56424_56429 0)
(declare-sort T@Field_58189_20355 0)
(declare-sort T@Field_58189_53 0)
(declare-sort T@Field_58189_4202 0)
(declare-datatypes ((T@PolymorphicMapType_35818 0)) (((PolymorphicMapType_35818 (|PolymorphicMapType_35818_20756_20757#PolymorphicMapType_35818| (Array T@Ref T@Field_46129_46130 Real)) (|PolymorphicMapType_35818_20706_20707#PolymorphicMapType_35818| (Array T@Ref T@Field_48667_48668 Real)) (|PolymorphicMapType_35818_20728_20729#PolymorphicMapType_35818| (Array T@Ref T@Field_51131_51132 Real)) (|PolymorphicMapType_35818_20354_20355#PolymorphicMapType_35818| (Array T@Ref T@Field_35870_35871 Real)) (|PolymorphicMapType_35818_20524_20525#PolymorphicMapType_35818| (Array T@Ref T@Field_52884_52885 Real)) (|PolymorphicMapType_35818_20549_20550#PolymorphicMapType_35818| (Array T@Ref T@Field_56169_56170 Real)) (|PolymorphicMapType_35818_20648_20649#PolymorphicMapType_35818| (Array T@Ref T@Field_58189_58190 Real)) (|PolymorphicMapType_35818_20575_20576#PolymorphicMapType_35818| (Array T@Ref T@Field_56951_56952 Real)) (|PolymorphicMapType_35818_20192_4202#PolymorphicMapType_35818| (Array T@Ref T@Field_43157_4202 Real)) (|PolymorphicMapType_35818_20286_4612#PolymorphicMapType_35818| (Array T@Ref T@Field_43983_4612 Real)) (|PolymorphicMapType_35818_20866_20867#PolymorphicMapType_35818| (Array T@Ref T@Field_69392_69393 Real)) (|PolymorphicMapType_35818_20756_20355#PolymorphicMapType_35818| (Array T@Ref T@Field_20756_20355 Real)) (|PolymorphicMapType_35818_20756_4202#PolymorphicMapType_35818| (Array T@Ref T@Field_20756_4202 Real)) (|PolymorphicMapType_35818_20756_53#PolymorphicMapType_35818| (Array T@Ref T@Field_20756_53 Real)) (|PolymorphicMapType_35818_20756_170192#PolymorphicMapType_35818| (Array T@Ref T@Field_60906_60911 Real)) (|PolymorphicMapType_35818_20706_20355#PolymorphicMapType_35818| (Array T@Ref T@Field_48667_20355 Real)) (|PolymorphicMapType_35818_20706_4202#PolymorphicMapType_35818| (Array T@Ref T@Field_48667_4202 Real)) (|PolymorphicMapType_35818_20706_53#PolymorphicMapType_35818| (Array T@Ref T@Field_48667_53 Real)) (|PolymorphicMapType_35818_20706_170603#PolymorphicMapType_35818| (Array T@Ref T@Field_59245_59250 Real)) (|PolymorphicMapType_35818_20728_20355#PolymorphicMapType_35818| (Array T@Ref T@Field_20728_20355 Real)) (|PolymorphicMapType_35818_20728_4202#PolymorphicMapType_35818| (Array T@Ref T@Field_20728_4202 Real)) (|PolymorphicMapType_35818_20728_53#PolymorphicMapType_35818| (Array T@Ref T@Field_20728_53 Real)) (|PolymorphicMapType_35818_20728_171014#PolymorphicMapType_35818| (Array T@Ref T@Field_53810_53815 Real)) (|PolymorphicMapType_35818_20354_20757#PolymorphicMapType_35818| (Array T@Ref T@Field_20354_20576 Real)) (|PolymorphicMapType_35818_20354_4202#PolymorphicMapType_35818| (Array T@Ref T@Field_20354_4202 Real)) (|PolymorphicMapType_35818_20354_53#PolymorphicMapType_35818| (Array T@Ref T@Field_35857_53 Real)) (|PolymorphicMapType_35818_20354_171425#PolymorphicMapType_35818| (Array T@Ref T@Field_20354_43193 Real)) (|PolymorphicMapType_35818_20524_20355#PolymorphicMapType_35818| (Array T@Ref T@Field_52884_20355 Real)) (|PolymorphicMapType_35818_20524_4202#PolymorphicMapType_35818| (Array T@Ref T@Field_52884_4202 Real)) (|PolymorphicMapType_35818_20524_53#PolymorphicMapType_35818| (Array T@Ref T@Field_52884_53 Real)) (|PolymorphicMapType_35818_20524_171836#PolymorphicMapType_35818| (Array T@Ref T@Field_54199_54204 Real)) (|PolymorphicMapType_35818_20549_20355#PolymorphicMapType_35818| (Array T@Ref T@Field_56169_20355 Real)) (|PolymorphicMapType_35818_20549_4202#PolymorphicMapType_35818| (Array T@Ref T@Field_56169_4202 Real)) (|PolymorphicMapType_35818_20549_53#PolymorphicMapType_35818| (Array T@Ref T@Field_56169_53 Real)) (|PolymorphicMapType_35818_20549_172247#PolymorphicMapType_35818| (Array T@Ref T@Field_56424_56429 Real)) (|PolymorphicMapType_35818_20648_20355#PolymorphicMapType_35818| (Array T@Ref T@Field_58189_20355 Real)) (|PolymorphicMapType_35818_20648_4202#PolymorphicMapType_35818| (Array T@Ref T@Field_58189_4202 Real)) (|PolymorphicMapType_35818_20648_53#PolymorphicMapType_35818| (Array T@Ref T@Field_58189_53 Real)) (|PolymorphicMapType_35818_20648_172658#PolymorphicMapType_35818| (Array T@Ref T@Field_58490_58495 Real)) (|PolymorphicMapType_35818_20575_20355#PolymorphicMapType_35818| (Array T@Ref T@Field_20575_20355 Real)) (|PolymorphicMapType_35818_20575_4202#PolymorphicMapType_35818| (Array T@Ref T@Field_20575_4202 Real)) (|PolymorphicMapType_35818_20575_53#PolymorphicMapType_35818| (Array T@Ref T@Field_20575_53 Real)) (|PolymorphicMapType_35818_20575_173069#PolymorphicMapType_35818| (Array T@Ref T@Field_56974_56979 Real)) (|PolymorphicMapType_35818_20192_20757#PolymorphicMapType_35818| (Array T@Ref T@Field_43222_43223 Real)) (|PolymorphicMapType_35818_20192_20355#PolymorphicMapType_35818| (Array T@Ref T@Field_43157_20355 Real)) (|PolymorphicMapType_35818_20192_53#PolymorphicMapType_35818| (Array T@Ref T@Field_43157_53 Real)) (|PolymorphicMapType_35818_20192_173483#PolymorphicMapType_35818| (Array T@Ref T@Field_43188_43193 Real)) (|PolymorphicMapType_35818_20286_20757#PolymorphicMapType_35818| (Array T@Ref T@Field_44016_44017 Real)) (|PolymorphicMapType_35818_20286_20355#PolymorphicMapType_35818| (Array T@Ref T@Field_43983_20355 Real)) (|PolymorphicMapType_35818_20286_53#PolymorphicMapType_35818| (Array T@Ref T@Field_43983_53 Real)) (|PolymorphicMapType_35818_20286_173897#PolymorphicMapType_35818| (Array T@Ref T@Field_43998_44003 Real)) (|PolymorphicMapType_35818_20866_20355#PolymorphicMapType_35818| (Array T@Ref T@Field_20866_20355 Real)) (|PolymorphicMapType_35818_20866_4202#PolymorphicMapType_35818| (Array T@Ref T@Field_20866_4202 Real)) (|PolymorphicMapType_35818_20866_53#PolymorphicMapType_35818| (Array T@Ref T@Field_20866_53 Real)) (|PolymorphicMapType_35818_20866_174308#PolymorphicMapType_35818| (Array T@Ref T@Field_69405_69410 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_36346 0)) (((PolymorphicMapType_36346 (|PolymorphicMapType_36346_20354_20355#PolymorphicMapType_36346| (Array T@Ref T@Field_35870_35871 Bool)) (|PolymorphicMapType_36346_20354_53#PolymorphicMapType_36346| (Array T@Ref T@Field_35857_53 Bool)) (|PolymorphicMapType_36346_20354_4202#PolymorphicMapType_36346| (Array T@Ref T@Field_20354_4202 Bool)) (|PolymorphicMapType_36346_20354_132131#PolymorphicMapType_36346| (Array T@Ref T@Field_20354_43193 Bool)) (|PolymorphicMapType_36346_20354_43223#PolymorphicMapType_36346| (Array T@Ref T@Field_20354_20576 Bool)) (|PolymorphicMapType_36346_43157_20355#PolymorphicMapType_36346| (Array T@Ref T@Field_43157_20355 Bool)) (|PolymorphicMapType_36346_43157_53#PolymorphicMapType_36346| (Array T@Ref T@Field_43157_53 Bool)) (|PolymorphicMapType_36346_43157_4202#PolymorphicMapType_36346| (Array T@Ref T@Field_43157_4202 Bool)) (|PolymorphicMapType_36346_43157_133179#PolymorphicMapType_36346| (Array T@Ref T@Field_43188_43193 Bool)) (|PolymorphicMapType_36346_43157_43223#PolymorphicMapType_36346| (Array T@Ref T@Field_43222_43223 Bool)) (|PolymorphicMapType_36346_43983_20355#PolymorphicMapType_36346| (Array T@Ref T@Field_43983_20355 Bool)) (|PolymorphicMapType_36346_43983_53#PolymorphicMapType_36346| (Array T@Ref T@Field_43983_53 Bool)) (|PolymorphicMapType_36346_43983_4202#PolymorphicMapType_36346| (Array T@Ref T@Field_43983_4612 Bool)) (|PolymorphicMapType_36346_43983_134227#PolymorphicMapType_36346| (Array T@Ref T@Field_43998_44003 Bool)) (|PolymorphicMapType_36346_43983_43223#PolymorphicMapType_36346| (Array T@Ref T@Field_44016_44017 Bool)) (|PolymorphicMapType_36346_46129_20355#PolymorphicMapType_36346| (Array T@Ref T@Field_20756_20355 Bool)) (|PolymorphicMapType_36346_46129_53#PolymorphicMapType_36346| (Array T@Ref T@Field_20756_53 Bool)) (|PolymorphicMapType_36346_46129_4202#PolymorphicMapType_36346| (Array T@Ref T@Field_20756_4202 Bool)) (|PolymorphicMapType_36346_46129_135275#PolymorphicMapType_36346| (Array T@Ref T@Field_60906_60911 Bool)) (|PolymorphicMapType_36346_46129_43223#PolymorphicMapType_36346| (Array T@Ref T@Field_46129_46130 Bool)) (|PolymorphicMapType_36346_48667_20355#PolymorphicMapType_36346| (Array T@Ref T@Field_48667_20355 Bool)) (|PolymorphicMapType_36346_48667_53#PolymorphicMapType_36346| (Array T@Ref T@Field_48667_53 Bool)) (|PolymorphicMapType_36346_48667_4202#PolymorphicMapType_36346| (Array T@Ref T@Field_48667_4202 Bool)) (|PolymorphicMapType_36346_48667_136323#PolymorphicMapType_36346| (Array T@Ref T@Field_59245_59250 Bool)) (|PolymorphicMapType_36346_48667_43223#PolymorphicMapType_36346| (Array T@Ref T@Field_48667_48668 Bool)) (|PolymorphicMapType_36346_51131_20355#PolymorphicMapType_36346| (Array T@Ref T@Field_20728_20355 Bool)) (|PolymorphicMapType_36346_51131_53#PolymorphicMapType_36346| (Array T@Ref T@Field_20728_53 Bool)) (|PolymorphicMapType_36346_51131_4202#PolymorphicMapType_36346| (Array T@Ref T@Field_20728_4202 Bool)) (|PolymorphicMapType_36346_51131_137371#PolymorphicMapType_36346| (Array T@Ref T@Field_53810_53815 Bool)) (|PolymorphicMapType_36346_51131_43223#PolymorphicMapType_36346| (Array T@Ref T@Field_51131_51132 Bool)) (|PolymorphicMapType_36346_52884_20355#PolymorphicMapType_36346| (Array T@Ref T@Field_52884_20355 Bool)) (|PolymorphicMapType_36346_52884_53#PolymorphicMapType_36346| (Array T@Ref T@Field_52884_53 Bool)) (|PolymorphicMapType_36346_52884_4202#PolymorphicMapType_36346| (Array T@Ref T@Field_52884_4202 Bool)) (|PolymorphicMapType_36346_52884_138419#PolymorphicMapType_36346| (Array T@Ref T@Field_54199_54204 Bool)) (|PolymorphicMapType_36346_52884_43223#PolymorphicMapType_36346| (Array T@Ref T@Field_52884_52885 Bool)) (|PolymorphicMapType_36346_56169_20355#PolymorphicMapType_36346| (Array T@Ref T@Field_56169_20355 Bool)) (|PolymorphicMapType_36346_56169_53#PolymorphicMapType_36346| (Array T@Ref T@Field_56169_53 Bool)) (|PolymorphicMapType_36346_56169_4202#PolymorphicMapType_36346| (Array T@Ref T@Field_56169_4202 Bool)) (|PolymorphicMapType_36346_56169_139467#PolymorphicMapType_36346| (Array T@Ref T@Field_56424_56429 Bool)) (|PolymorphicMapType_36346_56169_43223#PolymorphicMapType_36346| (Array T@Ref T@Field_56169_56170 Bool)) (|PolymorphicMapType_36346_56951_20355#PolymorphicMapType_36346| (Array T@Ref T@Field_20575_20355 Bool)) (|PolymorphicMapType_36346_56951_53#PolymorphicMapType_36346| (Array T@Ref T@Field_20575_53 Bool)) (|PolymorphicMapType_36346_56951_4202#PolymorphicMapType_36346| (Array T@Ref T@Field_20575_4202 Bool)) (|PolymorphicMapType_36346_56951_140515#PolymorphicMapType_36346| (Array T@Ref T@Field_56974_56979 Bool)) (|PolymorphicMapType_36346_56951_43223#PolymorphicMapType_36346| (Array T@Ref T@Field_56951_56952 Bool)) (|PolymorphicMapType_36346_58189_20355#PolymorphicMapType_36346| (Array T@Ref T@Field_58189_20355 Bool)) (|PolymorphicMapType_36346_58189_53#PolymorphicMapType_36346| (Array T@Ref T@Field_58189_53 Bool)) (|PolymorphicMapType_36346_58189_4202#PolymorphicMapType_36346| (Array T@Ref T@Field_58189_4202 Bool)) (|PolymorphicMapType_36346_58189_141563#PolymorphicMapType_36346| (Array T@Ref T@Field_58490_58495 Bool)) (|PolymorphicMapType_36346_58189_43223#PolymorphicMapType_36346| (Array T@Ref T@Field_58189_58190 Bool)) (|PolymorphicMapType_36346_69392_20355#PolymorphicMapType_36346| (Array T@Ref T@Field_20866_20355 Bool)) (|PolymorphicMapType_36346_69392_53#PolymorphicMapType_36346| (Array T@Ref T@Field_20866_53 Bool)) (|PolymorphicMapType_36346_69392_4202#PolymorphicMapType_36346| (Array T@Ref T@Field_20866_4202 Bool)) (|PolymorphicMapType_36346_69392_142611#PolymorphicMapType_36346| (Array T@Ref T@Field_69405_69410 Bool)) (|PolymorphicMapType_36346_69392_43223#PolymorphicMapType_36346| (Array T@Ref T@Field_69392_69393 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_35797 0)) (((PolymorphicMapType_35797 (|PolymorphicMapType_35797_19824_53#PolymorphicMapType_35797| (Array T@Ref T@Field_35857_53 Bool)) (|PolymorphicMapType_35797_19827_19828#PolymorphicMapType_35797| (Array T@Ref T@Field_35870_35871 T@Ref)) (|PolymorphicMapType_35797_20756_20757#PolymorphicMapType_35797| (Array T@Ref T@Field_46129_46130 T@FrameType)) (|PolymorphicMapType_35797_20706_20707#PolymorphicMapType_35797| (Array T@Ref T@Field_48667_48668 T@FrameType)) (|PolymorphicMapType_35797_20728_20729#PolymorphicMapType_35797| (Array T@Ref T@Field_51131_51132 T@FrameType)) (|PolymorphicMapType_35797_20524_20525#PolymorphicMapType_35797| (Array T@Ref T@Field_52884_52885 T@FrameType)) (|PolymorphicMapType_35797_20732_53902#PolymorphicMapType_35797| (Array T@Ref T@Field_53810_53815 T@PolymorphicMapType_36346)) (|PolymorphicMapType_35797_20528_54239#PolymorphicMapType_35797| (Array T@Ref T@Field_54199_54204 T@PolymorphicMapType_36346)) (|PolymorphicMapType_35797_20575_20576#PolymorphicMapType_35797| (Array T@Ref T@Field_56951_56952 T@FrameType)) (|PolymorphicMapType_35797_20648_20649#PolymorphicMapType_35797| (Array T@Ref T@Field_58189_58190 T@FrameType)) (|PolymorphicMapType_35797_20583_75993#PolymorphicMapType_35797| (Array T@Ref T@Field_56974_56979 T@PolymorphicMapType_36346)) (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| (Array T@Ref T@Field_58490_58495 T@PolymorphicMapType_36346)) (|PolymorphicMapType_35797_20763_101457#PolymorphicMapType_35797| (Array T@Ref T@Field_60906_60911 T@PolymorphicMapType_36346)) (|PolymorphicMapType_35797_20294_110860#PolymorphicMapType_35797| (Array T@Ref T@Field_43998_44003 T@PolymorphicMapType_36346)) (|PolymorphicMapType_35797_20866_20867#PolymorphicMapType_35797| (Array T@Ref T@Field_69392_69393 T@FrameType)) (|PolymorphicMapType_35797_20870_113600#PolymorphicMapType_35797| (Array T@Ref T@Field_69405_69410 T@PolymorphicMapType_36346)) (|PolymorphicMapType_35797_20354_20576#PolymorphicMapType_35797| (Array T@Ref T@Field_20354_20576 T@FrameType)) (|PolymorphicMapType_35797_20354_4202#PolymorphicMapType_35797| (Array T@Ref T@Field_20354_4202 Int)) (|PolymorphicMapType_35797_20354_116367#PolymorphicMapType_35797| (Array T@Ref T@Field_20354_43193 T@PolymorphicMapType_36346)) (|PolymorphicMapType_35797_20575_20355#PolymorphicMapType_35797| (Array T@Ref T@Field_20575_20355 T@Ref)) (|PolymorphicMapType_35797_20575_53#PolymorphicMapType_35797| (Array T@Ref T@Field_20575_53 Bool)) (|PolymorphicMapType_35797_20575_4202#PolymorphicMapType_35797| (Array T@Ref T@Field_20575_4202 Int)) (|PolymorphicMapType_35797_20756_20355#PolymorphicMapType_35797| (Array T@Ref T@Field_20756_20355 T@Ref)) (|PolymorphicMapType_35797_20756_53#PolymorphicMapType_35797| (Array T@Ref T@Field_20756_53 Bool)) (|PolymorphicMapType_35797_20756_4202#PolymorphicMapType_35797| (Array T@Ref T@Field_20756_4202 Int)) (|PolymorphicMapType_35797_20728_20355#PolymorphicMapType_35797| (Array T@Ref T@Field_20728_20355 T@Ref)) (|PolymorphicMapType_35797_20728_53#PolymorphicMapType_35797| (Array T@Ref T@Field_20728_53 Bool)) (|PolymorphicMapType_35797_20728_4202#PolymorphicMapType_35797| (Array T@Ref T@Field_20728_4202 Int)) (|PolymorphicMapType_35797_20866_20355#PolymorphicMapType_35797| (Array T@Ref T@Field_20866_20355 T@Ref)) (|PolymorphicMapType_35797_20866_53#PolymorphicMapType_35797| (Array T@Ref T@Field_20866_53 Bool)) (|PolymorphicMapType_35797_20866_4202#PolymorphicMapType_35797| (Array T@Ref T@Field_20866_4202 Int)) (|PolymorphicMapType_35797_43157_20355#PolymorphicMapType_35797| (Array T@Ref T@Field_43157_20355 T@Ref)) (|PolymorphicMapType_35797_43157_20576#PolymorphicMapType_35797| (Array T@Ref T@Field_43222_43223 T@FrameType)) (|PolymorphicMapType_35797_43157_53#PolymorphicMapType_35797| (Array T@Ref T@Field_43157_53 Bool)) (|PolymorphicMapType_35797_43157_4202#PolymorphicMapType_35797| (Array T@Ref T@Field_43157_4202 Int)) (|PolymorphicMapType_35797_43157_121936#PolymorphicMapType_35797| (Array T@Ref T@Field_43188_43193 T@PolymorphicMapType_36346)) (|PolymorphicMapType_35797_43983_20355#PolymorphicMapType_35797| (Array T@Ref T@Field_43983_20355 T@Ref)) (|PolymorphicMapType_35797_43983_20576#PolymorphicMapType_35797| (Array T@Ref T@Field_44016_44017 T@FrameType)) (|PolymorphicMapType_35797_43983_53#PolymorphicMapType_35797| (Array T@Ref T@Field_43983_53 Bool)) (|PolymorphicMapType_35797_43983_4202#PolymorphicMapType_35797| (Array T@Ref T@Field_43983_4612 Int)) (|PolymorphicMapType_35797_48667_20355#PolymorphicMapType_35797| (Array T@Ref T@Field_48667_20355 T@Ref)) (|PolymorphicMapType_35797_48667_53#PolymorphicMapType_35797| (Array T@Ref T@Field_48667_53 Bool)) (|PolymorphicMapType_35797_48667_4202#PolymorphicMapType_35797| (Array T@Ref T@Field_48667_4202 Int)) (|PolymorphicMapType_35797_48667_124231#PolymorphicMapType_35797| (Array T@Ref T@Field_59245_59250 T@PolymorphicMapType_36346)) (|PolymorphicMapType_35797_52884_20355#PolymorphicMapType_35797| (Array T@Ref T@Field_52884_20355 T@Ref)) (|PolymorphicMapType_35797_52884_53#PolymorphicMapType_35797| (Array T@Ref T@Field_52884_53 Bool)) (|PolymorphicMapType_35797_52884_4202#PolymorphicMapType_35797| (Array T@Ref T@Field_52884_4202 Int)) (|PolymorphicMapType_35797_56169_20355#PolymorphicMapType_35797| (Array T@Ref T@Field_56169_20355 T@Ref)) (|PolymorphicMapType_35797_56169_20576#PolymorphicMapType_35797| (Array T@Ref T@Field_56169_56170 T@FrameType)) (|PolymorphicMapType_35797_56169_53#PolymorphicMapType_35797| (Array T@Ref T@Field_56169_53 Bool)) (|PolymorphicMapType_35797_56169_4202#PolymorphicMapType_35797| (Array T@Ref T@Field_56169_4202 Int)) (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| (Array T@Ref T@Field_56424_56429 T@PolymorphicMapType_36346)) (|PolymorphicMapType_35797_58189_20355#PolymorphicMapType_35797| (Array T@Ref T@Field_58189_20355 T@Ref)) (|PolymorphicMapType_35797_58189_53#PolymorphicMapType_35797| (Array T@Ref T@Field_58189_53 Bool)) (|PolymorphicMapType_35797_58189_4202#PolymorphicMapType_35797| (Array T@Ref T@Field_58189_4202 Int)) ) ) ))
(declare-fun $allocated () T@Field_35857_53)
(declare-fun ref_2 () T@Field_35870_35871)
(declare-fun f_7 () T@Field_35870_35871)
(declare-fun n_10 () T@Field_35870_35871)
(declare-sort T@Map_645_5159 0)
(declare-fun |Map#Values_645_5159| (T@Map_645_5159) (Array Int Bool))
(declare-fun |Map#Domain_645_5159| (T@Map_645_5159) (Array Real Bool))
(declare-fun |Map#Elements_645_5159| (T@Map_645_5159) (Array Real Int))
(declare-sort T@Map_645_21031 0)
(declare-fun |Map#Values_645_21031| (T@Map_645_21031) (Array T@Ref Bool))
(declare-fun |Map#Domain_645_21031| (T@Map_645_21031) (Array Real Bool))
(declare-fun |Map#Elements_645_21031| (T@Map_645_21031) (Array Real T@Ref))
(declare-sort T@Map_645_45192 0)
(declare-sort T@Map_43140_645 0)
(declare-fun |Map#Values_645_43142| (T@Map_645_45192) (Array T@Map_43140_645 Bool))
(declare-fun |Map#Domain_645_45192| (T@Map_645_45192) (Array Real Bool))
(declare-fun |Map#Elements_645_43142| (T@Map_645_45192) (Array Real T@Map_43140_645))
(declare-sort T@Map_645_645 0)
(declare-fun |Map#Values_645_645| (T@Map_645_645) (Array Real Bool))
(declare-fun |Map#Domain_645_645| (T@Map_645_645) (Array Real Bool))
(declare-fun |Map#Elements_645_645| (T@Map_645_645) (Array Real Real))
(declare-sort T@Map_45192_5159 0)
(declare-fun |Map#Values_45192_5159| (T@Map_45192_5159) (Array Int Bool))
(declare-fun |Map#Domain_45192_5159| (T@Map_45192_5159) (Array T@Map_43140_645 Bool))
(declare-fun |Map#Elements_45192_5159| (T@Map_45192_5159) (Array T@Map_43140_645 Int))
(declare-sort T@Map_45192_21031 0)
(declare-fun |Map#Values_45192_21031| (T@Map_45192_21031) (Array T@Ref Bool))
(declare-fun |Map#Domain_45192_21031| (T@Map_45192_21031) (Array T@Map_43140_645 Bool))
(declare-fun |Map#Elements_45192_21031| (T@Map_45192_21031) (Array T@Map_43140_645 T@Ref))
(declare-sort T@Map_45192_45192 0)
(declare-fun |Map#Values_45192_43142| (T@Map_45192_45192) (Array T@Map_43140_645 Bool))
(declare-fun |Map#Domain_45192_45192| (T@Map_45192_45192) (Array T@Map_43140_645 Bool))
(declare-fun |Map#Elements_45192_43142| (T@Map_45192_45192) (Array T@Map_43140_645 T@Map_43140_645))
(declare-sort T@Map_45192_645 0)
(declare-fun |Map#Values_45192_645| (T@Map_45192_645) (Array Real Bool))
(declare-fun |Map#Domain_45192_645| (T@Map_45192_645) (Array T@Map_43140_645 Bool))
(declare-fun |Map#Elements_45192_645| (T@Map_45192_645) (Array T@Map_43140_645 Real))
(declare-sort T@Map_5159_5159 0)
(declare-fun |Map#Values_5159_5159| (T@Map_5159_5159) (Array Int Bool))
(declare-fun |Map#Domain_5159_5159| (T@Map_5159_5159) (Array Int Bool))
(declare-fun |Map#Elements_5159_5159| (T@Map_5159_5159) (Array Int Int))
(declare-sort T@Map_5159_21031 0)
(declare-fun |Map#Values_5159_21031| (T@Map_5159_21031) (Array T@Ref Bool))
(declare-fun |Map#Domain_5159_21031| (T@Map_5159_21031) (Array Int Bool))
(declare-fun |Map#Elements_5159_21031| (T@Map_5159_21031) (Array Int T@Ref))
(declare-sort T@Map_20446_5159 0)
(declare-fun |Map#Values_20446_5159| (T@Map_20446_5159) (Array Int Bool))
(declare-fun |Map#Domain_20446_5159| (T@Map_20446_5159) (Array T@Ref Bool))
(declare-fun |Map#Elements_20446_5159| (T@Map_20446_5159) (Array T@Ref Int))
(declare-sort T@Map_20446_21031 0)
(declare-fun |Map#Values_20446_21031| (T@Map_20446_21031) (Array T@Ref Bool))
(declare-fun |Map#Domain_20446_21031| (T@Map_20446_21031) (Array T@Ref Bool))
(declare-fun |Map#Elements_20446_21031| (T@Map_20446_21031) (Array T@Ref T@Ref))
(declare-sort T@Map_4182_43142 0)
(declare-fun |Map#Values_4182_43142| (T@Map_4182_43142) (Array T@Map_43140_645 Bool))
(declare-fun |Map#Domain_5159_45192| (T@Map_4182_43142) (Array Int Bool))
(declare-fun |Map#Elements_5453_45984| (T@Map_4182_43142) (Array Int T@Map_43140_645))
(declare-sort T@Map_4182_645 0)
(declare-fun |Map#Values_4182_645| (T@Map_4182_645) (Array Real Bool))
(declare-fun |Map#Domain_5159_645| (T@Map_4182_645) (Array Int Bool))
(declare-fun |Map#Elements_4182_645| (T@Map_4182_645) (Array Int Real))
(declare-sort T@Map_43140_43142 0)
(declare-fun |Map#Values_43140_43142| (T@Map_43140_43142) (Array T@Map_43140_645 Bool))
(declare-fun |Map#Domain_21031_45192| (T@Map_43140_43142) (Array T@Ref Bool))
(declare-fun |Map#Elements_43140_43142| (T@Map_43140_43142) (Array T@Ref T@Map_43140_645))
(declare-fun |Map#Values_43140_645| (T@Map_43140_645) (Array Real Bool))
(declare-fun |Map#Domain_20446_645| (T@Map_43140_645) (Array T@Ref Bool))
(declare-fun |Map#Elements_20483_645| (T@Map_43140_645) (Array T@Ref Real))
(declare-fun succHeap (T@PolymorphicMapType_35797 T@PolymorphicMapType_35797) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_35797 T@PolymorphicMapType_35797) Bool)
(declare-fun wand (Bool T@Map_4182_43142 Bool T@Map_4182_43142) T@Field_43157_4202)
(declare-fun getPredWandId_20192_4202 (T@Field_43157_4202) Int)
(declare-fun state (T@PolymorphicMapType_35797 T@PolymorphicMapType_35818) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_35818) Bool)
(declare-fun ListRef (T@Ref T@Map_4182_43142 Bool) T@Field_56951_56952)
(declare-fun IsPredicateField_20575_20576 (T@Field_56951_56952) Bool)
(declare-fun NodeRef (T@Ref T@Map_4182_43142 Bool) T@Field_58189_58190)
(declare-fun IsPredicateField_20648_20649 (T@Field_58189_58190) Bool)
(declare-fun |ListRef#trigger_20575| (T@PolymorphicMapType_35797 T@Field_56951_56952) Bool)
(declare-fun |ListRef#everUsed_20575| (T@Field_56951_56952) Bool)
(declare-fun |NodeRef#trigger_20648| (T@PolymorphicMapType_35797 T@Field_58189_58190) Bool)
(declare-fun |NodeRef#everUsed_20648| (T@Field_58189_58190) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_36346)
(declare-fun getPredWandId_20575_20576 (T@Field_56951_56952) Int)
(declare-fun getPredWandId_20648_20649 (T@Field_58189_58190) Int)
(declare-fun |get_disc'| (T@PolymorphicMapType_35797 T@Ref T@Map_4182_43142) T@Ref)
(declare-fun dummyFunction_20475 (T@Ref) Bool)
(declare-fun |get_disc#triggerStateless| (T@Ref T@Map_4182_43142) T@Ref)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun List (T@Ref) T@Field_52884_52885)
(declare-fun IsPredicateField_20524_20525 (T@Field_52884_52885) Bool)
(declare-fun Node (T@Ref) T@Field_56169_56170)
(declare-fun IsPredicateField_20549_20550 (T@Field_56169_56170) Bool)
(declare-fun lft_T (T@Ref) T@Field_48667_48668)
(declare-fun IsPredicateField_20706_20707 (T@Field_48667_48668) Bool)
(declare-fun lft_List (T@Ref) T@Field_51131_51132)
(declare-fun IsPredicateField_20728_20729 (T@Field_51131_51132) Bool)
(declare-fun LifetimeP (T@Map_4182_43142) T@Field_46129_46130)
(declare-fun IsPredicateField_20756_20757 (T@Field_46129_46130) Bool)
(declare-fun P (T@Ref) T@Field_69392_69393)
(declare-fun IsPredicateField_20866_20867 (T@Field_69392_69393) Bool)
(declare-fun |valid_lft'| (T@PolymorphicMapType_35797 T@Map_4182_43142) Bool)
(declare-fun dummyFunction_5280 (Bool) Bool)
(declare-fun |valid_lft#triggerStateless| (T@Map_4182_43142) Bool)
(declare-fun |List#trigger_20524| (T@PolymorphicMapType_35797 T@Field_52884_52885) Bool)
(declare-fun |List#everUsed_20524| (T@Field_52884_52885) Bool)
(declare-fun |Node#trigger_20549| (T@PolymorphicMapType_35797 T@Field_56169_56170) Bool)
(declare-fun |Node#everUsed_20549| (T@Field_56169_56170) Bool)
(declare-fun |lft_T#trigger_20706| (T@PolymorphicMapType_35797 T@Field_48667_48668) Bool)
(declare-fun |lft_T#everUsed_20706| (T@Field_48667_48668) Bool)
(declare-fun |lft_List#trigger_20728| (T@PolymorphicMapType_35797 T@Field_51131_51132) Bool)
(declare-fun |lft_List#everUsed_20728| (T@Field_51131_51132) Bool)
(declare-fun |LifetimeP#trigger_20756| (T@PolymorphicMapType_35797 T@Field_46129_46130) Bool)
(declare-fun |LifetimeP#everUsed_20756| (T@Field_46129_46130) Bool)
(declare-fun |P#trigger_20866| (T@PolymorphicMapType_35797 T@Field_69392_69393) Bool)
(declare-fun |P#everUsed_20866| (T@Field_69392_69393) Bool)
(declare-fun |Set#Union_645| ((Array Real Bool) (Array Real Bool)) (Array Real Bool))
(declare-fun |Set#Union_45192| ((Array T@Map_43140_645 Bool) (Array T@Map_43140_645 Bool)) (Array T@Map_43140_645 Bool))
(declare-fun |Set#Union_5159| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Union_21031| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_645| ((Array Real Bool) (Array Real Bool)) (Array Real Bool))
(declare-fun |Set#Intersection_45192| ((Array T@Map_43140_645 Bool) (Array T@Map_43140_645 Bool)) (Array T@Map_43140_645 Bool))
(declare-fun |Set#Intersection_5159| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_21031| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun PredicateMaskField_20575 (T@Field_56951_56952) T@Field_56974_56979)
(declare-fun |ListRef#sm| (T@Ref T@Map_4182_43142 Bool) T@Field_56974_56979)
(declare-fun PredicateMaskField_20648 (T@Field_58189_58190) T@Field_58490_58495)
(declare-fun |NodeRef#sm| (T@Ref T@Map_4182_43142 Bool) T@Field_58490_58495)
(declare-fun WandMaskField_20303 (T@Field_44016_44017) T@Field_43998_44003)
(declare-fun |wand_1#ft| (T@Ref Real T@Ref Real T@Ref T@Ref) T@Field_44016_44017)
(declare-fun |wand_1#sm| (T@Ref Real T@Ref Real T@Ref T@Ref) T@Field_43998_44003)
(declare-fun |Map#Card_645_5159| (T@Map_645_5159) Int)
(declare-fun |Map#Build_645_5159| (T@Map_645_5159 Real Int) T@Map_645_5159)
(declare-fun |Map#Card_645_21031| (T@Map_645_21031) Int)
(declare-fun |Map#Build_645_21031| (T@Map_645_21031 Real T@Ref) T@Map_645_21031)
(declare-fun |Map#Card_645_645| (T@Map_645_645) Int)
(declare-fun |Map#Build_645_645| (T@Map_645_645 Real Real) T@Map_645_645)
(declare-fun |Map#Card_645_45192| (T@Map_645_45192) Int)
(declare-fun |Map#Build_645_45192| (T@Map_645_45192 Real T@Map_43140_645) T@Map_645_45192)
(declare-fun |Map#Card_45192_5159| (T@Map_45192_5159) Int)
(declare-fun |Map#Build_45192_5159| (T@Map_45192_5159 T@Map_43140_645 Int) T@Map_45192_5159)
(declare-fun |Map#Card_45192_21031| (T@Map_45192_21031) Int)
(declare-fun |Map#Build_45192_21031| (T@Map_45192_21031 T@Map_43140_645 T@Ref) T@Map_45192_21031)
(declare-fun |Map#Card_45192_645| (T@Map_45192_645) Int)
(declare-fun |Map#Build_45192_645| (T@Map_45192_645 T@Map_43140_645 Real) T@Map_45192_645)
(declare-fun |Map#Card_45192_45192| (T@Map_45192_45192) Int)
(declare-fun |Map#Build_45192_45192| (T@Map_45192_45192 T@Map_43140_645 T@Map_43140_645) T@Map_45192_45192)
(declare-fun |Map#Card_43140_5159| (T@Map_20446_5159) Int)
(declare-fun |Map#Build_20446_5159| (T@Map_20446_5159 T@Ref Int) T@Map_20446_5159)
(declare-fun |Map#Card_43140_21031| (T@Map_20446_21031) Int)
(declare-fun |Map#Build_20446_21031| (T@Map_20446_21031 T@Ref T@Ref) T@Map_20446_21031)
(declare-fun |Map#Card_43140_645| (T@Map_43140_645) Int)
(declare-fun |Map#Build_20446_645| (T@Map_43140_645 T@Ref Real) T@Map_43140_645)
(declare-fun |Map#Card_43140_43142| (T@Map_43140_43142) Int)
(declare-fun |Map#Build_20446_45192| (T@Map_43140_43142 T@Ref T@Map_43140_645) T@Map_43140_43142)
(declare-fun |Map#Card_4182_5159| (T@Map_5159_5159) Int)
(declare-fun |Map#Build_5159_5159| (T@Map_5159_5159 Int Int) T@Map_5159_5159)
(declare-fun |Map#Card_4182_21031| (T@Map_5159_21031) Int)
(declare-fun |Map#Build_5159_21031| (T@Map_5159_21031 Int T@Ref) T@Map_5159_21031)
(declare-fun |Map#Card_4182_645| (T@Map_4182_645) Int)
(declare-fun |Map#Build_5159_645| (T@Map_4182_645 Int Real) T@Map_4182_645)
(declare-fun |Map#Card_4182_43142| (T@Map_4182_43142) Int)
(declare-fun |Map#Build_5159_45192| (T@Map_4182_43142 Int T@Map_43140_645) T@Map_4182_43142)
(declare-fun |Set#Singleton_645| (Real) (Array Real Bool))
(declare-fun |Set#Singleton_45192| (T@Map_43140_645) (Array T@Map_43140_645 Bool))
(declare-fun |Set#Singleton_5159| (Int) (Array Int Bool))
(declare-fun |Set#Singleton_21031| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_645| ((Array Real Bool)) Int)
(declare-fun |Set#Card_45192| ((Array T@Map_43140_645 Bool)) Int)
(declare-fun |Set#Card_5159| ((Array Int Bool)) Int)
(declare-fun |Set#Card_21031| ((Array T@Ref Bool)) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_35797 T@PolymorphicMapType_35797 T@PolymorphicMapType_35818) Bool)
(declare-fun HasDirectPerm_58189_20576 (T@PolymorphicMapType_35818 T@Ref T@Field_58189_58190) Bool)
(declare-fun null () T@Ref)
(declare-fun HasDirectPerm_56169_20576 (T@PolymorphicMapType_35818 T@Ref T@Field_56169_56170) Bool)
(declare-fun PredicateMaskField_20549 (T@Field_56169_56170) T@Field_56424_56429)
(declare-fun HasDirectPerm_52884_20576 (T@PolymorphicMapType_35818 T@Ref T@Field_52884_52885) Bool)
(declare-fun PredicateMaskField_20524 (T@Field_52884_52885) T@Field_54199_54204)
(declare-fun HasDirectPerm_48667_20576 (T@PolymorphicMapType_35818 T@Ref T@Field_48667_48668) Bool)
(declare-fun PredicateMaskField_20706 (T@Field_48667_48668) T@Field_59245_59250)
(declare-fun IsPredicateField_20303_20304 (T@Field_44016_44017) Bool)
(declare-fun HasDirectPerm_43983_20576 (T@PolymorphicMapType_35818 T@Ref T@Field_44016_44017) Bool)
(declare-fun PredicateMaskField_43983 (T@Field_44016_44017) T@Field_43998_44003)
(declare-fun IsPredicateField_20213_20214 (T@Field_43222_43223) Bool)
(declare-fun HasDirectPerm_43157_20576 (T@PolymorphicMapType_35818 T@Ref T@Field_43222_43223) Bool)
(declare-fun PredicateMaskField_43157 (T@Field_43222_43223) T@Field_43188_43193)
(declare-fun HasDirectPerm_20866_20867 (T@PolymorphicMapType_35818 T@Ref T@Field_69392_69393) Bool)
(declare-fun PredicateMaskField_20866 (T@Field_69392_69393) T@Field_69405_69410)
(declare-fun HasDirectPerm_20728_20729 (T@PolymorphicMapType_35818 T@Ref T@Field_51131_51132) Bool)
(declare-fun PredicateMaskField_20728 (T@Field_51131_51132) T@Field_53810_53815)
(declare-fun HasDirectPerm_20756_20757 (T@PolymorphicMapType_35818 T@Ref T@Field_46129_46130) Bool)
(declare-fun PredicateMaskField_20756 (T@Field_46129_46130) T@Field_60906_60911)
(declare-fun HasDirectPerm_20575_20576 (T@PolymorphicMapType_35818 T@Ref T@Field_56951_56952) Bool)
(declare-fun IsPredicateField_20354_127891 (T@Field_20354_20576) Bool)
(declare-fun HasDirectPerm_20354_20576 (T@PolymorphicMapType_35818 T@Ref T@Field_20354_20576) Bool)
(declare-fun PredicateMaskField_20354 (T@Field_20354_20576) T@Field_20354_43193)
(declare-fun IsWandField_58189_149658 (T@Field_58189_58190) Bool)
(declare-fun WandMaskField_58189 (T@Field_58189_58190) T@Field_58490_58495)
(declare-fun IsWandField_56169_149301 (T@Field_56169_56170) Bool)
(declare-fun WandMaskField_56169 (T@Field_56169_56170) T@Field_56424_56429)
(declare-fun IsWandField_52884_148944 (T@Field_52884_52885) Bool)
(declare-fun WandMaskField_52884 (T@Field_52884_52885) T@Field_54199_54204)
(declare-fun IsWandField_48667_148587 (T@Field_48667_48668) Bool)
(declare-fun WandMaskField_48667 (T@Field_48667_48668) T@Field_59245_59250)
(declare-fun IsWandField_20303_20304 (T@Field_44016_44017) Bool)
(declare-fun IsWandField_20213_20214 (T@Field_43222_43223) Bool)
(declare-fun WandMaskField_20213 (T@Field_43222_43223) T@Field_43188_43193)
(declare-fun IsWandField_20866_147580 (T@Field_69392_69393) Bool)
(declare-fun WandMaskField_20866 (T@Field_69392_69393) T@Field_69405_69410)
(declare-fun IsWandField_20728_147223 (T@Field_51131_51132) Bool)
(declare-fun WandMaskField_20728 (T@Field_51131_51132) T@Field_53810_53815)
(declare-fun IsWandField_20756_146866 (T@Field_46129_46130) Bool)
(declare-fun WandMaskField_20756 (T@Field_46129_46130) T@Field_60906_60911)
(declare-fun IsWandField_20575_146509 (T@Field_56951_56952) Bool)
(declare-fun WandMaskField_20575 (T@Field_56951_56952) T@Field_56974_56979)
(declare-fun IsWandField_20354_146152 (T@Field_20354_20576) Bool)
(declare-fun WandMaskField_20354 (T@Field_20354_20576) T@Field_20354_43193)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |LifetimeP#condqp1| (T@PolymorphicMapType_35797 T@Map_4182_43142) Int)
(declare-fun |sk_LifetimeP#condqp1| (Int Int) T@Ref)
(declare-fun NoPerm () Real)
(declare-fun |LifetimeP#condqp2| (T@PolymorphicMapType_35797 T@Map_4182_43142) Int)
(declare-fun |sk_LifetimeP#condqp2| (Int Int) T@Ref)
(declare-fun |List#sm| (T@Ref) T@Field_54199_54204)
(declare-fun |Node#sm| (T@Ref) T@Field_56424_56429)
(declare-fun |lft_T#sm| (T@Ref) T@Field_59245_59250)
(declare-fun |lft_List#sm| (T@Ref) T@Field_53810_53815)
(declare-fun |LifetimeP#sm| (T@Map_4182_43142) T@Field_60906_60911)
(declare-fun |P#sm| (T@Ref) T@Field_69405_69410)
(declare-fun dummyHeap () T@PolymorphicMapType_35797)
(declare-fun ZeroMask () T@PolymorphicMapType_35818)
(declare-fun InsidePredicate_69392_69392 (T@Field_69392_69393 T@FrameType T@Field_69392_69393 T@FrameType) Bool)
(declare-fun InsidePredicate_56169_56169 (T@Field_56169_56170 T@FrameType T@Field_56169_56170 T@FrameType) Bool)
(declare-fun InsidePredicate_48667_48667 (T@Field_48667_48668 T@FrameType T@Field_48667_48668 T@FrameType) Bool)
(declare-fun InsidePredicate_46129_46129 (T@Field_46129_46130 T@FrameType T@Field_46129_46130 T@FrameType) Bool)
(declare-fun InsidePredicate_43983_43983 (T@Field_44016_44017 T@FrameType T@Field_44016_44017 T@FrameType) Bool)
(declare-fun InsidePredicate_43157_43157 (T@Field_43222_43223 T@FrameType T@Field_43222_43223 T@FrameType) Bool)
(declare-fun InsidePredicate_35857_35857 (T@Field_20354_20576 T@FrameType T@Field_20354_20576 T@FrameType) Bool)
(declare-fun InsidePredicate_20648_20648 (T@Field_58189_58190 T@FrameType T@Field_58189_58190 T@FrameType) Bool)
(declare-fun InsidePredicate_20575_56951 (T@Field_56951_56952 T@FrameType T@Field_56951_56952 T@FrameType) Bool)
(declare-fun InsidePredicate_20524_20524 (T@Field_52884_52885 T@FrameType T@Field_52884_52885 T@FrameType) Bool)
(declare-fun InsidePredicate_20728_51131 (T@Field_51131_51132 T@FrameType T@Field_51131_51132 T@FrameType) Bool)
(declare-fun IsPredicateField_20354_20355 (T@Field_35870_35871) Bool)
(declare-fun IsWandField_20354_20355 (T@Field_35870_35871) Bool)
(declare-fun |Map#Disjoint_645_5159| (T@Map_645_5159 T@Map_645_5159) Bool)
(declare-fun |Map#Disjoint_645_21031| (T@Map_645_21031 T@Map_645_21031) Bool)
(declare-fun |Map#Disjoint_645_43142| (T@Map_645_45192 T@Map_645_45192) Bool)
(declare-fun |Map#Disjoint_645_645| (T@Map_645_645 T@Map_645_645) Bool)
(declare-fun |Map#Disjoint_45192_5159| (T@Map_45192_5159 T@Map_45192_5159) Bool)
(declare-fun |Map#Disjoint_45192_21031| (T@Map_45192_21031 T@Map_45192_21031) Bool)
(declare-fun |Map#Disjoint_45192_43142| (T@Map_45192_45192 T@Map_45192_45192) Bool)
(declare-fun |Map#Disjoint_45192_645| (T@Map_45192_645 T@Map_45192_645) Bool)
(declare-fun |Map#Disjoint_4182_5159| (T@Map_5159_5159 T@Map_5159_5159) Bool)
(declare-fun |Map#Disjoint_4182_21031| (T@Map_5159_21031 T@Map_5159_21031) Bool)
(declare-fun |Map#Disjoint_4182_43142| (T@Map_4182_43142 T@Map_4182_43142) Bool)
(declare-fun |Map#Disjoint_4182_645| (T@Map_4182_645 T@Map_4182_645) Bool)
(declare-fun |Map#Disjoint_43140_5159| (T@Map_20446_5159 T@Map_20446_5159) Bool)
(declare-fun |Map#Disjoint_43140_21031| (T@Map_20446_21031 T@Map_20446_21031) Bool)
(declare-fun |Map#Disjoint_43140_43142| (T@Map_43140_43142 T@Map_43140_43142) Bool)
(declare-fun |Map#Disjoint_43140_645| (T@Map_43140_645 T@Map_43140_645) Bool)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_20866_187039 (T@Field_69405_69410) Bool)
(declare-fun IsWandField_20866_187055 (T@Field_69405_69410) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_20866_53 (T@Field_20866_53) Bool)
(declare-fun IsWandField_20866_53 (T@Field_20866_53) Bool)
(declare-fun IsPredicateField_20866_4202 (T@Field_20866_4202) Bool)
(declare-fun IsWandField_20866_4202 (T@Field_20866_4202) Bool)
(declare-fun IsPredicateField_20866_20355 (T@Field_20866_20355) Bool)
(declare-fun IsWandField_20866_20355 (T@Field_20866_20355) Bool)
(declare-fun IsPredicateField_20286_186208 (T@Field_43998_44003) Bool)
(declare-fun IsWandField_20286_186224 (T@Field_43998_44003) Bool)
(declare-fun IsPredicateField_20286_53 (T@Field_43983_53) Bool)
(declare-fun IsWandField_20286_53 (T@Field_43983_53) Bool)
(declare-fun IsPredicateField_20286_4612 (T@Field_43983_4612) Bool)
(declare-fun IsWandField_20286_4612 (T@Field_43983_4612) Bool)
(declare-fun IsPredicateField_20286_20355 (T@Field_43983_20355) Bool)
(declare-fun IsWandField_20286_20355 (T@Field_43983_20355) Bool)
(declare-fun IsPredicateField_20192_185391 (T@Field_43188_43193) Bool)
(declare-fun IsWandField_20192_185407 (T@Field_43188_43193) Bool)
(declare-fun IsPredicateField_20192_53 (T@Field_43157_53) Bool)
(declare-fun IsWandField_20192_53 (T@Field_43157_53) Bool)
(declare-fun IsPredicateField_20192_4202 (T@Field_43157_4202) Bool)
(declare-fun IsWandField_20192_4202 (T@Field_43157_4202) Bool)
(declare-fun IsPredicateField_20192_20355 (T@Field_43157_20355) Bool)
(declare-fun IsWandField_20192_20355 (T@Field_43157_20355) Bool)
(declare-fun IsPredicateField_20575_184574 (T@Field_56974_56979) Bool)
(declare-fun IsWandField_20575_184590 (T@Field_56974_56979) Bool)
(declare-fun IsPredicateField_20575_53 (T@Field_20575_53) Bool)
(declare-fun IsWandField_20575_53 (T@Field_20575_53) Bool)
(declare-fun IsPredicateField_20575_4202 (T@Field_20575_4202) Bool)
(declare-fun IsWandField_20575_4202 (T@Field_20575_4202) Bool)
(declare-fun IsPredicateField_20575_20355 (T@Field_20575_20355) Bool)
(declare-fun IsWandField_20575_20355 (T@Field_20575_20355) Bool)
(declare-fun IsPredicateField_20648_183743 (T@Field_58490_58495) Bool)
(declare-fun IsWandField_20648_183759 (T@Field_58490_58495) Bool)
(declare-fun IsPredicateField_20648_53 (T@Field_58189_53) Bool)
(declare-fun IsWandField_20648_53 (T@Field_58189_53) Bool)
(declare-fun IsPredicateField_20648_4202 (T@Field_58189_4202) Bool)
(declare-fun IsWandField_20648_4202 (T@Field_58189_4202) Bool)
(declare-fun IsPredicateField_20648_20355 (T@Field_58189_20355) Bool)
(declare-fun IsWandField_20648_20355 (T@Field_58189_20355) Bool)
(declare-fun IsPredicateField_20549_182912 (T@Field_56424_56429) Bool)
(declare-fun IsWandField_20549_182928 (T@Field_56424_56429) Bool)
(declare-fun IsPredicateField_20549_53 (T@Field_56169_53) Bool)
(declare-fun IsWandField_20549_53 (T@Field_56169_53) Bool)
(declare-fun IsPredicateField_20549_4202 (T@Field_56169_4202) Bool)
(declare-fun IsWandField_20549_4202 (T@Field_56169_4202) Bool)
(declare-fun IsPredicateField_20549_20355 (T@Field_56169_20355) Bool)
(declare-fun IsWandField_20549_20355 (T@Field_56169_20355) Bool)
(declare-fun IsPredicateField_20524_182081 (T@Field_54199_54204) Bool)
(declare-fun IsWandField_20524_182097 (T@Field_54199_54204) Bool)
(declare-fun IsPredicateField_20524_53 (T@Field_52884_53) Bool)
(declare-fun IsWandField_20524_53 (T@Field_52884_53) Bool)
(declare-fun IsPredicateField_20524_4202 (T@Field_52884_4202) Bool)
(declare-fun IsWandField_20524_4202 (T@Field_52884_4202) Bool)
(declare-fun IsPredicateField_20524_20355 (T@Field_52884_20355) Bool)
(declare-fun IsWandField_20524_20355 (T@Field_52884_20355) Bool)
(declare-fun IsPredicateField_20354_181250 (T@Field_20354_43193) Bool)
(declare-fun IsWandField_20354_181266 (T@Field_20354_43193) Bool)
(declare-fun IsPredicateField_20354_53 (T@Field_35857_53) Bool)
(declare-fun IsWandField_20354_53 (T@Field_35857_53) Bool)
(declare-fun IsPredicateField_20354_4202 (T@Field_20354_4202) Bool)
(declare-fun IsWandField_20354_4202 (T@Field_20354_4202) Bool)
(declare-fun IsPredicateField_20728_180433 (T@Field_53810_53815) Bool)
(declare-fun IsWandField_20728_180449 (T@Field_53810_53815) Bool)
(declare-fun IsPredicateField_20728_53 (T@Field_20728_53) Bool)
(declare-fun IsWandField_20728_53 (T@Field_20728_53) Bool)
(declare-fun IsPredicateField_20728_4202 (T@Field_20728_4202) Bool)
(declare-fun IsWandField_20728_4202 (T@Field_20728_4202) Bool)
(declare-fun IsPredicateField_20728_20355 (T@Field_20728_20355) Bool)
(declare-fun IsWandField_20728_20355 (T@Field_20728_20355) Bool)
(declare-fun IsPredicateField_20706_179602 (T@Field_59245_59250) Bool)
(declare-fun IsWandField_20706_179618 (T@Field_59245_59250) Bool)
(declare-fun IsPredicateField_20706_53 (T@Field_48667_53) Bool)
(declare-fun IsWandField_20706_53 (T@Field_48667_53) Bool)
(declare-fun IsPredicateField_20706_4202 (T@Field_48667_4202) Bool)
(declare-fun IsWandField_20706_4202 (T@Field_48667_4202) Bool)
(declare-fun IsPredicateField_20706_20355 (T@Field_48667_20355) Bool)
(declare-fun IsWandField_20706_20355 (T@Field_48667_20355) Bool)
(declare-fun IsPredicateField_20756_178771 (T@Field_60906_60911) Bool)
(declare-fun IsWandField_20756_178787 (T@Field_60906_60911) Bool)
(declare-fun IsPredicateField_20756_53 (T@Field_20756_53) Bool)
(declare-fun IsWandField_20756_53 (T@Field_20756_53) Bool)
(declare-fun IsPredicateField_20756_4202 (T@Field_20756_4202) Bool)
(declare-fun IsWandField_20756_4202 (T@Field_20756_4202) Bool)
(declare-fun IsPredicateField_20756_20355 (T@Field_20756_20355) Bool)
(declare-fun IsWandField_20756_20355 (T@Field_20756_20355) Bool)
(declare-fun HasDirectPerm_58189_127646 (T@PolymorphicMapType_35818 T@Ref T@Field_58490_58495) Bool)
(declare-fun HasDirectPerm_58189_4202 (T@PolymorphicMapType_35818 T@Ref T@Field_58189_4202) Bool)
(declare-fun HasDirectPerm_58189_53 (T@PolymorphicMapType_35818 T@Ref T@Field_58189_53) Bool)
(declare-fun HasDirectPerm_58189_20355 (T@PolymorphicMapType_35818 T@Ref T@Field_58189_20355) Bool)
(declare-fun HasDirectPerm_56169_126485 (T@PolymorphicMapType_35818 T@Ref T@Field_56424_56429) Bool)
(declare-fun HasDirectPerm_56169_4202 (T@PolymorphicMapType_35818 T@Ref T@Field_56169_4202) Bool)
(declare-fun HasDirectPerm_56169_53 (T@PolymorphicMapType_35818 T@Ref T@Field_56169_53) Bool)
(declare-fun HasDirectPerm_56169_20355 (T@PolymorphicMapType_35818 T@Ref T@Field_56169_20355) Bool)
(declare-fun HasDirectPerm_52884_125350 (T@PolymorphicMapType_35818 T@Ref T@Field_54199_54204) Bool)
(declare-fun HasDirectPerm_52884_4202 (T@PolymorphicMapType_35818 T@Ref T@Field_52884_4202) Bool)
(declare-fun HasDirectPerm_52884_53 (T@PolymorphicMapType_35818 T@Ref T@Field_52884_53) Bool)
(declare-fun HasDirectPerm_52884_20355 (T@PolymorphicMapType_35818 T@Ref T@Field_52884_20355) Bool)
(declare-fun HasDirectPerm_48667_124189 (T@PolymorphicMapType_35818 T@Ref T@Field_59245_59250) Bool)
(declare-fun HasDirectPerm_48667_4202 (T@PolymorphicMapType_35818 T@Ref T@Field_48667_4202) Bool)
(declare-fun HasDirectPerm_48667_53 (T@PolymorphicMapType_35818 T@Ref T@Field_48667_53) Bool)
(declare-fun HasDirectPerm_48667_20355 (T@PolymorphicMapType_35818 T@Ref T@Field_48667_20355) Bool)
(declare-fun HasDirectPerm_43983_123071 (T@PolymorphicMapType_35818 T@Ref T@Field_43998_44003) Bool)
(declare-fun HasDirectPerm_43983_4202 (T@PolymorphicMapType_35818 T@Ref T@Field_43983_4612) Bool)
(declare-fun HasDirectPerm_43983_53 (T@PolymorphicMapType_35818 T@Ref T@Field_43983_53) Bool)
(declare-fun HasDirectPerm_43983_20355 (T@PolymorphicMapType_35818 T@Ref T@Field_43983_20355) Bool)
(declare-fun HasDirectPerm_43157_121894 (T@PolymorphicMapType_35818 T@Ref T@Field_43188_43193) Bool)
(declare-fun HasDirectPerm_43157_4202 (T@PolymorphicMapType_35818 T@Ref T@Field_43157_4202) Bool)
(declare-fun HasDirectPerm_43157_53 (T@PolymorphicMapType_35818 T@Ref T@Field_43157_53) Bool)
(declare-fun HasDirectPerm_43157_20355 (T@PolymorphicMapType_35818 T@Ref T@Field_43157_20355) Bool)
(declare-fun HasDirectPerm_20866_120760 (T@PolymorphicMapType_35818 T@Ref T@Field_69405_69410) Bool)
(declare-fun HasDirectPerm_20866_4202 (T@PolymorphicMapType_35818 T@Ref T@Field_20866_4202) Bool)
(declare-fun HasDirectPerm_20866_53 (T@PolymorphicMapType_35818 T@Ref T@Field_20866_53) Bool)
(declare-fun HasDirectPerm_20866_20355 (T@PolymorphicMapType_35818 T@Ref T@Field_20866_20355) Bool)
(declare-fun HasDirectPerm_20728_119662 (T@PolymorphicMapType_35818 T@Ref T@Field_53810_53815) Bool)
(declare-fun HasDirectPerm_20728_4202 (T@PolymorphicMapType_35818 T@Ref T@Field_20728_4202) Bool)
(declare-fun HasDirectPerm_20728_53 (T@PolymorphicMapType_35818 T@Ref T@Field_20728_53) Bool)
(declare-fun HasDirectPerm_20728_20355 (T@PolymorphicMapType_35818 T@Ref T@Field_20728_20355) Bool)
(declare-fun HasDirectPerm_20756_118564 (T@PolymorphicMapType_35818 T@Ref T@Field_60906_60911) Bool)
(declare-fun HasDirectPerm_20756_4202 (T@PolymorphicMapType_35818 T@Ref T@Field_20756_4202) Bool)
(declare-fun HasDirectPerm_20756_53 (T@PolymorphicMapType_35818 T@Ref T@Field_20756_53) Bool)
(declare-fun HasDirectPerm_20756_20355 (T@PolymorphicMapType_35818 T@Ref T@Field_20756_20355) Bool)
(declare-fun HasDirectPerm_20575_117466 (T@PolymorphicMapType_35818 T@Ref T@Field_56974_56979) Bool)
(declare-fun HasDirectPerm_20575_4202 (T@PolymorphicMapType_35818 T@Ref T@Field_20575_4202) Bool)
(declare-fun HasDirectPerm_20575_53 (T@PolymorphicMapType_35818 T@Ref T@Field_20575_53) Bool)
(declare-fun HasDirectPerm_20575_20355 (T@PolymorphicMapType_35818 T@Ref T@Field_20575_20355) Bool)
(declare-fun HasDirectPerm_20354_116325 (T@PolymorphicMapType_35818 T@Ref T@Field_20354_43193) Bool)
(declare-fun HasDirectPerm_20354_4202 (T@PolymorphicMapType_35818 T@Ref T@Field_20354_4202) Bool)
(declare-fun HasDirectPerm_20354_53 (T@PolymorphicMapType_35818 T@Ref T@Field_35857_53) Bool)
(declare-fun HasDirectPerm_20354_20355 (T@PolymorphicMapType_35818 T@Ref T@Field_35870_35871) Bool)
(declare-fun |wand#ft| (Bool T@Map_4182_43142 Bool T@Map_4182_43142) T@Field_43222_43223)
(declare-fun wand_1 (T@Ref Real T@Ref Real T@Ref T@Ref) T@Field_43983_4612)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand#sm| (Bool T@Map_4182_43142 Bool T@Map_4182_43142) T@Field_43188_43193)
(declare-fun get_disc (T@PolymorphicMapType_35797 T@Ref T@Map_4182_43142) T@Ref)
(declare-fun getPredWandId_20286_4612 (T@Field_43983_4612) Int)
(declare-fun sumMask (T@PolymorphicMapType_35818 T@PolymorphicMapType_35818 T@PolymorphicMapType_35818) Bool)
(declare-fun |Set#Difference_645| ((Array Real Bool) (Array Real Bool)) (Array Real Bool))
(declare-fun |Set#Difference_45192| ((Array T@Map_43140_645 Bool) (Array T@Map_43140_645 Bool)) (Array T@Map_43140_645 Bool))
(declare-fun |Set#Difference_5159| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Difference_21031| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Map#Equal_645_5159| (T@Map_645_5159 T@Map_645_5159) Bool)
(declare-fun |Map#Equal_645_21031| (T@Map_645_21031 T@Map_645_21031) Bool)
(declare-fun |Map#Equal_645_645| (T@Map_645_645 T@Map_645_645) Bool)
(declare-fun |Map#Equal_645_45192| (T@Map_645_45192 T@Map_645_45192) Bool)
(declare-fun |Map#Equal_45192_5159| (T@Map_45192_5159 T@Map_45192_5159) Bool)
(declare-fun |Map#Equal_45192_21031| (T@Map_45192_21031 T@Map_45192_21031) Bool)
(declare-fun |Map#Equal_45192_645| (T@Map_45192_645 T@Map_45192_645) Bool)
(declare-fun |Map#Equal_45192_45192| (T@Map_45192_45192 T@Map_45192_45192) Bool)
(declare-fun |Map#Equal_20446_5159| (T@Map_20446_5159 T@Map_20446_5159) Bool)
(declare-fun |Map#Equal_20446_21031| (T@Map_20446_21031 T@Map_20446_21031) Bool)
(declare-fun |Map#Equal_20446_645| (T@Map_43140_645 T@Map_43140_645) Bool)
(declare-fun |Map#Equal_20446_45192| (T@Map_43140_43142 T@Map_43140_43142) Bool)
(declare-fun |Map#Equal_5159_5159| (T@Map_5159_5159 T@Map_5159_5159) Bool)
(declare-fun |Map#Equal_5159_21031| (T@Map_5159_21031 T@Map_5159_21031) Bool)
(declare-fun |Map#Equal_5159_645| (T@Map_4182_645 T@Map_4182_645) Bool)
(declare-fun |Map#Equal_5159_45192| (T@Map_4182_43142 T@Map_4182_43142) Bool)
(declare-fun |Set#UnionOne_645| ((Array Real Bool) Real) (Array Real Bool))
(declare-fun |Set#UnionOne_45192| ((Array T@Map_43140_645 Bool) T@Map_43140_645) (Array T@Map_43140_645 Bool))
(declare-fun |Set#UnionOne_5159| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun |Set#UnionOne_21031| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun valid_lft (T@PolymorphicMapType_35797 T@Map_4182_43142) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |valid_lft#frame| (T@FrameType T@Map_4182_43142) Bool)
(declare-fun getPredWandId_20706_20707 (T@Field_48667_48668) Int)
(declare-fun getPredWandId_20728_20729 (T@Field_51131_51132) Int)
(declare-fun getPredWandId_20524_20525 (T@Field_52884_52885) Int)
(declare-fun getPredWandId_20549_20550 (T@Field_56169_56170) Int)
(declare-fun getPredWandId_20756_20757 (T@Field_46129_46130) Int)
(declare-fun getPredWandId_20866_20867 (T@Field_69392_69393) Int)
(declare-fun |Map#Empty_645_5159| () T@Map_645_5159)
(declare-fun |Map#Empty_645_21031| () T@Map_645_21031)
(declare-fun |Map#Empty_645_45192| () T@Map_645_45192)
(declare-fun |Map#Empty_645_645| () T@Map_645_645)
(declare-fun |Map#Empty_45192_5159| () T@Map_45192_5159)
(declare-fun |Map#Empty_45192_21031| () T@Map_45192_21031)
(declare-fun |Map#Empty_45192_45192| () T@Map_45192_45192)
(declare-fun |Map#Empty_45192_645| () T@Map_45192_645)
(declare-fun |Map#Empty_5159_5159| () T@Map_5159_5159)
(declare-fun |Map#Empty_5159_21031| () T@Map_5159_21031)
(declare-fun |Map#Empty_5159_45192| () T@Map_4182_43142)
(declare-fun |Map#Empty_5159_645| () T@Map_4182_645)
(declare-fun |Map#Empty_20446_5159| () T@Map_20446_5159)
(declare-fun |Map#Empty_20446_21031| () T@Map_20446_21031)
(declare-fun |Map#Empty_20446_45192| () T@Map_43140_43142)
(declare-fun |Map#Empty_20446_645| () T@Map_43140_645)
(declare-fun |Set#Empty_645| () (Array Real Bool))
(declare-fun |Set#Empty_45192| () (Array T@Map_43140_645 Bool))
(declare-fun |Set#Empty_5159| () (Array Int Bool))
(declare-fun |Set#Empty_21031| () (Array T@Ref Bool))
(declare-fun |get_disc#frame| (T@FrameType T@Ref T@Map_4182_43142) T@Ref)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_19959 (T@FrameType) T@FrameType)
(declare-fun InsidePredicate_69392_56951 (T@Field_69392_69393 T@FrameType T@Field_56951_56952 T@FrameType) Bool)
(declare-fun InsidePredicate_69392_56169 (T@Field_69392_69393 T@FrameType T@Field_56169_56170 T@FrameType) Bool)
(declare-fun InsidePredicate_69392_51131 (T@Field_69392_69393 T@FrameType T@Field_51131_51132 T@FrameType) Bool)
(declare-fun InsidePredicate_69392_48667 (T@Field_69392_69393 T@FrameType T@Field_48667_48668 T@FrameType) Bool)
(declare-fun InsidePredicate_69392_46129 (T@Field_69392_69393 T@FrameType T@Field_46129_46130 T@FrameType) Bool)
(declare-fun InsidePredicate_69392_43983 (T@Field_69392_69393 T@FrameType T@Field_44016_44017 T@FrameType) Bool)
(declare-fun InsidePredicate_69392_43157 (T@Field_69392_69393 T@FrameType T@Field_43222_43223 T@FrameType) Bool)
(declare-fun InsidePredicate_69392_35857 (T@Field_69392_69393 T@FrameType T@Field_20354_20576 T@FrameType) Bool)
(declare-fun InsidePredicate_69392_20648 (T@Field_69392_69393 T@FrameType T@Field_58189_58190 T@FrameType) Bool)
(declare-fun InsidePredicate_69392_20524 (T@Field_69392_69393 T@FrameType T@Field_52884_52885 T@FrameType) Bool)
(declare-fun InsidePredicate_56169_69392 (T@Field_56169_56170 T@FrameType T@Field_69392_69393 T@FrameType) Bool)
(declare-fun InsidePredicate_56169_56951 (T@Field_56169_56170 T@FrameType T@Field_56951_56952 T@FrameType) Bool)
(declare-fun InsidePredicate_56169_51131 (T@Field_56169_56170 T@FrameType T@Field_51131_51132 T@FrameType) Bool)
(declare-fun InsidePredicate_56169_48667 (T@Field_56169_56170 T@FrameType T@Field_48667_48668 T@FrameType) Bool)
(declare-fun InsidePredicate_56169_46129 (T@Field_56169_56170 T@FrameType T@Field_46129_46130 T@FrameType) Bool)
(declare-fun InsidePredicate_56169_43983 (T@Field_56169_56170 T@FrameType T@Field_44016_44017 T@FrameType) Bool)
(declare-fun InsidePredicate_56169_43157 (T@Field_56169_56170 T@FrameType T@Field_43222_43223 T@FrameType) Bool)
(declare-fun InsidePredicate_56169_35857 (T@Field_56169_56170 T@FrameType T@Field_20354_20576 T@FrameType) Bool)
(declare-fun InsidePredicate_56169_20648 (T@Field_56169_56170 T@FrameType T@Field_58189_58190 T@FrameType) Bool)
(declare-fun InsidePredicate_56169_20524 (T@Field_56169_56170 T@FrameType T@Field_52884_52885 T@FrameType) Bool)
(declare-fun InsidePredicate_48667_69392 (T@Field_48667_48668 T@FrameType T@Field_69392_69393 T@FrameType) Bool)
(declare-fun InsidePredicate_48667_56951 (T@Field_48667_48668 T@FrameType T@Field_56951_56952 T@FrameType) Bool)
(declare-fun InsidePredicate_48667_56169 (T@Field_48667_48668 T@FrameType T@Field_56169_56170 T@FrameType) Bool)
(declare-fun InsidePredicate_48667_51131 (T@Field_48667_48668 T@FrameType T@Field_51131_51132 T@FrameType) Bool)
(declare-fun InsidePredicate_48667_46129 (T@Field_48667_48668 T@FrameType T@Field_46129_46130 T@FrameType) Bool)
(declare-fun InsidePredicate_48667_43983 (T@Field_48667_48668 T@FrameType T@Field_44016_44017 T@FrameType) Bool)
(declare-fun InsidePredicate_48667_43157 (T@Field_48667_48668 T@FrameType T@Field_43222_43223 T@FrameType) Bool)
(declare-fun InsidePredicate_48667_35857 (T@Field_48667_48668 T@FrameType T@Field_20354_20576 T@FrameType) Bool)
(declare-fun InsidePredicate_48667_20648 (T@Field_48667_48668 T@FrameType T@Field_58189_58190 T@FrameType) Bool)
(declare-fun InsidePredicate_48667_20524 (T@Field_48667_48668 T@FrameType T@Field_52884_52885 T@FrameType) Bool)
(declare-fun InsidePredicate_46129_69392 (T@Field_46129_46130 T@FrameType T@Field_69392_69393 T@FrameType) Bool)
(declare-fun InsidePredicate_46129_56951 (T@Field_46129_46130 T@FrameType T@Field_56951_56952 T@FrameType) Bool)
(declare-fun InsidePredicate_46129_56169 (T@Field_46129_46130 T@FrameType T@Field_56169_56170 T@FrameType) Bool)
(declare-fun InsidePredicate_46129_51131 (T@Field_46129_46130 T@FrameType T@Field_51131_51132 T@FrameType) Bool)
(declare-fun InsidePredicate_46129_48667 (T@Field_46129_46130 T@FrameType T@Field_48667_48668 T@FrameType) Bool)
(declare-fun InsidePredicate_46129_43983 (T@Field_46129_46130 T@FrameType T@Field_44016_44017 T@FrameType) Bool)
(declare-fun InsidePredicate_46129_43157 (T@Field_46129_46130 T@FrameType T@Field_43222_43223 T@FrameType) Bool)
(declare-fun InsidePredicate_46129_35857 (T@Field_46129_46130 T@FrameType T@Field_20354_20576 T@FrameType) Bool)
(declare-fun InsidePredicate_46129_20648 (T@Field_46129_46130 T@FrameType T@Field_58189_58190 T@FrameType) Bool)
(declare-fun InsidePredicate_46129_20524 (T@Field_46129_46130 T@FrameType T@Field_52884_52885 T@FrameType) Bool)
(declare-fun InsidePredicate_43983_69392 (T@Field_44016_44017 T@FrameType T@Field_69392_69393 T@FrameType) Bool)
(declare-fun InsidePredicate_43983_56951 (T@Field_44016_44017 T@FrameType T@Field_56951_56952 T@FrameType) Bool)
(declare-fun InsidePredicate_43983_56169 (T@Field_44016_44017 T@FrameType T@Field_56169_56170 T@FrameType) Bool)
(declare-fun InsidePredicate_43983_51131 (T@Field_44016_44017 T@FrameType T@Field_51131_51132 T@FrameType) Bool)
(declare-fun InsidePredicate_43983_48667 (T@Field_44016_44017 T@FrameType T@Field_48667_48668 T@FrameType) Bool)
(declare-fun InsidePredicate_43983_46129 (T@Field_44016_44017 T@FrameType T@Field_46129_46130 T@FrameType) Bool)
(declare-fun InsidePredicate_43983_43157 (T@Field_44016_44017 T@FrameType T@Field_43222_43223 T@FrameType) Bool)
(declare-fun InsidePredicate_43983_35857 (T@Field_44016_44017 T@FrameType T@Field_20354_20576 T@FrameType) Bool)
(declare-fun InsidePredicate_43983_20648 (T@Field_44016_44017 T@FrameType T@Field_58189_58190 T@FrameType) Bool)
(declare-fun InsidePredicate_43983_20524 (T@Field_44016_44017 T@FrameType T@Field_52884_52885 T@FrameType) Bool)
(declare-fun InsidePredicate_43157_69392 (T@Field_43222_43223 T@FrameType T@Field_69392_69393 T@FrameType) Bool)
(declare-fun InsidePredicate_43157_56951 (T@Field_43222_43223 T@FrameType T@Field_56951_56952 T@FrameType) Bool)
(declare-fun InsidePredicate_43157_56169 (T@Field_43222_43223 T@FrameType T@Field_56169_56170 T@FrameType) Bool)
(declare-fun InsidePredicate_43157_51131 (T@Field_43222_43223 T@FrameType T@Field_51131_51132 T@FrameType) Bool)
(declare-fun InsidePredicate_43157_48667 (T@Field_43222_43223 T@FrameType T@Field_48667_48668 T@FrameType) Bool)
(declare-fun InsidePredicate_43157_46129 (T@Field_43222_43223 T@FrameType T@Field_46129_46130 T@FrameType) Bool)
(declare-fun InsidePredicate_43157_43983 (T@Field_43222_43223 T@FrameType T@Field_44016_44017 T@FrameType) Bool)
(declare-fun InsidePredicate_43157_35857 (T@Field_43222_43223 T@FrameType T@Field_20354_20576 T@FrameType) Bool)
(declare-fun InsidePredicate_43157_20648 (T@Field_43222_43223 T@FrameType T@Field_58189_58190 T@FrameType) Bool)
(declare-fun InsidePredicate_43157_20524 (T@Field_43222_43223 T@FrameType T@Field_52884_52885 T@FrameType) Bool)
(declare-fun InsidePredicate_35857_69392 (T@Field_20354_20576 T@FrameType T@Field_69392_69393 T@FrameType) Bool)
(declare-fun InsidePredicate_35857_56951 (T@Field_20354_20576 T@FrameType T@Field_56951_56952 T@FrameType) Bool)
(declare-fun InsidePredicate_35857_56169 (T@Field_20354_20576 T@FrameType T@Field_56169_56170 T@FrameType) Bool)
(declare-fun InsidePredicate_35857_51131 (T@Field_20354_20576 T@FrameType T@Field_51131_51132 T@FrameType) Bool)
(declare-fun InsidePredicate_35857_48667 (T@Field_20354_20576 T@FrameType T@Field_48667_48668 T@FrameType) Bool)
(declare-fun InsidePredicate_35857_46129 (T@Field_20354_20576 T@FrameType T@Field_46129_46130 T@FrameType) Bool)
(declare-fun InsidePredicate_35857_43983 (T@Field_20354_20576 T@FrameType T@Field_44016_44017 T@FrameType) Bool)
(declare-fun InsidePredicate_35857_43157 (T@Field_20354_20576 T@FrameType T@Field_43222_43223 T@FrameType) Bool)
(declare-fun InsidePredicate_35857_20648 (T@Field_20354_20576 T@FrameType T@Field_58189_58190 T@FrameType) Bool)
(declare-fun InsidePredicate_35857_20524 (T@Field_20354_20576 T@FrameType T@Field_52884_52885 T@FrameType) Bool)
(declare-fun InsidePredicate_20575_69392 (T@Field_56951_56952 T@FrameType T@Field_69392_69393 T@FrameType) Bool)
(declare-fun InsidePredicate_20575_56169 (T@Field_56951_56952 T@FrameType T@Field_56169_56170 T@FrameType) Bool)
(declare-fun InsidePredicate_20575_51131 (T@Field_56951_56952 T@FrameType T@Field_51131_51132 T@FrameType) Bool)
(declare-fun InsidePredicate_20575_48667 (T@Field_56951_56952 T@FrameType T@Field_48667_48668 T@FrameType) Bool)
(declare-fun InsidePredicate_20575_46129 (T@Field_56951_56952 T@FrameType T@Field_46129_46130 T@FrameType) Bool)
(declare-fun InsidePredicate_20575_43983 (T@Field_56951_56952 T@FrameType T@Field_44016_44017 T@FrameType) Bool)
(declare-fun InsidePredicate_20575_43157 (T@Field_56951_56952 T@FrameType T@Field_43222_43223 T@FrameType) Bool)
(declare-fun InsidePredicate_20575_35857 (T@Field_56951_56952 T@FrameType T@Field_20354_20576 T@FrameType) Bool)
(declare-fun InsidePredicate_20575_20648 (T@Field_56951_56952 T@FrameType T@Field_58189_58190 T@FrameType) Bool)
(declare-fun InsidePredicate_20575_20524 (T@Field_56951_56952 T@FrameType T@Field_52884_52885 T@FrameType) Bool)
(declare-fun InsidePredicate_20648_69392 (T@Field_58189_58190 T@FrameType T@Field_69392_69393 T@FrameType) Bool)
(declare-fun InsidePredicate_20648_56951 (T@Field_58189_58190 T@FrameType T@Field_56951_56952 T@FrameType) Bool)
(declare-fun InsidePredicate_20648_56169 (T@Field_58189_58190 T@FrameType T@Field_56169_56170 T@FrameType) Bool)
(declare-fun InsidePredicate_20648_51131 (T@Field_58189_58190 T@FrameType T@Field_51131_51132 T@FrameType) Bool)
(declare-fun InsidePredicate_20648_48667 (T@Field_58189_58190 T@FrameType T@Field_48667_48668 T@FrameType) Bool)
(declare-fun InsidePredicate_20648_46129 (T@Field_58189_58190 T@FrameType T@Field_46129_46130 T@FrameType) Bool)
(declare-fun InsidePredicate_20648_43983 (T@Field_58189_58190 T@FrameType T@Field_44016_44017 T@FrameType) Bool)
(declare-fun InsidePredicate_20648_43157 (T@Field_58189_58190 T@FrameType T@Field_43222_43223 T@FrameType) Bool)
(declare-fun InsidePredicate_20648_35857 (T@Field_58189_58190 T@FrameType T@Field_20354_20576 T@FrameType) Bool)
(declare-fun InsidePredicate_20648_20524 (T@Field_58189_58190 T@FrameType T@Field_52884_52885 T@FrameType) Bool)
(declare-fun InsidePredicate_20728_69392 (T@Field_51131_51132 T@FrameType T@Field_69392_69393 T@FrameType) Bool)
(declare-fun InsidePredicate_20728_56951 (T@Field_51131_51132 T@FrameType T@Field_56951_56952 T@FrameType) Bool)
(declare-fun InsidePredicate_20728_56169 (T@Field_51131_51132 T@FrameType T@Field_56169_56170 T@FrameType) Bool)
(declare-fun InsidePredicate_20728_48667 (T@Field_51131_51132 T@FrameType T@Field_48667_48668 T@FrameType) Bool)
(declare-fun InsidePredicate_20728_46129 (T@Field_51131_51132 T@FrameType T@Field_46129_46130 T@FrameType) Bool)
(declare-fun InsidePredicate_20728_43983 (T@Field_51131_51132 T@FrameType T@Field_44016_44017 T@FrameType) Bool)
(declare-fun InsidePredicate_20728_43157 (T@Field_51131_51132 T@FrameType T@Field_43222_43223 T@FrameType) Bool)
(declare-fun InsidePredicate_20728_35857 (T@Field_51131_51132 T@FrameType T@Field_20354_20576 T@FrameType) Bool)
(declare-fun InsidePredicate_20728_20648 (T@Field_51131_51132 T@FrameType T@Field_58189_58190 T@FrameType) Bool)
(declare-fun InsidePredicate_20728_20524 (T@Field_51131_51132 T@FrameType T@Field_52884_52885 T@FrameType) Bool)
(declare-fun InsidePredicate_20524_69392 (T@Field_52884_52885 T@FrameType T@Field_69392_69393 T@FrameType) Bool)
(declare-fun InsidePredicate_20524_56951 (T@Field_52884_52885 T@FrameType T@Field_56951_56952 T@FrameType) Bool)
(declare-fun InsidePredicate_20524_56169 (T@Field_52884_52885 T@FrameType T@Field_56169_56170 T@FrameType) Bool)
(declare-fun InsidePredicate_20524_51131 (T@Field_52884_52885 T@FrameType T@Field_51131_51132 T@FrameType) Bool)
(declare-fun InsidePredicate_20524_48667 (T@Field_52884_52885 T@FrameType T@Field_48667_48668 T@FrameType) Bool)
(declare-fun InsidePredicate_20524_46129 (T@Field_52884_52885 T@FrameType T@Field_46129_46130 T@FrameType) Bool)
(declare-fun InsidePredicate_20524_43983 (T@Field_52884_52885 T@FrameType T@Field_44016_44017 T@FrameType) Bool)
(declare-fun InsidePredicate_20524_43157 (T@Field_52884_52885 T@FrameType T@Field_43222_43223 T@FrameType) Bool)
(declare-fun InsidePredicate_20524_35857 (T@Field_52884_52885 T@FrameType T@Field_20354_20576 T@FrameType) Bool)
(declare-fun InsidePredicate_20524_20648 (T@Field_52884_52885 T@FrameType T@Field_58189_58190 T@FrameType) Bool)
(assert (distinct ref_2 f_7 n_10)
)
(assert (forall ((m T@Map_645_5159) (v Int) ) (!  (=> (select (|Map#Values_645_5159| m) v) (exists ((u Real) ) (!  (and (select (|Map#Domain_645_5159| m) u) (= v (select (|Map#Elements_645_5159| m) u)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_645_5159| m) u))
 :pattern ( (select (|Map#Elements_645_5159| m) u))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_645_5159| m) v))
)))
(assert (forall ((m@@0 T@Map_645_21031) (v@@0 T@Ref) ) (!  (=> (select (|Map#Values_645_21031| m@@0) v@@0) (exists ((u@@0 Real) ) (!  (and (select (|Map#Domain_645_21031| m@@0) u@@0) (= v@@0 (select (|Map#Elements_645_21031| m@@0) u@@0)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_645_21031| m@@0) u@@0))
 :pattern ( (select (|Map#Elements_645_21031| m@@0) u@@0))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_645_21031| m@@0) v@@0))
)))
(assert (forall ((m@@1 T@Map_645_45192) (v@@1 T@Map_43140_645) ) (!  (=> (select (|Map#Values_645_43142| m@@1) v@@1) (exists ((u@@1 Real) ) (!  (and (select (|Map#Domain_645_45192| m@@1) u@@1) (= v@@1 (select (|Map#Elements_645_43142| m@@1) u@@1)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_645_45192| m@@1) u@@1))
 :pattern ( (select (|Map#Elements_645_43142| m@@1) u@@1))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_645_43142| m@@1) v@@1))
)))
(assert (forall ((m@@2 T@Map_645_645) (v@@2 Real) ) (!  (=> (select (|Map#Values_645_645| m@@2) v@@2) (exists ((u@@2 Real) ) (!  (and (select (|Map#Domain_645_645| m@@2) u@@2) (= v@@2 (select (|Map#Elements_645_645| m@@2) u@@2)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_645_645| m@@2) u@@2))
 :pattern ( (select (|Map#Elements_645_645| m@@2) u@@2))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_645_645| m@@2) v@@2))
)))
(assert (forall ((m@@3 T@Map_45192_5159) (v@@3 Int) ) (!  (=> (select (|Map#Values_45192_5159| m@@3) v@@3) (exists ((u@@3 T@Map_43140_645) ) (!  (and (select (|Map#Domain_45192_5159| m@@3) u@@3) (= v@@3 (select (|Map#Elements_45192_5159| m@@3) u@@3)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_45192_5159| m@@3) u@@3))
 :pattern ( (select (|Map#Elements_45192_5159| m@@3) u@@3))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_45192_5159| m@@3) v@@3))
)))
(assert (forall ((m@@4 T@Map_45192_21031) (v@@4 T@Ref) ) (!  (=> (select (|Map#Values_45192_21031| m@@4) v@@4) (exists ((u@@4 T@Map_43140_645) ) (!  (and (select (|Map#Domain_45192_21031| m@@4) u@@4) (= v@@4 (select (|Map#Elements_45192_21031| m@@4) u@@4)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_45192_21031| m@@4) u@@4))
 :pattern ( (select (|Map#Elements_45192_21031| m@@4) u@@4))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_45192_21031| m@@4) v@@4))
)))
(assert (forall ((m@@5 T@Map_45192_45192) (v@@5 T@Map_43140_645) ) (!  (=> (select (|Map#Values_45192_43142| m@@5) v@@5) (exists ((u@@5 T@Map_43140_645) ) (!  (and (select (|Map#Domain_45192_45192| m@@5) u@@5) (= v@@5 (select (|Map#Elements_45192_43142| m@@5) u@@5)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_45192_45192| m@@5) u@@5))
 :pattern ( (select (|Map#Elements_45192_43142| m@@5) u@@5))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_45192_43142| m@@5) v@@5))
)))
(assert (forall ((m@@6 T@Map_45192_645) (v@@6 Real) ) (!  (=> (select (|Map#Values_45192_645| m@@6) v@@6) (exists ((u@@6 T@Map_43140_645) ) (!  (and (select (|Map#Domain_45192_645| m@@6) u@@6) (= v@@6 (select (|Map#Elements_45192_645| m@@6) u@@6)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_45192_645| m@@6) u@@6))
 :pattern ( (select (|Map#Elements_45192_645| m@@6) u@@6))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_45192_645| m@@6) v@@6))
)))
(assert (forall ((m@@7 T@Map_5159_5159) (v@@7 Int) ) (!  (=> (select (|Map#Values_5159_5159| m@@7) v@@7) (exists ((u@@7 Int) ) (!  (and (select (|Map#Domain_5159_5159| m@@7) u@@7) (= v@@7 (select (|Map#Elements_5159_5159| m@@7) u@@7)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_5159_5159| m@@7) u@@7))
 :pattern ( (select (|Map#Elements_5159_5159| m@@7) u@@7))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_5159_5159| m@@7) v@@7))
)))
(assert (forall ((m@@8 T@Map_5159_21031) (v@@8 T@Ref) ) (!  (=> (select (|Map#Values_5159_21031| m@@8) v@@8) (exists ((u@@8 Int) ) (!  (and (select (|Map#Domain_5159_21031| m@@8) u@@8) (= v@@8 (select (|Map#Elements_5159_21031| m@@8) u@@8)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_5159_21031| m@@8) u@@8))
 :pattern ( (select (|Map#Elements_5159_21031| m@@8) u@@8))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_5159_21031| m@@8) v@@8))
)))
(assert (forall ((m@@9 T@Map_20446_5159) (v@@9 Int) ) (!  (=> (select (|Map#Values_20446_5159| m@@9) v@@9) (exists ((u@@9 T@Ref) ) (!  (and (select (|Map#Domain_20446_5159| m@@9) u@@9) (= v@@9 (select (|Map#Elements_20446_5159| m@@9) u@@9)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_20446_5159| m@@9) u@@9))
 :pattern ( (select (|Map#Elements_20446_5159| m@@9) u@@9))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_20446_5159| m@@9) v@@9))
)))
(assert (forall ((m@@10 T@Map_20446_21031) (v@@10 T@Ref) ) (!  (=> (select (|Map#Values_20446_21031| m@@10) v@@10) (exists ((u@@10 T@Ref) ) (!  (and (select (|Map#Domain_20446_21031| m@@10) u@@10) (= v@@10 (select (|Map#Elements_20446_21031| m@@10) u@@10)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_20446_21031| m@@10) u@@10))
 :pattern ( (select (|Map#Elements_20446_21031| m@@10) u@@10))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_20446_21031| m@@10) v@@10))
)))
(assert (forall ((m@@11 T@Map_4182_43142) (v@@11 T@Map_43140_645) ) (!  (=> (select (|Map#Values_4182_43142| m@@11) v@@11) (exists ((u@@11 Int) ) (!  (and (select (|Map#Domain_5159_45192| m@@11) u@@11) (= v@@11 (select (|Map#Elements_5453_45984| m@@11) u@@11)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_5159_45192| m@@11) u@@11))
 :pattern ( (select (|Map#Elements_5453_45984| m@@11) u@@11))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4182_43142| m@@11) v@@11))
)))
(assert (forall ((m@@12 T@Map_4182_645) (v@@12 Real) ) (!  (=> (select (|Map#Values_4182_645| m@@12) v@@12) (exists ((u@@12 Int) ) (!  (and (select (|Map#Domain_5159_645| m@@12) u@@12) (= v@@12 (select (|Map#Elements_4182_645| m@@12) u@@12)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_5159_645| m@@12) u@@12))
 :pattern ( (select (|Map#Elements_4182_645| m@@12) u@@12))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_4182_645| m@@12) v@@12))
)))
(assert (forall ((m@@13 T@Map_43140_43142) (v@@13 T@Map_43140_645) ) (!  (=> (select (|Map#Values_43140_43142| m@@13) v@@13) (exists ((u@@13 T@Ref) ) (!  (and (select (|Map#Domain_21031_45192| m@@13) u@@13) (= v@@13 (select (|Map#Elements_43140_43142| m@@13) u@@13)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_21031_45192| m@@13) u@@13))
 :pattern ( (select (|Map#Elements_43140_43142| m@@13) u@@13))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_43140_43142| m@@13) v@@13))
)))
(assert (forall ((m@@14 T@Map_43140_645) (v@@14 Real) ) (!  (=> (select (|Map#Values_43140_645| m@@14) v@@14) (exists ((u@@14 T@Ref) ) (!  (and (select (|Map#Domain_20446_645| m@@14) u@@14) (= v@@14 (select (|Map#Elements_20483_645| m@@14) u@@14)))
 :qid |stdinbpl.446:10|
 :skolemid |84|
 :pattern ( (select (|Map#Domain_20446_645| m@@14) u@@14))
 :pattern ( (select (|Map#Elements_20483_645| m@@14) u@@14))
)))
 :qid |stdinbpl.444:20|
 :skolemid |85|
 :pattern ( (select (|Map#Values_43140_645| m@@14) v@@14))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_35797) (Heap1 T@PolymorphicMapType_35797) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 Bool) (arg2 T@Map_4182_43142) (arg3 Bool) (arg4 T@Map_4182_43142) ) (! (= (getPredWandId_20192_4202 (wand arg1 arg2 arg3 arg4)) 8)
 :qid |stdinbpl.541:15|
 :skolemid |108|
 :pattern ( (wand arg1 arg2 arg3 arg4))
)))
(assert (forall ((Heap T@PolymorphicMapType_35797) (Mask T@PolymorphicMapType_35818) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_35797) (Heap1@@0 T@PolymorphicMapType_35797) (Heap2 T@PolymorphicMapType_35797) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((x T@Ref) (lft_1 T@Map_4182_43142) (mut Bool) ) (! (IsPredicateField_20575_20576 (ListRef x lft_1 mut))
 :qid |stdinbpl.1006:15|
 :skolemid |158|
 :pattern ( (ListRef x lft_1 mut))
)))
(assert (forall ((x@@0 T@Ref) (lft_1@@0 T@Map_4182_43142) (mut@@0 Bool) ) (! (IsPredicateField_20648_20649 (NodeRef x@@0 lft_1@@0 mut@@0))
 :qid |stdinbpl.1070:15|
 :skolemid |164|
 :pattern ( (NodeRef x@@0 lft_1@@0 mut@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_35797) (x@@1 T@Ref) (lft_1@@1 T@Map_4182_43142) (mut@@1 Bool) ) (! (|ListRef#everUsed_20575| (ListRef x@@1 lft_1@@1 mut@@1))
 :qid |stdinbpl.1025:15|
 :skolemid |162|
 :pattern ( (|ListRef#trigger_20575| Heap@@0 (ListRef x@@1 lft_1@@1 mut@@1)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_35797) (x@@2 T@Ref) (lft_1@@2 T@Map_4182_43142) (mut@@2 Bool) ) (! (|NodeRef#everUsed_20648| (NodeRef x@@2 lft_1@@2 mut@@2))
 :qid |stdinbpl.1089:15|
 :skolemid |168|
 :pattern ( (|NodeRef#trigger_20648| Heap@@1 (NodeRef x@@2 lft_1@@2 mut@@2)))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_69392_69393) ) (!  (not (select (|PolymorphicMapType_36346_69392_43223#PolymorphicMapType_36346| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_69392_43223#PolymorphicMapType_36346| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_69405_69410) ) (!  (not (select (|PolymorphicMapType_36346_69392_142611#PolymorphicMapType_36346| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_69392_142611#PolymorphicMapType_36346| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20866_4202) ) (!  (not (select (|PolymorphicMapType_36346_69392_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_69392_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20866_53) ) (!  (not (select (|PolymorphicMapType_36346_69392_53#PolymorphicMapType_36346| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_69392_53#PolymorphicMapType_36346| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20866_20355) ) (!  (not (select (|PolymorphicMapType_36346_69392_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_69392_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_58189_58190) ) (!  (not (select (|PolymorphicMapType_36346_58189_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_58189_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_58490_58495) ) (!  (not (select (|PolymorphicMapType_36346_58189_141563#PolymorphicMapType_36346| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_58189_141563#PolymorphicMapType_36346| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_58189_4202) ) (!  (not (select (|PolymorphicMapType_36346_58189_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_58189_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_58189_53) ) (!  (not (select (|PolymorphicMapType_36346_58189_53#PolymorphicMapType_36346| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_58189_53#PolymorphicMapType_36346| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_58189_20355) ) (!  (not (select (|PolymorphicMapType_36346_58189_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_58189_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_56951_56952) ) (!  (not (select (|PolymorphicMapType_36346_56951_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_56951_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_56974_56979) ) (!  (not (select (|PolymorphicMapType_36346_56951_140515#PolymorphicMapType_36346| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_56951_140515#PolymorphicMapType_36346| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_20575_4202) ) (!  (not (select (|PolymorphicMapType_36346_56951_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_56951_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_20575_53) ) (!  (not (select (|PolymorphicMapType_36346_56951_53#PolymorphicMapType_36346| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_56951_53#PolymorphicMapType_36346| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_20575_20355) ) (!  (not (select (|PolymorphicMapType_36346_56951_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_56951_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_56169_56170) ) (!  (not (select (|PolymorphicMapType_36346_56169_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_56169_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_56424_56429) ) (!  (not (select (|PolymorphicMapType_36346_56169_139467#PolymorphicMapType_36346| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_56169_139467#PolymorphicMapType_36346| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_56169_4202) ) (!  (not (select (|PolymorphicMapType_36346_56169_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_56169_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_56169_53) ) (!  (not (select (|PolymorphicMapType_36346_56169_53#PolymorphicMapType_36346| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_56169_53#PolymorphicMapType_36346| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_56169_20355) ) (!  (not (select (|PolymorphicMapType_36346_56169_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_56169_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_52884_52885) ) (!  (not (select (|PolymorphicMapType_36346_52884_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_52884_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_54199_54204) ) (!  (not (select (|PolymorphicMapType_36346_52884_138419#PolymorphicMapType_36346| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_52884_138419#PolymorphicMapType_36346| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_52884_4202) ) (!  (not (select (|PolymorphicMapType_36346_52884_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_52884_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_52884_53) ) (!  (not (select (|PolymorphicMapType_36346_52884_53#PolymorphicMapType_36346| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_52884_53#PolymorphicMapType_36346| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_52884_20355) ) (!  (not (select (|PolymorphicMapType_36346_52884_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_52884_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((o_2@@24 T@Ref) (f_4@@24 T@Field_51131_51132) ) (!  (not (select (|PolymorphicMapType_36346_51131_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@24 f_4@@24))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_51131_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@24 f_4@@24))
)))
(assert (forall ((o_2@@25 T@Ref) (f_4@@25 T@Field_53810_53815) ) (!  (not (select (|PolymorphicMapType_36346_51131_137371#PolymorphicMapType_36346| ZeroPMask) o_2@@25 f_4@@25))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_51131_137371#PolymorphicMapType_36346| ZeroPMask) o_2@@25 f_4@@25))
)))
(assert (forall ((o_2@@26 T@Ref) (f_4@@26 T@Field_20728_4202) ) (!  (not (select (|PolymorphicMapType_36346_51131_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@26 f_4@@26))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_51131_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@26 f_4@@26))
)))
(assert (forall ((o_2@@27 T@Ref) (f_4@@27 T@Field_20728_53) ) (!  (not (select (|PolymorphicMapType_36346_51131_53#PolymorphicMapType_36346| ZeroPMask) o_2@@27 f_4@@27))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_51131_53#PolymorphicMapType_36346| ZeroPMask) o_2@@27 f_4@@27))
)))
(assert (forall ((o_2@@28 T@Ref) (f_4@@28 T@Field_20728_20355) ) (!  (not (select (|PolymorphicMapType_36346_51131_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@28 f_4@@28))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_51131_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@28 f_4@@28))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_48667_48668) ) (!  (not (select (|PolymorphicMapType_36346_48667_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@29 f_4@@29))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_48667_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_59245_59250) ) (!  (not (select (|PolymorphicMapType_36346_48667_136323#PolymorphicMapType_36346| ZeroPMask) o_2@@30 f_4@@30))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_48667_136323#PolymorphicMapType_36346| ZeroPMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_48667_4202) ) (!  (not (select (|PolymorphicMapType_36346_48667_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@31 f_4@@31))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_48667_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_48667_53) ) (!  (not (select (|PolymorphicMapType_36346_48667_53#PolymorphicMapType_36346| ZeroPMask) o_2@@32 f_4@@32))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_48667_53#PolymorphicMapType_36346| ZeroPMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_48667_20355) ) (!  (not (select (|PolymorphicMapType_36346_48667_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@33 f_4@@33))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_48667_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_46129_46130) ) (!  (not (select (|PolymorphicMapType_36346_46129_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@34 f_4@@34))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_46129_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_60906_60911) ) (!  (not (select (|PolymorphicMapType_36346_46129_135275#PolymorphicMapType_36346| ZeroPMask) o_2@@35 f_4@@35))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_46129_135275#PolymorphicMapType_36346| ZeroPMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_20756_4202) ) (!  (not (select (|PolymorphicMapType_36346_46129_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@36 f_4@@36))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_46129_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_20756_53) ) (!  (not (select (|PolymorphicMapType_36346_46129_53#PolymorphicMapType_36346| ZeroPMask) o_2@@37 f_4@@37))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_46129_53#PolymorphicMapType_36346| ZeroPMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_20756_20355) ) (!  (not (select (|PolymorphicMapType_36346_46129_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@38 f_4@@38))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_46129_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_44016_44017) ) (!  (not (select (|PolymorphicMapType_36346_43983_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@39 f_4@@39))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_43983_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_43998_44003) ) (!  (not (select (|PolymorphicMapType_36346_43983_134227#PolymorphicMapType_36346| ZeroPMask) o_2@@40 f_4@@40))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_43983_134227#PolymorphicMapType_36346| ZeroPMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_43983_4612) ) (!  (not (select (|PolymorphicMapType_36346_43983_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@41 f_4@@41))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_43983_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_43983_53) ) (!  (not (select (|PolymorphicMapType_36346_43983_53#PolymorphicMapType_36346| ZeroPMask) o_2@@42 f_4@@42))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_43983_53#PolymorphicMapType_36346| ZeroPMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_43983_20355) ) (!  (not (select (|PolymorphicMapType_36346_43983_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@43 f_4@@43))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_43983_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_43222_43223) ) (!  (not (select (|PolymorphicMapType_36346_43157_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@44 f_4@@44))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_43157_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_43188_43193) ) (!  (not (select (|PolymorphicMapType_36346_43157_133179#PolymorphicMapType_36346| ZeroPMask) o_2@@45 f_4@@45))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_43157_133179#PolymorphicMapType_36346| ZeroPMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_43157_4202) ) (!  (not (select (|PolymorphicMapType_36346_43157_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@46 f_4@@46))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_43157_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_43157_53) ) (!  (not (select (|PolymorphicMapType_36346_43157_53#PolymorphicMapType_36346| ZeroPMask) o_2@@47 f_4@@47))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_43157_53#PolymorphicMapType_36346| ZeroPMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_43157_20355) ) (!  (not (select (|PolymorphicMapType_36346_43157_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@48 f_4@@48))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_43157_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_20354_20576) ) (!  (not (select (|PolymorphicMapType_36346_20354_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@49 f_4@@49))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_20354_43223#PolymorphicMapType_36346| ZeroPMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_20354_43193) ) (!  (not (select (|PolymorphicMapType_36346_20354_132131#PolymorphicMapType_36346| ZeroPMask) o_2@@50 f_4@@50))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_20354_132131#PolymorphicMapType_36346| ZeroPMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_20354_4202) ) (!  (not (select (|PolymorphicMapType_36346_20354_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@51 f_4@@51))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_20354_4202#PolymorphicMapType_36346| ZeroPMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_35857_53) ) (!  (not (select (|PolymorphicMapType_36346_20354_53#PolymorphicMapType_36346| ZeroPMask) o_2@@52 f_4@@52))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_20354_53#PolymorphicMapType_36346| ZeroPMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_35870_35871) ) (!  (not (select (|PolymorphicMapType_36346_20354_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@53 f_4@@53))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_36346_20354_20355#PolymorphicMapType_36346| ZeroPMask) o_2@@53 f_4@@53))
)))
(assert (forall ((x@@3 T@Ref) (lft_1@@3 T@Map_4182_43142) (mut@@3 Bool) ) (! (= (getPredWandId_20575_20576 (ListRef x@@3 lft_1@@3 mut@@3)) 4)
 :qid |stdinbpl.1010:15|
 :skolemid |159|
 :pattern ( (ListRef x@@3 lft_1@@3 mut@@3))
)))
(assert (forall ((x@@4 T@Ref) (lft_1@@4 T@Map_4182_43142) (mut@@4 Bool) ) (! (= (getPredWandId_20648_20649 (NodeRef x@@4 lft_1@@4 mut@@4)) 5)
 :qid |stdinbpl.1074:15|
 :skolemid |165|
 :pattern ( (NodeRef x@@4 lft_1@@4 mut@@4))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_35797) (x@@5 T@Ref) (lft_1@@5 T@Map_4182_43142) ) (! (dummyFunction_20475 (|get_disc#triggerStateless| x@@5 lft_1@@5))
 :qid |stdinbpl.657:15|
 :skolemid |122|
 :pattern ( (|get_disc'| Heap@@2 x@@5 lft_1@@5))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.316:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((x@@6 T@Ref) ) (! (IsPredicateField_20524_20525 (List x@@6))
 :qid |stdinbpl.907:15|
 :skolemid |146|
 :pattern ( (List x@@6))
)))
(assert (forall ((x@@7 T@Ref) ) (! (IsPredicateField_20549_20550 (Node x@@7))
 :qid |stdinbpl.971:15|
 :skolemid |152|
 :pattern ( (Node x@@7))
)))
(assert (forall ((x@@8 T@Ref) ) (! (IsPredicateField_20706_20707 (lft_T x@@8))
 :qid |stdinbpl.1105:15|
 :skolemid |170|
 :pattern ( (lft_T x@@8))
)))
(assert (forall ((x@@9 T@Ref) ) (! (IsPredicateField_20728_20729 (lft_List x@@9))
 :qid |stdinbpl.1140:15|
 :skolemid |176|
 :pattern ( (lft_List x@@9))
)))
(assert (forall ((lft_1@@6 T@Map_4182_43142) ) (! (IsPredicateField_20756_20757 (LifetimeP lft_1@@6))
 :qid |stdinbpl.1202:15|
 :skolemid |182|
 :pattern ( (LifetimeP lft_1@@6))
)))
(assert (forall ((x@@10 T@Ref) ) (! (IsPredicateField_20866_20867 (P x@@10))
 :qid |stdinbpl.1466:15|
 :skolemid |208|
 :pattern ( (P x@@10))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_35797) (lft_1@@7 T@Map_4182_43142) ) (! (dummyFunction_5280 (|valid_lft#triggerStateless| lft_1@@7))
 :qid |stdinbpl.607:15|
 :skolemid |118|
 :pattern ( (|valid_lft'| Heap@@3 lft_1@@7))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_35797) (x@@11 T@Ref) ) (! (|List#everUsed_20524| (List x@@11))
 :qid |stdinbpl.926:15|
 :skolemid |150|
 :pattern ( (|List#trigger_20524| Heap@@4 (List x@@11)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_35797) (x@@12 T@Ref) ) (! (|Node#everUsed_20549| (Node x@@12))
 :qid |stdinbpl.990:15|
 :skolemid |156|
 :pattern ( (|Node#trigger_20549| Heap@@5 (Node x@@12)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_35797) (x@@13 T@Ref) ) (! (|lft_T#everUsed_20706| (lft_T x@@13))
 :qid |stdinbpl.1124:15|
 :skolemid |174|
 :pattern ( (|lft_T#trigger_20706| Heap@@6 (lft_T x@@13)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_35797) (x@@14 T@Ref) ) (! (|lft_List#everUsed_20728| (lft_List x@@14))
 :qid |stdinbpl.1159:15|
 :skolemid |180|
 :pattern ( (|lft_List#trigger_20728| Heap@@7 (lft_List x@@14)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_35797) (lft_1@@8 T@Map_4182_43142) ) (! (|LifetimeP#everUsed_20756| (LifetimeP lft_1@@8))
 :qid |stdinbpl.1221:15|
 :skolemid |186|
 :pattern ( (|LifetimeP#trigger_20756| Heap@@8 (LifetimeP lft_1@@8)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_35797) (x@@15 T@Ref) ) (! (|P#everUsed_20866| (P x@@15))
 :qid |stdinbpl.1485:15|
 :skolemid |212|
 :pattern ( (|P#trigger_20866| Heap@@9 (P x@@15)))
)))
(assert (forall ((a@@0 (Array Real Bool)) (b@@0 (Array Real Bool)) ) (! (= (|Set#Union_645| (|Set#Union_645| a@@0 b@@0) b@@0) (|Set#Union_645| a@@0 b@@0))
 :qid |stdinbpl.268:18|
 :skolemid |38|
 :pattern ( (|Set#Union_645| (|Set#Union_645| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Map_43140_645 Bool)) (b@@1 (Array T@Map_43140_645 Bool)) ) (! (= (|Set#Union_45192| (|Set#Union_45192| a@@1 b@@1) b@@1) (|Set#Union_45192| a@@1 b@@1))
 :qid |stdinbpl.268:18|
 :skolemid |38|
 :pattern ( (|Set#Union_45192| (|Set#Union_45192| a@@1 b@@1) b@@1))
)))
(assert (forall ((a@@2 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (! (= (|Set#Union_5159| (|Set#Union_5159| a@@2 b@@2) b@@2) (|Set#Union_5159| a@@2 b@@2))
 :qid |stdinbpl.268:18|
 :skolemid |38|
 :pattern ( (|Set#Union_5159| (|Set#Union_5159| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Union_21031| (|Set#Union_21031| a@@3 b@@3) b@@3) (|Set#Union_21031| a@@3 b@@3))
 :qid |stdinbpl.268:18|
 :skolemid |38|
 :pattern ( (|Set#Union_21031| (|Set#Union_21031| a@@3 b@@3) b@@3))
)))
(assert (forall ((a@@4 (Array Real Bool)) (b@@4 (Array Real Bool)) ) (! (= (|Set#Intersection_645| (|Set#Intersection_645| a@@4 b@@4) b@@4) (|Set#Intersection_645| a@@4 b@@4))
 :qid |stdinbpl.272:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_645| (|Set#Intersection_645| a@@4 b@@4) b@@4))
)))
(assert (forall ((a@@5 (Array T@Map_43140_645 Bool)) (b@@5 (Array T@Map_43140_645 Bool)) ) (! (= (|Set#Intersection_45192| (|Set#Intersection_45192| a@@5 b@@5) b@@5) (|Set#Intersection_45192| a@@5 b@@5))
 :qid |stdinbpl.272:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_45192| (|Set#Intersection_45192| a@@5 b@@5) b@@5))
)))
(assert (forall ((a@@6 (Array Int Bool)) (b@@6 (Array Int Bool)) ) (! (= (|Set#Intersection_5159| (|Set#Intersection_5159| a@@6 b@@6) b@@6) (|Set#Intersection_5159| a@@6 b@@6))
 :qid |stdinbpl.272:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_5159| (|Set#Intersection_5159| a@@6 b@@6) b@@6))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_21031| (|Set#Intersection_21031| a@@7 b@@7) b@@7) (|Set#Intersection_21031| a@@7 b@@7))
 :qid |stdinbpl.272:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_21031| (|Set#Intersection_21031| a@@7 b@@7) b@@7))
)))
(assert (forall ((x@@16 T@Ref) (lft_1@@9 T@Map_4182_43142) (mut@@5 Bool) ) (! (= (PredicateMaskField_20575 (ListRef x@@16 lft_1@@9 mut@@5)) (|ListRef#sm| x@@16 lft_1@@9 mut@@5))
 :qid |stdinbpl.1002:15|
 :skolemid |157|
 :pattern ( (PredicateMaskField_20575 (ListRef x@@16 lft_1@@9 mut@@5)))
)))
(assert (forall ((x@@17 T@Ref) (lft_1@@10 T@Map_4182_43142) (mut@@6 Bool) ) (! (= (PredicateMaskField_20648 (NodeRef x@@17 lft_1@@10 mut@@6)) (|NodeRef#sm| x@@17 lft_1@@10 mut@@6))
 :qid |stdinbpl.1066:15|
 :skolemid |163|
 :pattern ( (PredicateMaskField_20648 (NodeRef x@@17 lft_1@@10 mut@@6)))
)))
(assert (forall ((x@@18 T@Ref) (lft_1@@11 T@Map_4182_43142) (mut@@7 Bool) (x2 T@Ref) (lft2 T@Map_4182_43142) (mut2 Bool) ) (!  (=> (= (ListRef x@@18 lft_1@@11 mut@@7) (ListRef x2 lft2 mut2)) (and (= x@@18 x2) (and (= lft_1@@11 lft2) (= mut@@7 mut2))))
 :qid |stdinbpl.1016:15|
 :skolemid |160|
 :pattern ( (ListRef x@@18 lft_1@@11 mut@@7) (ListRef x2 lft2 mut2))
)))
(assert (forall ((x@@19 T@Ref) (lft_1@@12 T@Map_4182_43142) (mut@@8 Bool) (x2@@0 T@Ref) (lft2@@0 T@Map_4182_43142) (mut2@@0 Bool) ) (!  (=> (= (|ListRef#sm| x@@19 lft_1@@12 mut@@8) (|ListRef#sm| x2@@0 lft2@@0 mut2@@0)) (and (= x@@19 x2@@0) (and (= lft_1@@12 lft2@@0) (= mut@@8 mut2@@0))))
 :qid |stdinbpl.1020:15|
 :skolemid |161|
 :pattern ( (|ListRef#sm| x@@19 lft_1@@12 mut@@8) (|ListRef#sm| x2@@0 lft2@@0 mut2@@0))
)))
(assert (forall ((x@@20 T@Ref) (lft_1@@13 T@Map_4182_43142) (mut@@9 Bool) (x2@@1 T@Ref) (lft2@@1 T@Map_4182_43142) (mut2@@1 Bool) ) (!  (=> (= (NodeRef x@@20 lft_1@@13 mut@@9) (NodeRef x2@@1 lft2@@1 mut2@@1)) (and (= x@@20 x2@@1) (and (= lft_1@@13 lft2@@1) (= mut@@9 mut2@@1))))
 :qid |stdinbpl.1080:15|
 :skolemid |166|
 :pattern ( (NodeRef x@@20 lft_1@@13 mut@@9) (NodeRef x2@@1 lft2@@1 mut2@@1))
)))
(assert (forall ((x@@21 T@Ref) (lft_1@@14 T@Map_4182_43142) (mut@@10 Bool) (x2@@2 T@Ref) (lft2@@2 T@Map_4182_43142) (mut2@@2 Bool) ) (!  (=> (= (|NodeRef#sm| x@@21 lft_1@@14 mut@@10) (|NodeRef#sm| x2@@2 lft2@@2 mut2@@2)) (and (= x@@21 x2@@2) (and (= lft_1@@14 lft2@@2) (= mut@@10 mut2@@2))))
 :qid |stdinbpl.1084:15|
 :skolemid |167|
 :pattern ( (|NodeRef#sm| x@@21 lft_1@@14 mut@@10) (|NodeRef#sm| x2@@2 lft2@@2 mut2@@2))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 Real) (arg5 T@Ref) (arg6 T@Ref) ) (! (= (|wand_1#sm| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5 arg6) (WandMaskField_20303 (|wand_1#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5 arg6)))
 :qid |stdinbpl.569:15|
 :skolemid |114|
 :pattern ( (WandMaskField_20303 (|wand_1#ft| arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5 arg6)))
)))
(assert (forall ((m@@15 T@Map_645_5159) (u@@15 Real) (v@@15 Int) ) (!  (=> (select (|Map#Domain_645_5159| m@@15) u@@15) (= (|Map#Card_645_5159| (|Map#Build_645_5159| m@@15 u@@15 v@@15)) (|Map#Card_645_5159| m@@15)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_645_5159| (|Map#Build_645_5159| m@@15 u@@15 v@@15)))
 :pattern ( (|Map#Card_645_5159| m@@15) (|Map#Build_645_5159| m@@15 u@@15 v@@15))
)))
(assert (forall ((m@@16 T@Map_645_21031) (u@@16 Real) (v@@16 T@Ref) ) (!  (=> (select (|Map#Domain_645_21031| m@@16) u@@16) (= (|Map#Card_645_21031| (|Map#Build_645_21031| m@@16 u@@16 v@@16)) (|Map#Card_645_21031| m@@16)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_645_21031| (|Map#Build_645_21031| m@@16 u@@16 v@@16)))
 :pattern ( (|Map#Card_645_21031| m@@16) (|Map#Build_645_21031| m@@16 u@@16 v@@16))
)))
(assert (forall ((m@@17 T@Map_645_645) (u@@17 Real) (v@@17 Real) ) (!  (=> (select (|Map#Domain_645_645| m@@17) u@@17) (= (|Map#Card_645_645| (|Map#Build_645_645| m@@17 u@@17 v@@17)) (|Map#Card_645_645| m@@17)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_645_645| (|Map#Build_645_645| m@@17 u@@17 v@@17)))
 :pattern ( (|Map#Card_645_645| m@@17) (|Map#Build_645_645| m@@17 u@@17 v@@17))
)))
(assert (forall ((m@@18 T@Map_645_45192) (u@@18 Real) (v@@18 T@Map_43140_645) ) (!  (=> (select (|Map#Domain_645_45192| m@@18) u@@18) (= (|Map#Card_645_45192| (|Map#Build_645_45192| m@@18 u@@18 v@@18)) (|Map#Card_645_45192| m@@18)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_645_45192| (|Map#Build_645_45192| m@@18 u@@18 v@@18)))
 :pattern ( (|Map#Card_645_45192| m@@18) (|Map#Build_645_45192| m@@18 u@@18 v@@18))
)))
(assert (forall ((m@@19 T@Map_45192_5159) (u@@19 T@Map_43140_645) (v@@19 Int) ) (!  (=> (select (|Map#Domain_45192_5159| m@@19) u@@19) (= (|Map#Card_45192_5159| (|Map#Build_45192_5159| m@@19 u@@19 v@@19)) (|Map#Card_45192_5159| m@@19)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_45192_5159| (|Map#Build_45192_5159| m@@19 u@@19 v@@19)))
 :pattern ( (|Map#Card_45192_5159| m@@19) (|Map#Build_45192_5159| m@@19 u@@19 v@@19))
)))
(assert (forall ((m@@20 T@Map_45192_21031) (u@@20 T@Map_43140_645) (v@@20 T@Ref) ) (!  (=> (select (|Map#Domain_45192_21031| m@@20) u@@20) (= (|Map#Card_45192_21031| (|Map#Build_45192_21031| m@@20 u@@20 v@@20)) (|Map#Card_45192_21031| m@@20)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_45192_21031| (|Map#Build_45192_21031| m@@20 u@@20 v@@20)))
 :pattern ( (|Map#Card_45192_21031| m@@20) (|Map#Build_45192_21031| m@@20 u@@20 v@@20))
)))
(assert (forall ((m@@21 T@Map_45192_645) (u@@21 T@Map_43140_645) (v@@21 Real) ) (!  (=> (select (|Map#Domain_45192_645| m@@21) u@@21) (= (|Map#Card_45192_645| (|Map#Build_45192_645| m@@21 u@@21 v@@21)) (|Map#Card_45192_645| m@@21)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_45192_645| (|Map#Build_45192_645| m@@21 u@@21 v@@21)))
 :pattern ( (|Map#Card_45192_645| m@@21) (|Map#Build_45192_645| m@@21 u@@21 v@@21))
)))
(assert (forall ((m@@22 T@Map_45192_45192) (u@@22 T@Map_43140_645) (v@@22 T@Map_43140_645) ) (!  (=> (select (|Map#Domain_45192_45192| m@@22) u@@22) (= (|Map#Card_45192_45192| (|Map#Build_45192_45192| m@@22 u@@22 v@@22)) (|Map#Card_45192_45192| m@@22)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_45192_45192| (|Map#Build_45192_45192| m@@22 u@@22 v@@22)))
 :pattern ( (|Map#Card_45192_45192| m@@22) (|Map#Build_45192_45192| m@@22 u@@22 v@@22))
)))
(assert (forall ((m@@23 T@Map_20446_5159) (u@@23 T@Ref) (v@@23 Int) ) (!  (=> (select (|Map#Domain_20446_5159| m@@23) u@@23) (= (|Map#Card_43140_5159| (|Map#Build_20446_5159| m@@23 u@@23 v@@23)) (|Map#Card_43140_5159| m@@23)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_43140_5159| (|Map#Build_20446_5159| m@@23 u@@23 v@@23)))
 :pattern ( (|Map#Card_43140_5159| m@@23) (|Map#Build_20446_5159| m@@23 u@@23 v@@23))
)))
(assert (forall ((m@@24 T@Map_20446_21031) (u@@24 T@Ref) (v@@24 T@Ref) ) (!  (=> (select (|Map#Domain_20446_21031| m@@24) u@@24) (= (|Map#Card_43140_21031| (|Map#Build_20446_21031| m@@24 u@@24 v@@24)) (|Map#Card_43140_21031| m@@24)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_43140_21031| (|Map#Build_20446_21031| m@@24 u@@24 v@@24)))
 :pattern ( (|Map#Card_43140_21031| m@@24) (|Map#Build_20446_21031| m@@24 u@@24 v@@24))
)))
(assert (forall ((m@@25 T@Map_43140_645) (u@@25 T@Ref) (v@@25 Real) ) (!  (=> (select (|Map#Domain_20446_645| m@@25) u@@25) (= (|Map#Card_43140_645| (|Map#Build_20446_645| m@@25 u@@25 v@@25)) (|Map#Card_43140_645| m@@25)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_43140_645| (|Map#Build_20446_645| m@@25 u@@25 v@@25)))
 :pattern ( (|Map#Card_43140_645| m@@25) (|Map#Build_20446_645| m@@25 u@@25 v@@25))
)))
(assert (forall ((m@@26 T@Map_43140_43142) (u@@26 T@Ref) (v@@26 T@Map_43140_645) ) (!  (=> (select (|Map#Domain_21031_45192| m@@26) u@@26) (= (|Map#Card_43140_43142| (|Map#Build_20446_45192| m@@26 u@@26 v@@26)) (|Map#Card_43140_43142| m@@26)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_43140_43142| (|Map#Build_20446_45192| m@@26 u@@26 v@@26)))
 :pattern ( (|Map#Card_43140_43142| m@@26) (|Map#Build_20446_45192| m@@26 u@@26 v@@26))
)))
(assert (forall ((m@@27 T@Map_5159_5159) (u@@27 Int) (v@@27 Int) ) (!  (=> (select (|Map#Domain_5159_5159| m@@27) u@@27) (= (|Map#Card_4182_5159| (|Map#Build_5159_5159| m@@27 u@@27 v@@27)) (|Map#Card_4182_5159| m@@27)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4182_5159| (|Map#Build_5159_5159| m@@27 u@@27 v@@27)))
 :pattern ( (|Map#Card_4182_5159| m@@27) (|Map#Build_5159_5159| m@@27 u@@27 v@@27))
)))
(assert (forall ((m@@28 T@Map_5159_21031) (u@@28 Int) (v@@28 T@Ref) ) (!  (=> (select (|Map#Domain_5159_21031| m@@28) u@@28) (= (|Map#Card_4182_21031| (|Map#Build_5159_21031| m@@28 u@@28 v@@28)) (|Map#Card_4182_21031| m@@28)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4182_21031| (|Map#Build_5159_21031| m@@28 u@@28 v@@28)))
 :pattern ( (|Map#Card_4182_21031| m@@28) (|Map#Build_5159_21031| m@@28 u@@28 v@@28))
)))
(assert (forall ((m@@29 T@Map_4182_645) (u@@29 Int) (v@@29 Real) ) (!  (=> (select (|Map#Domain_5159_645| m@@29) u@@29) (= (|Map#Card_4182_645| (|Map#Build_5159_645| m@@29 u@@29 v@@29)) (|Map#Card_4182_645| m@@29)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4182_645| (|Map#Build_5159_645| m@@29 u@@29 v@@29)))
 :pattern ( (|Map#Card_4182_645| m@@29) (|Map#Build_5159_645| m@@29 u@@29 v@@29))
)))
(assert (forall ((m@@30 T@Map_4182_43142) (u@@30 Int) (v@@30 T@Map_43140_645) ) (!  (=> (select (|Map#Domain_5159_45192| m@@30) u@@30) (= (|Map#Card_4182_43142| (|Map#Build_5159_45192| m@@30 u@@30 v@@30)) (|Map#Card_4182_43142| m@@30)))
 :qid |stdinbpl.483:21|
 :skolemid |93|
 :pattern ( (|Map#Card_4182_43142| (|Map#Build_5159_45192| m@@30 u@@30 v@@30)))
 :pattern ( (|Map#Card_4182_43142| m@@30) (|Map#Build_5159_45192| m@@30 u@@30 v@@30))
)))
(assert (forall ((r Real) (o Real) ) (! (= (select (|Set#Singleton_645| r) o) (= r o))
 :qid |stdinbpl.237:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_645| r) o))
)))
(assert (forall ((r@@0 T@Map_43140_645) (o@@0 T@Map_43140_645) ) (! (= (select (|Set#Singleton_45192| r@@0) o@@0) (= r@@0 o@@0))
 :qid |stdinbpl.237:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_45192| r@@0) o@@0))
)))
(assert (forall ((r@@1 Int) (o@@1 Int) ) (! (= (select (|Set#Singleton_5159| r@@1) o@@1) (= r@@1 o@@1))
 :qid |stdinbpl.237:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_5159| r@@1) o@@1))
)))
(assert (forall ((r@@2 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#Singleton_21031| r@@2) o@@2) (= r@@2 o@@2))
 :qid |stdinbpl.237:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_21031| r@@2) o@@2))
)))
(assert (forall ((a@@8 (Array Real Bool)) (b@@8 (Array Real Bool)) ) (! (= (+ (|Set#Card_645| (|Set#Union_645| a@@8 b@@8)) (|Set#Card_645| (|Set#Intersection_645| a@@8 b@@8))) (+ (|Set#Card_645| a@@8) (|Set#Card_645| b@@8)))
 :qid |stdinbpl.276:18|
 :skolemid |42|
 :pattern ( (|Set#Card_645| (|Set#Union_645| a@@8 b@@8)))
 :pattern ( (|Set#Card_645| (|Set#Intersection_645| a@@8 b@@8)))
)))
(assert (forall ((a@@9 (Array T@Map_43140_645 Bool)) (b@@9 (Array T@Map_43140_645 Bool)) ) (! (= (+ (|Set#Card_45192| (|Set#Union_45192| a@@9 b@@9)) (|Set#Card_45192| (|Set#Intersection_45192| a@@9 b@@9))) (+ (|Set#Card_45192| a@@9) (|Set#Card_45192| b@@9)))
 :qid |stdinbpl.276:18|
 :skolemid |42|
 :pattern ( (|Set#Card_45192| (|Set#Union_45192| a@@9 b@@9)))
 :pattern ( (|Set#Card_45192| (|Set#Intersection_45192| a@@9 b@@9)))
)))
(assert (forall ((a@@10 (Array Int Bool)) (b@@10 (Array Int Bool)) ) (! (= (+ (|Set#Card_5159| (|Set#Union_5159| a@@10 b@@10)) (|Set#Card_5159| (|Set#Intersection_5159| a@@10 b@@10))) (+ (|Set#Card_5159| a@@10) (|Set#Card_5159| b@@10)))
 :qid |stdinbpl.276:18|
 :skolemid |42|
 :pattern ( (|Set#Card_5159| (|Set#Union_5159| a@@10 b@@10)))
 :pattern ( (|Set#Card_5159| (|Set#Intersection_5159| a@@10 b@@10)))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_21031| (|Set#Union_21031| a@@11 b@@11)) (|Set#Card_21031| (|Set#Intersection_21031| a@@11 b@@11))) (+ (|Set#Card_21031| a@@11) (|Set#Card_21031| b@@11)))
 :qid |stdinbpl.276:18|
 :skolemid |42|
 :pattern ( (|Set#Card_21031| (|Set#Union_21031| a@@11 b@@11)))
 :pattern ( (|Set#Card_21031| (|Set#Intersection_21031| a@@11 b@@11)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_35797) (ExhaleHeap T@PolymorphicMapType_35797) (Mask@@0 T@PolymorphicMapType_35818) (pm_f_15 T@Field_58189_58190) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_58189_20576 Mask@@0 null pm_f_15) (IsPredicateField_20648_20649 pm_f_15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15 T@Ref) (f_45 T@Field_35870_35871) ) (!  (=> (select (|PolymorphicMapType_36346_20354_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15 f_45) (= (select (|PolymorphicMapType_35797_19827_19828#PolymorphicMapType_35797| Heap@@10) o2_15 f_45) (select (|PolymorphicMapType_35797_19827_19828#PolymorphicMapType_35797| ExhaleHeap) o2_15 f_45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_19827_19828#PolymorphicMapType_35797| ExhaleHeap) o2_15 f_45))
)) (forall ((o2_15@@0 T@Ref) (f_45@@0 T@Field_35857_53) ) (!  (=> (select (|PolymorphicMapType_36346_20354_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@0 f_45@@0) (= (select (|PolymorphicMapType_35797_19824_53#PolymorphicMapType_35797| Heap@@10) o2_15@@0 f_45@@0) (select (|PolymorphicMapType_35797_19824_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@0 f_45@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_19824_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@0 f_45@@0))
))) (forall ((o2_15@@1 T@Ref) (f_45@@1 T@Field_20354_4202) ) (!  (=> (select (|PolymorphicMapType_36346_20354_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@1 f_45@@1) (= (select (|PolymorphicMapType_35797_20354_4202#PolymorphicMapType_35797| Heap@@10) o2_15@@1 f_45@@1) (select (|PolymorphicMapType_35797_20354_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@1 f_45@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20354_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@1 f_45@@1))
))) (forall ((o2_15@@2 T@Ref) (f_45@@2 T@Field_20354_43193) ) (!  (=> (select (|PolymorphicMapType_36346_20354_132131#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@2 f_45@@2) (= (select (|PolymorphicMapType_35797_20354_116367#PolymorphicMapType_35797| Heap@@10) o2_15@@2 f_45@@2) (select (|PolymorphicMapType_35797_20354_116367#PolymorphicMapType_35797| ExhaleHeap) o2_15@@2 f_45@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20354_116367#PolymorphicMapType_35797| ExhaleHeap) o2_15@@2 f_45@@2))
))) (forall ((o2_15@@3 T@Ref) (f_45@@3 T@Field_20354_20576) ) (!  (=> (select (|PolymorphicMapType_36346_20354_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@3 f_45@@3) (= (select (|PolymorphicMapType_35797_20354_20576#PolymorphicMapType_35797| Heap@@10) o2_15@@3 f_45@@3) (select (|PolymorphicMapType_35797_20354_20576#PolymorphicMapType_35797| ExhaleHeap) o2_15@@3 f_45@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20354_20576#PolymorphicMapType_35797| ExhaleHeap) o2_15@@3 f_45@@3))
))) (forall ((o2_15@@4 T@Ref) (f_45@@4 T@Field_43157_20355) ) (!  (=> (select (|PolymorphicMapType_36346_43157_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@4 f_45@@4) (= (select (|PolymorphicMapType_35797_43157_20355#PolymorphicMapType_35797| Heap@@10) o2_15@@4 f_45@@4) (select (|PolymorphicMapType_35797_43157_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@4 f_45@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43157_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@4 f_45@@4))
))) (forall ((o2_15@@5 T@Ref) (f_45@@5 T@Field_43157_53) ) (!  (=> (select (|PolymorphicMapType_36346_43157_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@5 f_45@@5) (= (select (|PolymorphicMapType_35797_43157_53#PolymorphicMapType_35797| Heap@@10) o2_15@@5 f_45@@5) (select (|PolymorphicMapType_35797_43157_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@5 f_45@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43157_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@5 f_45@@5))
))) (forall ((o2_15@@6 T@Ref) (f_45@@6 T@Field_43157_4202) ) (!  (=> (select (|PolymorphicMapType_36346_43157_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@6 f_45@@6) (= (select (|PolymorphicMapType_35797_43157_4202#PolymorphicMapType_35797| Heap@@10) o2_15@@6 f_45@@6) (select (|PolymorphicMapType_35797_43157_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@6 f_45@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43157_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@6 f_45@@6))
))) (forall ((o2_15@@7 T@Ref) (f_45@@7 T@Field_43188_43193) ) (!  (=> (select (|PolymorphicMapType_36346_43157_133179#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@7 f_45@@7) (= (select (|PolymorphicMapType_35797_43157_121936#PolymorphicMapType_35797| Heap@@10) o2_15@@7 f_45@@7) (select (|PolymorphicMapType_35797_43157_121936#PolymorphicMapType_35797| ExhaleHeap) o2_15@@7 f_45@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43157_121936#PolymorphicMapType_35797| ExhaleHeap) o2_15@@7 f_45@@7))
))) (forall ((o2_15@@8 T@Ref) (f_45@@8 T@Field_43222_43223) ) (!  (=> (select (|PolymorphicMapType_36346_43157_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@8 f_45@@8) (= (select (|PolymorphicMapType_35797_43157_20576#PolymorphicMapType_35797| Heap@@10) o2_15@@8 f_45@@8) (select (|PolymorphicMapType_35797_43157_20576#PolymorphicMapType_35797| ExhaleHeap) o2_15@@8 f_45@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43157_20576#PolymorphicMapType_35797| ExhaleHeap) o2_15@@8 f_45@@8))
))) (forall ((o2_15@@9 T@Ref) (f_45@@9 T@Field_43983_20355) ) (!  (=> (select (|PolymorphicMapType_36346_43983_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@9 f_45@@9) (= (select (|PolymorphicMapType_35797_43983_20355#PolymorphicMapType_35797| Heap@@10) o2_15@@9 f_45@@9) (select (|PolymorphicMapType_35797_43983_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@9 f_45@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43983_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@9 f_45@@9))
))) (forall ((o2_15@@10 T@Ref) (f_45@@10 T@Field_43983_53) ) (!  (=> (select (|PolymorphicMapType_36346_43983_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@10 f_45@@10) (= (select (|PolymorphicMapType_35797_43983_53#PolymorphicMapType_35797| Heap@@10) o2_15@@10 f_45@@10) (select (|PolymorphicMapType_35797_43983_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@10 f_45@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43983_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@10 f_45@@10))
))) (forall ((o2_15@@11 T@Ref) (f_45@@11 T@Field_43983_4612) ) (!  (=> (select (|PolymorphicMapType_36346_43983_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@11 f_45@@11) (= (select (|PolymorphicMapType_35797_43983_4202#PolymorphicMapType_35797| Heap@@10) o2_15@@11 f_45@@11) (select (|PolymorphicMapType_35797_43983_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@11 f_45@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43983_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@11 f_45@@11))
))) (forall ((o2_15@@12 T@Ref) (f_45@@12 T@Field_43998_44003) ) (!  (=> (select (|PolymorphicMapType_36346_43983_134227#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@12 f_45@@12) (= (select (|PolymorphicMapType_35797_20294_110860#PolymorphicMapType_35797| Heap@@10) o2_15@@12 f_45@@12) (select (|PolymorphicMapType_35797_20294_110860#PolymorphicMapType_35797| ExhaleHeap) o2_15@@12 f_45@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20294_110860#PolymorphicMapType_35797| ExhaleHeap) o2_15@@12 f_45@@12))
))) (forall ((o2_15@@13 T@Ref) (f_45@@13 T@Field_44016_44017) ) (!  (=> (select (|PolymorphicMapType_36346_43983_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@13 f_45@@13) (= (select (|PolymorphicMapType_35797_43983_20576#PolymorphicMapType_35797| Heap@@10) o2_15@@13 f_45@@13) (select (|PolymorphicMapType_35797_43983_20576#PolymorphicMapType_35797| ExhaleHeap) o2_15@@13 f_45@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43983_20576#PolymorphicMapType_35797| ExhaleHeap) o2_15@@13 f_45@@13))
))) (forall ((o2_15@@14 T@Ref) (f_45@@14 T@Field_20756_20355) ) (!  (=> (select (|PolymorphicMapType_36346_46129_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@14 f_45@@14) (= (select (|PolymorphicMapType_35797_20756_20355#PolymorphicMapType_35797| Heap@@10) o2_15@@14 f_45@@14) (select (|PolymorphicMapType_35797_20756_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@14 f_45@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20756_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@14 f_45@@14))
))) (forall ((o2_15@@15 T@Ref) (f_45@@15 T@Field_20756_53) ) (!  (=> (select (|PolymorphicMapType_36346_46129_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@15 f_45@@15) (= (select (|PolymorphicMapType_35797_20756_53#PolymorphicMapType_35797| Heap@@10) o2_15@@15 f_45@@15) (select (|PolymorphicMapType_35797_20756_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@15 f_45@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20756_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@15 f_45@@15))
))) (forall ((o2_15@@16 T@Ref) (f_45@@16 T@Field_20756_4202) ) (!  (=> (select (|PolymorphicMapType_36346_46129_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@16 f_45@@16) (= (select (|PolymorphicMapType_35797_20756_4202#PolymorphicMapType_35797| Heap@@10) o2_15@@16 f_45@@16) (select (|PolymorphicMapType_35797_20756_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@16 f_45@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20756_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@16 f_45@@16))
))) (forall ((o2_15@@17 T@Ref) (f_45@@17 T@Field_60906_60911) ) (!  (=> (select (|PolymorphicMapType_36346_46129_135275#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@17 f_45@@17) (= (select (|PolymorphicMapType_35797_20763_101457#PolymorphicMapType_35797| Heap@@10) o2_15@@17 f_45@@17) (select (|PolymorphicMapType_35797_20763_101457#PolymorphicMapType_35797| ExhaleHeap) o2_15@@17 f_45@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20763_101457#PolymorphicMapType_35797| ExhaleHeap) o2_15@@17 f_45@@17))
))) (forall ((o2_15@@18 T@Ref) (f_45@@18 T@Field_46129_46130) ) (!  (=> (select (|PolymorphicMapType_36346_46129_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@18 f_45@@18) (= (select (|PolymorphicMapType_35797_20756_20757#PolymorphicMapType_35797| Heap@@10) o2_15@@18 f_45@@18) (select (|PolymorphicMapType_35797_20756_20757#PolymorphicMapType_35797| ExhaleHeap) o2_15@@18 f_45@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20756_20757#PolymorphicMapType_35797| ExhaleHeap) o2_15@@18 f_45@@18))
))) (forall ((o2_15@@19 T@Ref) (f_45@@19 T@Field_48667_20355) ) (!  (=> (select (|PolymorphicMapType_36346_48667_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@19 f_45@@19) (= (select (|PolymorphicMapType_35797_48667_20355#PolymorphicMapType_35797| Heap@@10) o2_15@@19 f_45@@19) (select (|PolymorphicMapType_35797_48667_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@19 f_45@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_48667_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@19 f_45@@19))
))) (forall ((o2_15@@20 T@Ref) (f_45@@20 T@Field_48667_53) ) (!  (=> (select (|PolymorphicMapType_36346_48667_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@20 f_45@@20) (= (select (|PolymorphicMapType_35797_48667_53#PolymorphicMapType_35797| Heap@@10) o2_15@@20 f_45@@20) (select (|PolymorphicMapType_35797_48667_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@20 f_45@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_48667_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@20 f_45@@20))
))) (forall ((o2_15@@21 T@Ref) (f_45@@21 T@Field_48667_4202) ) (!  (=> (select (|PolymorphicMapType_36346_48667_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@21 f_45@@21) (= (select (|PolymorphicMapType_35797_48667_4202#PolymorphicMapType_35797| Heap@@10) o2_15@@21 f_45@@21) (select (|PolymorphicMapType_35797_48667_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@21 f_45@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_48667_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@21 f_45@@21))
))) (forall ((o2_15@@22 T@Ref) (f_45@@22 T@Field_59245_59250) ) (!  (=> (select (|PolymorphicMapType_36346_48667_136323#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@22 f_45@@22) (= (select (|PolymorphicMapType_35797_48667_124231#PolymorphicMapType_35797| Heap@@10) o2_15@@22 f_45@@22) (select (|PolymorphicMapType_35797_48667_124231#PolymorphicMapType_35797| ExhaleHeap) o2_15@@22 f_45@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_48667_124231#PolymorphicMapType_35797| ExhaleHeap) o2_15@@22 f_45@@22))
))) (forall ((o2_15@@23 T@Ref) (f_45@@23 T@Field_48667_48668) ) (!  (=> (select (|PolymorphicMapType_36346_48667_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@23 f_45@@23) (= (select (|PolymorphicMapType_35797_20706_20707#PolymorphicMapType_35797| Heap@@10) o2_15@@23 f_45@@23) (select (|PolymorphicMapType_35797_20706_20707#PolymorphicMapType_35797| ExhaleHeap) o2_15@@23 f_45@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20706_20707#PolymorphicMapType_35797| ExhaleHeap) o2_15@@23 f_45@@23))
))) (forall ((o2_15@@24 T@Ref) (f_45@@24 T@Field_20728_20355) ) (!  (=> (select (|PolymorphicMapType_36346_51131_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@24 f_45@@24) (= (select (|PolymorphicMapType_35797_20728_20355#PolymorphicMapType_35797| Heap@@10) o2_15@@24 f_45@@24) (select (|PolymorphicMapType_35797_20728_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@24 f_45@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20728_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@24 f_45@@24))
))) (forall ((o2_15@@25 T@Ref) (f_45@@25 T@Field_20728_53) ) (!  (=> (select (|PolymorphicMapType_36346_51131_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@25 f_45@@25) (= (select (|PolymorphicMapType_35797_20728_53#PolymorphicMapType_35797| Heap@@10) o2_15@@25 f_45@@25) (select (|PolymorphicMapType_35797_20728_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@25 f_45@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20728_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@25 f_45@@25))
))) (forall ((o2_15@@26 T@Ref) (f_45@@26 T@Field_20728_4202) ) (!  (=> (select (|PolymorphicMapType_36346_51131_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@26 f_45@@26) (= (select (|PolymorphicMapType_35797_20728_4202#PolymorphicMapType_35797| Heap@@10) o2_15@@26 f_45@@26) (select (|PolymorphicMapType_35797_20728_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@26 f_45@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20728_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@26 f_45@@26))
))) (forall ((o2_15@@27 T@Ref) (f_45@@27 T@Field_53810_53815) ) (!  (=> (select (|PolymorphicMapType_36346_51131_137371#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@27 f_45@@27) (= (select (|PolymorphicMapType_35797_20732_53902#PolymorphicMapType_35797| Heap@@10) o2_15@@27 f_45@@27) (select (|PolymorphicMapType_35797_20732_53902#PolymorphicMapType_35797| ExhaleHeap) o2_15@@27 f_45@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20732_53902#PolymorphicMapType_35797| ExhaleHeap) o2_15@@27 f_45@@27))
))) (forall ((o2_15@@28 T@Ref) (f_45@@28 T@Field_51131_51132) ) (!  (=> (select (|PolymorphicMapType_36346_51131_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@28 f_45@@28) (= (select (|PolymorphicMapType_35797_20728_20729#PolymorphicMapType_35797| Heap@@10) o2_15@@28 f_45@@28) (select (|PolymorphicMapType_35797_20728_20729#PolymorphicMapType_35797| ExhaleHeap) o2_15@@28 f_45@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20728_20729#PolymorphicMapType_35797| ExhaleHeap) o2_15@@28 f_45@@28))
))) (forall ((o2_15@@29 T@Ref) (f_45@@29 T@Field_52884_20355) ) (!  (=> (select (|PolymorphicMapType_36346_52884_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@29 f_45@@29) (= (select (|PolymorphicMapType_35797_52884_20355#PolymorphicMapType_35797| Heap@@10) o2_15@@29 f_45@@29) (select (|PolymorphicMapType_35797_52884_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@29 f_45@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_52884_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@29 f_45@@29))
))) (forall ((o2_15@@30 T@Ref) (f_45@@30 T@Field_52884_53) ) (!  (=> (select (|PolymorphicMapType_36346_52884_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@30 f_45@@30) (= (select (|PolymorphicMapType_35797_52884_53#PolymorphicMapType_35797| Heap@@10) o2_15@@30 f_45@@30) (select (|PolymorphicMapType_35797_52884_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@30 f_45@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_52884_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@30 f_45@@30))
))) (forall ((o2_15@@31 T@Ref) (f_45@@31 T@Field_52884_4202) ) (!  (=> (select (|PolymorphicMapType_36346_52884_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@31 f_45@@31) (= (select (|PolymorphicMapType_35797_52884_4202#PolymorphicMapType_35797| Heap@@10) o2_15@@31 f_45@@31) (select (|PolymorphicMapType_35797_52884_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@31 f_45@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_52884_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@31 f_45@@31))
))) (forall ((o2_15@@32 T@Ref) (f_45@@32 T@Field_54199_54204) ) (!  (=> (select (|PolymorphicMapType_36346_52884_138419#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@32 f_45@@32) (= (select (|PolymorphicMapType_35797_20528_54239#PolymorphicMapType_35797| Heap@@10) o2_15@@32 f_45@@32) (select (|PolymorphicMapType_35797_20528_54239#PolymorphicMapType_35797| ExhaleHeap) o2_15@@32 f_45@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20528_54239#PolymorphicMapType_35797| ExhaleHeap) o2_15@@32 f_45@@32))
))) (forall ((o2_15@@33 T@Ref) (f_45@@33 T@Field_52884_52885) ) (!  (=> (select (|PolymorphicMapType_36346_52884_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@33 f_45@@33) (= (select (|PolymorphicMapType_35797_20524_20525#PolymorphicMapType_35797| Heap@@10) o2_15@@33 f_45@@33) (select (|PolymorphicMapType_35797_20524_20525#PolymorphicMapType_35797| ExhaleHeap) o2_15@@33 f_45@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20524_20525#PolymorphicMapType_35797| ExhaleHeap) o2_15@@33 f_45@@33))
))) (forall ((o2_15@@34 T@Ref) (f_45@@34 T@Field_56169_20355) ) (!  (=> (select (|PolymorphicMapType_36346_56169_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@34 f_45@@34) (= (select (|PolymorphicMapType_35797_56169_20355#PolymorphicMapType_35797| Heap@@10) o2_15@@34 f_45@@34) (select (|PolymorphicMapType_35797_56169_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@34 f_45@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_56169_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@34 f_45@@34))
))) (forall ((o2_15@@35 T@Ref) (f_45@@35 T@Field_56169_53) ) (!  (=> (select (|PolymorphicMapType_36346_56169_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@35 f_45@@35) (= (select (|PolymorphicMapType_35797_56169_53#PolymorphicMapType_35797| Heap@@10) o2_15@@35 f_45@@35) (select (|PolymorphicMapType_35797_56169_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@35 f_45@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_56169_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@35 f_45@@35))
))) (forall ((o2_15@@36 T@Ref) (f_45@@36 T@Field_56169_4202) ) (!  (=> (select (|PolymorphicMapType_36346_56169_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@36 f_45@@36) (= (select (|PolymorphicMapType_35797_56169_4202#PolymorphicMapType_35797| Heap@@10) o2_15@@36 f_45@@36) (select (|PolymorphicMapType_35797_56169_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@36 f_45@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_56169_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@36 f_45@@36))
))) (forall ((o2_15@@37 T@Ref) (f_45@@37 T@Field_56424_56429) ) (!  (=> (select (|PolymorphicMapType_36346_56169_139467#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@37 f_45@@37) (= (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@10) o2_15@@37 f_45@@37) (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| ExhaleHeap) o2_15@@37 f_45@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| ExhaleHeap) o2_15@@37 f_45@@37))
))) (forall ((o2_15@@38 T@Ref) (f_45@@38 T@Field_56169_56170) ) (!  (=> (select (|PolymorphicMapType_36346_56169_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@38 f_45@@38) (= (select (|PolymorphicMapType_35797_56169_20576#PolymorphicMapType_35797| Heap@@10) o2_15@@38 f_45@@38) (select (|PolymorphicMapType_35797_56169_20576#PolymorphicMapType_35797| ExhaleHeap) o2_15@@38 f_45@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_56169_20576#PolymorphicMapType_35797| ExhaleHeap) o2_15@@38 f_45@@38))
))) (forall ((o2_15@@39 T@Ref) (f_45@@39 T@Field_20575_20355) ) (!  (=> (select (|PolymorphicMapType_36346_56951_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@39 f_45@@39) (= (select (|PolymorphicMapType_35797_20575_20355#PolymorphicMapType_35797| Heap@@10) o2_15@@39 f_45@@39) (select (|PolymorphicMapType_35797_20575_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@39 f_45@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20575_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@39 f_45@@39))
))) (forall ((o2_15@@40 T@Ref) (f_45@@40 T@Field_20575_53) ) (!  (=> (select (|PolymorphicMapType_36346_56951_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@40 f_45@@40) (= (select (|PolymorphicMapType_35797_20575_53#PolymorphicMapType_35797| Heap@@10) o2_15@@40 f_45@@40) (select (|PolymorphicMapType_35797_20575_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@40 f_45@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20575_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@40 f_45@@40))
))) (forall ((o2_15@@41 T@Ref) (f_45@@41 T@Field_20575_4202) ) (!  (=> (select (|PolymorphicMapType_36346_56951_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@41 f_45@@41) (= (select (|PolymorphicMapType_35797_20575_4202#PolymorphicMapType_35797| Heap@@10) o2_15@@41 f_45@@41) (select (|PolymorphicMapType_35797_20575_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@41 f_45@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20575_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@41 f_45@@41))
))) (forall ((o2_15@@42 T@Ref) (f_45@@42 T@Field_56974_56979) ) (!  (=> (select (|PolymorphicMapType_36346_56951_140515#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@42 f_45@@42) (= (select (|PolymorphicMapType_35797_20583_75993#PolymorphicMapType_35797| Heap@@10) o2_15@@42 f_45@@42) (select (|PolymorphicMapType_35797_20583_75993#PolymorphicMapType_35797| ExhaleHeap) o2_15@@42 f_45@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20583_75993#PolymorphicMapType_35797| ExhaleHeap) o2_15@@42 f_45@@42))
))) (forall ((o2_15@@43 T@Ref) (f_45@@43 T@Field_56951_56952) ) (!  (=> (select (|PolymorphicMapType_36346_56951_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@43 f_45@@43) (= (select (|PolymorphicMapType_35797_20575_20576#PolymorphicMapType_35797| Heap@@10) o2_15@@43 f_45@@43) (select (|PolymorphicMapType_35797_20575_20576#PolymorphicMapType_35797| ExhaleHeap) o2_15@@43 f_45@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20575_20576#PolymorphicMapType_35797| ExhaleHeap) o2_15@@43 f_45@@43))
))) (forall ((o2_15@@44 T@Ref) (f_45@@44 T@Field_58189_20355) ) (!  (=> (select (|PolymorphicMapType_36346_58189_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@44 f_45@@44) (= (select (|PolymorphicMapType_35797_58189_20355#PolymorphicMapType_35797| Heap@@10) o2_15@@44 f_45@@44) (select (|PolymorphicMapType_35797_58189_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@44 f_45@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_58189_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@44 f_45@@44))
))) (forall ((o2_15@@45 T@Ref) (f_45@@45 T@Field_58189_53) ) (!  (=> (select (|PolymorphicMapType_36346_58189_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@45 f_45@@45) (= (select (|PolymorphicMapType_35797_58189_53#PolymorphicMapType_35797| Heap@@10) o2_15@@45 f_45@@45) (select (|PolymorphicMapType_35797_58189_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@45 f_45@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_58189_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@45 f_45@@45))
))) (forall ((o2_15@@46 T@Ref) (f_45@@46 T@Field_58189_4202) ) (!  (=> (select (|PolymorphicMapType_36346_58189_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@46 f_45@@46) (= (select (|PolymorphicMapType_35797_58189_4202#PolymorphicMapType_35797| Heap@@10) o2_15@@46 f_45@@46) (select (|PolymorphicMapType_35797_58189_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@46 f_45@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_58189_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@46 f_45@@46))
))) (forall ((o2_15@@47 T@Ref) (f_45@@47 T@Field_58490_58495) ) (!  (=> (select (|PolymorphicMapType_36346_58189_141563#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@47 f_45@@47) (= (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) o2_15@@47 f_45@@47) (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| ExhaleHeap) o2_15@@47 f_45@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| ExhaleHeap) o2_15@@47 f_45@@47))
))) (forall ((o2_15@@48 T@Ref) (f_45@@48 T@Field_58189_58190) ) (!  (=> (select (|PolymorphicMapType_36346_58189_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@48 f_45@@48) (= (select (|PolymorphicMapType_35797_20648_20649#PolymorphicMapType_35797| Heap@@10) o2_15@@48 f_45@@48) (select (|PolymorphicMapType_35797_20648_20649#PolymorphicMapType_35797| ExhaleHeap) o2_15@@48 f_45@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20648_20649#PolymorphicMapType_35797| ExhaleHeap) o2_15@@48 f_45@@48))
))) (forall ((o2_15@@49 T@Ref) (f_45@@49 T@Field_20866_20355) ) (!  (=> (select (|PolymorphicMapType_36346_69392_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@49 f_45@@49) (= (select (|PolymorphicMapType_35797_20866_20355#PolymorphicMapType_35797| Heap@@10) o2_15@@49 f_45@@49) (select (|PolymorphicMapType_35797_20866_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@49 f_45@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20866_20355#PolymorphicMapType_35797| ExhaleHeap) o2_15@@49 f_45@@49))
))) (forall ((o2_15@@50 T@Ref) (f_45@@50 T@Field_20866_53) ) (!  (=> (select (|PolymorphicMapType_36346_69392_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@50 f_45@@50) (= (select (|PolymorphicMapType_35797_20866_53#PolymorphicMapType_35797| Heap@@10) o2_15@@50 f_45@@50) (select (|PolymorphicMapType_35797_20866_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@50 f_45@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20866_53#PolymorphicMapType_35797| ExhaleHeap) o2_15@@50 f_45@@50))
))) (forall ((o2_15@@51 T@Ref) (f_45@@51 T@Field_20866_4202) ) (!  (=> (select (|PolymorphicMapType_36346_69392_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@51 f_45@@51) (= (select (|PolymorphicMapType_35797_20866_4202#PolymorphicMapType_35797| Heap@@10) o2_15@@51 f_45@@51) (select (|PolymorphicMapType_35797_20866_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@51 f_45@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20866_4202#PolymorphicMapType_35797| ExhaleHeap) o2_15@@51 f_45@@51))
))) (forall ((o2_15@@52 T@Ref) (f_45@@52 T@Field_69405_69410) ) (!  (=> (select (|PolymorphicMapType_36346_69392_142611#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@52 f_45@@52) (= (select (|PolymorphicMapType_35797_20870_113600#PolymorphicMapType_35797| Heap@@10) o2_15@@52 f_45@@52) (select (|PolymorphicMapType_35797_20870_113600#PolymorphicMapType_35797| ExhaleHeap) o2_15@@52 f_45@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20870_113600#PolymorphicMapType_35797| ExhaleHeap) o2_15@@52 f_45@@52))
))) (forall ((o2_15@@53 T@Ref) (f_45@@53 T@Field_69392_69393) ) (!  (=> (select (|PolymorphicMapType_36346_69392_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_20656_76909#PolymorphicMapType_35797| Heap@@10) null (PredicateMaskField_20648 pm_f_15))) o2_15@@53 f_45@@53) (= (select (|PolymorphicMapType_35797_20866_20867#PolymorphicMapType_35797| Heap@@10) o2_15@@53 f_45@@53) (select (|PolymorphicMapType_35797_20866_20867#PolymorphicMapType_35797| ExhaleHeap) o2_15@@53 f_45@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20866_20867#PolymorphicMapType_35797| ExhaleHeap) o2_15@@53 f_45@@53))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap Mask@@0) (IsPredicateField_20648_20649 pm_f_15))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_35797) (ExhaleHeap@@0 T@PolymorphicMapType_35797) (Mask@@1 T@PolymorphicMapType_35818) (pm_f_15@@0 T@Field_56169_56170) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_56169_20576 Mask@@1 null pm_f_15@@0) (IsPredicateField_20549_20550 pm_f_15@@0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_15@@54 T@Ref) (f_45@@54 T@Field_35870_35871) ) (!  (=> (select (|PolymorphicMapType_36346_20354_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@54 f_45@@54) (= (select (|PolymorphicMapType_35797_19827_19828#PolymorphicMapType_35797| Heap@@11) o2_15@@54 f_45@@54) (select (|PolymorphicMapType_35797_19827_19828#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@54 f_45@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_19827_19828#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@54 f_45@@54))
)) (forall ((o2_15@@55 T@Ref) (f_45@@55 T@Field_35857_53) ) (!  (=> (select (|PolymorphicMapType_36346_20354_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@55 f_45@@55) (= (select (|PolymorphicMapType_35797_19824_53#PolymorphicMapType_35797| Heap@@11) o2_15@@55 f_45@@55) (select (|PolymorphicMapType_35797_19824_53#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@55 f_45@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_19824_53#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@55 f_45@@55))
))) (forall ((o2_15@@56 T@Ref) (f_45@@56 T@Field_20354_4202) ) (!  (=> (select (|PolymorphicMapType_36346_20354_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@56 f_45@@56) (= (select (|PolymorphicMapType_35797_20354_4202#PolymorphicMapType_35797| Heap@@11) o2_15@@56 f_45@@56) (select (|PolymorphicMapType_35797_20354_4202#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@56 f_45@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20354_4202#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@56 f_45@@56))
))) (forall ((o2_15@@57 T@Ref) (f_45@@57 T@Field_20354_43193) ) (!  (=> (select (|PolymorphicMapType_36346_20354_132131#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@57 f_45@@57) (= (select (|PolymorphicMapType_35797_20354_116367#PolymorphicMapType_35797| Heap@@11) o2_15@@57 f_45@@57) (select (|PolymorphicMapType_35797_20354_116367#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@57 f_45@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20354_116367#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@57 f_45@@57))
))) (forall ((o2_15@@58 T@Ref) (f_45@@58 T@Field_20354_20576) ) (!  (=> (select (|PolymorphicMapType_36346_20354_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@58 f_45@@58) (= (select (|PolymorphicMapType_35797_20354_20576#PolymorphicMapType_35797| Heap@@11) o2_15@@58 f_45@@58) (select (|PolymorphicMapType_35797_20354_20576#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@58 f_45@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20354_20576#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@58 f_45@@58))
))) (forall ((o2_15@@59 T@Ref) (f_45@@59 T@Field_43157_20355) ) (!  (=> (select (|PolymorphicMapType_36346_43157_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@59 f_45@@59) (= (select (|PolymorphicMapType_35797_43157_20355#PolymorphicMapType_35797| Heap@@11) o2_15@@59 f_45@@59) (select (|PolymorphicMapType_35797_43157_20355#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@59 f_45@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43157_20355#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@59 f_45@@59))
))) (forall ((o2_15@@60 T@Ref) (f_45@@60 T@Field_43157_53) ) (!  (=> (select (|PolymorphicMapType_36346_43157_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@60 f_45@@60) (= (select (|PolymorphicMapType_35797_43157_53#PolymorphicMapType_35797| Heap@@11) o2_15@@60 f_45@@60) (select (|PolymorphicMapType_35797_43157_53#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@60 f_45@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43157_53#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@60 f_45@@60))
))) (forall ((o2_15@@61 T@Ref) (f_45@@61 T@Field_43157_4202) ) (!  (=> (select (|PolymorphicMapType_36346_43157_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@61 f_45@@61) (= (select (|PolymorphicMapType_35797_43157_4202#PolymorphicMapType_35797| Heap@@11) o2_15@@61 f_45@@61) (select (|PolymorphicMapType_35797_43157_4202#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@61 f_45@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43157_4202#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@61 f_45@@61))
))) (forall ((o2_15@@62 T@Ref) (f_45@@62 T@Field_43188_43193) ) (!  (=> (select (|PolymorphicMapType_36346_43157_133179#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@62 f_45@@62) (= (select (|PolymorphicMapType_35797_43157_121936#PolymorphicMapType_35797| Heap@@11) o2_15@@62 f_45@@62) (select (|PolymorphicMapType_35797_43157_121936#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@62 f_45@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43157_121936#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@62 f_45@@62))
))) (forall ((o2_15@@63 T@Ref) (f_45@@63 T@Field_43222_43223) ) (!  (=> (select (|PolymorphicMapType_36346_43157_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@63 f_45@@63) (= (select (|PolymorphicMapType_35797_43157_20576#PolymorphicMapType_35797| Heap@@11) o2_15@@63 f_45@@63) (select (|PolymorphicMapType_35797_43157_20576#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@63 f_45@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43157_20576#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@63 f_45@@63))
))) (forall ((o2_15@@64 T@Ref) (f_45@@64 T@Field_43983_20355) ) (!  (=> (select (|PolymorphicMapType_36346_43983_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@64 f_45@@64) (= (select (|PolymorphicMapType_35797_43983_20355#PolymorphicMapType_35797| Heap@@11) o2_15@@64 f_45@@64) (select (|PolymorphicMapType_35797_43983_20355#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@64 f_45@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43983_20355#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@64 f_45@@64))
))) (forall ((o2_15@@65 T@Ref) (f_45@@65 T@Field_43983_53) ) (!  (=> (select (|PolymorphicMapType_36346_43983_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@65 f_45@@65) (= (select (|PolymorphicMapType_35797_43983_53#PolymorphicMapType_35797| Heap@@11) o2_15@@65 f_45@@65) (select (|PolymorphicMapType_35797_43983_53#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@65 f_45@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43983_53#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@65 f_45@@65))
))) (forall ((o2_15@@66 T@Ref) (f_45@@66 T@Field_43983_4612) ) (!  (=> (select (|PolymorphicMapType_36346_43983_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@66 f_45@@66) (= (select (|PolymorphicMapType_35797_43983_4202#PolymorphicMapType_35797| Heap@@11) o2_15@@66 f_45@@66) (select (|PolymorphicMapType_35797_43983_4202#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@66 f_45@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43983_4202#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@66 f_45@@66))
))) (forall ((o2_15@@67 T@Ref) (f_45@@67 T@Field_43998_44003) ) (!  (=> (select (|PolymorphicMapType_36346_43983_134227#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@67 f_45@@67) (= (select (|PolymorphicMapType_35797_20294_110860#PolymorphicMapType_35797| Heap@@11) o2_15@@67 f_45@@67) (select (|PolymorphicMapType_35797_20294_110860#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@67 f_45@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20294_110860#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@67 f_45@@67))
))) (forall ((o2_15@@68 T@Ref) (f_45@@68 T@Field_44016_44017) ) (!  (=> (select (|PolymorphicMapType_36346_43983_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@68 f_45@@68) (= (select (|PolymorphicMapType_35797_43983_20576#PolymorphicMapType_35797| Heap@@11) o2_15@@68 f_45@@68) (select (|PolymorphicMapType_35797_43983_20576#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@68 f_45@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_43983_20576#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@68 f_45@@68))
))) (forall ((o2_15@@69 T@Ref) (f_45@@69 T@Field_20756_20355) ) (!  (=> (select (|PolymorphicMapType_36346_46129_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@69 f_45@@69) (= (select (|PolymorphicMapType_35797_20756_20355#PolymorphicMapType_35797| Heap@@11) o2_15@@69 f_45@@69) (select (|PolymorphicMapType_35797_20756_20355#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@69 f_45@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20756_20355#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@69 f_45@@69))
))) (forall ((o2_15@@70 T@Ref) (f_45@@70 T@Field_20756_53) ) (!  (=> (select (|PolymorphicMapType_36346_46129_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@70 f_45@@70) (= (select (|PolymorphicMapType_35797_20756_53#PolymorphicMapType_35797| Heap@@11) o2_15@@70 f_45@@70) (select (|PolymorphicMapType_35797_20756_53#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@70 f_45@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20756_53#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@70 f_45@@70))
))) (forall ((o2_15@@71 T@Ref) (f_45@@71 T@Field_20756_4202) ) (!  (=> (select (|PolymorphicMapType_36346_46129_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@71 f_45@@71) (= (select (|PolymorphicMapType_35797_20756_4202#PolymorphicMapType_35797| Heap@@11) o2_15@@71 f_45@@71) (select (|PolymorphicMapType_35797_20756_4202#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@71 f_45@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20756_4202#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@71 f_45@@71))
))) (forall ((o2_15@@72 T@Ref) (f_45@@72 T@Field_60906_60911) ) (!  (=> (select (|PolymorphicMapType_36346_46129_135275#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@72 f_45@@72) (= (select (|PolymorphicMapType_35797_20763_101457#PolymorphicMapType_35797| Heap@@11) o2_15@@72 f_45@@72) (select (|PolymorphicMapType_35797_20763_101457#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@72 f_45@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20763_101457#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@72 f_45@@72))
))) (forall ((o2_15@@73 T@Ref) (f_45@@73 T@Field_46129_46130) ) (!  (=> (select (|PolymorphicMapType_36346_46129_43223#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@73 f_45@@73) (= (select (|PolymorphicMapType_35797_20756_20757#PolymorphicMapType_35797| Heap@@11) o2_15@@73 f_45@@73) (select (|PolymorphicMapType_35797_20756_20757#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@73 f_45@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_20756_20757#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@73 f_45@@73))
))) (forall ((o2_15@@74 T@Ref) (f_45@@74 T@Field_48667_20355) ) (!  (=> (select (|PolymorphicMapType_36346_48667_20355#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@74 f_45@@74) (= (select (|PolymorphicMapType_35797_48667_20355#PolymorphicMapType_35797| Heap@@11) o2_15@@74 f_45@@74) (select (|PolymorphicMapType_35797_48667_20355#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@74 f_45@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_48667_20355#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@74 f_45@@74))
))) (forall ((o2_15@@75 T@Ref) (f_45@@75 T@Field_48667_53) ) (!  (=> (select (|PolymorphicMapType_36346_48667_53#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@75 f_45@@75) (= (select (|PolymorphicMapType_35797_48667_53#PolymorphicMapType_35797| Heap@@11) o2_15@@75 f_45@@75) (select (|PolymorphicMapType_35797_48667_53#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@75 f_45@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_48667_53#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@75 f_45@@75))
))) (forall ((o2_15@@76 T@Ref) (f_45@@76 T@Field_48667_4202) ) (!  (=> (select (|PolymorphicMapType_36346_48667_4202#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@76 f_45@@76) (= (select (|PolymorphicMapType_35797_48667_4202#PolymorphicMapType_35797| Heap@@11) o2_15@@76 f_45@@76) (select (|PolymorphicMapType_35797_48667_4202#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@76 f_45@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_48667_4202#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@76 f_45@@76))
))) (forall ((o2_15@@77 T@Ref) (f_45@@77 T@Field_59245_59250) ) (!  (=> (select (|PolymorphicMapType_36346_48667_136323#PolymorphicMapType_36346| (select (|PolymorphicMapType_35797_56169_126527#PolymorphicMapType_35797| Heap@@11) null (PredicateMaskField_20549 pm_f_15@@0))) o2_15@@77 f_45@@77) (= (select (|PolymorphicMapType_35797_48667_124231#PolymorphicMapType_35797| Heap@@11) o2_15@@77 f_45@@77) (select (|PolymorphicMapType_35797_48667_124231#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@77 f_45@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_35797_48667_124231#PolymorphicMapType_35797| ExhaleHeap@@0) o2_15@@77 f_45@@77))
))) (forall ((o2_15@@78 T@Ref) (f_45@@78 T@Field_48667_48668) ) (!  (=> (select (|PolymorphicMapType_36346_48667_43223#PolymorphicMapType_36346| (select (|Pol