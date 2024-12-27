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
(declare-fun $generated@@5 (T@T) Int)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 (Bool) T@U)
(declare-fun $generated@@10 (T@U) Bool)
(declare-fun $generated@@11 (Int) T@U)
(declare-fun $generated@@12 (T@U) Int)
(declare-fun $generated@@13 (Real) T@U)
(declare-fun $generated@@14 (T@U) Real)
(declare-fun $generated@@21 (T@U) Int)
(declare-fun $generated@@22 (T@U) T@U)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 () T@U)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 (T@T T@U T@U) Bool)
(declare-fun $generated@@30 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@36 (T@U) Int)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@38 (T@U) T@U)
(declare-fun $generated@@39 (T@U) Bool)
(declare-fun $generated@@41 (T@T T@U) T@U)
(declare-fun $generated@@42 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 (T@T T@T) T@T)
(declare-fun $generated@@46 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@48 (T@T) T@T)
(declare-fun $generated@@69 (T@U T@U) Bool)
(declare-fun $generated@@73 (Int) Int)
(declare-fun $generated@@75 (T@T T@U) T@U)
(declare-fun $generated@@78 (Int) T@U)
(declare-fun $generated@@79 (T@U) Bool)
(declare-fun $generated@@80 (T@U T@U T@U) Bool)
(declare-fun $generated@@85 (T@T T@U) T@U)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@106 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@107 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@108 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@142 (T@U T@U) Int)
(declare-fun $generated@@143 (T@U Int) T@U)
(declare-fun $generated@@147 (T@U T@U) T@U)
(declare-fun $generated@@151 (T@U T@U) Bool)
(declare-fun $generated@@157 (T@U T@U) Bool)
(declare-fun $generated@@162 (T@U) Int)
(declare-fun $generated@@168 () T@U)
(declare-fun $generated@@171 (T@U) Int)
(declare-fun $generated@@173 (T@U) T@U)
(declare-fun $generated@@175 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@5 $generated@@6) 0) (= ($generated@@5 $generated@@7) 1)) (= ($generated@@5 $generated@@8) 2)) (forall (($generated@@15 Bool) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Int) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Real) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4)
)
(assert (= ($generated@@21 $generated@@1) 0))
(assert (= ($generated@@22 $generated) $generated@@0))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ) (!  (=> (and (or (not (= $generated@@29 $generated@@25)) (not true)) (= ($generated@@26 $generated@@29) ($generated@@24 $generated@@28))) ($generated@@27 $generated@@7 ($generated@@11 ($generated@@23 $generated@@29)) $generated))
 :pattern ( ($generated@@23 $generated@@29) ($generated@@24 $generated@@28))
)))
(assert (= ($generated@@5 $generated@@31) 3))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@34 ($generated@@32 $generated@@33) $generated@@35) ($generated@@30 $generated@@31 $generated@@34 ($generated@@24 $generated@@33) $generated@@35))
 :pattern ( ($generated@@30 $generated@@31 $generated@@34 ($generated@@32 $generated@@33) $generated@@35))
 :pattern ( ($generated@@30 $generated@@31 $generated@@34 ($generated@@24 $generated@@33) $generated@@35))
)))
(assert (= ($generated@@36 $generated@@37) 0))
(assert (forall (($generated@@40 T@U) ) (! ($generated@@39 ($generated@@38 $generated@@40))
 :pattern ( ($generated@@38 $generated@@40))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@42 $generated@@49 $generated@@50 ($generated@@46 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@51) $generated@@53) $generated@@51)
 :weight 0
)) (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (!  (or (= $generated@@58 $generated@@59) (= ($generated@@42 $generated@@54 $generated@@55 ($generated@@46 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@56) $generated@@59) ($generated@@42 $generated@@54 $generated@@55 $generated@@57 $generated@@59)))
 :weight 0
))) (= ($generated@@5 $generated@@43) 4)) (= ($generated@@5 $generated@@44) 5)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ) (= ($generated@@5 ($generated@@45 $generated@@60 $generated@@61)) 6))) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (! (= ($generated@@47 ($generated@@45 $generated@@62 $generated@@63)) $generated@@62)
 :pattern ( ($generated@@45 $generated@@62 $generated@@63))
))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@48 ($generated@@45 $generated@@64 $generated@@65)) $generated@@65)
 :pattern ( ($generated@@45 $generated@@64 $generated@@65))
))))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@30 $generated@@31 $generated@@67 ($generated@@24 $generated@@66) $generated@@68)  (or (= $generated@@67 $generated@@25) ($generated@@10 ($generated@@41 $generated@@6 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@68 $generated@@67) $generated@@1)))))
 :pattern ( ($generated@@30 $generated@@31 $generated@@67 ($generated@@24 $generated@@66) $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ) (!  (=> ($generated@@69 $generated@@70 $generated@@71) (forall (($generated@@72 T@U) ) (!  (=> ($generated@@10 ($generated@@41 $generated@@6 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@70 $generated@@72) $generated@@1))) ($generated@@10 ($generated@@41 $generated@@6 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@71 $generated@@72) $generated@@1))))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@71 $generated@@72) $generated@@1))
)))
 :pattern ( ($generated@@69 $generated@@70 $generated@@71))
)))
(assert (forall (($generated@@74 Int) ) (! (= ($generated@@73 $generated@@74) $generated@@74)
 :pattern ( ($generated@@73 $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@T) ) (! (= ($generated@@75 $generated@@77 $generated@@76) $generated@@76)
 :pattern ( ($generated@@75 $generated@@77 $generated@@76))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 Int) ) (!  (=> (and (and (and ($generated@@79 $generated@@82) (and (or (not (= $generated@@83 $generated@@25)) (not true)) (= ($generated@@26 $generated@@83) ($generated@@24 $generated@@81)))) (and (<= 0 $generated@@84) (< $generated@@84 ($generated@@23 $generated@@83)))) ($generated@@10 ($generated@@41 $generated@@6 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@82 $generated@@83) $generated@@1)))) ($generated@@80 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@82 $generated@@83) ($generated@@78 $generated@@84)) $generated@@81 $generated@@82))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@82 $generated@@83) ($generated@@78 $generated@@84)) ($generated@@24 $generated@@81))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@85 $generated@@87 ($generated@@41 $generated@@87 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@41 $generated@@87 $generated@@86))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ) (! (= ($generated@@27 $generated@@31 $generated@@89 ($generated@@32 $generated@@88))  (and ($generated@@27 $generated@@31 $generated@@89 ($generated@@24 $generated@@88)) (or (not (= $generated@@89 $generated@@25)) (not true))))
 :pattern ( ($generated@@27 $generated@@31 $generated@@89 ($generated@@32 $generated@@88)))
 :pattern ( ($generated@@27 $generated@@31 $generated@@89 ($generated@@24 $generated@@88)))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@T) ) (! (= ($generated@@80 ($generated@@85 $generated@@93 $generated@@90) $generated@@91 $generated@@92) ($generated@@30 $generated@@93 $generated@@90 $generated@@91 $generated@@92))
 :pattern ( ($generated@@80 ($generated@@85 $generated@@93 $generated@@90) $generated@@91 $generated@@92))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (!  (=> ($generated@@69 $generated@@94 $generated@@95) (=> ($generated@@80 $generated@@96 $generated@@97 $generated@@94) ($generated@@80 $generated@@96 $generated@@97 $generated@@95)))
 :pattern ( ($generated@@69 $generated@@94 $generated@@95) ($generated@@80 $generated@@96 $generated@@97 $generated@@94))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@T) ) (!  (=> ($generated@@69 $generated@@98 $generated@@99) (=> ($generated@@30 $generated@@102 $generated@@100 $generated@@101 $generated@@98) ($generated@@30 $generated@@102 $generated@@100 $generated@@101 $generated@@99)))
 :pattern ( ($generated@@69 $generated@@98 $generated@@99) ($generated@@30 $generated@@102 $generated@@100 $generated@@101 $generated@@98))
)))
(assert (forall (($generated@@104 T@U) ) (!  (and (= ($generated@@22 ($generated@@24 $generated@@104)) $generated@@2) (= ($generated@@103 ($generated@@24 $generated@@104)) $generated@@4))
 :pattern ( ($generated@@24 $generated@@104))
)))
(assert (forall (($generated@@105 T@U) ) (!  (and (= ($generated@@22 ($generated@@32 $generated@@105)) $generated@@3) (= ($generated@@103 ($generated@@32 $generated@@105)) $generated@@4))
 :pattern ( ($generated@@32 $generated@@105))
)))
(assert  (and (forall (($generated@@109 T@T) ($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@106 $generated@@109 $generated@@110 $generated@@111 ($generated@@108 $generated@@109 $generated@@110 $generated@@111 $generated@@113 $generated@@114 $generated@@115 $generated@@112) $generated@@114 $generated@@115) $generated@@112)
 :weight 0
)) (and (forall (($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (!  (or (= $generated@@121 $generated@@123) (= ($generated@@106 $generated@@116 $generated@@117 $generated@@118 ($generated@@108 $generated@@116 $generated@@117 $generated@@118 $generated@@120 $generated@@121 $generated@@122 $generated@@119) $generated@@123 $generated@@124) ($generated@@106 $generated@@116 $generated@@117 $generated@@118 $generated@@120 $generated@@123 $generated@@124)))
 :weight 0
)) (forall (($generated@@125 T@T) ($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (!  (or (= $generated@@131 $generated@@133) (= ($generated@@106 $generated@@125 $generated@@126 $generated@@127 ($generated@@108 $generated@@125 $generated@@126 $generated@@127 $generated@@129 $generated@@130 $generated@@131 $generated@@128) $generated@@132 $generated@@133) ($generated@@106 $generated@@125 $generated@@126 $generated@@127 $generated@@129 $generated@@132 $generated@@133)))
 :weight 0
)))))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@10 ($generated@@106 $generated@@31 $generated@@43 $generated@@6 ($generated@@107 $generated@@134 $generated@@135 $generated@@136 $generated@@137) $generated@@138 $generated@@139))  (=> (and (or (not (= $generated@@138 $generated@@134)) (not true)) ($generated@@10 ($generated@@41 $generated@@6 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@135 $generated@@138) $generated@@136)))) (= $generated@@138 $generated@@137)))
 :pattern ( ($generated@@106 $generated@@31 $generated@@43 $generated@@6 ($generated@@107 $generated@@134 $generated@@135 $generated@@136 $generated@@137) $generated@@138 $generated@@139))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ) (! (= ($generated@@27 $generated@@31 $generated@@141 ($generated@@24 $generated@@140))  (or (= $generated@@141 $generated@@25) (= ($generated@@26 $generated@@141) ($generated@@24 $generated@@140))))
 :pattern ( ($generated@@27 $generated@@31 $generated@@141 ($generated@@24 $generated@@140)))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ) (! (= (exists (($generated@@146 Int) ) (!  (and (and (<= 0 $generated@@146) (< $generated@@146 ($generated@@36 $generated@@144))) (= $generated@@145 ($generated@@143 $generated@@144 $generated@@146)))
 :pattern ( ($generated@@143 $generated@@144 $generated@@146))
)) (< 0 ($generated@@142 ($generated@@38 $generated@@144) $generated@@145)))
 :pattern ( ($generated@@142 ($generated@@38 $generated@@144) $generated@@145))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ) (! (forall (($generated@@150 Int) ) (!  (=> (and (<= 0 $generated@@150) (< $generated@@150 ($generated@@36 ($generated@@147 $generated@@148 $generated@@149)))) (= ($generated@@143 ($generated@@147 $generated@@148 $generated@@149) $generated@@150) ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@148 $generated@@149) ($generated@@78 $generated@@150))))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@148 $generated@@149) ($generated@@78 $generated@@150)))
 :pattern ( ($generated@@143 ($generated@@147 $generated@@148 $generated@@149) $generated@@150))
))
 :pattern ( ($generated@@147 $generated@@148 $generated@@149))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (!  (=> ($generated@@151 $generated@@152 $generated@@153) (= $generated@@152 $generated@@153))
 :pattern ( ($generated@@151 $generated@@152 $generated@@153))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (!  (=> (or (not (= $generated@@154 $generated@@156)) (not true)) (=> (and ($generated@@69 $generated@@154 $generated@@155) ($generated@@69 $generated@@155 $generated@@156)) ($generated@@69 $generated@@154 $generated@@156)))
 :pattern ( ($generated@@69 $generated@@154 $generated@@155) ($generated@@69 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ) (!  (=> ($generated@@157 $generated@@158 $generated) (and (= ($generated@@85 $generated@@7 ($generated@@41 $generated@@7 $generated@@158)) $generated@@158) ($generated@@27 $generated@@7 ($generated@@41 $generated@@7 $generated@@158) $generated)))
 :pattern ( ($generated@@157 $generated@@158 $generated))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@T) ) (! (= ($generated@@157 ($generated@@85 $generated@@161 $generated@@159) $generated@@160) ($generated@@27 $generated@@161 $generated@@159 $generated@@160))
 :pattern ( ($generated@@157 ($generated@@85 $generated@@161 $generated@@159) $generated@@160))
)))
(assert (forall (($generated@@163 T@U) ) (! (= ($generated@@39 $generated@@163) (forall (($generated@@164 T@U) ) (!  (and (<= 0 ($generated@@142 $generated@@163 $generated@@164)) (<= ($generated@@142 $generated@@163 $generated@@164) ($generated@@162 $generated@@163)))
 :pattern ( ($generated@@142 $generated@@163 $generated@@164))
)))
 :pattern ( ($generated@@39 $generated@@163))
)))
(assert (forall (($generated@@165 T@U) ) (! (<= 0 ($generated@@23 $generated@@165))
 :pattern ( ($generated@@23 $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ) (! (<= 0 ($generated@@162 $generated@@166))
 :pattern ( ($generated@@162 $generated@@166))
)))
(assert (forall (($generated@@167 T@U) ) (! (<= 0 ($generated@@36 $generated@@167))
 :pattern ( ($generated@@36 $generated@@167))
)))
(assert (forall (($generated@@169 T@U) ) (! (= ($generated@@142 $generated@@168 $generated@@169) 0)
 :pattern ( ($generated@@142 $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@170 Int) ) (! (= ($generated@@21 ($generated@@78 $generated@@170)) 1)
 :pattern ( ($generated@@78 $generated@@170))
)))
(assert (forall (($generated@@172 Int) ) (! (= ($generated@@171 ($generated@@78 $generated@@172)) $generated@@172)
 :pattern ( ($generated@@78 $generated@@172))
)))
(assert (forall (($generated@@174 T@U) ) (! (= ($generated@@173 ($generated@@24 $generated@@174)) $generated@@174)
 :pattern ( ($generated@@24 $generated@@174))
)))
(assert (forall (($generated@@176 T@U) ) (! (= ($generated@@175 ($generated@@32 $generated@@176)) $generated@@176)
 :pattern ( ($generated@@32 $generated@@176))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@T) ) (! (= ($generated@@41 $generated@@178 ($generated@@85 $generated@@178 $generated@@177)) $generated@@177)
 :pattern ( ($generated@@85 $generated@@178 $generated@@177))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (=> (and (and ($generated@@79 $generated@@180) (and (or (not (= $generated@@181 $generated@@25)) (not true)) (= ($generated@@26 $generated@@181) ($generated@@24 $generated@@179)))) ($generated@@10 ($generated@@41 $generated@@6 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@180 $generated@@181) $generated@@1)))) ($generated@@30 $generated@@7 ($generated@@11 ($generated@@23 $generated@@181)) $generated $generated@@180))
 :pattern ( ($generated@@23 $generated@@181) ($generated@@41 $generated@@6 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@180 $generated@@181) $generated@@1)) ($generated@@24 $generated@@179))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 Int) ) (!  (=> (and (and ($generated@@79 $generated@@183) (and (or (not (= $generated@@184 $generated@@25)) (not true)) (= ($generated@@26 $generated@@184) ($generated@@24 $generated@@182)))) (and (<= 0 $generated@@185) (< $generated@@185 ($generated@@23 $generated@@184)))) ($generated@@157 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@183 $generated@@184) ($generated@@78 $generated@@185)) $generated@@182))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@183 $generated@@184) ($generated@@78 $generated@@185)) ($generated@@24 $generated@@182))
)))
(assert (forall (($generated@@186 T@U) ) (!  (and (= (= ($generated@@162 $generated@@186) 0) (= $generated@@186 $generated@@168)) (=> (or (not (= ($generated@@162 $generated@@186) 0)) (not true)) (exists (($generated@@187 T@U) ) (! (< 0 ($generated@@142 $generated@@186 $generated@@187))
 :pattern ( ($generated@@142 $generated@@186 $generated@@187))
))))
 :pattern ( ($generated@@162 $generated@@186))
)))
(assert (forall (($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 T@U) ) (!  (=> (and (and (and ($generated@@79 $generated@@188) ($generated@@79 $generated@@189)) ($generated@@69 $generated@@188 $generated@@189)) (= ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@188 $generated@@190) ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@189 $generated@@190))) (= ($generated@@147 $generated@@188 $generated@@190) ($generated@@147 $generated@@189 $generated@@190)))
 :pattern ( ($generated@@147 $generated@@189 $generated@@190) ($generated@@69 $generated@@188 $generated@@189))
)))
(assert (forall (($generated@@191 T@U) ($generated@@192 T@U) ) (! (= ($generated@@36 ($generated@@147 $generated@@191 $generated@@192)) ($generated@@23 $generated@@192))
 :pattern ( ($generated@@36 ($generated@@147 $generated@@191 $generated@@192)))
)))
(assert (forall (($generated@@193 T@U) ) (! (= ($generated@@162 ($generated@@38 $generated@@193)) ($generated@@36 $generated@@193))
 :pattern ( ($generated@@162 ($generated@@38 $generated@@193)))
)))
(assert (forall (($generated@@194 T@U) ($generated@@195 T@U) ) (!  (=> ($generated@@157 $generated@@195 ($generated@@24 $generated@@194)) (and (= ($generated@@85 $generated@@31 ($generated@@41 $generated@@31 $generated@@195)) $generated@@195) ($generated@@27 $generated@@31 ($generated@@41 $generated@@31 $generated@@195) ($generated@@24 $generated@@194))))
 :pattern ( ($generated@@157 $generated@@195 ($generated@@24 $generated@@194)))
)))
(assert (forall (($generated@@196 T@U) ($generated@@197 T@U) ) (!  (=> ($generated@@157 $generated@@197 ($generated@@32 $generated@@196)) (and (= ($generated@@85 $generated@@31 ($generated@@41 $generated@@31 $generated@@197)) $generated@@197) ($generated@@27 $generated@@31 ($generated@@41 $generated@@31 $generated@@197) ($generated@@32 $generated@@196))))
 :pattern ( ($generated@@157 $generated@@197 ($generated@@32 $generated@@196)))
)))
(assert (= ($generated@@38 $generated@@37) $generated@@168))
(assert (forall (($generated@@198 Int) ) (! (= ($generated@@85 $generated@@7 ($generated@@11 ($generated@@73 $generated@@198))) ($generated@@75 $generated@@44 ($generated@@85 $generated@@7 ($generated@@11 $generated@@198))))
 :pattern ( ($generated@@85 $generated@@7 ($generated@@11 ($generated@@73 $generated@@198))))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@T) ) (! (= ($generated@@85 $generated@@200 ($generated@@75 $generated@@200 $generated@@199)) ($generated@@75 $generated@@44 ($generated@@85 $generated@@200 $generated@@199)))
 :pattern ( ($generated@@85 $generated@@200 ($generated@@75 $generated@@200 $generated@@199)))
)))
(assert (forall (($generated@@201 T@U) ) (!  (=> (= ($generated@@36 $generated@@201) 0) (= $generated@@201 $generated@@37))
 :pattern ( ($generated@@36 $generated@@201))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ) (! (= ($generated@@151 $generated@@202 $generated@@203) (forall (($generated@@204 T@U) ) (! (= ($generated@@142 $generated@@202 $generated@@204) ($generated@@142 $generated@@203 $generated@@204))
 :pattern ( ($generated@@142 $generated@@202 $generated@@204))
 :pattern ( ($generated@@142 $generated@@203 $generated@@204))
)))
 :pattern ( ($generated@@151 $generated@@202 $generated@@203))
)))
(assert (forall (($generated@@205 T@U) ($generated@@206 T@U) ) (! ($generated@@30 $generated@@7 $generated@@206 $generated $generated@@205)
 :pattern ( ($generated@@30 $generated@@7 $generated@@206 $generated $generated@@205))
)))
(assert (forall (($generated@@207 T@U) ) (! ($generated@@27 $generated@@7 $generated@@207 $generated)
 :pattern ( ($generated@@27 $generated@@7 $generated@@207 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@208 () T@U)
(declare-fun $generated@@209 () T@U)
(declare-fun $generated@@210 () T@U)
(declare-fun $generated@@211 () Int)
(declare-fun $generated@@212 () Int)
(declare-fun $generated@@213 () T@U)
(declare-fun $generated@@214 () Int)
(declare-fun $generated@@215 (T@U) Bool)
(declare-fun $generated@@216 () T@U)
(declare-fun $generated@@217 () Int)
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
 (=> (= (ControlFlow 0 0) 32) (let (($generated@@218  (=> (forall (($generated@@219 Int) ) (!  (=> (and (and (and (<= ($generated@@73 0) $generated@@219) (< $generated@@219 ($generated@@23 $generated@@209))) (or (not (= $generated@@219 $generated@@211)) (not true))) (or (not (= $generated@@219 $generated@@212)) (not true))) (= ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@210 $generated@@209) ($generated@@78 $generated@@219)) ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@208 $generated@@209) ($generated@@78 $generated@@219))))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@208 $generated@@209) ($generated@@78 $generated@@219)))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@210 $generated@@209) ($generated@@78 $generated@@219)))
)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= $generated@@209 $generated@@25)) (not true))) (=> (or (not (= $generated@@209 $generated@@25)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $generated@@209 $generated@@25)) (not true))) (=> (or (not (= $generated@@209 $generated@@25)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) ($generated@@30 $generated@@31 $generated@@209 ($generated@@24 $generated@@213) $generated@@208)))))))))
(let (($generated@@220  (=> (and (and (<= ($generated@@73 0) $generated@@214) (< $generated@@214 ($generated@@23 $generated@@209))) (and (or (not (= $generated@@214 $generated@@211)) (not true)) (or (not (= $generated@@214 $generated@@212)) (not true)))) (and (=> (= (ControlFlow 0 6) (- 0 11)) (or (not (= $generated@@209 $generated@@25)) (not true))) (=> (or (not (= $generated@@209 $generated@@25)) (not true)) (and (=> (= (ControlFlow 0 6) (- 0 10)) (and (<= 0 $generated@@214) (< $generated@@214 ($generated@@23 $generated@@209)))) (=> (and (<= 0 $generated@@214) (< $generated@@214 ($generated@@23 $generated@@209))) (and (=> (= (ControlFlow 0 6) (- 0 9)) (or (not (= $generated@@209 $generated@@25)) (not true))) (=> (or (not (= $generated@@209 $generated@@25)) (not true)) (and (=> (= (ControlFlow 0 6) (- 0 8)) ($generated@@30 $generated@@31 $generated@@209 ($generated@@24 $generated@@213) $generated@@208)) (=> ($generated@@30 $generated@@31 $generated@@209 ($generated@@24 $generated@@213) $generated@@208) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (<= 0 $generated@@214) (< $generated@@214 ($generated@@23 $generated@@209)))) (=> (and (<= 0 $generated@@214) (< $generated@@214 ($generated@@23 $generated@@209))) (=> (and (= ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@210 $generated@@209) ($generated@@78 $generated@@214)) ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@208 $generated@@209) ($generated@@78 $generated@@214))) (= (ControlFlow 0 6) 2)) $generated@@218))))))))))))))
(let (($generated@@221  (=> (and (< $generated@@214 ($generated@@73 0)) (= (ControlFlow 0 14) 6)) $generated@@220)))
(let (($generated@@222  (=> (<= ($generated@@73 0) $generated@@214) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (not (= $generated@@209 $generated@@25)) (not true))) (=> (or (not (= $generated@@209 $generated@@25)) (not true)) (=> (= (ControlFlow 0 12) 6) $generated@@220))))))
(let (($generated@@223  (=> (and (=> (and (and (and (<= ($generated@@73 0) $generated@@214) (< $generated@@214 ($generated@@23 $generated@@209))) (or (not (= $generated@@214 $generated@@211)) (not true))) (or (not (= $generated@@214 $generated@@212)) (not true))) (= ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@210 $generated@@209) ($generated@@78 $generated@@214)) ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@208 $generated@@209) ($generated@@78 $generated@@214)))) (= (ControlFlow 0 5) 2)) $generated@@218)))
(let (($generated@@224  (=> (and (and (and (<= ($generated@@73 0) $generated@@211) (< $generated@@211 $generated@@212)) (< $generated@@212 ($generated@@23 $generated@@209))) (and (and ($generated@@79 $generated@@210) ($generated@@215 $generated@@210)) (and (forall (($generated@@225 T@U) ) (!  (=> (and (or (not (= $generated@@225 $generated@@25)) (not true)) ($generated@@10 ($generated@@41 $generated@@6 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@208 $generated@@225) $generated@@1)))) (or (= ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@210 $generated@@225) ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@208 $generated@@225)) (= $generated@@225 $generated@@209)))
 :pattern ( ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@210 $generated@@225))
)) ($generated@@69 $generated@@208 $generated@@210)))) (and (=> (= (ControlFlow 0 15) (- 0 25)) (or (not (= $generated@@209 $generated@@25)) (not true))) (=> (or (not (= $generated@@209 $generated@@25)) (not true)) (and (=> (= (ControlFlow 0 15) (- 0 24)) (and (<= 0 $generated@@211) (< $generated@@211 ($generated@@23 $generated@@209)))) (=> (and (<= 0 $generated@@211) (< $generated@@211 ($generated@@23 $generated@@209))) (and (=> (= (ControlFlow 0 15) (- 0 23)) (or (not (= $generated@@209 $generated@@25)) (not true))) (=> (or (not (= $generated@@209 $generated@@25)) (not true)) (and (=> (= (ControlFlow 0 15) (- 0 22)) ($generated@@30 $generated@@31 $generated@@209 ($generated@@24 $generated@@213) $generated@@208)) (=> ($generated@@30 $generated@@31 $generated@@209 ($generated@@24 $generated@@213) $generated@@208) (and (=> (= (ControlFlow 0 15) (- 0 21)) (and (<= 0 $generated@@212) (< $generated@@212 ($generated@@23 $generated@@209)))) (=> (and (<= 0 $generated@@212) (< $generated@@212 ($generated@@23 $generated@@209))) (=> (= ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@210 $generated@@209) ($generated@@78 $generated@@211)) ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@208 $generated@@209) ($generated@@78 $generated@@212))) (and (=> (= (ControlFlow 0 15) (- 0 20)) (or (not (= $generated@@209 $generated@@25)) (not true))) (=> (or (not (= $generated@@209 $generated@@25)) (not true)) (and (=> (= (ControlFlow 0 15) (- 0 19)) (and (<= 0 $generated@@212) (< $generated@@212 ($generated@@23 $generated@@209)))) (=> (and (<= 0 $generated@@212) (< $generated@@212 ($generated@@23 $generated@@209))) (and (=> (= (ControlFlow 0 15) (- 0 18)) (or (not (= $generated@@209 $generated@@25)) (not true))) (=> (or (not (= $generated@@209 $generated@@25)) (not true)) (and (=> (= (ControlFlow 0 15) (- 0 17)) ($generated@@30 $generated@@31 $generated@@209 ($generated@@24 $generated@@213) $generated@@208)) (=> ($generated@@30 $generated@@31 $generated@@209 ($generated@@24 $generated@@213) $generated@@208) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (<= 0 $generated@@211) (< $generated@@211 ($generated@@23 $generated@@209)))) (=> (and (<= 0 $generated@@211) (< $generated@@211 ($generated@@23 $generated@@209))) (=> (= ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@210 $generated@@209) ($generated@@78 $generated@@212)) ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@31 ($generated@@45 $generated@@43 $generated@@44) $generated@@208 $generated@@209) ($generated@@78 $generated@@211))) (and (and (=> (= (ControlFlow 0 15) 5) $generated@@223) (=> (= (ControlFlow 0 15) 12) $generated@@222)) (=> (= (ControlFlow 0 15) 14) $generated@@221)))))))))))))))))))))))))))
(let (($generated@@226  (=> (and (not (and (<= ($generated@@73 0) $generated@@211) (< $generated@@211 $generated@@212))) (= (ControlFlow 0 28) 15)) $generated@@224)))
(let (($generated@@227  (=> (and (<= ($generated@@73 0) $generated@@211) (< $generated@@211 $generated@@212)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (or (not (= $generated@@209 $generated@@25)) (not true))) (=> (or (not (= $generated@@209 $generated@@25)) (not true)) (=> (= (ControlFlow 0 26) 15) $generated@@224))))))
(let (($generated@@228  (=> (< $generated@@211 ($generated@@73 0)) (and (=> (= (ControlFlow 0 30) 26) $generated@@227) (=> (= (ControlFlow 0 30) 28) $generated@@226)))))
(let (($generated@@229  (=> (<= ($generated@@73 0) $generated@@211) (and (=> (= (ControlFlow 0 29) 26) $generated@@227) (=> (= (ControlFlow 0 29) 28) $generated@@226)))))
(let (($generated@@230  (=> (= $generated@@216 ($generated@@107 $generated@@25 $generated@@208 $generated@@1 $generated@@209)) (and (=> (= (ControlFlow 0 31) 29) $generated@@229) (=> (= (ControlFlow 0 31) 30) $generated@@228)))))
(let (($generated@@231  (=> (and ($generated@@79 $generated@@208) ($generated@@215 $generated@@208)) (=> (and (and ($generated@@27 $generated@@31 $generated@@209 ($generated@@32 $generated@@213)) ($generated@@30 $generated@@31 $generated@@209 ($generated@@32 $generated@@213) $generated@@208)) (and (= 0 $generated@@217) (= (ControlFlow 0 32) 31))) $generated@@230))))
$generated@@231)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)