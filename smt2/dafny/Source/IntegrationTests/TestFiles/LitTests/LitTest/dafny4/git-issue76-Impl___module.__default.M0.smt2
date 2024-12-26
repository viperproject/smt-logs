(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :model_evaluator.completion true)
(set-option :model.completion true)
(set-option :model.compact false)
(set-option :smt.case_split 3)
(set-option :smt.mbqi false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-option :smt.arith.solver 2)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun $generated (T@U T@U) T@U)
(declare-fun $generated@@0 (T@U T@U) Bool)
(declare-fun $generated@@1 (T@T) Int)
(declare-fun $generated@@2 () T@T)
(declare-fun $generated@@3 () T@T)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 (Bool) T@U)
(declare-fun $generated@@6 (T@U) Bool)
(declare-fun $generated@@7 (Int) T@U)
(declare-fun $generated@@8 (T@U) Int)
(declare-fun $generated@@9 (Real) T@U)
(declare-fun $generated@@10 (T@U) Real)
(declare-fun $generated@@25 (T@U T@U) T@U)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@31 (T@U) Int)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@36 (T@T T@U) T@U)
(declare-fun $generated@@39 (T@T T@U) T@U)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@43 (T@U T@U) T@U)
(declare-fun $generated@@46 (T@U T@U) Bool)
(declare-fun $generated@@52 (Int) T@U)
(declare-fun $generated@@53 (T@U) Int)
(declare-fun $generated@@55 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@56 () T@T)
(declare-fun $generated@@57 () T@T)
(declare-fun $generated@@58 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@59 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@60 () T@T)
(declare-fun $generated@@61 (T@T T@T) T@T)
(declare-fun $generated@@62 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@63 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@64 (T@T) T@T)
(declare-fun $generated@@65 (T@T) T@T)
(declare-fun $generated@@114 (T@U) T@U)
(declare-fun $generated@@115 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@1 $generated@@2) 0) (= ($generated@@1 $generated@@3) 1)) (= ($generated@@1 $generated@@4) 2)) (forall (($generated@@11 Bool) ) (! (= ($generated@@6 ($generated@@5 $generated@@11)) $generated@@11)
 :pattern ( ($generated@@5 $generated@@11))
))) (forall (($generated@@12 T@U) ) (! (= ($generated@@5 ($generated@@6 $generated@@12)) $generated@@12)
 :pattern ( ($generated@@6 $generated@@12))
))) (forall (($generated@@13 Int) ) (! (= ($generated@@8 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 T@U) ) (! (= ($generated@@7 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 Real) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))))
(assert (forall (($generated@@17 T@U) ($generated@@18 T@U) ) (! ($generated@@0 ($generated $generated@@17 $generated@@18) $generated@@18)
 :pattern ( ($generated $generated@@17 $generated@@18))
)))
(assert (forall (($generated@@19 T@U) ($generated@@20 T@U) ($generated@@21 T@U) ) (!  (=> ($generated@@0 $generated@@19 $generated@@21) ($generated@@0 ($generated $generated@@19 $generated@@20) $generated@@21))
 :pattern ( ($generated $generated@@19 $generated@@20) ($generated@@0 $generated@@19 $generated@@21))
)))
(assert (forall (($generated@@22 T@U) ($generated@@23 T@U) ($generated@@24 T@U) ) (! (= ($generated@@0 ($generated $generated@@22 $generated@@23) $generated@@24)  (or (= $generated@@24 $generated@@23) ($generated@@0 $generated@@22 $generated@@24)))
 :pattern ( ($generated@@0 ($generated $generated@@22 $generated@@23) $generated@@24))
)))
(assert (forall (($generated@@26 T@U) ($generated@@27 T@U) ($generated@@28 T@U) ) (!  (=> ($generated@@0 $generated@@27 $generated@@28) (not ($generated@@0 ($generated@@25 $generated@@26 $generated@@27) $generated@@28)))
 :pattern ( ($generated@@25 $generated@@26 $generated@@27) ($generated@@0 $generated@@27 $generated@@28))
)))
(assert (forall (($generated@@30 T@U) ) (!  (not ($generated@@0 $generated@@29 $generated@@30))
 :pattern ( ($generated@@0 $generated@@29 $generated@@30))
)))
(assert (= ($generated@@31 $generated@@32) 0))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ) (! (= ($generated@@0 ($generated@@25 $generated@@33 $generated@@34) $generated@@35)  (and ($generated@@0 $generated@@33 $generated@@35) (not ($generated@@0 $generated@@34 $generated@@35))))
 :pattern ( ($generated@@0 ($generated@@25 $generated@@33 $generated@@34) $generated@@35))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@T) ) (! (= ($generated@@36 $generated@@38 $generated@@37) $generated@@37)
 :pattern ( ($generated@@36 $generated@@38 $generated@@37))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@T) ) (! (= ($generated@@40 $generated@@42 ($generated@@39 $generated@@42 $generated@@41)) $generated@@41)
 :pattern ( ($generated@@39 $generated@@42 $generated@@41))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ) (! (= ($generated@@31 ($generated@@43 $generated@@44 $generated@@45)) (+ 1 ($generated@@31 $generated@@44)))
 :pattern ( ($generated@@43 $generated@@44 $generated@@45))
)))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@U) ) (!  (=> ($generated@@46 $generated@@47 $generated@@48) (= $generated@@47 $generated@@48))
 :pattern ( ($generated@@46 $generated@@47 $generated@@48))
)))
(assert (forall (($generated@@49 T@U) ) (! (<= 0 ($generated@@31 $generated@@49))
 :pattern ( ($generated@@31 $generated@@49))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@T) ) (! (= ($generated@@39 $generated@@51 ($generated@@40 $generated@@51 $generated@@50)) $generated@@50)
 :pattern ( ($generated@@40 $generated@@51 $generated@@50))
)))
(assert (forall (($generated@@54 Int) ) (!  (=> (or (and (<= 0 $generated@@54) (< $generated@@54 55296)) (and (<= 57344 $generated@@54) (< $generated@@54 1114112))) (= ($generated@@53 ($generated@@52 $generated@@54)) $generated@@54))
 :pattern ( ($generated@@52 $generated@@54))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@66 T@T) ($generated@@67 T@T) ($generated@@68 T@T) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@55 $generated@@66 $generated@@67 $generated@@68 ($generated@@62 $generated@@66 $generated@@67 $generated@@68 $generated@@70 $generated@@71 $generated@@72 $generated@@69) $generated@@71 $generated@@72) $generated@@69)
 :weight 0
)) (and (forall (($generated@@73 T@T) ($generated@@74 T@T) ($generated@@75 T@T) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ) (!  (or (= $generated@@78 $generated@@80) (= ($generated@@55 $generated@@73 $generated@@74 $generated@@75 ($generated@@62 $generated@@73 $generated@@74 $generated@@75 $generated@@77 $generated@@78 $generated@@79 $generated@@76) $generated@@80 $generated@@81) ($generated@@55 $generated@@73 $generated@@74 $generated@@75 $generated@@77 $generated@@80 $generated@@81)))
 :weight 0
)) (forall (($generated@@82 T@T) ($generated@@83 T@T) ($generated@@84 T@T) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (!  (or (= $generated@@88 $generated@@90) (= ($generated@@55 $generated@@82 $generated@@83 $generated@@84 ($generated@@62 $generated@@82 $generated@@83 $generated@@84 $generated@@86 $generated@@87 $generated@@88 $generated@@85) $generated@@89 $generated@@90) ($generated@@55 $generated@@82 $generated@@83 $generated@@84 $generated@@86 $generated@@89 $generated@@90)))
 :weight 0
)))) (= ($generated@@1 $generated@@56) 3)) (= ($generated@@1 $generated@@57) 4)) (forall (($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@59 $generated@@91 $generated@@92 ($generated@@63 $generated@@91 $generated@@92 $generated@@94 $generated@@95 $generated@@93) $generated@@95) $generated@@93)
 :weight 0
))) (forall (($generated@@96 T@T) ($generated@@97 T@T) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ) (!  (or (= $generated@@100 $generated@@101) (= ($generated@@59 $generated@@96 $generated@@97 ($generated@@63 $generated@@96 $generated@@97 $generated@@99 $generated@@100 $generated@@98) $generated@@101) ($generated@@59 $generated@@96 $generated@@97 $generated@@99 $generated@@101)))
 :weight 0
))) (= ($generated@@1 $generated@@60) 5)) (forall (($generated@@102 T@T) ($generated@@103 T@T) ) (= ($generated@@1 ($generated@@61 $generated@@102 $generated@@103)) 6))) (forall (($generated@@104 T@T) ($generated@@105 T@T) ) (! (= ($generated@@64 ($generated@@61 $generated@@104 $generated@@105)) $generated@@104)
 :pattern ( ($generated@@61 $generated@@104 $generated@@105))
))) (forall (($generated@@106 T@T) ($generated@@107 T@T) ) (! (= ($generated@@65 ($generated@@61 $generated@@106 $generated@@107)) $generated@@107)
 :pattern ( ($generated@@61 $generated@@106 $generated@@107))
))))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 Bool) ($generated@@112 T@U) ($generated@@113 T@U) ) (! (= ($generated@@6 ($generated@@55 $generated@@56 $generated@@57 $generated@@2 ($generated@@58 $generated@@108 $generated@@109 $generated@@110 $generated@@111) $generated@@112 $generated@@113))  (=> (and (or (not (= $generated@@112 $generated@@108)) (not true)) ($generated@@6 ($generated@@39 $generated@@2 ($generated@@59 $generated@@57 $generated@@60 ($generated@@59 $generated@@56 ($generated@@61 $generated@@57 $generated@@60) $generated@@109 $generated@@112) $generated@@110)))) $generated@@111))
 :pattern ( ($generated@@55 $generated@@56 $generated@@57 $generated@@2 ($generated@@58 $generated@@108 $generated@@109 $generated@@110 $generated@@111) $generated@@112 $generated@@113))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (!  (and (= ($generated@@114 ($generated@@43 $generated@@116 $generated@@117)) $generated@@116) (= ($generated@@115 ($generated@@43 $generated@@116 $generated@@117)) $generated@@117))
 :pattern ( ($generated@@43 $generated@@116 $generated@@117))
)))
(assert (forall (($generated@@118 T@U) ) (!  (and (= ($generated@@52 ($generated@@53 $generated@@118)) $generated@@118) (or (and (<= 0 ($generated@@53 $generated@@118)) (< ($generated@@53 $generated@@118) 55296)) (and (<= 57344 ($generated@@53 $generated@@118)) (< ($generated@@53 $generated@@118) 1114112))))
 :pattern ( ($generated@@53 $generated@@118))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@46 $generated@@119 $generated@@120) (forall (($generated@@121 T@U) ) (! (= ($generated@@0 $generated@@119 $generated@@121) ($generated@@0 $generated@@120 $generated@@121))
 :pattern ( ($generated@@0 $generated@@119 $generated@@121))
 :pattern ( ($generated@@0 $generated@@120 $generated@@121))
)))
 :pattern ( ($generated@@46 $generated@@119 $generated@@120))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@T) ) (! (= ($generated@@40 $generated@@123 ($generated@@36 $generated@@123 $generated@@122)) ($generated@@36 $generated@@60 ($generated@@40 $generated@@123 $generated@@122)))
 :pattern ( ($generated@@40 $generated@@123 ($generated@@36 $generated@@123 $generated@@122)))
)))
(assert (forall (($generated@@124 T@U) ) (!  (=> (= ($generated@@31 $generated@@124) 0) (= $generated@@124 $generated@@32))
 :pattern ( ($generated@@31 $generated@@124))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@125 () T@U)
(declare-fun $generated@@126 () T@U)
(declare-fun $generated@@127 () T@U)
(declare-fun $generated@@128 () T@U)
(declare-fun $generated@@129 () T@T)
(declare-fun $generated@@130 () T@T)
(declare-fun $generated@@131 (T@U) Bool)
(declare-fun $generated@@132 (T@U) Bool)
(declare-fun $generated@@133 () Int)
(assert  (and (= ($generated@@1 $generated@@129) 7) (= ($generated@@1 $generated@@130) 8)))
(set-option :timeout 10000)
(set-option :rlimit 0)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :model_evaluator.completion true)
(set-option :model.completion true)
(set-option :model.compact false)
(set-option :smt.case_split 3)
(set-option :smt.mbqi false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-option :smt.arith.solver 2)
(assert (not
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@134  (=> (and (= $generated@@125 ($generated@@58 $generated@@126 $generated@@127 $generated@@128 false)) (= (ControlFlow 0 2) (- 0 1))) ($generated@@46 ($generated@@25 ($generated ($generated ($generated $generated@@29 ($generated@@40 $generated@@129 ($generated@@36 $generated@@129 ($generated@@43 $generated@@32 ($generated@@40 $generated@@130 ($generated@@52 120)))))) ($generated@@40 $generated@@129 ($generated@@36 $generated@@129 ($generated@@43 $generated@@32 ($generated@@40 $generated@@130 ($generated@@52 121)))))) ($generated@@40 $generated@@129 ($generated@@36 $generated@@129 ($generated@@43 $generated@@32 ($generated@@40 $generated@@130 ($generated@@52 122)))))) ($generated $generated@@29 ($generated@@40 $generated@@129 ($generated@@36 $generated@@129 ($generated@@43 $generated@@32 ($generated@@40 $generated@@130 ($generated@@52 121))))))) ($generated ($generated $generated@@29 ($generated@@40 $generated@@129 ($generated@@36 $generated@@129 ($generated@@43 $generated@@32 ($generated@@40 $generated@@130 ($generated@@52 120)))))) ($generated@@40 $generated@@129 ($generated@@36 $generated@@129 ($generated@@43 $generated@@32 ($generated@@40 $generated@@130 ($generated@@52 122))))))))))
(let (($generated@@135  (=> (and (and ($generated@@131 $generated@@127) ($generated@@132 $generated@@127)) (and (= 0 $generated@@133) (= (ControlFlow 0 3) 2))) $generated@@134)))
$generated@@135)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)