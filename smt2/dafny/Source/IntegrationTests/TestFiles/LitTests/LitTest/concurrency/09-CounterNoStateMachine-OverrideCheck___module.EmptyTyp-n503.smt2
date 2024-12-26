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
(declare-fun $generated () T@U)
(declare-fun $generated@@0 () T@U)
(declare-fun $generated@@1 () T@U)
(declare-fun $generated@@2 () T@U)
(declare-fun $generated@@3 () T@U)
(declare-fun $generated@@4 () T@U)
(declare-fun $generated@@5 () T@U)
(declare-fun $generated@@6 () T@U)
(declare-fun $generated@@7 () T@U)
(declare-fun $generated@@8 () T@U)
(declare-fun $generated@@9 (T@T) Int)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 (Bool) T@U)
(declare-fun $generated@@14 (T@U) Bool)
(declare-fun $generated@@15 (Int) T@U)
(declare-fun $generated@@16 (T@U) Int)
(declare-fun $generated@@17 (Real) T@U)
(declare-fun $generated@@18 (T@U) Real)
(declare-fun $generated@@25 (T@U) Bool)
(declare-fun $generated@@26 () T@U)
(declare-fun $generated@@27 (T@U T@U) Bool)
(declare-fun $generated@@28 () T@U)
(declare-fun $generated@@30 (T@T T@U T@U) Bool)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@35 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@36 () T@U)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@40 () T@U)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@47 (T@T T@U) T@U)
(declare-fun $generated@@48 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@49 () T@T)
(declare-fun $generated@@50 () T@T)
(declare-fun $generated@@51 (T@T T@T) T@T)
(declare-fun $generated@@52 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@53 (T@T) T@T)
(declare-fun $generated@@54 (T@T) T@T)
(declare-fun $generated@@78 (T@T T@U) T@U)
(declare-fun $generated@@81 (T@U T@U) Bool)
(declare-fun $generated@@85 (T@T T@U) T@U)
(declare-fun $generated@@88 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@89 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@90 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@134 (T@U) T@U)
(declare-fun $generated@@135 (T@U) T@U)
(declare-fun $generated@@136 (T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@9 $generated@@10) 0) (= ($generated@@9 $generated@@11) 1)) (= ($generated@@9 $generated@@12) 2)) (forall (($generated@@19 Bool) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 Int) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 Real) ) (! (= ($generated@@18 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 T@U) ) (! (= ($generated@@17 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8)
)
(assert ($generated@@25 $generated@@26))
(assert (forall (($generated@@29 T@U) ) (!  (not ($generated@@27 $generated@@28 $generated@@29))
 :pattern ( ($generated@@27 $generated@@28 $generated@@29))
)))
(assert (= ($generated@@9 $generated@@31) 3))
(assert (forall (($generated@@34 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@34 $generated@@26)  (or (= $generated@@34 $generated@@32) (= ($generated@@33 $generated@@34) $generated@@26)))
 :pattern ( ($generated@@30 $generated@@31 $generated@@34 $generated@@26))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ) (! (= ($generated@@35 $generated@@31 $generated@@38 $generated@@36 $generated@@39) ($generated@@35 $generated@@31 $generated@@38 $generated@@37 $generated@@39))
 :pattern ( ($generated@@35 $generated@@31 $generated@@38 $generated@@36 $generated@@39))
 :pattern ( ($generated@@35 $generated@@31 $generated@@38 $generated@@37 $generated@@39))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@U) ) (! (= ($generated@@35 $generated@@31 $generated@@42 $generated@@40 $generated@@43) ($generated@@35 $generated@@31 $generated@@42 $generated@@41 $generated@@43))
 :pattern ( ($generated@@35 $generated@@31 $generated@@42 $generated@@40 $generated@@43))
 :pattern ( ($generated@@35 $generated@@31 $generated@@42 $generated@@41 $generated@@43))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ) (! (= ($generated@@35 $generated@@31 $generated@@45 $generated@@44 $generated@@46) ($generated@@35 $generated@@31 $generated@@45 $generated@@26 $generated@@46))
 :pattern ( ($generated@@35 $generated@@31 $generated@@45 $generated@@44 $generated@@46))
 :pattern ( ($generated@@35 $generated@@31 $generated@@45 $generated@@26 $generated@@46))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@55 T@T) ($generated@@56 T@T) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@48 $generated@@55 $generated@@56 ($generated@@52 $generated@@55 $generated@@56 $generated@@58 $generated@@59 $generated@@57) $generated@@59) $generated@@57)
 :weight 0
)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (!  (or (= $generated@@64 $generated@@65) (= ($generated@@48 $generated@@60 $generated@@61 ($generated@@52 $generated@@60 $generated@@61 $generated@@63 $generated@@64 $generated@@62) $generated@@65) ($generated@@48 $generated@@60 $generated@@61 $generated@@63 $generated@@65)))
 :weight 0
))) (= ($generated@@9 $generated@@49) 4)) (= ($generated@@9 $generated@@50) 5)) (forall (($generated@@66 T@T) ($generated@@67 T@T) ) (= ($generated@@9 ($generated@@51 $generated@@66 $generated@@67)) 6))) (forall (($generated@@68 T@T) ($generated@@69 T@T) ) (! (= ($generated@@53 ($generated@@51 $generated@@68 $generated@@69)) $generated@@68)
 :pattern ( ($generated@@51 $generated@@68 $generated@@69))
))) (forall (($generated@@70 T@T) ($generated@@71 T@T) ) (! (= ($generated@@54 ($generated@@51 $generated@@70 $generated@@71)) $generated@@71)
 :pattern ( ($generated@@51 $generated@@70 $generated@@71))
))))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@35 $generated@@31 $generated@@72 $generated@@37 $generated@@73)  (or (= $generated@@72 $generated@@32) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@31 ($generated@@51 $generated@@49 $generated@@50) $generated@@73 $generated@@72) $generated)))))
 :pattern ( ($generated@@35 $generated@@31 $generated@@72 $generated@@37 $generated@@73))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ) (! (= ($generated@@35 $generated@@31 $generated@@74 $generated@@41 $generated@@75)  (or (= $generated@@74 $generated@@32) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@31 ($generated@@51 $generated@@49 $generated@@50) $generated@@75 $generated@@74) $generated)))))
 :pattern ( ($generated@@35 $generated@@31 $generated@@74 $generated@@41 $generated@@75))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@35 $generated@@31 $generated@@76 $generated@@26 $generated@@77)  (or (= $generated@@76 $generated@@32) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@31 ($generated@@51 $generated@@49 $generated@@50) $generated@@77 $generated@@76) $generated)))))
 :pattern ( ($generated@@35 $generated@@31 $generated@@76 $generated@@26 $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@T) ) (! (= ($generated@@78 $generated@@80 $generated@@79) $generated@@79)
 :pattern ( ($generated@@78 $generated@@80 $generated@@79))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@81 $generated@@82 $generated@@83) (forall (($generated@@84 T@U) ) (!  (=> ($generated@@27 $generated@@82 $generated@@84) ($generated@@27 $generated@@83 $generated@@84))
 :pattern ( ($generated@@27 $generated@@82 $generated@@84))
 :pattern ( ($generated@@27 $generated@@83 $generated@@84))
)))
 :pattern ( ($generated@@81 $generated@@82 $generated@@83))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@85 $generated@@87 ($generated@@47 $generated@@87 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@47 $generated@@87 $generated@@86))
)))
(assert  (and (forall (($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@T) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (! (= ($generated@@88 $generated@@91 $generated@@92 $generated@@93 ($generated@@90 $generated@@91 $generated@@92 $generated@@93 $generated@@95 $generated@@96 $generated@@97 $generated@@94) $generated@@96 $generated@@97) $generated@@94)
 :weight 0
)) (and (forall (($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@T) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (!  (or (= $generated@@103 $generated@@105) (= ($generated@@88 $generated@@98 $generated@@99 $generated@@100 ($generated@@90 $generated@@98 $generated@@99 $generated@@100 $generated@@102 $generated@@103 $generated@@104 $generated@@101) $generated@@105 $generated@@106) ($generated@@88 $generated@@98 $generated@@99 $generated@@100 $generated@@102 $generated@@105 $generated@@106)))
 :weight 0
)) (forall (($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (!  (or (= $generated@@113 $generated@@115) (= ($generated@@88 $generated@@107 $generated@@108 $generated@@109 ($generated@@90 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@112 $generated@@113 $generated@@110) $generated@@114 $generated@@115) ($generated@@88 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@114 $generated@@115)))
 :weight 0
)))))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (! (= ($generated@@14 ($generated@@88 $generated@@31 $generated@@49 $generated@@10 ($generated@@89 $generated@@116 $generated@@117 $generated@@118 $generated@@119 $generated@@120) $generated@@121 $generated@@122))  (=> (and (or (not (= $generated@@121 $generated@@116)) (not true)) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@31 ($generated@@51 $generated@@49 $generated@@50) $generated@@117 $generated@@121) $generated@@118)))) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@31 ($generated@@51 $generated@@49 $generated@@50) $generated@@119 $generated@@121) $generated@@120)))))
 :pattern ( ($generated@@88 $generated@@31 $generated@@49 $generated@@10 ($generated@@89 $generated@@116 $generated@@117 $generated@@118 $generated@@119 $generated@@120) $generated@@121 $generated@@122))
)))
(assert (forall (($generated@@123 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@123 $generated@@36)  (and ($generated@@30 $generated@@31 $generated@@123 $generated@@37) (or (not (= $generated@@123 $generated@@32)) (not true))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@123 $generated@@36))
 :pattern ( ($generated@@30 $generated@@31 $generated@@123 $generated@@37))
)))
(assert (forall (($generated@@124 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@124 $generated@@40)  (and ($generated@@30 $generated@@31 $generated@@124 $generated@@41) (or (not (= $generated@@124 $generated@@32)) (not true))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@124 $generated@@40))
 :pattern ( ($generated@@30 $generated@@31 $generated@@124 $generated@@41))
)))
(assert (forall (($generated@@125 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@125 $generated@@44)  (and ($generated@@30 $generated@@31 $generated@@125 $generated@@26) (or (not (= $generated@@125 $generated@@32)) (not true))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@125 $generated@@44))
 :pattern ( ($generated@@30 $generated@@31 $generated@@125 $generated@@26))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (!  (=> ($generated@@35 $generated@@31 $generated@@126 $generated@@41 $generated@@127) ($generated@@35 $generated@@31 $generated@@126 $generated@@37 $generated@@127))
 :pattern ( ($generated@@35 $generated@@31 $generated@@126 $generated@@41 $generated@@127))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (!  (=> ($generated@@35 $generated@@31 $generated@@128 $generated@@26 $generated@@129) ($generated@@35 $generated@@31 $generated@@128 $generated@@41 $generated@@129))
 :pattern ( ($generated@@35 $generated@@31 $generated@@128 $generated@@26 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@T) ) (! (= ($generated@@47 $generated@@131 ($generated@@85 $generated@@131 $generated@@130)) $generated@@130)
 :pattern ( ($generated@@85 $generated@@131 $generated@@130))
)))
(assert (forall (($generated@@132 T@U) ) (!  (=> ($generated@@30 $generated@@31 $generated@@132 $generated@@41) ($generated@@30 $generated@@31 $generated@@132 $generated@@37))
 :pattern ( ($generated@@30 $generated@@31 $generated@@132 $generated@@41))
)))
(assert (forall (($generated@@133 T@U) ) (!  (=> ($generated@@30 $generated@@31 $generated@@133 $generated@@26) ($generated@@30 $generated@@31 $generated@@133 $generated@@41))
 :pattern ( ($generated@@30 $generated@@31 $generated@@133 $generated@@26))
)))
(assert (= ($generated@@134 $generated@@36) $generated@@0))
(assert (= ($generated@@135 $generated@@36) $generated@@6))
(assert (= ($generated@@134 $generated@@40) $generated@@1))
(assert (= ($generated@@135 $generated@@40) $generated@@7))
(assert (= ($generated@@134 $generated@@37) $generated@@2))
(assert (= ($generated@@135 $generated@@37) $generated@@6))
(assert (= ($generated@@134 $generated@@41) $generated@@3))
(assert (= ($generated@@135 $generated@@41) $generated@@7))
(assert (= ($generated@@134 $generated@@26) $generated@@4))
(assert (= ($generated@@135 $generated@@26) $generated@@8))
(assert (= ($generated@@134 $generated@@44) $generated@@5))
(assert (= ($generated@@135 $generated@@44) $generated@@8))
(assert (forall (($generated@@137 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@137 $generated@@37)  (or (= $generated@@137 $generated@@32) ($generated@@136 ($generated@@33 $generated@@137))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@137 $generated@@37))
)))
(assert (forall (($generated@@138 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@138 $generated@@41)  (or (= $generated@@138 $generated@@32) ($generated@@25 ($generated@@33 $generated@@138))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@138 $generated@@41))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@T) ) (! (= ($generated@@85 $generated@@140 ($generated@@78 $generated@@140 $generated@@139)) ($generated@@78 $generated@@50 ($generated@@85 $generated@@140 $generated@@139)))
 :pattern ( ($generated@@85 $generated@@140 ($generated@@78 $generated@@140 $generated@@139)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@141 () T@T)
(declare-fun $generated@@142 () T@U)
(declare-fun $generated@@143 () T@U)
(declare-fun $generated@@144 (T@U) Bool)
(declare-fun $generated@@145 (T@U) Bool)
(declare-fun $generated@@146 () T@U)
(declare-fun $generated@@147 () Int)
(assert (= ($generated@@9 $generated@@141) 7))
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@148  (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@81 ($generated@@78 $generated@@141 $generated@@28) ($generated@@78 $generated@@141 $generated@@28))) (=> ($generated@@81 ($generated@@78 $generated@@141 $generated@@28) ($generated@@78 $generated@@141 $generated@@28)) (=> (and (= $generated@@142 ($generated@@89 $generated@@32 $generated@@143 $generated $generated@@143 $generated)) (= (ControlFlow 0 2) (- 0 1))) (forall (($generated@@149 T@U) ($generated@@150 T@U) )  (=> (and (and (or (not (= $generated@@149 $generated@@32)) (not true)) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@31 ($generated@@51 $generated@@49 $generated@@50) $generated@@143 $generated@@149) $generated)))) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@31 ($generated@@51 $generated@@49 $generated@@50) $generated@@143 $generated@@149) $generated)))) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@31 ($generated@@51 $generated@@49 $generated@@50) $generated@@143 $generated@@149) $generated))))))))))
(let (($generated@@151  (=> (and ($generated@@144 $generated@@143) ($generated@@145 $generated@@143)) (=> (and (and (or (not (= $generated@@146 $generated@@32)) (not true)) (and ($generated@@30 $generated@@31 $generated@@146 $generated@@44) ($generated@@35 $generated@@31 $generated@@146 $generated@@44 $generated@@143))) (and (= 0 $generated@@147) (= (ControlFlow 0 4) 2))) $generated@@148))))
$generated@@151)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)