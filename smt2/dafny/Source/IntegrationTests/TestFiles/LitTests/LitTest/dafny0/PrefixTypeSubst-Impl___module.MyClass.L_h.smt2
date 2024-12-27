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
(declare-fun $generated@@3 (T@T) Int)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 (Bool) T@U)
(declare-fun $generated@@8 (T@U) Bool)
(declare-fun $generated@@9 (Int) T@U)
(declare-fun $generated@@10 (T@U) Int)
(declare-fun $generated@@11 (Real) T@U)
(declare-fun $generated@@12 (T@U) Real)
(declare-fun $generated@@19 () Int)
(declare-fun $generated@@20 (T@U T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@21 (T@U) T@U)
(declare-fun $generated@@22 (T@T T@U) T@U)
(declare-fun $generated@@23 () T@T)
(declare-fun $generated@@24 (T@U T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@25 () T@U)
(declare-fun $generated@@26 (T@T T@U T@U) Bool)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 (T@U T@U) T@U)
(declare-fun $generated@@29 (T@U T@U) Bool)
(declare-fun $generated@@30 (T@U) Int)
(declare-fun $generated@@31 (T@U T@U) T@U)
(declare-fun $generated@@32 (Int) T@U)
(declare-fun $generated@@33 (Int) Int)
(declare-fun $generated@@34 (T@U T@U) Bool)
(declare-fun $generated@@84 (T@T T@U) T@U)
(declare-fun $generated@@85 (T@T T@U) T@U)
(declare-fun $generated@@88 (T@U T@U) T@U)
(declare-fun $generated@@92 (T@U T@U T@U) Bool)
(declare-fun $generated@@93 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@98 (T@U) T@U)
(declare-fun $generated@@102 (T@U) Bool)
(declare-fun $generated@@110 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@111 () T@T)
(declare-fun $generated@@112 (T@T T@T) T@T)
(declare-fun $generated@@113 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@114 (T@T) T@T)
(declare-fun $generated@@115 (T@T) T@T)
(declare-fun $generated@@154 (T@U) T@U)
(declare-fun $generated@@157 (T@U) T@U)
(declare-fun $generated@@160 (T@U) T@U)
(declare-fun $generated@@163 (T@U) T@U)
(declare-fun $generated@@176 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@177 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@178 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@210 (T@U) T@U)
(declare-fun $generated@@211 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@3 $generated@@4) 0) (= ($generated@@3 $generated@@5) 1)) (= ($generated@@3 $generated@@6) 2)) (forall (($generated@@13 Bool) ) (! (= ($generated@@8 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 T@U) ) (! (= ($generated@@7 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 Int) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Real) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2)
)
(assert  (and (= ($generated@@3 $generated@@23) 3) (= ($generated@@3 $generated@@27) 4)))
(assert  (=> (<= 1 $generated@@19) (forall (($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ) (!  (=> (or ($generated@@24 $generated@@35 $generated@@36 $generated@@37 $generated@@38 $generated@@40 ($generated@@22 $generated@@23 $generated@@41) $generated@@42 $generated@@43) (and (< 1 $generated@@19) (and (and (and (or (not (= $generated@@40 $generated@@25)) (not true)) ($generated@@26 $generated@@27 $generated@@40 ($generated@@28 $generated@@35 $generated@@36))) ($generated@@29 $generated@@42 $generated@@37)) ($generated@@29 $generated@@43 $generated@@38)))) (and (and (=> (< 0 ($generated@@30 $generated@@41)) ($generated@@24 $generated@@35 $generated@@36 $generated@@37 $generated@@38 $generated@@40 ($generated@@31 $generated@@41 ($generated@@32 1)) $generated@@42 $generated@@43)) (=> (=> (< 0 ($generated@@30 $generated@@41)) ($generated@@20 $generated@@35 $generated@@36 $generated@@37 $generated@@38 ($generated@@21 $generated@@39) $generated@@40 ($generated@@31 $generated@@41 ($generated@@32 1)) $generated@@42 $generated@@43)) (=> (= ($generated@@33 0) ($generated@@30 $generated@@41)) (forall (($generated@@44 T@U) ) (!  (=> ($generated@@34 $generated@@44 $generated@@41) ($generated@@24 $generated@@35 $generated@@36 $generated@@37 $generated@@38 $generated@@40 $generated@@44 $generated@@42 $generated@@43))
 :pattern ( ($generated@@20 $generated@@35 $generated@@36 $generated@@37 $generated@@38 ($generated@@21 $generated@@39) $generated@@40 $generated@@44 $generated@@42 $generated@@43))
))))) (= ($generated@@20 $generated@@35 $generated@@36 $generated@@37 $generated@@38 ($generated@@21 $generated@@39) $generated@@40 ($generated@@22 $generated@@23 $generated@@41) $generated@@42 $generated@@43)  (and (=> (< 0 ($generated@@30 $generated@@41)) ($generated@@20 $generated@@35 $generated@@36 $generated@@37 $generated@@38 ($generated@@21 $generated@@39) $generated@@40 ($generated@@31 $generated@@41 ($generated@@32 1)) $generated@@42 $generated@@43)) (=> (= ($generated@@33 0) ($generated@@30 $generated@@41)) (forall (($generated@@45 T@U) ) (!  (=> ($generated@@34 $generated@@45 $generated@@41) ($generated@@20 $generated@@35 $generated@@36 $generated@@37 $generated@@38 ($generated@@21 $generated@@39) $generated@@40 $generated@@45 $generated@@42 $generated@@43))
 :pattern ( ($generated@@20 $generated@@35 $generated@@36 $generated@@37 $generated@@38 ($generated@@21 $generated@@39) $generated@@40 $generated@@45 $generated@@42 $generated@@43))
)))))))
 :weight 3
 :pattern ( ($generated@@20 $generated@@35 $generated@@36 $generated@@37 $generated@@38 ($generated@@21 $generated@@39) $generated@@40 ($generated@@22 $generated@@23 $generated@@41) $generated@@42 $generated@@43))
))))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (!  (=> (and ($generated@@34 $generated@@46 $generated@@47) ($generated@@34 $generated@@47 $generated@@48)) ($generated@@34 $generated@@46 $generated@@48))
 :pattern ( ($generated@@34 $generated@@46 $generated@@47) ($generated@@34 $generated@@47 $generated@@48))
 :pattern ( ($generated@@34 $generated@@46 $generated@@47) ($generated@@34 $generated@@46 $generated@@48))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 Int) ($generated@@51 Int) ) (!  (=> (and (and (<= 0 $generated@@50) (<= 0 $generated@@51)) (<= (+ $generated@@50 $generated@@51) ($generated@@30 $generated@@49))) (= ($generated@@31 ($generated@@31 $generated@@49 ($generated@@32 $generated@@50)) ($generated@@32 $generated@@51)) ($generated@@31 $generated@@49 ($generated@@32 (+ $generated@@50 $generated@@51)))))
 :pattern ( ($generated@@31 ($generated@@31 $generated@@49 ($generated@@32 $generated@@50)) ($generated@@32 $generated@@51)))
)))
(assert  (=> (<= 1 $generated@@19) (forall (($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ) (!  (=> (and (and (and (and (or (not (= $generated@@57 $generated@@25)) (not true)) ($generated@@26 $generated@@27 $generated@@57 ($generated@@28 $generated@@52 $generated@@53))) ($generated@@29 $generated@@58 $generated@@54)) ($generated@@29 $generated@@59 $generated@@55)) (= $generated@@60 ($generated@@32 0))) ($generated@@20 $generated@@52 $generated@@53 $generated@@54 $generated@@55 $generated@@56 $generated@@57 $generated@@60 $generated@@58 $generated@@59))
 :pattern ( ($generated@@20 $generated@@52 $generated@@53 $generated@@54 $generated@@55 $generated@@56 $generated@@57 $generated@@60 $generated@@58 $generated@@59))
))))
(assert  (=> (<= 1 $generated@@19) (forall (($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (!  (=> (or ($generated@@24 $generated@@61 $generated@@62 $generated@@63 $generated@@64 ($generated@@22 $generated@@27 $generated@@66) ($generated@@22 $generated@@23 $generated@@67) ($generated@@22 $generated@@23 $generated@@68) ($generated@@22 $generated@@23 $generated@@69)) (and (< 1 $generated@@19) (and (and (and (or (not (= $generated@@66 $generated@@25)) (not true)) ($generated@@26 $generated@@27 $generated@@66 ($generated@@28 $generated@@61 $generated@@62))) ($generated@@29 $generated@@68 $generated@@63)) ($generated@@29 $generated@@69 $generated@@64)))) (and (and (=> (< 0 ($generated@@30 $generated@@67)) ($generated@@24 $generated@@61 $generated@@62 $generated@@63 $generated@@64 ($generated@@22 $generated@@27 $generated@@66) ($generated@@31 $generated@@67 ($generated@@32 1)) ($generated@@22 $generated@@23 $generated@@68) ($generated@@22 $generated@@23 $generated@@69))) (=> (=> (< 0 ($generated@@30 $generated@@67)) ($generated@@20 $generated@@61 $generated@@62 $generated@@63 $generated@@64 ($generated@@21 $generated@@65) ($generated@@22 $generated@@27 $generated@@66) ($generated@@31 $generated@@67 ($generated@@32 1)) ($generated@@22 $generated@@23 $generated@@68) ($generated@@22 $generated@@23 $generated@@69))) (=> (= ($generated@@33 0) ($generated@@30 $generated@@67)) (forall (($generated@@70 T@U) ) (!  (=> ($generated@@34 $generated@@70 $generated@@67) ($generated@@24 $generated@@61 $generated@@62 $generated@@63 $generated@@64 $generated@@66 $generated@@70 $generated@@68 $generated@@69))
 :pattern ( ($generated@@20 $generated@@61 $generated@@62 $generated@@63 $generated@@64 ($generated@@21 $generated@@65) $generated@@66 $generated@@70 $generated@@68 $generated@@69))
))))) (= ($generated@@20 $generated@@61 $generated@@62 $generated@@63 $generated@@64 ($generated@@21 $generated@@65) ($generated@@22 $generated@@27 $generated@@66) ($generated@@22 $generated@@23 $generated@@67) ($generated@@22 $generated@@23 $generated@@68) ($generated@@22 $generated@@23 $generated@@69))  (and (=> (< 0 ($generated@@30 $generated@@67)) ($generated@@20 $generated@@61 $generated@@62 $generated@@63 $generated@@64 ($generated@@21 $generated@@65) ($generated@@22 $generated@@27 $generated@@66) ($generated@@31 $generated@@67 ($generated@@32 1)) ($generated@@22 $generated@@23 $generated@@68) ($generated@@22 $generated@@23 $generated@@69))) (=> (= ($generated@@33 0) ($generated@@30 $generated@@67)) (forall (($generated@@71 T@U) ) (!  (=> ($generated@@34 $generated@@71 $generated@@67) ($generated@@20 $generated@@61 $generated@@62 $generated@@63 $generated@@64 ($generated@@21 $generated@@65) $generated@@66 $generated@@71 $generated@@68 $generated@@69))
 :pattern ( ($generated@@20 $generated@@61 $generated@@62 $generated@@63 $generated@@64 ($generated@@21 $generated@@65) $generated@@66 $generated@@71 $generated@@68 $generated@@69))
)))))))
 :weight 3
 :pattern ( ($generated@@20 $generated@@61 $generated@@62 $generated@@63 $generated@@64 ($generated@@21 $generated@@65) ($generated@@22 $generated@@27 $generated@@66) ($generated@@22 $generated@@23 $generated@@67) ($generated@@22 $generated@@23 $generated@@68) ($generated@@22 $generated@@23 $generated@@69)))
))))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@20 $generated@@72 $generated@@73 $generated@@74 $generated@@75 ($generated@@21 $generated@@76) $generated@@77 $generated@@78 $generated@@79 $generated@@80) ($generated@@20 $generated@@72 $generated@@73 $generated@@74 $generated@@75 $generated@@76 $generated@@77 $generated@@78 $generated@@79 $generated@@80))
 :pattern ( ($generated@@20 $generated@@72 $generated@@73 $generated@@74 $generated@@75 ($generated@@21 $generated@@76) $generated@@77 $generated@@78 $generated@@79 $generated@@80))
)))
(assert (forall (($generated@@81 Int) ) (! (= ($generated@@33 $generated@@81) $generated@@81)
 :pattern ( ($generated@@33 $generated@@81))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@T) ) (! (= ($generated@@22 $generated@@83 $generated@@82) $generated@@82)
 :pattern ( ($generated@@22 $generated@@83 $generated@@82))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@85 $generated@@87 ($generated@@84 $generated@@87 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@84 $generated@@87 $generated@@86))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@26 $generated@@27 $generated@@91 ($generated@@28 $generated@@89 $generated@@90))  (and ($generated@@26 $generated@@27 $generated@@91 ($generated@@88 $generated@@89 $generated@@90)) (or (not (= $generated@@91 $generated@@25)) (not true))))
 :pattern ( ($generated@@26 $generated@@27 $generated@@91 ($generated@@28 $generated@@89 $generated@@90)))
 :pattern ( ($generated@@26 $generated@@27 $generated@@91 ($generated@@88 $generated@@89 $generated@@90)))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@T) ) (! (= ($generated@@92 ($generated@@85 $generated@@97 $generated@@94) $generated@@95 $generated@@96) ($generated@@93 $generated@@97 $generated@@94 $generated@@95 $generated@@96))
 :pattern ( ($generated@@92 ($generated@@85 $generated@@97 $generated@@94) $generated@@95 $generated@@96))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@26 $generated@@27 $generated@@101 ($generated@@88 $generated@@99 $generated@@100))  (or (= $generated@@101 $generated@@25) (= ($generated@@98 $generated@@101) ($generated@@88 $generated@@99 $generated@@100))))
 :pattern ( ($generated@@26 $generated@@27 $generated@@101 ($generated@@88 $generated@@99 $generated@@100)))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (!  (=> (and ($generated@@102 $generated@@104) (<= ($generated@@30 $generated@@104) ($generated@@30 $generated@@103))) (and (= ($generated@@102 ($generated@@31 $generated@@103 $generated@@104)) ($generated@@102 $generated@@103)) (= ($generated@@30 ($generated@@31 $generated@@103 $generated@@104)) (- ($generated@@30 $generated@@103) ($generated@@30 $generated@@104)))))
 :pattern ( ($generated@@31 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@105 Int) ) (!  (=> (<= 0 $generated@@105) (and ($generated@@102 ($generated@@32 $generated@@105)) (= ($generated@@30 ($generated@@32 $generated@@105)) $generated@@105)))
 :pattern ( ($generated@@32 $generated@@105))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@93 $generated@@27 $generated@@108 ($generated@@28 $generated@@106 $generated@@107) $generated@@109) ($generated@@93 $generated@@27 $generated@@108 ($generated@@88 $generated@@106 $generated@@107) $generated@@109))
 :pattern ( ($generated@@93 $generated@@27 $generated@@108 ($generated@@28 $generated@@106 $generated@@107) $generated@@109))
 :pattern ( ($generated@@93 $generated@@27 $generated@@108 ($generated@@88 $generated@@106 $generated@@107) $generated@@109))
)))
(assert  (and (and (and (and (and (forall (($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@110 $generated@@116 $generated@@117 ($generated@@113 $generated@@116 $generated@@117 $generated@@119 $generated@@120 $generated@@118) $generated@@120) $generated@@118)
 :weight 0
)) (forall (($generated@@121 T@T) ($generated@@122 T@T) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (!  (or (= $generated@@125 $generated@@126) (= ($generated@@110 $generated@@121 $generated@@122 ($generated@@113 $generated@@121 $generated@@122 $generated@@124 $generated@@125 $generated@@123) $generated@@126) ($generated@@110 $generated@@121 $generated@@122 $generated@@124 $generated@@126)))
 :weight 0
))) (= ($generated@@3 $generated@@111) 5)) (forall (($generated@@127 T@T) ($generated@@128 T@T) ) (= ($generated@@3 ($generated@@112 $generated@@127 $generated@@128)) 6))) (forall (($generated@@129 T@T) ($generated@@130 T@T) ) (! (= ($generated@@114 ($generated@@112 $generated@@129 $generated@@130)) $generated@@129)
 :pattern ( ($generated@@112 $generated@@129 $generated@@130))
))) (forall (($generated@@131 T@T) ($generated@@132 T@T) ) (! (= ($generated@@115 ($generated@@112 $generated@@131 $generated@@132)) $generated@@132)
 :pattern ( ($generated@@112 $generated@@131 $generated@@132))
))))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@93 $generated@@27 $generated@@135 ($generated@@88 $generated@@133 $generated@@134) $generated@@136)  (or (= $generated@@135 $generated@@25) ($generated@@8 ($generated@@84 $generated@@4 ($generated@@110 $generated@@111 $generated@@23 ($generated@@110 $generated@@27 ($generated@@112 $generated@@111 $generated@@23) $generated@@136 $generated@@135) $generated)))))
 :pattern ( ($generated@@93 $generated@@27 $generated@@135 ($generated@@88 $generated@@133 $generated@@134) $generated@@136))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ) (!  (or (or ($generated@@34 $generated@@137 $generated@@138) (= $generated@@137 $generated@@138)) ($generated@@34 $generated@@138 $generated@@137))
 :pattern ( ($generated@@34 $generated@@137 $generated@@138) ($generated@@34 $generated@@138 $generated@@137))
)))
(assert  (=> (<= 1 $generated@@19) (forall (($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (!  (=> (or ($generated@@24 $generated@@139 $generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@145 $generated@@146 $generated@@147) (and (< 1 $generated@@19) (and (and (and (or (not (= $generated@@144 $generated@@25)) (not true)) ($generated@@26 $generated@@27 $generated@@144 ($generated@@28 $generated@@139 $generated@@140))) ($generated@@29 $generated@@146 $generated@@141)) ($generated@@29 $generated@@147 $generated@@142)))) (and (and (=> (< 0 ($generated@@30 $generated@@145)) ($generated@@24 $generated@@139 $generated@@140 $generated@@141 $generated@@142 $generated@@144 ($generated@@31 $generated@@145 ($generated@@32 1)) $generated@@146 $generated@@147)) (=> (=> (< 0 ($generated@@30 $generated@@145)) ($generated@@20 $generated@@139 $generated@@140 $generated@@141 $generated@@142 $generated@@143 $generated@@144 ($generated@@31 $generated@@145 ($generated@@32 1)) $generated@@146 $generated@@147)) (=> (= ($generated@@33 0) ($generated@@30 $generated@@145)) (forall (($generated@@148 T@U) ) (!  (=> ($generated@@34 $generated@@148 $generated@@145) ($generated@@24 $generated@@139 $generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@148 $generated@@146 $generated@@147))
 :pattern ( ($generated@@20 $generated@@139 $generated@@140 $generated@@141 $generated@@142 $generated@@143 $generated@@144 $generated@@148 $generated@@146 $generated@@147))
))))) (= ($generated@@20 $generated@@139 $generated@@140 $generated@@141 $generated@@142 ($generated@@21 $generated@@143) $generated@@144 $generated@@145 $generated@@146 $generated@@147)  (and (=> (< 0 ($generated@@30 $generated@@145)) ($generated@@20 $generated@@139 $generated@@140 $generated@@141 $generated@@142 $generated@@143 $generated@@144 ($generated@@31 $generated@@145 ($generated@@32 1)) $generated@@146 $generated@@147)) (=> (= ($generated@@33 0) ($generated@@30 $generated@@145)) (forall (($generated@@149 T@U) ) (!  (=> ($generated@@34 $generated@@149 $generated@@145) ($generated@@20 $generated@@139 $generated@@140 $generated@@141 $generated@@142 $generated@@143 $generated@@144 $generated@@149 $generated@@146 $generated@@147))
 :pattern ( ($generated@@20 $generated@@139 $generated@@140 $generated@@141 $generated@@142 $generated@@143 $generated@@144 $generated@@149 $generated@@146 $generated@@147))
)))))))
 :pattern ( ($generated@@20 $generated@@139 $generated@@140 $generated@@141 $generated@@142 ($generated@@21 $generated@@143) $generated@@144 $generated@@145 $generated@@146 $generated@@147))
))))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@T) ) (! (= ($generated@@29 ($generated@@85 $generated@@152 $generated@@150) $generated@@151) ($generated@@26 $generated@@152 $generated@@150 $generated@@151))
 :pattern ( ($generated@@29 ($generated@@85 $generated@@152 $generated@@150) $generated@@151))
)))
(assert (forall (($generated@@153 T@U) ) (! (<= 0 ($generated@@30 $generated@@153))
 :pattern ( ($generated@@30 $generated@@153))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@154 ($generated@@28 $generated@@155 $generated@@156)) $generated@@155)
 :pattern ( ($generated@@28 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ) (! (= ($generated@@157 ($generated@@28 $generated@@158 $generated@@159)) $generated@@159)
 :pattern ( ($generated@@28 $generated@@158 $generated@@159))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (! (= ($generated@@160 ($generated@@88 $generated@@161 $generated@@162)) $generated@@161)
 :pattern ( ($generated@@88 $generated@@161 $generated@@162))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (! (= ($generated@@163 ($generated@@88 $generated@@164 $generated@@165)) $generated@@165)
 :pattern ( ($generated@@88 $generated@@164 $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@T) ) (! (= ($generated@@84 $generated@@167 ($generated@@85 $generated@@167 $generated@@166)) $generated@@166)
 :pattern ( ($generated@@85 $generated@@167 $generated@@166))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (!  (and (and (and (=> ($generated@@34 $generated@@168 $generated@@169) (or (not (= $generated@@168 $generated@@169)) (not true))) (=> (and ($generated@@102 $generated@@168) (not ($generated@@102 $generated@@169))) ($generated@@34 $generated@@168 $generated@@169))) (=> (and ($generated@@102 $generated@@168) ($generated@@102 $generated@@169)) (= ($generated@@34 $generated@@168 $generated@@169) (< ($generated@@30 $generated@@168) ($generated@@30 $generated@@169))))) (=> (and ($generated@@34 $generated@@168 $generated@@169) ($generated@@102 $generated@@169)) ($generated@@102 $generated@@168)))
 :pattern ( ($generated@@34 $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> ($generated@@29 $generated@@172 ($generated@@28 $generated@@170 $generated@@171)) (and (= ($generated@@85 $generated@@27 ($generated@@84 $generated@@27 $generated@@172)) $generated@@172) ($generated@@26 $generated@@27 ($generated@@84 $generated@@27 $generated@@172) ($generated@@28 $generated@@170 $generated@@171))))
 :pattern ( ($generated@@29 $generated@@172 ($generated@@28 $generated@@170 $generated@@171)))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ) (!  (=> ($generated@@29 $generated@@175 ($generated@@88 $generated@@173 $generated@@174)) (and (= ($generated@@85 $generated@@27 ($generated@@84 $generated@@27 $generated@@175)) $generated@@175) ($generated@@26 $generated@@27 ($generated@@84 $generated@@27 $generated@@175) ($generated@@88 $generated@@173 $generated@@174))))
 :pattern ( ($generated@@29 $generated@@175 ($generated@@88 $generated@@173 $generated@@174)))
)))
(assert  (and (forall (($generated@@179 T@T) ($generated@@180 T@T) ($generated@@181 T@T) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ) (! (= ($generated@@176 $generated@@179 $generated@@180 $generated@@181 ($generated@@178 $generated@@179 $generated@@180 $generated@@181 $generated@@183 $generated@@184 $generated@@185 $generated@@182) $generated@@184 $generated@@185) $generated@@182)
 :weight 0
)) (and (forall (($generated@@186 T@T) ($generated@@187 T@T) ($generated@@188 T@T) ($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ) (!  (or (= $generated@@191 $generated@@193) (= ($generated@@176 $generated@@186 $generated@@187 $generated@@188 ($generated@@178 $generated@@186 $generated@@187 $generated@@188 $generated@@190 $generated@@191 $generated@@192 $generated@@189) $generated@@193 $generated@@194) ($generated@@176 $generated@@186 $generated@@187 $generated@@188 $generated@@190 $generated@@193 $generated@@194)))
 :weight 0
)) (forall (($generated@@195 T@T) ($generated@@196 T@T) ($generated@@197 T@T) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ) (!  (or (= $generated@@201 $generated@@203) (= ($generated@@176 $generated@@195 $generated@@196 $generated@@197 ($generated@@178 $generated@@195 $generated@@196 $generated@@197 $generated@@199 $generated@@200 $generated@@201 $generated@@198) $generated@@202 $generated@@203) ($generated@@176 $generated@@195 $generated@@196 $generated@@197 $generated@@199 $generated@@202 $generated@@203)))
 :weight 0
)))))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 Bool) ($generated@@208 T@U) ($generated@@209 T@U) ) (! (= ($generated@@8 ($generated@@176 $generated@@27 $generated@@111 $generated@@4 ($generated@@177 $generated@@204 $generated@@205 $generated@@206 $generated@@207) $generated@@208 $generated@@209))  (=> (and (or (not (= $generated@@208 $generated@@204)) (not true)) ($generated@@8 ($generated@@84 $generated@@4 ($generated@@110 $generated@@111 $generated@@23 ($generated@@110 $generated@@27 ($generated@@112 $generated@@111 $generated@@23) $generated@@205 $generated@@208) $generated@@206)))) $generated@@207))
 :pattern ( ($generated@@176 $generated@@27 $generated@@111 $generated@@4 ($generated@@177 $generated@@204 $generated@@205 $generated@@206 $generated@@207) $generated@@208 $generated@@209))
)))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ) (!  (and (= ($generated@@210 ($generated@@28 $generated@@212 $generated@@213)) $generated@@0) (= ($generated@@211 ($generated@@28 $generated@@212 $generated@@213)) $generated@@2))
 :pattern ( ($generated@@28 $generated@@212 $generated@@213))
)))
(assert (forall (($generated@@214 T@U) ($generated@@215 T@U) ) (!  (and (= ($generated@@210 ($generated@@88 $generated@@214 $generated@@215)) $generated@@1) (= ($generated@@211 ($generated@@88 $generated@@214 $generated@@215)) $generated@@2))
 :pattern ( ($generated@@88 $generated@@214 $generated@@215))
)))
(assert (forall (($generated@@216 T@U) ) (!  (=> ($generated@@102 $generated@@216) (= $generated@@216 ($generated@@32 ($generated@@30 $generated@@216))))
 :pattern ( ($generated@@30 $generated@@216))
 :pattern ( ($generated@@102 $generated@@216))
)))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ) (!  (=> (and ($generated@@102 $generated@@218) (<= ($generated@@30 $generated@@218) ($generated@@30 $generated@@217))) (or (and (= $generated@@218 ($generated@@32 0)) (= ($generated@@31 $generated@@217 $generated@@218) $generated@@217)) (and (or (not (= $generated@@218 ($generated@@32 0))) (not true)) ($generated@@34 ($generated@@31 $generated@@217 $generated@@218) $generated@@217))))
 :pattern ( ($generated@@31 $generated@@217 $generated@@218))
)))
(assert (forall (($generated@@219 Int) ) (! (= ($generated@@85 $generated@@5 ($generated@@9 ($generated@@33 $generated@@219))) ($generated@@22 $generated@@23 ($generated@@85 $generated@@5 ($generated@@9 $generated@@219))))
 :pattern ( ($generated@@85 $generated@@5 ($generated@@9 ($generated@@33 $generated@@219))))
)))
(assert (forall (($generated@@220 T@U) ($generated@@221 T@T) ) (! (= ($generated@@85 $generated@@221 ($generated@@22 $generated@@221 $generated@@220)) ($generated@@22 $generated@@23 ($generated@@85 $generated@@221 $generated@@220)))
 :pattern ( ($generated@@85 $generated@@221 ($generated@@22 $generated@@221 $generated@@220)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@222 () T@U)
(declare-fun $generated@@223 () T@U)
(declare-fun $generated@@224 () T@U)
(declare-fun $generated@@225 () T@U)
(declare-fun $generated@@226 () T@U)
(declare-fun $generated@@227 () T@U)
(declare-fun $generated@@228 () T@U)
(declare-fun $generated@@229 () T@U)
(declare-fun $generated@@230 () T@U)
(declare-fun $generated@@231 (T@U) Bool)
(declare-fun $generated@@232 () T@U)
(declare-fun $generated@@233 (T@U) Bool)
(declare-fun $generated@@234 () T@U)
(declare-fun $generated@@235 () T@U)
(declare-fun $generated@@236 () T@U)
(declare-fun $generated@@237 () T@U)
(declare-fun $generated@@238 () T@U)
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
 (=> (= (ControlFlow 0 0) 9) (let (($generated@@239  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> ($generated@@24 $generated@@222 $generated@@223 $generated@@224 $generated@@225 $generated@@226 $generated@@227 $generated@@228 $generated@@229) (or ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 $generated@@230) $generated@@226 $generated@@227 $generated@@228 $generated@@229) (=> (< 0 ($generated@@30 $generated@@227)) ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 ($generated@@21 $generated@@230)) $generated@@226 ($generated@@31 $generated@@227 ($generated@@32 1)) $generated@@228 $generated@@229))))) (=> (=> ($generated@@24 $generated@@222 $generated@@223 $generated@@224 $generated@@225 $generated@@226 $generated@@227 $generated@@228 $generated@@229) (or ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 $generated@@230) $generated@@226 $generated@@227 $generated@@228 $generated@@229) (=> (< 0 ($generated@@30 $generated@@227)) ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 ($generated@@21 $generated@@230)) $generated@@226 ($generated@@31 $generated@@227 ($generated@@32 1)) $generated@@228 $generated@@229)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> ($generated@@24 $generated@@222 $generated@@223 $generated@@224 $generated@@225 $generated@@226 $generated@@227 $generated@@228 $generated@@229) (or ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 $generated@@230) $generated@@226 $generated@@227 $generated@@228 $generated@@229) (=> (= ($generated@@33 0) ($generated@@30 $generated@@227)) (forall (($generated@@240 T@U) ) (!  (=> ($generated@@34 $generated@@240 $generated@@227) ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 ($generated@@21 $generated@@230)) $generated@@226 $generated@@240 $generated@@228 $generated@@229))
 :pattern ( ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 ($generated@@21 $generated@@230)) $generated@@226 $generated@@240 $generated@@228 $generated@@229))
))))))))))
(let (($generated@@241  (=> (<= ($generated@@30 $generated@@227) 0) (=> (and (and (and ($generated@@231 $generated@@232) ($generated@@233 $generated@@232)) (= $generated@@234 $generated@@232)) (and (forall (($generated@@242 T@U) ($generated@@243 T@U) ($generated@@244 T@U) ) (!  (=> (and (and ($generated@@29 $generated@@243 $generated@@224) ($generated@@29 $generated@@244 $generated@@225)) ($generated@@34 $generated@@242 $generated@@227)) ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 $generated@@230) $generated@@226 $generated@@242 $generated@@243 $generated@@244))
 :pattern ( ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 $generated@@230) $generated@@226 $generated@@242 $generated@@243 $generated@@244))
)) (= (ControlFlow 0 7) 2))) $generated@@239))))
(let (($generated@@245  (=> (< 0 ($generated@@30 $generated@@227)) (and (=> (= (ControlFlow 0 4) (- 0 6)) ($generated@@102 ($generated@@22 $generated@@23 ($generated@@32 1)))) (=> ($generated@@102 ($generated@@22 $generated@@23 ($generated@@32 1))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (<= ($generated@@30 ($generated@@22 $generated@@23 ($generated@@32 1))) ($generated@@30 $generated@@227))) (=> (<= ($generated@@30 ($generated@@22 $generated@@23 ($generated@@32 1))) ($generated@@30 $generated@@227)) (=> (= $generated@@235 ($generated@@31 $generated@@227 ($generated@@32 1))) (=> (and (and (and ($generated@@231 $generated@@236) ($generated@@233 $generated@@236)) ($generated@@24 $generated@@222 $generated@@223 $generated@@224 $generated@@225 $generated@@226 $generated@@235 $generated@@228 $generated@@229)) (and (and ($generated@@24 $generated@@222 $generated@@223 $generated@@224 $generated@@225 $generated@@226 $generated@@235 $generated@@228 $generated@@229) (and ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 $generated@@230) $generated@@226 $generated@@235 $generated@@228 $generated@@229) (and (=> (< 0 ($generated@@30 $generated@@235)) ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 $generated@@230) $generated@@226 ($generated@@31 $generated@@235 ($generated@@32 1)) $generated@@228 $generated@@229)) (=> (= ($generated@@33 0) ($generated@@30 $generated@@235)) (forall (($generated@@246 T@U) ) (!  (=> ($generated@@34 $generated@@246 $generated@@235) ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 $generated@@230) $generated@@226 $generated@@246 $generated@@228 $generated@@229))
 :pattern ( ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 $generated@@230) $generated@@226 $generated@@246 $generated@@228 $generated@@229))
)))))) (and (= $generated@@234 $generated@@236) (= (ControlFlow 0 4) 2)))) $generated@@239)))))))))
(let (($generated@@247  (=> (= $generated@@237 ($generated@@177 $generated@@25 $generated@@238 $generated false)) (=> (and (and ($generated@@231 $generated@@234) ($generated@@233 $generated@@234)) (and (= $generated@@238 $generated@@234) (forall (($generated@@248 T@U) ) (!  (=> (and ($generated@@8 ($generated@@22 $generated@@4 ($generated@@7 true))) ($generated@@34 $generated@@248 $generated@@227)) ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 $generated@@230) $generated@@226 $generated@@248 $generated@@228 $generated@@229))
 :pattern ( ($generated@@20 $generated@@222 $generated@@223 $generated@@224 $generated@@225 ($generated@@21 $generated@@230) $generated@@226 $generated@@248 $generated@@228 $generated@@229))
)))) (and (=> (= (ControlFlow 0 8) 4) $generated@@245) (=> (= (ControlFlow 0 8) 7) $generated@@241))))))
(let (($generated@@249  (=> (and ($generated@@231 $generated@@238) ($generated@@233 $generated@@238)) (=> (and (and (and (or (not (= $generated@@226 $generated@@25)) (not true)) (and ($generated@@26 $generated@@27 $generated@@226 ($generated@@28 $generated@@222 $generated@@223)) ($generated@@93 $generated@@27 $generated@@226 ($generated@@28 $generated@@222 $generated@@223) $generated@@238))) (and ($generated@@29 $generated@@228 $generated@@224) ($generated@@92 $generated@@228 $generated@@224 $generated@@238))) (and (and ($generated@@29 $generated@@229 $generated@@225) ($generated@@92 $generated@@229 $generated@@225 $generated@@238)) (and (= 2 $generated@@19) (= (ControlFlow 0 9) 8)))) $generated@@247))))
$generated@@249))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)