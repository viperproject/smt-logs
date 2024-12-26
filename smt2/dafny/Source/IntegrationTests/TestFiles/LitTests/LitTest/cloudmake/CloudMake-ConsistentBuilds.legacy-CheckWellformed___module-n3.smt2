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
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 (T@U T@U) T@U)
(declare-fun $generated@@27 (T@U T@U) Bool)
(declare-fun $generated@@33 (T@U T@U) T@U)
(declare-fun $generated@@43 (T@U T@U T@U) T@U)
(declare-fun $generated@@44 (T@U) T@U)
(declare-fun $generated@@48 (T@U) T@U)
(declare-fun $generated@@52 (T@U) T@U)
(declare-fun $generated@@56 (T@U T@U T@U) T@U)
(declare-fun $generated@@57 (T@U) T@U)
(declare-fun $generated@@61 (T@U) T@U)
(declare-fun $generated@@65 (T@U) T@U)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@73 (T@U T@U) T@U)
(declare-fun $generated@@77 (T@U) Bool)
(declare-fun $generated@@78 () T@U)
(declare-fun $generated@@79 () T@U)
(declare-fun $generated@@80 () T@U)
(declare-fun $generated@@82 (T@U) Int)
(declare-fun $generated@@83 () T@U)
(declare-fun $generated@@84 (T@U) T@U)
(declare-fun $generated@@93 (T@U T@U) Bool)
(declare-fun $generated@@94 (T@T T@U) T@U)
(declare-fun $generated@@95 () T@T)
(declare-fun $generated@@96 (T@T T@U) T@U)
(declare-fun $generated@@97 (T@T T@U T@U) Bool)
(declare-fun $generated@@102 (T@U T@U) Bool)
(declare-fun $generated@@105 (T@U) Bool)
(declare-fun $generated@@113 (T@U T@U) Bool)
(declare-fun $generated@@117 () T@T)
(declare-fun $generated@@118 (T@U) T@U)
(declare-fun $generated@@122 () Int)
(declare-fun $generated@@123 (T@U T@U T@U) T@U)
(declare-fun $generated@@124 (T@U T@U T@U) Bool)
(declare-fun $generated@@125 () T@U)
(declare-fun $generated@@126 (T@U) T@U)
(declare-fun $generated@@127 (T@U T@U) Bool)
(declare-fun $generated@@128 (T@U) T@U)
(declare-fun $generated@@132 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@133 (T@U) Bool)
(declare-fun $generated@@134 (T@U T@U T@U) Bool)
(declare-fun $generated@@164 () T@T)
(declare-fun $generated@@177 () T@T)
(declare-fun $generated@@178 (T@U Int) T@U)
(declare-fun $generated@@183 (T@U) T@U)
(declare-fun $generated@@186 (T@U) T@U)
(declare-fun $generated@@191 (T@U) Int)
(declare-fun $generated@@192 (T@U) Int)
(declare-fun $generated@@202 (T@U) Bool)
(declare-fun $generated@@206 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@207 () T@T)
(declare-fun $generated@@208 () T@T)
(declare-fun $generated@@209 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@210 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@211 () T@T)
(declare-fun $generated@@212 (T@T T@T) T@T)
(declare-fun $generated@@213 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@214 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@215 (T@T) T@T)
(declare-fun $generated@@216 (T@T) T@T)
(declare-fun $generated@@298 (T@U) Int)
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
(assert (= ($generated@@25 $generated) $generated@@0))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ) (! ($generated@@27 ($generated@@26 $generated@@28 $generated@@29) $generated@@29)
 :pattern ( ($generated@@26 $generated@@28 $generated@@29))
)))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 T@U) ) (!  (=> ($generated@@27 $generated@@30 $generated@@32) ($generated@@27 ($generated@@26 $generated@@30 $generated@@31) $generated@@32))
 :pattern ( ($generated@@26 $generated@@30 $generated@@31) ($generated@@27 $generated@@30 $generated@@32))
)))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ) (!  (=> ($generated@@27 $generated@@34 $generated@@36) ($generated@@27 ($generated@@33 $generated@@34 $generated@@35) $generated@@36))
 :pattern ( ($generated@@33 $generated@@34 $generated@@35) ($generated@@27 $generated@@34 $generated@@36))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ) (!  (=> ($generated@@27 $generated@@38 $generated@@39) ($generated@@27 ($generated@@33 $generated@@37 $generated@@38) $generated@@39))
 :pattern ( ($generated@@33 $generated@@37 $generated@@38) ($generated@@27 $generated@@38 $generated@@39))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (! (= ($generated@@27 ($generated@@26 $generated@@40 $generated@@41) $generated@@42)  (or (= $generated@@42 $generated@@41) ($generated@@27 $generated@@40 $generated@@42)))
 :pattern ( ($generated@@27 ($generated@@26 $generated@@40 $generated@@41) $generated@@42))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ) (! (= ($generated@@44 ($generated@@43 $generated@@45 $generated@@46 $generated@@47)) $generated@@45)
 :pattern ( ($generated@@43 $generated@@45 $generated@@46 $generated@@47))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ) (! (= ($generated@@48 ($generated@@43 $generated@@49 $generated@@50 $generated@@51)) $generated@@50)
 :pattern ( ($generated@@43 $generated@@49 $generated@@50 $generated@@51))
)))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@52 ($generated@@43 $generated@@53 $generated@@54 $generated@@55)) $generated@@55)
 :pattern ( ($generated@@43 $generated@@53 $generated@@54 $generated@@55))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ) (! (= ($generated@@57 ($generated@@56 $generated@@58 $generated@@59 $generated@@60)) $generated@@6)
 :pattern ( ($generated@@56 $generated@@58 $generated@@59 $generated@@60))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (! (= ($generated@@61 ($generated@@56 $generated@@62 $generated@@63 $generated@@64)) $generated@@62)
 :pattern ( ($generated@@56 $generated@@62 $generated@@63 $generated@@64))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@65 ($generated@@56 $generated@@66 $generated@@67 $generated@@68)) $generated@@67)
 :pattern ( ($generated@@56 $generated@@66 $generated@@67 $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@69 ($generated@@56 $generated@@70 $generated@@71 $generated@@72)) $generated@@72)
 :pattern ( ($generated@@56 $generated@@70 $generated@@71 $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ) (!  (=> ($generated@@27 $generated@@75 $generated@@76) (not ($generated@@27 ($generated@@73 $generated@@74 $generated@@75) $generated@@76)))
 :pattern ( ($generated@@73 $generated@@74 $generated@@75) ($generated@@27 $generated@@75 $generated@@76))
)))
(assert ($generated@@77 $generated@@78))
(assert ($generated@@77 $generated@@79))
(assert (forall (($generated@@81 T@U) ) (!  (not ($generated@@27 $generated@@80 $generated@@81))
 :pattern ( ($generated@@27 $generated@@80 $generated@@81))
)))
(assert (= ($generated@@82 $generated@@83) 0))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ) (!  (and (= ($generated@@25 ($generated@@43 $generated@@85 $generated@@86 $generated@@87)) $generated@@5) (= ($generated@@84 ($generated@@43 $generated@@85 $generated@@86 $generated@@87)) $generated@@8))
 :pattern ( ($generated@@43 $generated@@85 $generated@@86 $generated@@87))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ) (! (= ($generated@@33 ($generated@@33 $generated@@88 $generated@@89) $generated@@89) ($generated@@33 $generated@@88 $generated@@89))
 :pattern ( ($generated@@33 ($generated@@33 $generated@@88 $generated@@89) $generated@@89))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ) (! (= ($generated@@27 ($generated@@73 $generated@@90 $generated@@91) $generated@@92)  (and ($generated@@27 $generated@@90 $generated@@92) (not ($generated@@27 $generated@@91 $generated@@92))))
 :pattern ( ($generated@@27 ($generated@@73 $generated@@90 $generated@@91) $generated@@92))
)))
(assert (= ($generated@@9 $generated@@95) 3))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ) (!  (=> ($generated@@93 $generated@@101 ($generated@@43 $generated@@98 $generated@@99 $generated@@100)) (and (= ($generated@@94 $generated@@95 ($generated@@96 $generated@@95 $generated@@101)) $generated@@101) ($generated@@97 $generated@@95 ($generated@@96 $generated@@95 $generated@@101) ($generated@@43 $generated@@98 $generated@@99 $generated@@100))))
 :pattern ( ($generated@@93 $generated@@101 ($generated@@43 $generated@@98 $generated@@99 $generated@@100)))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@102 $generated@@103 $generated@@104) (= $generated@@103 $generated@@104))
 :pattern ( ($generated@@102 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@106 T@U) ) (! (= ($generated@@105 $generated@@106) (= ($generated@@57 $generated@@106) $generated@@6))
 :pattern ( ($generated@@105 $generated@@106))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@T) ) (! (= ($generated@@94 $generated@@108 ($generated@@96 $generated@@108 $generated@@107)) $generated@@107)
 :pattern ( ($generated@@96 $generated@@108 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ) (!  (=> ($generated@@105 $generated@@109) (exists (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (= $generated@@109 ($generated@@56 $generated@@110 $generated@@111 $generated@@112))))
 :pattern ( ($generated@@105 $generated@@109))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@113 $generated@@114 $generated@@115) (forall (($generated@@116 T@U) ) (!  (or (not ($generated@@27 $generated@@114 $generated@@116)) (not ($generated@@27 $generated@@115 $generated@@116)))
 :pattern ( ($generated@@27 $generated@@114 $generated@@116))
 :pattern ( ($generated@@27 $generated@@115 $generated@@116))
)))
 :pattern ( ($generated@@113 $generated@@114 $generated@@115))
)))
(assert (= ($generated@@9 $generated@@117) 4))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@97 $generated@@117 $generated@@119 ($generated@@118 $generated@@120)) (forall (($generated@@121 T@U) ) (!  (=> ($generated@@27 $generated@@119 $generated@@121) ($generated@@93 $generated@@121 $generated@@120))
 :pattern ( ($generated@@27 $generated@@119 $generated@@121))
)))
 :pattern ( ($generated@@97 $generated@@117 $generated@@119 ($generated@@118 $generated@@120)))
)))
(assert  (=> (<= 2 $generated@@122) (forall (($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (!  (=> (or ($generated@@124 $generated@@129 $generated@@130 $generated@@131) (and (< 2 $generated@@122) (and (and ($generated@@93 $generated@@129 $generated@@79) ($generated@@97 $generated@@95 $generated@@130 ($generated@@43 $generated@@125 $generated@@125 ($generated@@126 $generated)))) ($generated@@93 $generated@@131 $generated@@78)))) (and ($generated@@127 ($generated@@128 ($generated@@123 $generated@@129 $generated@@130 $generated@@131)) ($generated@@33 ($generated@@128 $generated@@131) ($generated@@26 $generated@@80 $generated@@129))) ($generated@@93 ($generated@@123 $generated@@129 $generated@@130 $generated@@131) $generated@@78)))
 :pattern ( ($generated@@123 $generated@@129 $generated@@130 $generated@@131))
))))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (!  (=> ($generated@@133 $generated@@141) (= ($generated@@132 $generated@@95 ($generated@@56 $generated@@138 $generated@@139 $generated@@140) ($generated@@43 $generated@@135 $generated@@136 $generated@@137) $generated@@141)  (and (and ($generated@@134 $generated@@138 $generated@@135 $generated@@141) ($generated@@134 $generated@@139 $generated@@136 $generated@@141)) ($generated@@134 $generated@@140 $generated@@137 $generated@@141))))
 :pattern ( ($generated@@132 $generated@@95 ($generated@@56 $generated@@138 $generated@@139 $generated@@140) ($generated@@43 $generated@@135 $generated@@136 $generated@@137) $generated@@141))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@T) ) (! (= ($generated@@134 ($generated@@94 $generated@@145 $generated@@142) $generated@@143 $generated@@144) ($generated@@132 $generated@@145 $generated@@142 $generated@@143 $generated@@144))
 :pattern ( ($generated@@134 ($generated@@94 $generated@@145 $generated@@142) $generated@@143 $generated@@144))
)))
(assert (forall (($generated@@146 T@U) ) (!  (=> ($generated@@93 $generated@@146 $generated@@125) (and (= ($generated@@94 $generated@@95 ($generated@@96 $generated@@95 $generated@@146)) $generated@@146) ($generated@@97 $generated@@95 ($generated@@96 $generated@@95 $generated@@146) $generated@@125)))
 :pattern ( ($generated@@93 $generated@@146 $generated@@125))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (!  (=> ($generated@@97 $generated@@95 $generated@@150 ($generated@@43 $generated@@147 $generated@@148 $generated@@149)) ($generated@@105 $generated@@150))
 :pattern ( ($generated@@105 $generated@@150) ($generated@@97 $generated@@95 $generated@@150 ($generated@@43 $generated@@147 $generated@@148 $generated@@149)))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ) (! (= ($generated@@27 ($generated@@33 $generated@@151 $generated@@152) $generated@@153)  (or ($generated@@27 $generated@@151 $generated@@153) ($generated@@27 $generated@@152 $generated@@153)))
 :pattern ( ($generated@@27 ($generated@@33 $generated@@151 $generated@@152) $generated@@153))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ) (!  (=> ($generated@@113 $generated@@154 $generated@@155) (and (= ($generated@@73 ($generated@@33 $generated@@154 $generated@@155) $generated@@154) $generated@@155) (= ($generated@@73 ($generated@@33 $generated@@154 $generated@@155) $generated@@155) $generated@@154)))
 :pattern ( ($generated@@33 $generated@@154 $generated@@155))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (! (= ($generated@@97 $generated@@95 ($generated@@56 $generated@@159 $generated@@160 $generated@@161) ($generated@@43 $generated@@156 $generated@@157 $generated@@158))  (and (and ($generated@@93 $generated@@159 $generated@@156) ($generated@@93 $generated@@160 $generated@@157)) ($generated@@93 $generated@@161 $generated@@158)))
 :pattern ( ($generated@@97 $generated@@95 ($generated@@56 $generated@@159 $generated@@160 $generated@@161) ($generated@@43 $generated@@156 $generated@@157 $generated@@158)))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ) (!  (=> ($generated@@127 $generated@@162 $generated@@163) (= $generated@@162 $generated@@163))
 :pattern ( ($generated@@127 $generated@@162 $generated@@163))
)))
(assert (= ($generated@@9 $generated@@164) 5))
(assert (forall (($generated@@165 T@U) ) (!  (=> ($generated@@93 $generated@@165 $generated) (and (= ($generated@@94 $generated@@164 ($generated@@96 $generated@@164 $generated@@165)) $generated@@165) ($generated@@97 $generated@@164 ($generated@@96 $generated@@164 $generated@@165) $generated)))
 :pattern ( ($generated@@93 $generated@@165 $generated))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@T) ) (! (= ($generated@@93 ($generated@@94 $generated@@168 $generated@@166) $generated@@167) ($generated@@97 $generated@@168 $generated@@166 $generated@@167))
 :pattern ( ($generated@@93 ($generated@@94 $generated@@168 $generated@@166) $generated@@167))
)))
(assert (forall (($generated@@169 T@U) ) (! (<= 0 ($generated@@82 $generated@@169))
 :pattern ( ($generated@@82 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ) (!  (=> ($generated@@77 $generated@@170) (forall (($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> ($generated@@93 $generated@@172 $generated@@170) ($generated@@134 $generated@@172 $generated@@170 $generated@@171))
 :pattern ( ($generated@@134 $generated@@172 $generated@@170 $generated@@171))
)))
 :pattern ( ($generated@@77 $generated@@170))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ) (! (= ($generated@@132 $generated@@117 $generated@@173 ($generated@@118 $generated@@174) $generated@@175) (forall (($generated@@176 T@U) ) (!  (=> ($generated@@27 $generated@@173 $generated@@176) ($generated@@134 $generated@@176 $generated@@174 $generated@@175))
 :pattern ( ($generated@@27 $generated@@173 $generated@@176))
)))
 :pattern ( ($generated@@132 $generated@@117 $generated@@173 ($generated@@118 $generated@@174) $generated@@175))
)))
(assert (= ($generated@@9 $generated@@177) 6))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (! (= ($generated@@132 $generated@@177 $generated@@179 ($generated@@126 $generated@@180) $generated@@181) (forall (($generated@@182 Int) ) (!  (=> (and (<= 0 $generated@@182) (< $generated@@182 ($generated@@82 $generated@@179))) ($generated@@134 ($generated@@178 $generated@@179 $generated@@182) $generated@@180 $generated@@181))
 :pattern ( ($generated@@178 $generated@@179 $generated@@182))
)))
 :pattern ( ($generated@@132 $generated@@177 $generated@@179 ($generated@@126 $generated@@180) $generated@@181))
)))
(assert (forall (($generated@@184 T@U) ) (! (= ($generated@@183 ($generated@@118 $generated@@184)) $generated@@184)
 :pattern ( ($generated@@118 $generated@@184))
)))
(assert (forall (($generated@@185 T@U) ) (! (= ($generated@@25 ($generated@@118 $generated@@185)) $generated@@1)
 :pattern ( ($generated@@118 $generated@@185))
)))
(assert (forall (($generated@@187 T@U) ) (! (= ($generated@@186 ($generated@@126 $generated@@187)) $generated@@187)
 :pattern ( ($generated@@126 $generated@@187))
)))
(assert (forall (($generated@@188 T@U) ) (! (= ($generated@@25 ($generated@@126 $generated@@188)) $generated@@2)
 :pattern ( ($generated@@126 $generated@@188))
)))
(assert (forall (($generated@@189 T@U) ($generated@@190 T@T) ) (! (= ($generated@@96 $generated@@190 ($generated@@94 $generated@@190 $generated@@189)) $generated@@189)
 :pattern ( ($generated@@94 $generated@@190 $generated@@189))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ) (! (< ($generated@@191 $generated@@193) ($generated@@192 ($generated@@56 $generated@@193 $generated@@194 $generated@@195)))
 :pattern ( ($generated@@56 $generated@@193 $generated@@194 $generated@@195))
)))
(assert (forall (($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ) (! (< ($generated@@191 $generated@@197) ($generated@@192 ($generated@@56 $generated@@196 $generated@@197 $generated@@198)))
 :pattern ( ($generated@@56 $generated@@196 $generated@@197 $generated@@198))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ) (! (< ($generated@@191 $generated@@201) ($generated@@192 ($generated@@56 $generated@@199 $generated@@200 $generated@@201)))
 :pattern ( ($generated@@56 $generated@@199 $generated@@200 $generated@@201))
)))
(assert  (=> (<= 0 $generated@@122) (forall (($generated@@203 T@U) ) (!  (=> (or ($generated@@202 $generated@@203) (and (< 0 $generated@@122) ($generated@@93 $generated@@203 $generated@@78))) ($generated@@97 $generated@@117 ($generated@@128 $generated@@203) ($generated@@118 $generated@@79)))
 :pattern ( ($generated@@128 $generated@@203))
))))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ) (! (= ($generated@@33 $generated@@204 ($generated@@33 $generated@@204 $generated@@205)) ($generated@@33 $generated@@204 $generated@@205))
 :pattern ( ($generated@@33 $generated@@204 ($generated@@33 $generated@@204 $generated@@205)))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@217 T@T) ($generated@@218 T@T) ($generated@@219 T@T) ($generated@@220 T@U) ($generated@@221 T@U) ($generated@@222 T@U) ($generated@@223 T@U) ) (! (= ($generated@@206 $generated@@217 $generated@@218 $generated@@219 ($generated@@213 $generated@@217 $generated@@218 $generated@@219 $generated@@221 $generated@@222 $generated@@223 $generated@@220) $generated@@222 $generated@@223) $generated@@220)
 :weight 0
)) (and (forall (($generated@@224 T@T) ($generated@@225 T@T) ($generated@@226 T@T) ($generated@@227 T@U) ($generated@@228 T@U) ($generated@@229 T@U) ($generated@@230 T@U) ($generated@@231 T@U) ($generated@@232 T@U) ) (!  (or (= $generated@@229 $generated@@231) (= ($generated@@206 $generated@@224 $generated@@225 $generated@@226 ($generated@@213 $generated@@224 $generated@@225 $generated@@226 $generated@@228 $generated@@229 $generated@@230 $generated@@227) $generated@@231 $generated@@232) ($generated@@206 $generated@@224 $generated@@225 $generated@@226 $generated@@228 $generated@@231 $generated@@232)))
 :weight 0
)) (forall (($generated@@233 T@T) ($generated@@234 T@T) ($generated@@235 T@T) ($generated@@236 T@U) ($generated@@237 T@U) ($generated@@238 T@U) ($generated@@239 T@U) ($generated@@240 T@U) ($generated@@241 T@U) ) (!  (or (= $generated@@239 $generated@@241) (= ($generated@@206 $generated@@233 $generated@@234 $generated@@235 ($generated@@213 $generated@@233 $generated@@234 $generated@@235 $generated@@237 $generated@@238 $generated@@239 $generated@@236) $generated@@240 $generated@@241) ($generated@@206 $generated@@233 $generated@@234 $generated@@235 $generated@@237 $generated@@240 $generated@@241)))
 :weight 0
)))) (= ($generated@@9 $generated@@207) 7)) (= ($generated@@9 $generated@@208) 8)) (forall (($generated@@242 T@T) ($generated@@243 T@T) ($generated@@244 T@U) ($generated@@245 T@U) ($generated@@246 T@U) ) (! (= ($generated@@210 $generated@@242 $generated@@243 ($generated@@214 $generated@@242 $generated@@243 $generated@@245 $generated@@246 $generated@@244) $generated@@246) $generated@@244)
 :weight 0
))) (forall (($generated@@247 T@T) ($generated@@248 T@T) ($generated@@249 T@U) ($generated@@250 T@U) ($generated@@251 T@U) ($generated@@252 T@U) ) (!  (or (= $generated@@251 $generated@@252) (= ($generated@@210 $generated@@247 $generated@@248 ($generated@@214 $generated@@247 $generated@@248 $generated@@250 $generated@@251 $generated@@249) $generated@@252) ($generated@@210 $generated@@247 $generated@@248 $generated@@250 $generated@@252)))
 :weight 0
))) (= ($generated@@9 $generated@@211) 9)) (forall (($generated@@253 T@T) ($generated@@254 T@T) ) (= ($generated@@9 ($generated@@212 $generated@@253 $generated@@254)) 10))) (forall (($generated@@255 T@T) ($generated@@256 T@T) ) (! (= ($generated@@215 ($generated@@212 $generated@@255 $generated@@256)) $generated@@255)
 :pattern ( ($generated@@212 $generated@@255 $generated@@256))
))) (forall (($generated@@257 T@T) ($generated@@258 T@T) ) (! (= ($generated@@216 ($generated@@212 $generated@@257 $generated@@258)) $generated@@258)
 :pattern ( ($generated@@212 $generated@@257 $generated@@258))
))))
(assert (forall (($generated@@259 T@U) ($generated@@260 T@U) ($generated@@261 T@U) ($generated@@262 Bool) ($generated@@263 T@U) ($generated@@264 T@U) ) (! (= ($generated@@14 ($generated@@206 $generated@@207 $generated@@208 $generated@@10 ($generated@@209 $generated@@259 $generated@@260 $generated@@261 $generated@@262) $generated@@263 $generated@@264))  (=> (and (or (not (= $generated@@263 $generated@@259)) (not true)) ($generated@@14 ($generated@@96 $generated@@10 ($generated@@210 $generated@@208 $generated@@211 ($generated@@210 $generated@@207 ($generated@@212 $generated@@208 $generated@@211) $generated@@260 $generated@@263) $generated@@261)))) $generated@@262))
 :pattern ( ($generated@@206 $generated@@207 $generated@@208 $generated@@10 ($generated@@209 $generated@@259 $generated@@260 $generated@@261 $generated@@262) $generated@@263 $generated@@264))
)))
(assert (forall (($generated@@265 T@U) ) (! (= ($generated@@191 ($generated@@94 $generated@@95 $generated@@265)) ($generated@@192 $generated@@265))
 :pattern ( ($generated@@191 ($generated@@94 $generated@@95 $generated@@265)))
)))
(assert (forall (($generated@@266 T@U) ($generated@@267 T@U) ) (!  (=> ($generated@@93 $generated@@266 ($generated@@118 $generated@@267)) (and (= ($generated@@94 $generated@@117 ($generated@@96 $generated@@117 $generated@@266)) $generated@@266) ($generated@@97 $generated@@117 ($generated@@96 $generated@@117 $generated@@266) ($generated@@118 $generated@@267))))
 :pattern ( ($generated@@93 $generated@@266 ($generated@@118 $generated@@267)))
)))
(assert (forall (($generated@@268 T@U) ($generated@@269 T@U) ) (!  (=> ($generated@@93 $generated@@268 ($generated@@126 $generated@@269)) (and (= ($generated@@94 $generated@@177 ($generated@@96 $generated@@177 $generated@@268)) $generated@@268) ($generated@@97 $generated@@177 ($generated@@96 $generated@@177 $generated@@268) ($generated@@126 $generated@@269))))
 :pattern ( ($generated@@93 $generated@@268 ($generated@@126 $generated@@269)))
)))
(assert (forall (($generated@@270 T@U) ($generated@@271 T@U) ($generated@@272 T@U) ) (!  (=> (and ($generated@@133 $generated@@272) (and ($generated@@105 $generated@@270) (exists (($generated@@273 T@U) ($generated@@274 T@U) ) (! ($generated@@132 $generated@@95 $generated@@270 ($generated@@43 $generated@@271 $generated@@273 $generated@@274) $generated@@272)
 :pattern ( ($generated@@132 $generated@@95 $generated@@270 ($generated@@43 $generated@@271 $generated@@273 $generated@@274) $generated@@272))
)))) ($generated@@134 ($generated@@61 $generated@@270) $generated@@271 $generated@@272))
 :pattern ( ($generated@@134 ($generated@@61 $generated@@270) $generated@@271 $generated@@272))
)))
(assert (forall (($generated@@275 T@U) ($generated@@276 T@U) ($generated@@277 T@U) ) (!  (=> (and ($generated@@133 $generated@@277) (and ($generated@@105 $generated@@275) (exists (($generated@@278 T@U) ($generated@@279 T@U) ) (! ($generated@@132 $generated@@95 $generated@@275 ($generated@@43 $generated@@278 $generated@@276 $generated@@279) $generated@@277)
 :pattern ( ($generated@@132 $generated@@95 $generated@@275 ($generated@@43 $generated@@278 $generated@@276 $generated@@279) $generated@@277))
)))) ($generated@@134 ($generated@@65 $generated@@275) $generated@@276 $generated@@277))
 :pattern ( ($generated@@134 ($generated@@65 $generated@@275) $generated@@276 $generated@@277))
)))
(assert (forall (($generated@@280 T@U) ($generated@@281 T@U) ($generated@@282 T@U) ) (!  (=> (and ($generated@@133 $generated@@282) (and ($generated@@105 $generated@@280) (exists (($generated@@283 T@U) ($generated@@284 T@U) ) (! ($generated@@132 $generated@@95 $generated@@280 ($generated@@43 $generated@@283 $generated@@284 $generated@@281) $generated@@282)
 :pattern ( ($generated@@132 $generated@@95 $generated@@280 ($generated@@43 $generated@@283 $generated@@284 $generated@@281) $generated@@282))
)))) ($generated@@134 ($generated@@69 $generated@@280) $generated@@281 $generated@@282))
 :pattern ( ($generated@@134 ($generated@@69 $generated@@280) $generated@@281 $generated@@282))
)))
(assert (forall (($generated@@285 T@U) ($generated@@286 T@U) ) (!  (=> (and ($generated@@133 $generated@@286) ($generated@@97 $generated@@95 $generated@@285 $generated@@125)) ($generated@@132 $generated@@95 $generated@@285 $generated@@125 $generated@@286))
 :pattern ( ($generated@@132 $generated@@95 $generated@@285 $generated@@125 $generated@@286))
)))
(assert (= ($generated@@25 $generated@@125) $generated@@4))
(assert (= ($generated@@84 $generated@@125) $generated@@7))
(assert (forall (($generated@@287 T@U) ($generated@@288 T@U) ) (! (= ($generated@@102 $generated@@287 $generated@@288)  (and (and (= ($generated@@61 $generated@@287) ($generated@@61 $generated@@288)) (= ($generated@@65 $generated@@287) ($generated@@65 $generated@@288))) (= ($generated@@69 $generated@@287) ($generated@@69 $generated@@288))))
 :pattern ( ($generated@@102 $generated@@287 $generated@@288))
)))
(assert (forall (($generated@@289 T@U) ($generated@@290 T@U) ) (! (= ($generated@@127 $generated@@289 $generated@@290) (forall (($generated@@291 T@U) ) (! (= ($generated@@27 $generated@@289 $generated@@291) ($generated@@27 $generated@@290 $generated@@291))
 :pattern ( ($generated@@27 $generated@@289 $generated@@291))
 :pattern ( ($generated@@27 $generated@@290 $generated@@291))
)))
 :pattern ( ($generated@@127 $generated@@289 $generated@@290))
)))
(assert (forall (($generated@@292 T@U) ) (!  (=> (= ($generated@@82 $generated@@292) 0) (= $generated@@292 $generated@@83))
 :pattern ( ($generated@@82 $generated@@292))
)))
(assert (forall (($generated@@293 T@U) ($generated@@294 T@U) ) (! ($generated@@132 $generated@@164 $generated@@294 $generated $generated@@293)
 :pattern ( ($generated@@132 $generated@@164 $generated@@294 $generated $generated@@293))
)))
(assert (forall (($generated@@295 T@U) ($generated@@296 T@U) ) (! (= ($generated@@97 $generated@@177 $generated@@295 ($generated@@126 $generated@@296)) (forall (($generated@@297 Int) ) (!  (=> (and (<= 0 $generated@@297) (< $generated@@297 ($generated@@82 $generated@@295))) ($generated@@93 ($generated@@178 $generated@@295 $generated@@297) $generated@@296))
 :pattern ( ($generated@@178 $generated@@295 $generated@@297))
)))
 :pattern ( ($generated@@97 $generated@@177 $generated@@295 ($generated@@126 $generated@@296)))
)))
(assert (forall (($generated@@299 T@U) ($generated@@300 Int) ) (!  (=> (and (<= 0 $generated@@300) (< $generated@@300 ($generated@@82 $generated@@299))) (< ($generated@@192 ($generated@@96 $generated@@95 ($generated@@178 $generated@@299 $generated@@300))) ($generated@@298 $generated@@299)))
 :pattern ( ($generated@@192 ($generated@@96 $generated@@95 ($generated@@178 $generated@@299 $generated@@300))))
)))
(assert (forall (($generated@@301 T@U) ) (! ($generated@@97 $generated@@164 $generated@@301 $generated)
 :pattern ( ($generated@@97 $generated@@164 $generated@@301 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@302 () T@U)
(declare-fun $generated@@303 () T@U)
(declare-fun $generated@@304 () T@U)
(declare-fun $generated@@305 () T@U)
(declare-fun $generated@@306 () T@U)
(declare-fun $generated@@307 () T@U)
(declare-fun $generated@@308 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@309 true))
(let (($generated@@310  (=> ($generated@@93 ($generated@@123 $generated@@302 $generated@@303 $generated@@304) $generated@@78) (=> (and (and ($generated@@134 $generated@@302 $generated@@79 $generated@@305) ($generated@@132 $generated@@95 $generated@@303 ($generated@@43 $generated@@125 $generated@@125 ($generated@@126 $generated)) $generated@@305)) (and ($generated@@134 $generated@@304 $generated@@78 $generated@@305) (= (ControlFlow 0 2) (- 0 1)))) (or (and (and (= $generated@@302 $generated@@302) ($generated@@102 $generated@@303 $generated@@303)) (= $generated@@304 $generated@@304)) (< ($generated@@192 $generated@@303) ($generated@@192 $generated@@303)))))))
(let (($generated@@311  (=> (= $generated@@306 ($generated@@209 $generated@@307 $generated@@305 $generated@@3 false)) (and (=> (= (ControlFlow 0 4) 2) $generated@@310) (=> (= (ControlFlow 0 4) 3) $generated@@309)))))
(let (($generated@@312  (=> (and (and (and ($generated@@133 $generated@@305) ($generated@@308 $generated@@305)) ($generated@@93 $generated@@302 $generated@@79)) (and (and ($generated@@97 $generated@@95 $generated@@303 ($generated@@43 $generated@@125 $generated@@125 ($generated@@126 $generated))) ($generated@@93 $generated@@304 $generated@@78)) (and (= 2 $generated@@122) (= (ControlFlow 0 5) 4)))) $generated@@311)))
$generated@@312)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)