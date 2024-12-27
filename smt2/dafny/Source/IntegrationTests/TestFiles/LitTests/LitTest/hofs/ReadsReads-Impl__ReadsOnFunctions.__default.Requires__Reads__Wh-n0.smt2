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
(declare-fun $generated@@6 (T@T) Int)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 (Bool) T@U)
(declare-fun $generated@@11 (T@U) Bool)
(declare-fun $generated@@12 (Int) T@U)
(declare-fun $generated@@13 (T@U) Int)
(declare-fun $generated@@14 (Real) T@U)
(declare-fun $generated@@15 (T@U) Real)
(declare-fun $generated@@22 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@23 (T@T T@U) T@U)
(declare-fun $generated@@24 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@25 (T@U T@U T@U) T@U)
(declare-fun $generated@@31 (T@T T@U) T@U)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@38 (T@U T@U) Bool)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@41 (T@T T@U T@U) Bool)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 (T@U T@U) T@U)
(declare-fun $generated@@44 (T@U T@U) Bool)
(declare-fun $generated@@52 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@59 (Int) Int)
(declare-fun $generated@@61 (T@T T@U) T@U)
(declare-fun $generated@@64 () T@U)
(declare-fun $generated@@65 (T@U) Bool)
(declare-fun $generated@@66 (T@U T@U) Bool)
(declare-fun $generated@@74 (T@U T@U T@U) Bool)
(declare-fun $generated@@75 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@102 (T@U) T@U)
(declare-fun $generated@@105 (T@U) T@U)
(declare-fun $generated@@110 () T@T)
(declare-fun $generated@@111 () T@U)
(declare-fun $generated@@112 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@113 () T@T)
(declare-fun $generated@@114 () T@T)
(declare-fun $generated@@115 (T@T T@T) T@T)
(declare-fun $generated@@116 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@117 (T@T) T@T)
(declare-fun $generated@@118 (T@T) T@T)
(declare-fun $generated@@145 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@146 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@147 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@179 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@6 $generated@@7) 0) (= ($generated@@6 $generated@@8) 1)) (= ($generated@@6 $generated@@9) 2)) (forall (($generated@@16 Bool) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Int) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Real) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5)
)
(assert (forall (($generated@@26 T@U) ($generated@@27 T@U) ($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ) (! (= ($generated@@22 $generated@@26 $generated@@27 $generated@@29 $generated@@28 $generated@@30) ($generated@@11 ($generated@@23 $generated@@7 ($generated@@24 $generated@@26 $generated $generated@@29 ($generated@@25 $generated@@26 $generated@@27 $generated@@28) $generated@@30))))
 :pattern ( ($generated@@22 $generated@@26 $generated@@27 $generated@@29 $generated@@28 $generated@@30))
)))
(assert (forall (($generated@@32 T@U) ($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ) (! (= ($generated@@24 $generated@@32 $generated $generated@@35 ($generated@@25 $generated@@32 $generated@@33 $generated@@34) $generated@@36) ($generated@@31 $generated@@7 ($generated@@10 ($generated@@22 $generated@@32 $generated@@33 $generated@@35 $generated@@34 $generated@@36))))
 :pattern ( ($generated@@24 $generated@@32 $generated $generated@@35 ($generated@@25 $generated@@32 $generated@@33 $generated@@34) $generated@@36))
)))
(assert (= ($generated@@37 $generated) $generated@@1))
(assert (= ($generated@@37 $generated@@0) $generated@@2))
(assert (forall (($generated@@40 T@U) ) (!  (not ($generated@@38 $generated@@39 $generated@@40))
 :pattern ( ($generated@@38 $generated@@39 $generated@@40))
)))
(assert (= ($generated@@6 $generated@@42) 3))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ) (!  (=> (and (and ($generated@@41 $generated@@42 $generated@@45 ($generated@@43 $generated@@46 $generated@@47)) (forall (($generated@@50 T@U) ) (!  (=> ($generated@@44 $generated@@50 $generated@@48) ($generated@@44 $generated@@50 $generated@@46))
 :pattern ( ($generated@@44 $generated@@50 $generated@@48))
 :pattern ( ($generated@@44 $generated@@50 $generated@@46))
))) (forall (($generated@@51 T@U) ) (!  (=> ($generated@@44 $generated@@51 $generated@@47) ($generated@@44 $generated@@51 $generated@@49))
 :pattern ( ($generated@@44 $generated@@51 $generated@@47))
 :pattern ( ($generated@@44 $generated@@51 $generated@@49))
))) ($generated@@41 $generated@@42 $generated@@45 ($generated@@43 $generated@@48 $generated@@49)))
 :pattern ( ($generated@@41 $generated@@42 $generated@@45 ($generated@@43 $generated@@46 $generated@@47)) ($generated@@41 $generated@@42 $generated@@45 ($generated@@43 $generated@@48 $generated@@49)))
)))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (!  (=> ($generated@@22 $generated@@54 $generated@@55 $generated@@57 $generated@@56 $generated@@58) (= ($generated@@38 ($generated@@52 $generated@@54 $generated $generated@@57 ($generated@@25 $generated@@54 $generated@@55 $generated@@56) $generated@@58) $generated@@53) ($generated@@38 ($generated@@52 $generated@@54 $generated@@55 $generated@@57 $generated@@56 $generated@@58) $generated@@53)))
 :pattern ( ($generated@@38 ($generated@@52 $generated@@54 $generated $generated@@57 ($generated@@25 $generated@@54 $generated@@55 $generated@@56) $generated@@58) $generated@@53))
)))
(assert (forall (($generated@@60 Int) ) (! (= ($generated@@59 $generated@@60) $generated@@60)
 :pattern ( ($generated@@59 $generated@@60))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@T) ) (! (= ($generated@@61 $generated@@63 $generated@@62) $generated@@62)
 :pattern ( ($generated@@61 $generated@@63 $generated@@62))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (!  (=> (and ($generated@@65 $generated@@69) (and ($generated@@44 $generated@@71 $generated@@67) ($generated@@41 $generated@@42 $generated@@70 ($generated@@43 $generated@@67 $generated@@68)))) (= ($generated@@66 ($generated@@52 $generated@@67 $generated@@68 $generated@@64 $generated@@70 $generated@@71) $generated@@39) ($generated@@66 ($generated@@52 $generated@@67 $generated@@68 $generated@@69 $generated@@70 $generated@@71) $generated@@39)))
 :pattern ( ($generated@@52 $generated@@67 $generated@@68 $generated@@64 $generated@@70 $generated@@71) ($generated@@65 $generated@@69))
 :pattern ( ($generated@@52 $generated@@67 $generated@@68 $generated@@69 $generated@@70 $generated@@71))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@T) ) (! (= ($generated@@31 $generated@@73 ($generated@@23 $generated@@73 $generated@@72)) $generated@@72)
 :pattern ( ($generated@@23 $generated@@73 $generated@@72))
)))
(assert ($generated@@65 $generated@@64))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@T) ) (! (= ($generated@@74 ($generated@@31 $generated@@79 $generated@@76) $generated@@77 $generated@@78) ($generated@@75 $generated@@79 $generated@@76 $generated@@77 $generated@@78))
 :pattern ( ($generated@@74 ($generated@@31 $generated@@79 $generated@@76) $generated@@77 $generated@@78))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ) (! (= ($generated@@22 $generated@@80 $generated $generated@@83 ($generated@@25 $generated@@80 $generated@@81 $generated@@82) $generated@@84) true)
 :pattern ( ($generated@@22 $generated@@80 $generated $generated@@83 ($generated@@25 $generated@@80 $generated@@81 $generated@@82) $generated@@84))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ) (!  (=> (and ($generated@@65 $generated@@88) ($generated@@75 $generated@@42 $generated@@85 ($generated@@43 $generated@@86 $generated@@87) $generated@@88)) (forall (($generated@@89 T@U) ) (!  (=> (and ($generated@@74 $generated@@89 $generated@@86 $generated@@88) ($generated@@22 $generated@@86 $generated@@87 $generated@@88 $generated@@85 $generated@@89)) ($generated@@74 ($generated@@24 $generated@@86 $generated@@87 $generated@@88 $generated@@85 $generated@@89) $generated@@87 $generated@@88))
 :pattern ( ($generated@@24 $generated@@86 $generated@@87 $generated@@88 $generated@@85 $generated@@89))
)))
 :pattern ( ($generated@@75 $generated@@42 $generated@@85 ($generated@@43 $generated@@86 $generated@@87) $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> ($generated@@66 $generated@@90 $generated@@91) (= $generated@@90 $generated@@91))
 :pattern ( ($generated@@66 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@92 ($generated@@43 $generated@@93 $generated@@94)) (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> (and (and ($generated@@65 $generated@@95) ($generated@@44 $generated@@96 $generated@@93)) ($generated@@22 $generated@@93 $generated@@94 $generated@@95 $generated@@92 $generated@@96)) ($generated@@44 ($generated@@24 $generated@@93 $generated@@94 $generated@@95 $generated@@92 $generated@@96) $generated@@94))
 :pattern ( ($generated@@24 $generated@@93 $generated@@94 $generated@@95 $generated@@92 $generated@@96))
)))
 :pattern ( ($generated@@41 $generated@@42 $generated@@92 ($generated@@43 $generated@@93 $generated@@94)))
)))
(assert (forall (($generated@@97 T@U) ) (!  (=> ($generated@@44 $generated@@97 $generated@@0) (and (= ($generated@@31 $generated@@8 ($generated@@23 $generated@@8 $generated@@97)) $generated@@97) ($generated@@41 $generated@@8 ($generated@@23 $generated@@8 $generated@@97) $generated@@0)))
 :pattern ( ($generated@@44 $generated@@97 $generated@@0))
)))
(assert (forall (($generated@@98 T@U) ) (!  (=> ($generated@@44 $generated@@98 $generated) (and (= ($generated@@31 $generated@@7 ($generated@@23 $generated@@7 $generated@@98)) $generated@@98) ($generated@@41 $generated@@7 ($generated@@23 $generated@@7 $generated@@98) $generated)))
 :pattern ( ($generated@@44 $generated@@98 $generated))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@T) ) (! (= ($generated@@44 ($generated@@31 $generated@@101 $generated@@99) $generated@@100) ($generated@@41 $generated@@101 $generated@@99 $generated@@100))
 :pattern ( ($generated@@44 ($generated@@31 $generated@@101 $generated@@99) $generated@@100))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@102 ($generated@@43 $generated@@103 $generated@@104)) $generated@@103)
 :pattern ( ($generated@@43 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ) (! (= ($generated@@105 ($generated@@43 $generated@@106 $generated@@107)) $generated@@107)
 :pattern ( ($generated@@43 $generated@@106 $generated@@107))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@T) ) (! (= ($generated@@23 $generated@@109 ($generated@@31 $generated@@109 $generated@@108)) $generated@@108)
 :pattern ( ($generated@@31 $generated@@109 $generated@@108))
)))
(assert  (and (and (and (and (and (and (and (= ($generated@@6 $generated@@110) 4) (forall (($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@112 $generated@@119 $generated@@120 ($generated@@116 $generated@@119 $generated@@120 $generated@@122 $generated@@123 $generated@@121) $generated@@123) $generated@@121)
 :weight 0
))) (forall (($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ) (!  (or (= $generated@@128 $generated@@129) (= ($generated@@112 $generated@@124 $generated@@125 ($generated@@116 $generated@@124 $generated@@125 $generated@@127 $generated@@128 $generated@@126) $generated@@129) ($generated@@112 $generated@@124 $generated@@125 $generated@@127 $generated@@129)))
 :weight 0
))) (= ($generated@@6 $generated@@113) 5)) (= ($generated@@6 $generated@@114) 6)) (forall (($generated@@130 T@T) ($generated@@131 T@T) ) (= ($generated@@6 ($generated@@115 $generated@@130 $generated@@131)) 7))) (forall (($generated@@132 T@T) ($generated@@133 T@T) ) (! (= ($generated@@117 ($generated@@115 $generated@@132 $generated@@133)) $generated@@132)
 :pattern ( ($generated@@115 $generated@@132 $generated@@133))
))) (forall (($generated@@134 T@T) ($generated@@135 T@T) ) (! (= ($generated@@118 ($generated@@115 $generated@@134 $generated@@135)) $generated@@135)
 :pattern ( ($generated@@115 $generated@@134 $generated@@135))
))))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (!  (=> ($generated@@65 $generated@@139) (= ($generated@@75 $generated@@42 $generated@@136 ($generated@@43 $generated@@137 $generated@@138) $generated@@139) (forall (($generated@@140 T@U) ) (!  (=> (and (and ($generated@@44 $generated@@140 $generated@@137) ($generated@@74 $generated@@140 $generated@@137 $generated@@139)) ($generated@@22 $generated@@137 $generated@@138 $generated@@139 $generated@@136 $generated@@140)) (forall (($generated@@141 T@U) ) (!  (=> (and (or (not (= $generated@@141 $generated@@111)) (not true)) ($generated@@38 ($generated@@52 $generated@@137 $generated@@138 $generated@@139 $generated@@136 $generated@@140) ($generated@@31 $generated@@110 $generated@@141))) ($generated@@11 ($generated@@23 $generated@@7 ($generated@@112 $generated@@113 $generated@@114 ($generated@@112 $generated@@110 ($generated@@115 $generated@@113 $generated@@114) $generated@@139 $generated@@141) $generated@@3))))
 :pattern ( ($generated@@38 ($generated@@52 $generated@@137 $generated@@138 $generated@@139 $generated@@136 $generated@@140) ($generated@@31 $generated@@110 $generated@@141)))
)))
 :pattern ( ($generated@@24 $generated@@137 $generated@@138 $generated@@139 $generated@@136 $generated@@140))
 :pattern ( ($generated@@52 $generated@@137 $generated@@138 $generated@@139 $generated@@136 $generated@@140))
))))
 :pattern ( ($generated@@75 $generated@@42 $generated@@136 ($generated@@43 $generated@@137 $generated@@138) $generated@@139))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ) (!  (=> ($generated@@44 $generated@@144 ($generated@@43 $generated@@142 $generated@@143)) (and (= ($generated@@31 $generated@@42 ($generated@@23 $generated@@42 $generated@@144)) $generated@@144) ($generated@@41 $generated@@42 ($generated@@23 $generated@@42 $generated@@144) ($generated@@43 $generated@@142 $generated@@143))))
 :pattern ( ($generated@@44 $generated@@144 ($generated@@43 $generated@@142 $generated@@143)))
)))
(assert  (and (forall (($generated@@148 T@T) ($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ) (! (= ($generated@@145 $generated@@148 $generated@@149 $generated@@150 ($generated@@147 $generated@@148 $generated@@149 $generated@@150 $generated@@152 $generated@@153 $generated@@154 $generated@@151) $generated@@153 $generated@@154) $generated@@151)
 :weight 0
)) (and (forall (($generated@@155 T@T) ($generated@@156 T@T) ($generated@@157 T@T) ($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ) (!  (or (= $generated@@160 $generated@@162) (= ($generated@@145 $generated@@155 $generated@@156 $generated@@157 ($generated@@147 $generated@@155 $generated@@156 $generated@@157 $generated@@159 $generated@@160 $generated@@161 $generated@@158) $generated@@162 $generated@@163) ($generated@@145 $generated@@155 $generated@@156 $generated@@157 $generated@@159 $generated@@162 $generated@@163)))
 :weight 0
)) (forall (($generated@@164 T@T) ($generated@@165 T@T) ($generated@@166 T@T) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (or (= $generated@@170 $generated@@172) (= ($generated@@145 $generated@@164 $generated@@165 $generated@@166 ($generated@@147 $generated@@164 $generated@@165 $generated@@166 $generated@@168 $generated@@169 $generated@@170 $generated@@167) $generated@@171 $generated@@172) ($generated@@145 $generated@@164 $generated@@165 $generated@@166 $generated@@168 $generated@@171 $generated@@172)))
 :weight 0
)))))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 Bool) ($generated@@177 T@U) ($generated@@178 T@U) ) (! (= ($generated@@11 ($generated@@145 $generated@@110 $generated@@113 $generated@@7 ($generated@@146 $generated@@173 $generated@@174 $generated@@175 $generated@@176) $generated@@177 $generated@@178))  (=> (and (or (not (= $generated@@177 $generated@@173)) (not true)) ($generated@@11 ($generated@@23 $generated@@7 ($generated@@112 $generated@@113 $generated@@114 ($generated@@112 $generated@@110 ($generated@@115 $generated@@113 $generated@@114) $generated@@174 $generated@@177) $generated@@175)))) $generated@@176))
 :pattern ( ($generated@@145 $generated@@110 $generated@@113 $generated@@7 ($generated@@146 $generated@@173 $generated@@174 $generated@@175 $generated@@176) $generated@@177 $generated@@178))
)))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@U) ) (!  (and (= ($generated@@37 ($generated@@43 $generated@@180 $generated@@181)) $generated@@4) (= ($generated@@179 ($generated@@43 $generated@@180 $generated@@181)) $generated@@5))
 :pattern ( ($generated@@43 $generated@@180 $generated@@181))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ) (!  (=> (and (and ($generated@@65 $generated@@184) (and ($generated@@44 $generated@@186 $generated@@182) ($generated@@41 $generated@@42 $generated@@185 ($generated@@43 $generated@@182 $generated@@183)))) ($generated@@66 ($generated@@52 $generated@@182 $generated@@183 $generated@@64 $generated@@185 $generated@@186) $generated@@39)) (= ($generated@@22 $generated@@182 $generated@@183 $generated@@64 $generated@@185 $generated@@186) ($generated@@22 $generated@@182 $generated@@183 $generated@@184 $generated@@185 $generated@@186)))
 :pattern ( ($generated@@22 $generated@@182 $generated@@183 $generated@@64 $generated@@185 $generated@@186) ($generated@@65 $generated@@184))
 :pattern ( ($generated@@22 $generated@@182 $generated@@183 $generated@@184 $generated@@185 $generated@@186))
)))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@U) ) (! (= ($generated@@66 $generated@@187 $generated@@188) (forall (($generated@@189 T@U) ) (! (= ($generated@@38 $generated@@187 $generated@@189) ($generated@@38 $generated@@188 $generated@@189))
 :pattern ( ($generated@@38 $generated@@187 $generated@@189))
 :pattern ( ($generated@@38 $generated@@188 $generated@@189))
)))
 :pattern ( ($generated@@66 $generated@@187 $generated@@188))
)))
(assert (forall (($generated@@190 Int) ) (! (= ($generated@@31 $generated@@8 ($generated@@12 ($generated@@59 $generated@@190))) ($generated@@61 $generated@@114 ($generated@@31 $generated@@8 ($generated@@12 $generated@@190))))
 :pattern ( ($generated@@31 $generated@@8 ($generated@@12 ($generated@@59 $generated@@190))))
)))
(assert (forall (($generated@@191 T@U) ($generated@@192 T@T) ) (! (= ($generated@@31 $generated@@192 ($generated@@61 $generated@@192 $generated@@191)) ($generated@@61 $generated@@114 ($generated@@31 $generated@@192 $generated@@191)))
 :pattern ( ($generated@@31 $generated@@192 ($generated@@61 $generated@@192 $generated@@191)))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ) (! ($generated@@75 $generated@@8 $generated@@194 $generated@@0 $generated@@193)
 :pattern ( ($generated@@75 $generated@@8 $generated@@194 $generated@@0 $generated@@193))
)))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@U) ) (! ($generated@@75 $generated@@7 $generated@@196 $generated $generated@@195)
 :pattern ( ($generated@@75 $generated@@7 $generated@@196 $generated $generated@@195))
)))
(assert (forall (($generated@@197 T@U) ) (! ($generated@@41 $generated@@8 $generated@@197 $generated@@0)
 :pattern ( ($generated@@41 $generated@@8 $generated@@197 $generated@@0))
)))
(assert (forall (($generated@@198 T@U) ) (! ($generated@@41 $generated@@7 $generated@@198 $generated)
 :pattern ( ($generated@@41 $generated@@7 $generated@@198 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@199 () T@U)
(declare-fun $generated@@200 () T@U)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () Int)
(declare-fun $generated@@204 () Int)
(declare-fun $generated@@205 (T@U) Bool)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 () Int)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@208  (=> (= $generated@@199 ($generated@@146 $generated@@111 $generated@@200 $generated@@3 false)) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (=> (and (and (= $generated@@201 ($generated@@25 $generated@@0 $generated@@0 $generated@@202)) ($generated@@74 ($generated@@31 $generated@@42 $generated@@201) ($generated@@43 $generated@@0 $generated) $generated@@200)) (and (= $generated@@203 ($generated@@59 10)) ($generated@@75 $generated@@8 ($generated@@12 $generated@@203) $generated@@0 $generated@@200))) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($generated@@22 $generated@@0 $generated $generated@@200 $generated@@201 ($generated@@31 $generated@@8 ($generated@@12 ($generated@@59 10))))) (=> ($generated@@22 $generated@@0 $generated $generated@@200 $generated@@201 ($generated@@31 $generated@@8 ($generated@@12 ($generated@@59 10)))) (=> ($generated@@74 ($generated@@31 $generated@@42 $generated@@202) ($generated@@43 $generated@@0 $generated@@0) $generated@@200) (=> (and (= $generated@@204 ($generated@@59 10)) ($generated@@75 $generated@@8 ($generated@@12 $generated@@204) $generated@@0 $generated@@200)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@22 $generated@@0 $generated@@0 $generated@@200 $generated@@202 ($generated@@31 $generated@@8 ($generated@@12 ($generated@@59 10))))) (=> ($generated@@22 $generated@@0 $generated@@0 $generated@@200 $generated@@202 ($generated@@31 $generated@@8 ($generated@@12 ($generated@@59 10)))) (=> (and (and true true) (= (ControlFlow 0 2) (- 0 1))) ($generated@@66 ($generated@@52 $generated@@0 $generated $generated@@200 $generated@@201 ($generated@@31 $generated@@8 ($generated@@12 ($generated@@59 10)))) ($generated@@52 $generated@@0 $generated@@0 $generated@@200 $generated@@202 ($generated@@31 $generated@@8 ($generated@@12 ($generated@@59 10)))))))))))))))))
(let (($generated@@209  (=> (and (and ($generated@@65 $generated@@200) ($generated@@205 $generated@@200)) (and ($generated@@41 $generated@@42 $generated@@202 ($generated@@43 $generated@@0 $generated@@0)) ($generated@@75 $generated@@42 $generated@@202 ($generated@@43 $generated@@0 $generated@@0) $generated@@200))) (=> (and (and (and (and ($generated@@41 $generated@@42 $generated@@206 ($generated@@43 $generated@@0 $generated)) ($generated@@75 $generated@@42 $generated@@206 ($generated@@43 $generated@@0 $generated) $generated@@200)) true) (= 0 $generated@@207)) (and ($generated@@22 $generated@@0 $generated@@0 $generated@@200 $generated@@202 ($generated@@31 $generated@@8 ($generated@@12 ($generated@@59 10)))) (= (ControlFlow 0 6) 2))) $generated@@208))))
$generated@@209)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)