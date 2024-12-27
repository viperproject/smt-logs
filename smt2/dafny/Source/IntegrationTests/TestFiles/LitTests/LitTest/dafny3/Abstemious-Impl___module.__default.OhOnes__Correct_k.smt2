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
(declare-fun $generated@@7 (T@T) Int)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 (Bool) T@U)
(declare-fun $generated@@12 (T@U) Bool)
(declare-fun $generated@@13 (Int) T@U)
(declare-fun $generated@@14 (T@U) Int)
(declare-fun $generated@@15 (Real) T@U)
(declare-fun $generated@@16 (T@U) Real)
(declare-fun $generated@@23 () Int)
(declare-fun $generated@@24 (T@U T@U Int T@U) T@U)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 (Int) Int)
(declare-fun $generated@@27 (T@U Int T@U) Bool)
(declare-fun $generated@@28 (T@T T@U T@U) Bool)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 (T@U) Bool)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@38 (T@U) T@U)
(declare-fun $generated@@39 (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@40 (T@U) Int)
(declare-fun $generated@@41 (T@U T@U) T@U)
(declare-fun $generated@@42 (Int) T@U)
(declare-fun $generated@@43 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@56 (T@U T@U) Bool)
(declare-fun $generated@@60 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@61 () T@U)
(declare-fun $generated@@64 (T@U) Bool)
(declare-fun $generated@@86 (T@U) T@U)
(declare-fun $generated@@87 () Bool)
(declare-fun $generated@@89 (T@U) T@U)
(declare-fun $generated@@90 () Bool)
(declare-fun $generated@@93 (T@T T@U) T@U)
(declare-fun $generated@@96 (T@U T@U) Bool)
(declare-fun $generated@@101 (T@U T@U T@U) Bool)
(declare-fun $generated@@102 (T@U) Bool)
(declare-fun $generated@@108 (T@U T@U) T@U)
(declare-fun $generated@@112 (T@U) T@U)
(declare-fun $generated@@114 (T@T T@U) T@U)
(declare-fun $generated@@115 (T@T T@U) T@U)
(declare-fun $generated@@132 (T@U) T@U)
(declare-fun $generated@@134 (T@U) Bool)
(declare-fun $generated@@157 (T@U) T@U)
(declare-fun $generated@@172 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@173 () T@T)
(declare-fun $generated@@174 () T@T)
(declare-fun $generated@@175 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@176 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@177 () T@T)
(declare-fun $generated@@178 (T@T T@T) T@T)
(declare-fun $generated@@179 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@180 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@181 (T@T) T@T)
(declare-fun $generated@@182 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@7 $generated@@8) 0) (= ($generated@@7 $generated@@9) 1)) (= ($generated@@7 $generated@@10) 2)) (forall (($generated@@17 Bool) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Int) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 Real) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6)
)
(assert (= ($generated@@7 $generated@@29) 3))
(assert  (=> (<= 1 $generated@@23) (forall (($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 Int) ($generated@@37 T@U) ) (!  (=> (or ($generated@@27 $generated@@34 ($generated@@26 $generated@@36) $generated@@37) (and (< 1 $generated@@23) (and (<= ($generated@@26 0) $generated@@36) ($generated@@28 $generated@@29 $generated@@37 ($generated@@30 $generated@@34))))) (and (and (=> (= ($generated@@26 $generated@@36) ($generated@@26 0)) ($generated@@31 $generated@@37)) (=> (or (not (= ($generated@@26 $generated@@36) ($generated@@26 0))) (not true)) (and ($generated@@31 $generated@@37) ($generated@@27 $generated@@34 ($generated@@26 (- $generated@@36 1)) ($generated@@32 $generated@@37))))) (= ($generated@@24 $generated@@34 ($generated@@25 $generated@@35) ($generated@@26 $generated@@36) $generated@@37) (ite (= ($generated@@26 $generated@@36) ($generated@@26 0)) ($generated@@33 $generated@@37) ($generated@@24 $generated@@34 ($generated@@25 $generated@@35) ($generated@@26 (- $generated@@36 1)) ($generated@@32 $generated@@37))))))
 :weight 3
 :pattern ( ($generated@@24 $generated@@34 ($generated@@25 $generated@@35) ($generated@@26 $generated@@36) $generated@@37))
))))
(assert (= ($generated@@38 $generated) $generated@@0))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ) (!  (=> (and ($generated@@28 $generated@@29 $generated@@48 ($generated@@30 $generated@@44)) ($generated@@28 $generated@@29 $generated@@49 ($generated@@30 $generated@@45))) (= ($generated@@39 $generated@@44 $generated@@45 $generated@@46 ($generated@@25 $generated@@47) $generated@@48 $generated@@49)  (and (=> (< 0 ($generated@@40 $generated@@46)) (and (and ($generated@@31 $generated@@48) ($generated@@31 $generated@@49)) (=> (and ($generated@@31 $generated@@48) ($generated@@31 $generated@@49)) (and (= ($generated@@33 $generated@@48) ($generated@@33 $generated@@49)) ($generated@@39 $generated@@44 $generated@@45 ($generated@@41 $generated@@46 ($generated@@42 1)) $generated@@47 ($generated@@32 $generated@@48) ($generated@@32 $generated@@49)))))) (=> (and (or (not (= $generated@@46 ($generated@@42 0))) (not true)) (= ($generated@@40 $generated@@46) 0)) ($generated@@43 $generated@@44 $generated@@45 $generated@@47 $generated@@48 $generated@@49)))))
 :pattern ( ($generated@@39 $generated@@44 $generated@@45 $generated@@46 ($generated@@25 $generated@@47) $generated@@48 $generated@@49))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (!  (=> (or (not (= $generated@@52 ($generated@@42 0))) (not true)) (= ($generated@@39 $generated@@50 $generated@@51 $generated@@52 ($generated@@25 $generated@@53) $generated@@54 $generated@@55) ($generated@@39 $generated@@50 $generated@@51 $generated@@52 $generated@@53 $generated@@54 $generated@@55)))
 :pattern ( ($generated@@39 $generated@@50 $generated@@51 $generated@@52 ($generated@@25 $generated@@53) $generated@@54 $generated@@55))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (!  (=> (and ($generated@@56 $generated@@57 $generated@@58) ($generated@@56 $generated@@58 $generated@@59)) ($generated@@56 $generated@@57 $generated@@59))
 :pattern ( ($generated@@56 $generated@@57 $generated@@58) ($generated@@56 $generated@@58 $generated@@59))
 :pattern ( ($generated@@56 $generated@@57 $generated@@58) ($generated@@56 $generated@@57 $generated@@59))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ) (! ($generated@@60 $generated@@9 $generated@@62 $generated@@61 $generated@@63)
 :pattern ( ($generated@@60 $generated@@9 $generated@@62 $generated@@61 $generated@@63))
)))
(assert (forall (($generated@@65 T@U) ) (!  (=> ($generated@@64 $generated@@65) ($generated@@31 $generated@@65))
 :pattern ( ($generated@@64 $generated@@65))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 Int) ($generated@@68 Int) ) (!  (=> (and (and (<= 0 $generated@@67) (<= 0 $generated@@68)) (<= (+ $generated@@67 $generated@@68) ($generated@@40 $generated@@66))) (= ($generated@@41 ($generated@@41 $generated@@66 ($generated@@42 $generated@@67)) ($generated@@42 $generated@@68)) ($generated@@41 $generated@@66 ($generated@@42 (+ $generated@@67 $generated@@68)))))
 :pattern ( ($generated@@41 ($generated@@41 $generated@@66 ($generated@@42 $generated@@67)) ($generated@@42 $generated@@68)))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ) (!  (=> ($generated@@28 $generated@@29 $generated@@70 ($generated@@30 $generated@@69)) ($generated@@31 $generated@@70))
 :pattern ( ($generated@@31 $generated@@70) ($generated@@28 $generated@@29 $generated@@70 ($generated@@30 $generated@@69)))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ) (!  (=> (= $generated@@75 $generated@@76) ($generated@@39 $generated@@71 $generated@@72 $generated@@73 ($generated@@25 $generated@@74) $generated@@75 $generated@@76))
 :pattern ( ($generated@@39 $generated@@71 $generated@@72 $generated@@73 ($generated@@25 $generated@@74) $generated@@75 $generated@@76))
)))
(assert  (=> (<= 1 $generated@@23) (forall (($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 Int) ($generated@@80 T@U) ) (!  (=> (or ($generated@@27 $generated@@77 $generated@@79 $generated@@80) (and (< 1 $generated@@23) (and (<= ($generated@@26 0) $generated@@79) ($generated@@28 $generated@@29 $generated@@80 ($generated@@30 $generated@@77))))) (and (and (=> (= $generated@@79 ($generated@@26 0)) ($generated@@31 $generated@@80)) (=> (or (not (= $generated@@79 ($generated@@26 0))) (not true)) (and ($generated@@31 $generated@@80) ($generated@@27 $generated@@77 (- $generated@@79 1) ($generated@@32 $generated@@80))))) (= ($generated@@24 $generated@@77 ($generated@@25 $generated@@78) $generated@@79 $generated@@80) (ite (= $generated@@79 ($generated@@26 0)) ($generated@@33 $generated@@80) ($generated@@24 $generated@@77 $generated@@78 (- $generated@@79 1) ($generated@@32 $generated@@80))))))
 :pattern ( ($generated@@24 $generated@@77 ($generated@@25 $generated@@78) $generated@@79 $generated@@80))
))))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@43 $generated@@81 $generated@@82 ($generated@@25 $generated@@83) $generated@@84 $generated@@85) (= $generated@@84 $generated@@85))
 :pattern ( ($generated@@43 $generated@@81 $generated@@82 ($generated@@25 $generated@@83) $generated@@84 $generated@@85))
)))
(assert  (=> (<= 1 $generated@@23) (forall (($generated@@88 T@U) ) (!  (=> (or $generated@@87 (< 1 $generated@@23)) ($generated@@28 $generated@@29 ($generated@@86 $generated@@88) ($generated@@30 $generated)))
 :pattern ( ($generated@@86 $generated@@88))
))))
(assert  (=> (<= 1 $generated@@23) (forall (($generated@@91 T@U) ) (!  (=> (or $generated@@90 (< 1 $generated@@23)) ($generated@@28 $generated@@29 ($generated@@89 $generated@@91) ($generated@@30 $generated)))
 :pattern ( ($generated@@89 $generated@@91))
))))
(assert (forall (($generated@@92 Int) ) (! (= ($generated@@26 $generated@@92) $generated@@92)
 :pattern ( ($generated@@26 $generated@@92))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@T) ) (! (= ($generated@@93 $generated@@95 $generated@@94) $generated@@94)
 :pattern ( ($generated@@93 $generated@@95 $generated@@94))
)))
(assert  (=> (<= 1 $generated@@23) (forall (($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 Int) ($generated@@100 T@U) ) (!  (=> (or ($generated@@27 $generated@@97 $generated@@99 $generated@@100) (and (< 1 $generated@@23) (and (<= ($generated@@26 0) $generated@@99) ($generated@@28 $generated@@29 $generated@@100 ($generated@@30 $generated@@97))))) ($generated@@96 ($generated@@24 $generated@@97 $generated@@98 $generated@@99 $generated@@100) $generated@@97))
 :pattern ( ($generated@@24 $generated@@97 $generated@@98 $generated@@99 $generated@@100))
))))
(assert  (=> (<= 1 $generated@@23) (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 Int) ($generated@@107 T@U) ) (!  (=> (and (or ($generated@@27 $generated@@104 $generated@@106 $generated@@107) (and (< 1 $generated@@23) (and (<= ($generated@@26 0) $generated@@106) (and ($generated@@28 $generated@@29 $generated@@107 ($generated@@30 $generated@@104)) ($generated@@60 $generated@@29 $generated@@107 ($generated@@30 $generated@@104) $generated@@103))))) ($generated@@102 $generated@@103)) ($generated@@101 ($generated@@24 $generated@@104 $generated@@105 $generated@@106 $generated@@107) $generated@@104 $generated@@103))
 :pattern ( ($generated@@101 ($generated@@24 $generated@@104 $generated@@105 $generated@@106 $generated@@107) $generated@@104 $generated@@103))
))))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@28 $generated@@29 ($generated@@108 $generated@@110 $generated@@111) ($generated@@30 $generated@@109))  (and ($generated@@96 $generated@@110 $generated@@109) ($generated@@28 $generated@@29 $generated@@111 ($generated@@30 $generated@@109))))
 :pattern ( ($generated@@28 $generated@@29 ($generated@@108 $generated@@110 $generated@@111) ($generated@@30 $generated@@109)))
)))
(assert (forall (($generated@@113 T@U) ) (! (= ($generated@@31 $generated@@113) (= ($generated@@112 $generated@@113) $generated@@4))
 :pattern ( ($generated@@31 $generated@@113))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@T) ) (! (= ($generated@@115 $generated@@117 ($generated@@114 $generated@@117 $generated@@116)) $generated@@116)
 :pattern ( ($generated@@114 $generated@@117 $generated@@116))
)))
(assert (forall (($generated@@118 T@U) ) (!  (=> ($generated@@31 $generated@@118) (exists (($generated@@119 T@U) ($generated@@120 T@U) ) (= $generated@@118 ($generated@@108 $generated@@119 $generated@@120))))
 :pattern ( ($generated@@31 $generated@@118))
)))
(assert  (=> (<= 1 $generated@@23) (forall (($generated@@121 T@U) ) (!  (=> (or $generated@@87 (< 1 $generated@@23)) (and $generated@@87 (= ($generated@@86 ($generated@@25 $generated@@121)) ($generated@@93 $generated@@29 ($generated@@108 ($generated@@115 $generated@@9 ($generated@@13 ($generated@@26 1))) ($generated@@93 $generated@@29 ($generated@@86 $generated@@121)))))))
 :pattern ( ($generated@@86 ($generated@@25 $generated@@121)))
))))
(assert (forall (($generated@@122 T@U) ) (! (= ($generated@@28 $generated@@9 $generated@@122 $generated@@61) (<= ($generated@@26 0) ($generated@@14 $generated@@122)))
 :pattern ( ($generated@@28 $generated@@9 $generated@@122 $generated@@61))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (!  (=> (and ($generated@@28 $generated@@29 $generated@@126 ($generated@@30 $generated@@123)) ($generated@@28 $generated@@29 $generated@@127 ($generated@@30 $generated@@124))) (= ($generated@@43 $generated@@123 $generated@@124 ($generated@@25 $generated@@125) $generated@@126 $generated@@127)  (and (and ($generated@@31 $generated@@126) ($generated@@31 $generated@@127)) (=> (and ($generated@@31 $generated@@126) ($generated@@31 $generated@@127)) (and (= ($generated@@33 $generated@@126) ($generated@@33 $generated@@127)) ($generated@@43 $generated@@123 $generated@@124 $generated@@125 ($generated@@32 $generated@@126) ($generated@@32 $generated@@127)))))))
 :pattern ( ($generated@@43 $generated@@123 $generated@@124 ($generated@@25 $generated@@125) $generated@@126 $generated@@127))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@T) ) (! (= ($generated@@101 ($generated@@115 $generated@@131 $generated@@128) $generated@@129 $generated@@130) ($generated@@60 $generated@@131 $generated@@128 $generated@@129 $generated@@130))
 :pattern ( ($generated@@101 ($generated@@115 $generated@@131 $generated@@128) $generated@@129 $generated@@130))
)))
(assert (forall (($generated@@133 T@U) ) (!  (and (= ($generated@@38 ($generated@@30 $generated@@133)) $generated@@3) (= ($generated@@132 ($generated@@30 $generated@@133)) $generated@@6))
 :pattern ( ($generated@@30 $generated@@133))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (!  (=> (and ($generated@@134 $generated@@136) (<= ($generated@@40 $generated@@136) ($generated@@40 $generated@@135))) (and (= ($generated@@134 ($generated@@41 $generated@@135 $generated@@136)) ($generated@@134 $generated@@135)) (= ($generated@@40 ($generated@@41 $generated@@135 $generated@@136)) (- ($generated@@40 $generated@@135) ($generated@@40 $generated@@136)))))
 :pattern ( ($generated@@41 $generated@@135 $generated@@136))
)))
(assert (forall (($generated@@137 Int) ) (!  (=> (<= 0 $generated@@137) (and ($generated@@134 ($generated@@42 $generated@@137)) (= ($generated@@40 ($generated@@42 $generated@@137)) $generated@@137)))
 :pattern ( ($generated@@42 $generated@@137))
)))
(assert (forall (($generated@@138 T@U) ) (!  (=> ($generated@@96 $generated@@138 $generated@@61) (and (= ($generated@@115 $generated@@9 ($generated@@114 $generated@@9 $generated@@138)) $generated@@138) ($generated@@28 $generated@@9 ($generated@@114 $generated@@9 $generated@@138) $generated@@61)))
 :pattern ( ($generated@@96 $generated@@138 $generated@@61))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (!  (or (or ($generated@@56 $generated@@139 $generated@@140) (= $generated@@139 $generated@@140)) ($generated@@56 $generated@@140 $generated@@139))
 :pattern ( ($generated@@56 $generated@@139 $generated@@140) ($generated@@56 $generated@@140 $generated@@139))
)))
(assert  (=> (<= 1 $generated@@23) (forall (($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 Int) ($generated@@144 T@U) ) (!  (=> (or ($generated@@27 $generated@@141 ($generated@@26 $generated@@143) ($generated@@93 $generated@@29 $generated@@144)) (and (< 1 $generated@@23) (and (<= ($generated@@26 0) $generated@@143) ($generated@@28 $generated@@29 $generated@@144 ($generated@@30 $generated@@141))))) (and (and (=> (= ($generated@@26 $generated@@143) ($generated@@26 0)) ($generated@@31 ($generated@@93 $generated@@29 $generated@@144))) (=> (or (not (= ($generated@@26 $generated@@143) ($generated@@26 0))) (not true)) (and ($generated@@31 ($generated@@93 $generated@@29 $generated@@144)) ($generated@@27 $generated@@141 ($generated@@26 (- $generated@@143 1)) ($generated@@93 $generated@@29 ($generated@@32 ($generated@@93 $generated@@29 $generated@@144))))))) (= ($generated@@24 $generated@@141 ($generated@@25 $generated@@142) ($generated@@26 $generated@@143) ($generated@@93 $generated@@29 $generated@@144)) (ite (= ($generated@@26 $generated@@143) ($generated@@26 0)) ($generated@@33 ($generated@@93 $generated@@29 $generated@@144)) ($generated@@24 $generated@@141 ($generated@@25 $generated@@142) ($generated@@26 (- $generated@@143 1)) ($generated@@93 $generated@@29 ($generated@@32 ($generated@@93 $generated@@29 $generated@@144))))))))
 :weight 3
 :pattern ( ($generated@@24 $generated@@141 ($generated@@25 $generated@@142) ($generated@@26 $generated@@143) ($generated@@93 $generated@@29 $generated@@144)))
))))
(assert  (=> (<= 1 $generated@@23) (forall (($generated@@145 T@U) ) (!  (=> (or $generated@@90 (< 1 $generated@@23)) (and (and $generated@@90 ($generated@@31 ($generated@@93 $generated@@29 ($generated@@89 $generated@@145)))) (= ($generated@@89 ($generated@@25 $generated@@145)) ($generated@@93 $generated@@29 ($generated@@108 ($generated@@115 $generated@@9 ($generated@@13 ($generated@@26 0))) ($generated@@93 $generated@@29 ($generated@@108 ($generated@@115 $generated@@9 ($generated@@13 ($generated@@26 1))) ($generated@@93 $generated@@29 ($generated@@32 ($generated@@93 $generated@@29 ($generated@@89 $generated@@145)))))))))))
 :pattern ( ($generated@@89 ($generated@@25 $generated@@145)))
))))
(assert (forall (($generated@@146 T@U) ) (!  (=> ($generated@@96 $generated@@146 $generated) (and (= ($generated@@115 $generated@@9 ($generated@@114 $generated@@9 $generated@@146)) $generated@@146) ($generated@@28 $generated@@9 ($generated@@114 $generated@@9 $generated@@146) $generated)))
 :pattern ( ($generated@@96 $generated@@146 $generated))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@T) ) (! (= ($generated@@96 ($generated@@115 $generated@@149 $generated@@147) $generated@@148) ($generated@@28 $generated@@149 $generated@@147 $generated@@148))
 :pattern ( ($generated@@96 ($generated@@115 $generated@@149 $generated@@147) $generated@@148))
)))
(assert (forall (($generated@@150 T@U) ) (! (<= 0 ($generated@@40 $generated@@150))
 :pattern ( ($generated@@40 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ) (! (= ($generated@@112 ($generated@@108 $generated@@151 $generated@@152)) $generated@@4)
 :pattern ( ($generated@@108 $generated@@151 $generated@@152))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ) (! (= ($generated@@33 ($generated@@108 $generated@@153 $generated@@154)) $generated@@153)
 :pattern ( ($generated@@108 $generated@@153 $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@32 ($generated@@108 $generated@@155 $generated@@156)) $generated@@156)
 :pattern ( ($generated@@108 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ) (! (= ($generated@@157 ($generated@@30 $generated@@158)) $generated@@158)
 :pattern ( ($generated@@30 $generated@@158))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@T) ) (! (= ($generated@@114 $generated@@160 ($generated@@115 $generated@@160 $generated@@159)) $generated@@159)
 :pattern ( ($generated@@115 $generated@@160 $generated@@159))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (!  (and (and (and (=> ($generated@@56 $generated@@161 $generated@@162) (or (not (= $generated@@161 $generated@@162)) (not true))) (=> (and ($generated@@134 $generated@@161) (not ($generated@@134 $generated@@162))) ($generated@@56 $generated@@161 $generated@@162))) (=> (and ($generated@@134 $generated@@161) ($generated@@134 $generated@@162)) (= ($generated@@56 $generated@@161 $generated@@162) (< ($generated@@40 $generated@@161) ($generated@@40 $generated@@162))))) (=> (and ($generated@@56 $generated@@161 $generated@@162) ($generated@@134 $generated@@162)) ($generated@@134 $generated@@161)))
 :pattern ( ($generated@@56 $generated@@161 $generated@@162))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (! (= ($generated@@43 $generated@@163 $generated@@164 ($generated@@25 $generated@@165) $generated@@166 $generated@@167) (forall (($generated@@168 T@U) ) (! ($generated@@39 $generated@@163 $generated@@164 $generated@@168 ($generated@@25 $generated@@165) $generated@@166 $generated@@167)
 :pattern ( ($generated@@39 $generated@@163 $generated@@164 $generated@@168 ($generated@@25 $generated@@165) $generated@@166 $generated@@167))
)))
 :pattern ( ($generated@@43 $generated@@163 $generated@@164 ($generated@@25 $generated@@165) $generated@@166 $generated@@167))
)))
(assert (forall (($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ) (!  (=> (and ($generated@@102 $generated@@171) (and ($generated@@31 $generated@@169) ($generated@@60 $generated@@29 $generated@@169 ($generated@@30 $generated@@170) $generated@@171))) ($generated@@101 ($generated@@33 $generated@@169) $generated@@170 $generated@@171))
 :pattern ( ($generated@@101 ($generated@@33 $generated@@169) $generated@@170 $generated@@171))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@183 T@T) ($generated@@184 T@T) ($generated@@185 T@T) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ) (! (= ($generated@@172 $generated@@183 $generated@@184 $generated@@185 ($generated@@179 $generated@@183 $generated@@184 $generated@@185 $generated@@187 $generated@@188 $generated@@189 $generated@@186) $generated@@188 $generated@@189) $generated@@186)
 :weight 0
)) (and (forall (($generated@@190 T@T) ($generated@@191 T@T) ($generated@@192 T@T) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ) (!  (or (= $generated@@195 $generated@@197) (= ($generated@@172 $generated@@190 $generated@@191 $generated@@192 ($generated@@179 $generated@@190 $generated@@191 $generated@@192 $generated@@194 $generated@@195 $generated@@196 $generated@@193) $generated@@197 $generated@@198) ($generated@@172 $generated@@190 $generated@@191 $generated@@192 $generated@@194 $generated@@197 $generated@@198)))
 :weight 0
)) (forall (($generated@@199 T@T) ($generated@@200 T@T) ($generated@@201 T@T) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ) (!  (or (= $generated@@205 $generated@@207) (= ($generated@@172 $generated@@199 $generated@@200 $generated@@201 ($generated@@179 $generated@@199 $generated@@200 $generated@@201 $generated@@203 $generated@@204 $generated@@205 $generated@@202) $generated@@206 $generated@@207) ($generated@@172 $generated@@199 $generated@@200 $generated@@201 $generated@@203 $generated@@206 $generated@@207)))
 :weight 0
)))) (= ($generated@@7 $generated@@173) 4)) (= ($generated@@7 $generated@@174) 5)) (forall (($generated@@208 T@T) ($generated@@209 T@T) ($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ) (! (= ($generated@@176 $generated@@208 $generated@@209 ($generated@@180 $generated@@208 $generated@@209 $generated@@211 $generated@@212 $generated@@210) $generated@@212) $generated@@210)
 :weight 0
))) (forall (($generated@@213 T@T) ($generated@@214 T@T) ($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ) (!  (or (= $generated@@217 $generated@@218) (= ($generated@@176 $generated@@213 $generated@@214 ($generated@@180 $generated@@213 $generated@@214 $generated@@216 $generated@@217 $generated@@215) $generated@@218) ($generated@@176 $generated@@213 $generated@@214 $generated@@216 $generated@@218)))
 :weight 0
))) (= ($generated@@7 $generated@@177) 6)) (forall (($generated@@219 T@T) ($generated@@220 T@T) ) (= ($generated@@7 ($generated@@178 $generated@@219 $generated@@220)) 7))) (forall (($generated@@221 T@T) ($generated@@222 T@T) ) (! (= ($generated@@181 ($generated@@178 $generated@@221 $generated@@222)) $generated@@221)
 :pattern ( ($generated@@178 $generated@@221 $generated@@222))
))) (forall (($generated@@223 T@T) ($generated@@224 T@T) ) (! (= ($generated@@182 ($generated@@178 $generated@@223 $generated@@224)) $generated@@224)
 :pattern ( ($generated@@178 $generated@@223 $generated@@224))
))))
(assert (forall (($generated@@225 T@U) ($generated@@226 T@U) ($generated@@227 T@U) ($generated@@228 Bool) ($generated@@229 T@U) ($generated@@230 T@U) ) (! (= ($generated@@12 ($generated@@172 $generated@@173 $generated@@174 $generated@@8 ($generated@@175 $generated@@225 $generated@@226 $generated@@227 $generated@@228) $generated@@229 $generated@@230))  (=> (and (or (not (= $generated@@229 $generated@@225)) (not true)) ($generated@@12 ($generated@@114 $generated@@8 ($generated@@176 $generated@@174 $generated@@177 ($generated@@176 $generated@@173 ($generated@@178 $generated@@174 $generated@@177) $generated@@226 $generated@@229) $generated@@227)))) $generated@@228))
 :pattern ( ($generated@@172 $generated@@173 $generated@@174 $generated@@8 ($generated@@175 $generated@@225 $generated@@226 $generated@@227 $generated@@228) $generated@@229 $generated@@230))
)))
(assert (forall (($generated@@231 T@U) ) (! (= ($generated@@86 ($generated@@25 $generated@@231)) ($generated@@86 $generated@@231))
 :pattern ( ($generated@@86 ($generated@@25 $generated@@231)))
)))
(assert (forall (($generated@@232 T@U) ) (! (= ($generated@@89 ($generated@@25 $generated@@232)) ($generated@@89 $generated@@232))
 :pattern ( ($generated@@89 ($generated@@25 $generated@@232)))
)))
(assert (forall (($generated@@233 T@U) ($generated@@234 T@U) ($generated@@235 Int) ($generated@@236 T@U) ) (! (= ($generated@@24 $generated@@233 ($generated@@25 $generated@@234) $generated@@235 $generated@@236) ($generated@@24 $generated@@233 $generated@@234 $generated@@235 $generated@@236))
 :pattern ( ($generated@@24 $generated@@233 ($generated@@25 $generated@@234) $generated@@235 $generated@@236))
)))
(assert (forall (($generated@@237 T@U) ($generated@@238 T@U) ) (!  (=> ($generated@@96 $generated@@238 ($generated@@30 $generated@@237)) (and (= ($generated@@115 $generated@@29 ($generated@@114 $generated@@29 $generated@@238)) $generated@@238) ($generated@@28 $generated@@29 ($generated@@114 $generated@@29 $generated@@238) ($generated@@30 $generated@@237))))
 :pattern ( ($generated@@96 $generated@@238 ($generated@@30 $generated@@237)))
)))
(assert (forall (($generated@@239 T@U) ) (!  (=> ($generated@@134 $generated@@239) (= $generated@@239 ($generated@@42 ($generated@@40 $generated@@239))))
 :pattern ( ($generated@@40 $generated@@239))
 :pattern ( ($generated@@134 $generated@@239))
)))
(assert (forall (($generated@@240 T@U) ($generated@@241 T@U) ($generated@@242 T@U) ) (!  (=> (and ($generated@@102 $generated@@242) (and ($generated@@31 $generated@@240) ($generated@@60 $generated@@29 $generated@@240 ($generated@@30 $generated@@241) $generated@@242))) ($generated@@60 $generated@@29 ($generated@@32 $generated@@240) ($generated@@30 $generated@@241) $generated@@242))
 :pattern ( ($generated@@60 $generated@@29 ($generated@@32 $generated@@240) ($generated@@30 $generated@@241) $generated@@242))
)))
(assert (= ($generated@@38 $generated@@61) $generated@@2))
(assert (= ($generated@@132 $generated@@61) $generated@@5))
(assert (forall (($generated@@243 T@U) ($generated@@244 T@U) ) (!  (=> (and ($generated@@134 $generated@@244) (<= ($generated@@40 $generated@@244) ($generated@@40 $generated@@243))) (or (and (= $generated@@244 ($generated@@42 0)) (= ($generated@@41 $generated@@243 $generated@@244) $generated@@243)) (and (or (not (= $generated@@244 ($generated@@42 0))) (not true)) ($generated@@56 ($generated@@41 $generated@@243 $generated@@244) $generated@@243))))
 :pattern ( ($generated@@41 $generated@@243 $generated@@244))
)))
(assert (forall (($generated@@245 T@U) ($generated@@246 T@U) ($generated@@247 T@U) ($generated@@248 T@U) ($generated@@249 T@U) ($generated@@250 T@U) ($generated@@251 T@U) ) (!  (=> (and ($generated@@56 $generated@@247 $generated@@251) ($generated@@39 $generated@@245 $generated@@246 $generated@@251 ($generated@@25 $generated@@248) $generated@@249 $generated@@250)) ($generated@@39 $generated@@245 $generated@@246 $generated@@247 ($generated@@25 $generated@@248) $generated@@249 $generated@@250))
 :pattern ( ($generated@@39 $generated@@245 $generated@@246 $generated@@247 ($generated@@25 $generated@@248) $generated@@249 $generated@@250) ($generated@@39 $generated@@245 $generated@@246 $generated@@251 ($generated@@25 $generated@@248) $generated@@249 $generated@@250))
)))
(assert (forall (($generated@@252 T@U) ($generated@@253 T@U) ($generated@@254 T@U) ($generated@@255 T@U) ($generated@@256 T@U) ) (! (= ($generated@@43 $generated@@252 $generated@@253 ($generated@@25 $generated@@254) $generated@@255 $generated@@256) ($generated@@43 $generated@@252 $generated@@253 $generated@@254 $generated@@255 $generated@@256))
 :pattern ( ($generated@@43 $generated@@252 $generated@@253 ($generated@@25 $generated@@254) $generated@@255 $generated@@256))
)))
(assert (forall (($generated@@257 Int) ) (! (= ($generated@@115 $generated@@9 ($generated@@13 ($generated@@26 $generated@@257))) ($generated@@93 $generated@@177 ($generated@@115 $generated@@9 ($generated@@13 $generated@@257))))
 :pattern ( ($generated@@115 $generated@@9 ($generated@@13 ($generated@@26 $generated@@257))))
)))
(assert (forall (($generated@@258 T@U) ($generated@@259 T@T) ) (! (= ($generated@@115 $generated@@259 ($generated@@93 $generated@@259 $generated@@258)) ($generated@@93 $generated@@177 ($generated@@115 $generated@@259 $generated@@258)))
 :pattern ( ($generated@@115 $generated@@259 ($generated@@93 $generated@@259 $generated@@258)))
)))
(assert (forall (($generated@@260 T@U) ($generated@@261 T@U) ($generated@@262 T@U) ($generated@@263 T@U) ($generated@@264 T@U) ) (!  (=> (forall (($generated@@265 Int) ) (!  (=> (<= 0 $generated@@265) ($generated@@39 $generated@@260 $generated@@261 ($generated@@42 $generated@@265) ($generated@@25 $generated@@262) $generated@@263 $generated@@264))
 :pattern ( ($generated@@39 $generated@@260 $generated@@261 ($generated@@42 $generated@@265) ($generated@@25 $generated@@262) $generated@@263 $generated@@264))
)) ($generated@@43 $generated@@260 $generated@@261 ($generated@@25 $generated@@262) $generated@@263 $generated@@264))
 :pattern ( ($generated@@43 $generated@@260 $generated@@261 ($generated@@25 $generated@@262) $generated@@263 $generated@@264))
)))
(assert (forall (($generated@@266 T@U) ($generated@@267 T@U) ) (! ($generated@@60 $generated@@9 $generated@@267 $generated $generated@@266)
 :pattern ( ($generated@@60 $generated@@9 $generated@@267 $generated $generated@@266))
)))
(assert (forall (($generated@@268 T@U) ($generated@@269 T@U) ($generated@@270 T@U) ($generated@@271 T@U) ) (!  (=> ($generated@@102 $generated@@271) (= ($generated@@60 $generated@@29 ($generated@@108 $generated@@269 $generated@@270) ($generated@@30 $generated@@268) $generated@@271)  (and ($generated@@101 $generated@@269 $generated@@268 $generated@@271) ($generated@@60 $generated@@29 $generated@@270 ($generated@@30 $generated@@268) $generated@@271))))
 :pattern ( ($generated@@60 $generated@@29 ($generated@@108 $generated@@269 $generated@@270) ($generated@@30 $generated@@268) $generated@@271))
)))
(assert (forall (($generated@@272 T@U) ) (! ($generated@@28 $generated@@9 $generated@@272 $generated)
 :pattern ( ($generated@@28 $generated@@9 $generated@@272 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@273 () T@U)
(declare-fun $generated@@274 () Int)
(declare-fun $generated@@275 () Int)
(declare-fun $generated@@276 () T@U)
(declare-fun $generated@@277 (T@U) Bool)
(declare-fun $generated@@278 () T@U)
(declare-fun $generated@@279 () T@U)
(declare-fun $generated@@280 () T@U)
(declare-fun $generated@@281 () T@U)
(declare-fun $generated@@282 () T@U)
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
 (=> (= (ControlFlow 0 0) 7) (let (($generated@@283  (=> (= (ControlFlow 0 2) (- 0 1)) (= ($generated@@14 ($generated@@114 $generated@@9 ($generated@@24 $generated ($generated@@25 ($generated@@25 $generated@@273)) $generated@@274 ($generated@@93 $generated@@29 ($generated@@89 ($generated@@25 ($generated@@25 $generated@@273))))))) (ite (= $generated@@274 ($generated@@26 0)) 0 1)))))
(let (($generated@@284  (=> (and (= $generated@@274 0) (= (ControlFlow 0 5) 2)) $generated@@283)))
(let (($generated@@285  (=> (or (not (= $generated@@274 0)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($generated@@28 $generated@@9 ($generated@@13 (- $generated@@274 1)) $generated@@61)) (=> ($generated@@28 $generated@@9 ($generated@@13 (- $generated@@274 1)) $generated@@61) (=> (= $generated@@275 (- $generated@@274 1)) (=> (and ($generated@@102 $generated@@276) ($generated@@277 $generated@@276)) (=> (and (and (and $generated@@87 ($generated@@27 $generated $generated@@275 ($generated@@93 $generated@@29 ($generated@@86 ($generated@@25 $generated@@273))))) (= ($generated@@14 ($generated@@114 $generated@@9 ($generated@@24 $generated ($generated@@25 ($generated@@25 $generated@@273)) $generated@@275 ($generated@@93 $generated@@29 ($generated@@86 ($generated@@25 ($generated@@25 $generated@@273))))))) ($generated@@26 1))) (and (= $generated@@278 $generated@@276) (= (ControlFlow 0 3) 2))) $generated@@283))))))))
(let (($generated@@286  (=> (= $generated@@279 ($generated@@175 $generated@@280 $generated@@281 $generated@@1 false)) (=> (and ($generated@@102 $generated@@282) ($generated@@277 $generated@@282)) (=> (and (and (and (= $generated@@281 $generated@@282) (forall (($generated@@287 Int) ) (!  (=> (and (and (<= ($generated@@26 0) $generated@@287) ($generated@@12 ($generated@@93 $generated@@8 ($generated@@11 true)))) (and (<= 0 $generated@@287) (< $generated@@287 $generated@@274))) (= ($generated@@14 ($generated@@114 $generated@@9 ($generated@@24 $generated ($generated@@25 $generated@@273) $generated@@287 ($generated@@93 $generated@@29 ($generated@@89 ($generated@@25 $generated@@273)))))) (ite (= $generated@@287 ($generated@@26 0)) 0 1)))
 :pattern ( ($generated@@114 $generated@@9 ($generated@@24 $generated ($generated@@25 $generated@@273) $generated@@287 ($generated@@93 $generated@@29 ($generated@@89 ($generated@@25 $generated@@273))))))
))) (and ($generated@@102 $generated@@278) ($generated@@277 $generated@@278))) (and (and ($generated@@64 ($generated@@93 $generated@@29 ($generated@@89 ($generated@@25 $generated@@273)))) (and $generated@@90 $generated@@87)) (and ($generated@@43 $generated $generated ($generated@@25 ($generated@@25 $generated@@273)) ($generated@@89 ($generated@@25 ($generated@@25 $generated@@273))) ($generated@@108 ($generated@@115 $generated@@9 ($generated@@13 ($generated@@26 0))) ($generated@@93 $generated@@29 ($generated@@86 ($generated@@25 ($generated@@25 $generated@@273)))))) (= $generated@@282 $generated@@278)))) (and (=> (= (ControlFlow 0 6) 3) $generated@@285) (=> (= (ControlFlow 0 6) 5) $generated@@284)))))))
(let (($generated@@288  (=> (and (and (and ($generated@@102 $generated@@281) ($generated@@277 $generated@@281)) (<= ($generated@@26 0) $generated@@274)) (and (= 4 $generated@@23) (= (ControlFlow 0 7) 6))) $generated@@286)))
$generated@@288))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)