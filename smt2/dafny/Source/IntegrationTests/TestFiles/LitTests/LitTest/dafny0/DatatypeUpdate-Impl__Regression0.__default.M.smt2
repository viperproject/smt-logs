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
(declare-fun $generated@@9 () T@U)
(declare-fun $generated@@10 () T@U)
(declare-fun $generated@@11 () T@U)
(declare-fun $generated@@12 () T@U)
(declare-fun $generated@@13 (T@T) Int)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 () T@T)
(declare-fun $generated@@17 (Bool) T@U)
(declare-fun $generated@@18 (T@U) Bool)
(declare-fun $generated@@19 (Int) T@U)
(declare-fun $generated@@20 (T@U) Int)
(declare-fun $generated@@21 (Real) T@U)
(declare-fun $generated@@22 (T@U) Real)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (T@U) Bool)
(declare-fun $generated@@31 (T@U) Bool)
(declare-fun $generated@@33 (T@U) Bool)
(declare-fun $generated@@34 (T@T T@U T@U) Bool)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@40 () T@U)
(declare-fun $generated@@42 (T@U) Bool)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@45 (T@U T@U) T@U)
(declare-fun $generated@@46 (T@U T@U) Bool)
(declare-fun $generated@@51 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@52 (T@U) Bool)
(declare-fun $generated@@53 (T@U T@U T@U) Bool)
(declare-fun $generated@@59 (T@U) T@U)
(declare-fun $generated@@63 (T@T T@U) T@U)
(declare-fun $generated@@64 (T@T T@U) T@U)
(declare-fun $generated@@70 () T@T)
(declare-fun $generated@@71 (T@U) T@U)
(declare-fun $generated@@72 (T@U T@U) Bool)
(declare-fun $generated@@76 (T@U) T@U)
(declare-fun $generated@@79 (T@U) T@U)
(declare-fun $generated@@88 () T@U)
(declare-fun $generated@@90 (T@U) T@U)
(declare-fun $generated@@91 (T@U) Int)
(declare-fun $generated@@92 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@93 () T@T)
(declare-fun $generated@@94 (T@U) T@U)
(declare-fun $generated@@95 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@109 () T@T)
(declare-fun $generated@@110 (T@U T@U) T@U)
(declare-fun $generated@@124 (T@U) T@U)
(declare-fun $generated@@127 (T@U) T@U)
(declare-fun $generated@@134 (T@U) T@U)
(declare-fun $generated@@137 (T@U) T@U)
(declare-fun $generated@@140 (T@U) T@U)
(declare-fun $generated@@143 (T@U) T@U)
(declare-fun $generated@@146 (T@U) T@U)
(declare-fun $generated@@150 (T@U) T@U)
(declare-fun $generated@@153 (T@U) T@U)
(declare-fun $generated@@162 (T@U) Int)
(declare-fun $generated@@167 () T@U)
(declare-fun $generated@@175 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@176 () T@T)
(declare-fun $generated@@177 () T@T)
(declare-fun $generated@@178 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@179 (T@T T@T) T@T)
(declare-fun $generated@@180 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@181 (T@T) T@T)
(declare-fun $generated@@182 (T@T) T@T)
(declare-fun $generated@@220 (T@U) T@U)
(declare-fun $generated@@225 (T@U) T@U)
(declare-fun $generated@@228 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@13 $generated@@14) 0) (= ($generated@@13 $generated@@15) 1)) (= ($generated@@13 $generated@@16) 2)) (forall (($generated@@23 Bool) ) (! (= ($generated@@18 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 T@U) ) (! (= ($generated@@17 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 Int) ) (! (= ($generated@@20 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 T@U) ) (! (= ($generated@@19 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 Real) ) (! (= ($generated@@22 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 T@U) ) (! (= ($generated@@21 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12)
)
(assert (= ($generated@@29 $generated) $generated@@0))
(assert (forall (($generated@@32 T@U) ) (!  (=> ($generated@@30 $generated@@32) ($generated@@31 $generated@@32))
 :pattern ( ($generated@@30 $generated@@32))
)))
(assert (= ($generated@@13 $generated@@35) 3))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ) (!  (=> ($generated@@34 $generated@@35 $generated@@39 ($generated@@36 $generated@@37 $generated@@38)) ($generated@@33 $generated@@39))
 :pattern ( ($generated@@33 $generated@@39) ($generated@@34 $generated@@35 $generated@@39 ($generated@@36 $generated@@37 $generated@@38)))
)))
(assert (forall (($generated@@41 T@U) ) (!  (=> ($generated@@34 $generated@@35 $generated@@41 $generated@@40) ($generated@@31 $generated@@41))
 :pattern ( ($generated@@31 $generated@@41) ($generated@@34 $generated@@35 $generated@@41 $generated@@40))
)))
(assert (forall (($generated@@44 T@U) ) (!  (=> ($generated@@34 $generated@@35 $generated@@44 $generated@@43) ($generated@@42 $generated@@44))
 :pattern ( ($generated@@42 $generated@@44) ($generated@@34 $generated@@35 $generated@@44 $generated@@43))
)))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@34 $generated@@35 ($generated@@45 $generated@@49 $generated@@50) ($generated@@36 $generated@@47 $generated@@48))  (and ($generated@@46 $generated@@49 $generated@@47) ($generated@@46 $generated@@50 $generated@@48)))
 :pattern ( ($generated@@34 $generated@@35 ($generated@@45 $generated@@49 $generated@@50) ($generated@@36 $generated@@47 $generated@@48)))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (!  (=> ($generated@@52 $generated@@58) (= ($generated@@51 $generated@@35 ($generated@@45 $generated@@56 $generated@@57) ($generated@@36 $generated@@54 $generated@@55) $generated@@58)  (and ($generated@@53 $generated@@56 $generated@@54 $generated@@58) ($generated@@53 $generated@@57 $generated@@55 $generated@@58))))
 :pattern ( ($generated@@51 $generated@@35 ($generated@@45 $generated@@56 $generated@@57) ($generated@@36 $generated@@54 $generated@@55) $generated@@58))
)))
(assert (forall (($generated@@60 T@U) ) (! (= ($generated@@33 $generated@@60) (= ($generated@@59 $generated@@60) $generated@@4))
 :pattern ( ($generated@@33 $generated@@60))
)))
(assert (forall (($generated@@61 T@U) ) (! (= ($generated@@31 $generated@@61) (= ($generated@@59 $generated@@61) $generated@@8))
 :pattern ( ($generated@@31 $generated@@61))
)))
(assert (forall (($generated@@62 T@U) ) (! (= ($generated@@42 $generated@@62) (= ($generated@@59 $generated@@62) $generated@@9))
 :pattern ( ($generated@@42 $generated@@62))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@T) ) (! (= ($generated@@64 $generated@@66 ($generated@@63 $generated@@66 $generated@@65)) $generated@@65)
 :pattern ( ($generated@@63 $generated@@66 $generated@@65))
)))
(assert (forall (($generated@@67 T@U) ) (!  (=> ($generated@@33 $generated@@67) (exists (($generated@@68 T@U) ($generated@@69 T@U) ) (= $generated@@67 ($generated@@45 $generated@@68 $generated@@69))))
 :pattern ( ($generated@@33 $generated@@67))
)))
(assert (= ($generated@@13 $generated@@70) 4))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ) (! (= ($generated@@34 $generated@@70 $generated@@73 ($generated@@71 $generated@@74)) (forall (($generated@@75 T@U) ) (!  (=> ($generated@@72 $generated@@73 $generated@@75) ($generated@@46 $generated@@75 $generated@@74))
 :pattern ( ($generated@@72 $generated@@73 $generated@@75))
)))
 :pattern ( ($generated@@34 $generated@@70 $generated@@73 ($generated@@71 $generated@@74)))
)))
(assert (forall (($generated@@77 T@U) ) (!  (=> ($generated@@31 $generated@@77) (exists (($generated@@78 T@U) ) (= $generated@@77 ($generated@@76 $generated@@78))))
 :pattern ( ($generated@@31 $generated@@77))
)))
(assert (forall (($generated@@80 T@U) ) (!  (=> ($generated@@42 $generated@@80) (exists (($generated@@81 T@U) ) (= $generated@@80 ($generated@@79 $generated@@81))))
 :pattern ( ($generated@@42 $generated@@80))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@T) ) (! (= ($generated@@53 ($generated@@64 $generated@@85 $generated@@82) $generated@@83 $generated@@84) ($generated@@51 $generated@@85 $generated@@82 $generated@@83 $generated@@84))
 :pattern ( ($generated@@53 ($generated@@64 $generated@@85 $generated@@82) $generated@@83 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ) (!  (=> ($generated@@46 $generated@@86 $generated@@40) (and (= ($generated@@64 $generated@@35 ($generated@@63 $generated@@35 $generated@@86)) $generated@@86) ($generated@@34 $generated@@35 ($generated@@63 $generated@@35 $generated@@86) $generated@@40)))
 :pattern ( ($generated@@46 $generated@@86 $generated@@40))
)))
(assert (forall (($generated@@87 T@U) ) (!  (=> ($generated@@46 $generated@@87 $generated@@43) (and (= ($generated@@64 $generated@@35 ($generated@@63 $generated@@35 $generated@@87)) $generated@@87) ($generated@@34 $generated@@35 ($generated@@63 $generated@@35 $generated@@87) $generated@@43)))
 :pattern ( ($generated@@46 $generated@@87 $generated@@43))
)))
(assert (forall (($generated@@89 T@U) ) (! (= ($generated@@34 $generated@@35 ($generated@@79 $generated@@89) $generated@@43) ($generated@@46 $generated@@89 $generated@@88))
 :pattern ( ($generated@@34 $generated@@35 ($generated@@79 $generated@@89) $generated@@43))
)))
(assert  (and (and (forall (($generated@@96 T@T) ($generated@@97 T@T) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ) (! (= ($generated@@92 $generated@@96 $generated@@97 ($generated@@95 $generated@@96 $generated@@97 $generated@@99 $generated@@100 $generated@@98) $generated@@100) $generated@@98)
 :weight 0
)) (forall (($generated@@101 T@T) ($generated@@102 T@T) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (!  (or (= $generated@@105 $generated@@106) (= ($generated@@92 $generated@@101 $generated@@102 ($generated@@95 $generated@@101 $generated@@102 $generated@@104 $generated@@105 $generated@@103) $generated@@106) ($generated@@92 $generated@@101 $generated@@102 $generated@@104 $generated@@106)))
 :weight 0
))) (= ($generated@@13 $generated@@93) 5)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ) (!  (=> ($generated@@72 ($generated@@90 $generated@@107) $generated@@108) (< ($generated@@91 ($generated@@63 $generated@@35 ($generated@@92 $generated@@93 $generated@@93 ($generated@@94 $generated@@107) $generated@@108))) ($generated@@91 ($generated@@76 $generated@@107))))
 :pattern ( ($generated@@72 ($generated@@90 $generated@@107) $generated@@108) ($generated@@76 $generated@@107))
)))
(assert (= ($generated@@13 $generated@@109) 6))
(assert (forall (($generated@@111 T@U) ) (! (= ($generated@@34 $generated@@35 ($generated@@76 $generated@@111) $generated@@40) ($generated@@34 $generated@@109 $generated@@111 ($generated@@110 $generated $generated@@43)))
 :pattern ( ($generated@@34 $generated@@35 ($generated@@76 $generated@@111) $generated@@40))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ) (!  (=> ($generated@@52 $generated@@113) (= ($generated@@51 $generated@@35 ($generated@@79 $generated@@112) $generated@@43 $generated@@113) ($generated@@53 $generated@@112 $generated@@88 $generated@@113)))
 :pattern ( ($generated@@51 $generated@@35 ($generated@@79 $generated@@112) $generated@@43 $generated@@113))
)))
(assert (forall (($generated@@114 T@U) ) (!  (=> ($generated@@46 $generated@@114 $generated) (and (= ($generated@@64 $generated@@15 ($generated@@63 $generated@@15 $generated@@114)) $generated@@114) ($generated@@34 $generated@@15 ($generated@@63 $generated@@15 $generated@@114) $generated)))
 :pattern ( ($generated@@46 $generated@@114 $generated))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@T) ) (! (= ($generated@@46 ($generated@@64 $generated@@117 $generated@@115) $generated@@116) ($generated@@34 $generated@@117 $generated@@115 $generated@@116))
 :pattern ( ($generated@@46 ($generated@@64 $generated@@117 $generated@@115) $generated@@116))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ) (!  (=> ($generated@@52 $generated@@119) (= ($generated@@51 $generated@@35 ($generated@@76 $generated@@118) $generated@@40 $generated@@119) ($generated@@51 $generated@@109 $generated@@118 ($generated@@110 $generated $generated@@43) $generated@@119)))
 :pattern ( ($generated@@51 $generated@@35 ($generated@@76 $generated@@118) $generated@@40 $generated@@119))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (! (= ($generated@@51 $generated@@70 $generated@@120 ($generated@@71 $generated@@121) $generated@@122) (forall (($generated@@123 T@U) ) (!  (=> ($generated@@72 $generated@@120 $generated@@123) ($generated@@53 $generated@@123 $generated@@121 $generated@@122))
 :pattern ( ($generated@@72 $generated@@120 $generated@@123))
)))
 :pattern ( ($generated@@51 $generated@@70 $generated@@120 ($generated@@71 $generated@@121) $generated@@122))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@124 ($generated@@110 $generated@@125 $generated@@126)) $generated@@125)
 :pattern ( ($generated@@110 $generated@@125 $generated@@126))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (! (= ($generated@@127 ($generated@@110 $generated@@128 $generated@@129)) $generated@@129)
 :pattern ( ($generated@@110 $generated@@128 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@29 ($generated@@110 $generated@@130 $generated@@131)) $generated@@2)
 :pattern ( ($generated@@110 $generated@@130 $generated@@131))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@59 ($generated@@45 $generated@@132 $generated@@133)) $generated@@4)
 :pattern ( ($generated@@45 $generated@@132 $generated@@133))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@134 ($generated@@36 $generated@@135 $generated@@136)) $generated@@135)
 :pattern ( ($generated@@36 $generated@@135 $generated@@136))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@137 ($generated@@36 $generated@@138 $generated@@139)) $generated@@139)
 :pattern ( ($generated@@36 $generated@@138 $generated@@139))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ) (! (= ($generated@@140 ($generated@@45 $generated@@141 $generated@@142)) $generated@@141)
 :pattern ( ($generated@@45 $generated@@141 $generated@@142))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ) (! (= ($generated@@143 ($generated@@45 $generated@@144 $generated@@145)) $generated@@145)
 :pattern ( ($generated@@45 $generated@@144 $generated@@145))
)))
(assert (forall (($generated@@147 T@U) ) (! (= ($generated@@146 ($generated@@71 $generated@@147)) $generated@@147)
 :pattern ( ($generated@@71 $generated@@147))
)))
(assert (forall (($generated@@148 T@U) ) (! (= ($generated@@29 ($generated@@71 $generated@@148)) $generated@@1)
 :pattern ( ($generated@@71 $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ) (! (= ($generated@@59 ($generated@@76 $generated@@149)) $generated@@8)
 :pattern ( ($generated@@76 $generated@@149))
)))
(assert (forall (($generated@@151 T@U) ) (! (= ($generated@@150 ($generated@@76 $generated@@151)) $generated@@151)
 :pattern ( ($generated@@76 $generated@@151))
)))
(assert (forall (($generated@@152 T@U) ) (! (= ($generated@@59 ($generated@@79 $generated@@152)) $generated@@9)
 :pattern ( ($generated@@79 $generated@@152))
)))
(assert (forall (($generated@@154 T@U) ) (! (= ($generated@@153 ($generated@@79 $generated@@154)) $generated@@154)
 :pattern ( ($generated@@79 $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@T) ) (! (= ($generated@@63 $generated@@156 ($generated@@64 $generated@@156 $generated@@155)) $generated@@155)
 :pattern ( ($generated@@64 $generated@@156 $generated@@155))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ) (! (= ($generated@@51 $generated@@109 $generated@@157 ($generated@@110 $generated@@158 $generated@@159) $generated@@160) (forall (($generated@@161 T@U) ) (!  (=> ($generated@@72 ($generated@@90 $generated@@157) $generated@@161) (and ($generated@@53 ($generated@@92 $generated@@93 $generated@@93 ($generated@@94 $generated@@157) $generated@@161) $generated@@159 $generated@@160) ($generated@@53 $generated@@161 $generated@@158 $generated@@160)))
 :pattern ( ($generated@@92 $generated@@93 $generated@@93 ($generated@@94 $generated@@157) $generated@@161))
 :pattern ( ($generated@@72 ($generated@@90 $generated@@157) $generated@@161))
)))
 :pattern ( ($generated@@51 $generated@@109 $generated@@157 ($generated@@110 $generated@@158 $generated@@159) $generated@@160))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ) (! (< ($generated@@162 $generated@@163) ($generated@@91 ($generated@@45 $generated@@163 $generated@@164)))
 :pattern ( ($generated@@45 $generated@@163 $generated@@164))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (! (< ($generated@@162 $generated@@166) ($generated@@91 ($generated@@45 $generated@@165 $generated@@166)))
 :pattern ( ($generated@@45 $generated@@165 $generated@@166))
)))
(assert (forall (($generated@@168 T@U) ) (!  (not ($generated@@72 ($generated@@90 $generated@@167) $generated@@168))
 :pattern ( ($generated@@72 ($generated@@90 $generated@@167) $generated@@168))
)))
(assert (forall (($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ) (!  (=> ($generated@@46 $generated@@169 ($generated@@110 $generated@@170 $generated@@171)) (and (= ($generated@@64 $generated@@109 ($generated@@63 $generated@@109 $generated@@169)) $generated@@169) ($generated@@34 $generated@@109 ($generated@@63 $generated@@109 $generated@@169) ($generated@@110 $generated@@170 $generated@@171))))
 :pattern ( ($generated@@46 $generated@@169 ($generated@@110 $generated@@170 $generated@@171)))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ) (!  (=> ($generated@@46 $generated@@174 ($generated@@36 $generated@@172 $generated@@173)) (and (= ($generated@@64 $generated@@35 ($generated@@63 $generated@@35 $generated@@174)) $generated@@174) ($generated@@34 $generated@@35 ($generated@@63 $generated@@35 $generated@@174) ($generated@@36 $generated@@172 $generated@@173))))
 :pattern ( ($generated@@46 $generated@@174 ($generated@@36 $generated@@172 $generated@@173)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@183 T@T) ($generated@@184 T@T) ($generated@@185 T@T) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ) (! (= ($generated@@175 $generated@@183 $generated@@184 $generated@@185 ($generated@@180 $generated@@183 $generated@@184 $generated@@185 $generated@@187 $generated@@188 $generated@@189 $generated@@186) $generated@@188 $generated@@189) $generated@@186)
 :weight 0
)) (and (forall (($generated@@190 T@T) ($generated@@191 T@T) ($generated@@192 T@T) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ) (!  (or (= $generated@@195 $generated@@197) (= ($generated@@175 $generated@@190 $generated@@191 $generated@@192 ($generated@@180 $generated@@190 $generated@@191 $generated@@192 $generated@@194 $generated@@195 $generated@@196 $generated@@193) $generated@@197 $generated@@198) ($generated@@175 $generated@@190 $generated@@191 $generated@@192 $generated@@194 $generated@@197 $generated@@198)))
 :weight 0
)) (forall (($generated@@199 T@T) ($generated@@200 T@T) ($generated@@201 T@T) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ) (!  (or (= $generated@@205 $generated@@207) (= ($generated@@175 $generated@@199 $generated@@200 $generated@@201 ($generated@@180 $generated@@199 $generated@@200 $generated@@201 $generated@@203 $generated@@204 $generated@@205 $generated@@202) $generated@@206 $generated@@207) ($generated@@175 $generated@@199 $generated@@200 $generated@@201 $generated@@203 $generated@@206 $generated@@207)))
 :weight 0
)))) (= ($generated@@13 $generated@@176) 7)) (= ($generated@@13 $generated@@177) 8)) (forall (($generated@@208 T@T) ($generated@@209 T@T) ) (= ($generated@@13 ($generated@@179 $generated@@208 $generated@@209)) 9))) (forall (($generated@@210 T@T) ($generated@@211 T@T) ) (! (= ($generated@@181 ($generated@@179 $generated@@210 $generated@@211)) $generated@@210)
 :pattern ( ($generated@@179 $generated@@210 $generated@@211))
))) (forall (($generated@@212 T@T) ($generated@@213 T@T) ) (! (= ($generated@@182 ($generated@@179 $generated@@212 $generated@@213)) $generated@@213)
 :pattern ( ($generated@@179 $generated@@212 $generated@@213))
))))
(assert (forall (($generated@@214 T@U) ($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 Bool) ($generated@@218 T@U) ($generated@@219 T@U) ) (! (= ($generated@@18 ($generated@@175 $generated@@176 $generated@@177 $generated@@14 ($generated@@178 $generated@@214 $generated@@215 $generated@@216 $generated@@217) $generated@@218 $generated@@219))  (=> (and (or (not (= $generated@@218 $generated@@214)) (not true)) ($generated@@18 ($generated@@63 $generated@@14 ($generated@@92 $generated@@177 $generated@@93 ($generated@@92 $generated@@176 ($generated@@179 $generated@@177 $generated@@93) $generated@@215 $generated@@218) $generated@@216)))) $generated@@217))
 :pattern ( ($generated@@175 $generated@@176 $generated@@177 $generated@@14 ($generated@@178 $generated@@214 $generated@@215 $generated@@216 $generated@@217) $generated@@218 $generated@@219))
)))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@U) ) (!  (and (= ($generated@@29 ($generated@@36 $generated@@221 $generated@@222)) $generated@@5) (= ($generated@@220 ($generated@@36 $generated@@221 $generated@@222)) $generated@@10))
 :pattern ( ($generated@@36 $generated@@221 $generated@@222))
)))
(assert (forall (($generated@@223 T@U) ) (!  (or (= $generated@@223 $generated@@167) (exists (($generated@@224 T@U) ) ($generated@@72 ($generated@@90 $generated@@223) $generated@@224)))
 :pattern ( ($generated@@90 $generated@@223))
)))
(assert (forall (($generated@@226 T@U) ) (!  (or (= $generated@@226 $generated@@167) (exists (($generated@@227 T@U) ) ($generated@@72 ($generated@@225 $generated@@226) $generated@@227)))
 :pattern ( ($generated@@225 $generated@@226))
)))
(assert (forall (($generated@@229 T@U) ($generated@@230 T@U) ) (! (= ($generated@@72 ($generated@@228 $generated@@229) $generated@@230)  (and ($generated@@72 ($generated@@90 $generated@@229) ($generated@@140 ($generated@@63 $generated@@35 $generated@@230))) (= ($generated@@92 $generated@@93 $generated@@93 ($generated@@94 $generated@@229) ($generated@@140 ($generated@@63 $generated@@35 $generated@@230))) ($generated@@143 ($generated@@63 $generated@@35 $generated@@230)))))
 :pattern ( ($generated@@72 ($generated@@228 $generated@@229) $generated@@230))
)))
(assert (forall (($generated@@231 T@U) ($generated@@232 T@U) ) (! (= ($generated@@72 ($generated@@225 $generated@@231) $generated@@232) (exists (($generated@@233 T@U) ) (!  (and ($generated@@72 ($generated@@90 $generated@@231) $generated@@233) (= $generated@@232 ($generated@@92 $generated@@93 $generated@@93 ($generated@@94 $generated@@231) $generated@@233)))
 :pattern ( ($generated@@72 ($generated@@90 $generated@@231) $generated@@233))
 :pattern ( ($generated@@92 $generated@@93 $generated@@93 ($generated@@94 $generated@@231) $generated@@233))
)))
 :pattern ( ($generated@@72 ($generated@@225 $generated@@231) $generated@@232))
)))
(assert (forall (($generated@@234 T@U) ) (! (= ($generated@@162 ($generated@@64 $generated@@35 $generated@@234)) ($generated@@91 $generated@@234))
 :pattern ( ($generated@@162 ($generated@@64 $generated@@35 $generated@@234)))
)))
(assert (forall (($generated@@235 T@U) ($generated@@236 T@U) ) (!  (=> ($generated@@46 $generated@@235 ($generated@@71 $generated@@236)) (and (= ($generated@@64 $generated@@70 ($generated@@63 $generated@@70 $generated@@235)) $generated@@235) ($generated@@34 $generated@@70 ($generated@@63 $generated@@70 $generated@@235) ($generated@@71 $generated@@236))))
 :pattern ( ($generated@@46 $generated@@235 ($generated@@71 $generated@@236)))
)))
(assert (forall (($generated@@237 T@U) ($generated@@238 T@U) ($generated@@239 T@U) ) (! (= ($generated@@34 $generated@@109 $generated@@237 ($generated@@110 $generated@@238 $generated@@239)) (forall (($generated@@240 T@U) ) (!  (=> ($generated@@72 ($generated@@90 $generated@@237) $generated@@240) (and ($generated@@46 ($generated@@92 $generated@@93 $generated@@93 ($generated@@94 $generated@@237) $generated@@240) $generated@@239) ($generated@@46 $generated@@240 $generated@@238)))
 :pattern ( ($generated@@92 $generated@@93 $generated@@93 ($generated@@94 $generated@@237) $generated@@240))
 :pattern ( ($generated@@72 ($generated@@90 $generated@@237) $generated@@240))
)))
 :pattern ( ($generated@@34 $generated@@109 $generated@@237 ($generated@@110 $generated@@238 $generated@@239)))
)))
(assert (= ($generated@@29 $generated@@40) $generated@@6))
(assert (= ($generated@@220 $generated@@40) $generated@@11))
(assert (= ($generated@@29 $generated@@43) $generated@@7))
(assert (= ($generated@@220 $generated@@43) $generated@@12))
(assert (forall (($generated@@241 T@U) ($generated@@242 T@U) ($generated@@243 T@U) ) (!  (=> (and ($generated@@52 $generated@@243) (and ($generated@@33 $generated@@241) (exists (($generated@@244 T@U) ) (! ($generated@@51 $generated@@35 $generated@@241 ($generated@@36 $generated@@242 $generated@@244) $generated@@243)
 :pattern ( ($generated@@51 $generated@@35 $generated@@241 ($generated@@36 $generated@@242 $generated@@244) $generated@@243))
)))) ($generated@@53 ($generated@@140 $generated@@241) $generated@@242 $generated@@243))
 :pattern ( ($generated@@53 ($generated@@140 $generated@@241) $generated@@242 $generated@@243))
)))
(assert (forall (($generated@@245 T@U) ($generated@@246 T@U) ($generated@@247 T@U) ) (!  (=> (and ($generated@@52 $generated@@247) (and ($generated@@33 $generated@@245) (exists (($generated@@248 T@U) ) (! ($generated@@51 $generated@@35 $generated@@245 ($generated@@36 $generated@@248 $generated@@246) $generated@@247)
 :pattern ( ($generated@@51 $generated@@35 $generated@@245 ($generated@@36 $generated@@248 $generated@@246) $generated@@247))
)))) ($generated@@53 ($generated@@143 $generated@@245) $generated@@246 $generated@@247))
 :pattern ( ($generated@@53 ($generated@@143 $generated@@245) $generated@@246 $generated@@247))
)))
(assert (forall (($generated@@249 T@U) ($generated@@250 T@U) ) (!  (=> (and ($generated@@52 $generated@@250) (and ($generated@@42 $generated@@249) ($generated@@51 $generated@@35 $generated@@249 $generated@@43 $generated@@250))) ($generated@@53 ($generated@@153 $generated@@249) $generated@@88 $generated@@250))
 :pattern ( ($generated@@53 ($generated@@153 $generated@@249) $generated@@88 $generated@@250))
)))
(assert (forall (($generated@@251 T@U) ($generated@@252 T@U) ) (!  (=> ($generated@@72 ($generated@@90 $generated@@251) ($generated@@64 $generated@@35 $generated@@252)) (< ($generated@@91 $generated@@252) ($generated@@91 ($generated@@76 $generated@@251))))
 :pattern ( ($generated@@72 ($generated@@90 $generated@@251) ($generated@@64 $generated@@35 $generated@@252)) ($generated@@76 $generated@@251))
)))
(assert (forall (($generated@@253 T@U) ($generated@@254 T@U) ) (!  (=> (and ($generated@@52 $generated@@254) (and ($generated@@31 $generated@@253) ($generated@@51 $generated@@35 $generated@@253 $generated@@40 $generated@@254))) ($generated@@51 $generated@@109 ($generated@@150 $generated@@253) ($generated@@110 $generated $generated@@43) $generated@@254))
 :pattern ( ($generated@@51 $generated@@109 ($generated@@150 $generated@@253) ($generated@@110 $generated $generated@@43) $generated@@254))
)))
(assert (forall (($generated@@255 T@U) ($generated@@256 T@U) ) (! ($generated@@51 $generated@@15 $generated@@256 $generated $generated@@255)
 :pattern ( ($generated@@51 $generated@@15 $generated@@256 $generated $generated@@255))
)))
(assert (forall (($generated@@257 T@U) ) (!  (or (= $generated@@257 $generated@@167) (exists (($generated@@258 T@U) ($generated@@259 T@U) ) ($generated@@72 ($generated@@228 $generated@@257) ($generated@@64 $generated@@35 ($generated@@45 $generated@@258 $generated@@259)))))
 :pattern ( ($generated@@228 $generated@@257))
)))
(assert (forall (($generated@@260 T@U) ($generated@@261 T@U) ($generated@@262 T@U) ) (!  (=> ($generated@@34 $generated@@109 $generated@@260 ($generated@@110 $generated@@261 $generated@@262)) (and (and ($generated@@34 $generated@@70 ($generated@@90 $generated@@260) ($generated@@71 $generated@@261)) ($generated@@34 $generated@@70 ($generated@@225 $generated@@260) ($generated@@71 $generated@@262))) ($generated@@34 $generated@@70 ($generated@@228 $generated@@260) ($generated@@71 ($generated@@36 $generated@@261 $generated@@262)))))
 :pattern ( ($generated@@34 $generated@@109 $generated@@260 ($generated@@110 $generated@@261 $generated@@262)))
)))
(assert (forall (($generated@@263 T@U) ) (! ($generated@@34 $generated@@15 $generated@@263 $generated)
 :pattern ( ($generated@@34 $generated@@15 $generated@@263 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@264 () T@U)
(declare-fun $generated@@265 () T@U)
(declare-fun $generated@@266 () T@U)
(declare-fun $generated@@267 () T@U)
(declare-fun $generated@@268 () Int)
(declare-fun $generated@@269 () T@U)
(declare-fun $generated@@270 (T@U) Bool)
(declare-fun $generated@@271 () T@U)
(declare-fun $generated@@272 () Bool)
(declare-fun $generated@@273 () T@U)
(declare-fun $generated@@274 () Bool)
(declare-fun $generated@@275 () T@U)
(declare-fun $generated@@276 () Int)
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@277  (=> (and (= $generated@@264 ($generated@@178 $generated@@265 $generated@@266 $generated@@3 false)) ($generated@@31 $generated@@267)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@72 ($generated@@90 ($generated@@150 $generated@@267)) ($generated@@64 $generated@@15 ($generated@@19 $generated@@268)))) (=> ($generated@@72 ($generated@@90 ($generated@@150 $generated@@267)) ($generated@@64 $generated@@15 ($generated@@19 $generated@@268))) (=> ($generated@@31 $generated@@267) (=> (and (= $generated@@269 ($generated@@63 $generated@@35 ($generated@@92 $generated@@93 $generated@@93 ($generated@@94 ($generated@@150 $generated@@267)) ($generated@@64 $generated@@15 ($generated@@19 $generated@@268))))) (= (ControlFlow 0 2) (- 0 1))) true)))))))
(let (($generated@@278  (=> (and ($generated@@52 $generated@@266) ($generated@@270 $generated@@266)) (=> (and (and (and (and ($generated@@34 $generated@@35 $generated@@267 $generated@@40) ($generated@@51 $generated@@35 $generated@@267 $generated@@40 $generated@@266)) ($generated@@30 $generated@@267)) (and (and ($generated@@46 $generated@@271 $generated@@88) ($generated@@53 $generated@@271 $generated@@88 $generated@@266)) (and (=> $generated@@272 (and ($generated@@34 $generated@@35 $generated@@273 $generated@@43) ($generated@@51 $generated@@35 $generated@@273 $generated@@43 $generated@@266))) true))) (and (and (and (=> $generated@@274 (and ($generated@@34 $generated@@35 $generated@@275 $generated@@43) ($generated@@51 $generated@@35 $generated@@275 $generated@@43 $generated@@266))) true) (= 2 $generated@@276)) (and ($generated@@72 ($generated@@90 ($generated@@150 $generated@@267)) ($generated@@64 $generated@@15 ($generated@@19 $generated@@268))) (= (ControlFlow 0 4) 2)))) $generated@@277))))
$generated@@278)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)