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
(declare-fun $generated@@13 () T@U)
(declare-fun $generated@@14 () T@U)
(declare-fun $generated@@15 () T@U)
(declare-fun $generated@@16 (T@T) Int)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 () T@T)
(declare-fun $generated@@19 () T@T)
(declare-fun $generated@@20 (Bool) T@U)
(declare-fun $generated@@21 (T@U) Bool)
(declare-fun $generated@@22 (Int) T@U)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (Real) T@U)
(declare-fun $generated@@25 (T@U) Real)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@40 (T@U) Int)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@42 (T@U) Bool)
(declare-fun $generated@@43 (T@T T@U T@U) Bool)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 (T@U) T@U)
(declare-fun $generated@@48 (T@U) Bool)
(declare-fun $generated@@49 (T@U) T@U)
(declare-fun $generated@@52 () T@T)
(declare-fun $generated@@53 () T@U)
(declare-fun $generated@@54 () T@U)
(declare-fun $generated@@57 () T@U)
(declare-fun $generated@@58 (T@T T@U) T@U)
(declare-fun $generated@@59 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@60 () T@T)
(declare-fun $generated@@61 () T@T)
(declare-fun $generated@@62 (T@T T@T) T@T)
(declare-fun $generated@@63 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@64 (T@T) T@T)
(declare-fun $generated@@65 (T@T) T@T)
(declare-fun $generated@@85 (Int) Int)
(declare-fun $generated@@87 (T@T T@U) T@U)
(declare-fun $generated@@90 (T@U T@U) T@U)
(declare-fun $generated@@91 (T@U T@U) Bool)
(declare-fun $generated@@95 (T@U) T@U)
(declare-fun $generated@@98 (T@T T@U) T@U)
(declare-fun $generated@@101 (T@U) T@U)
(declare-fun $generated@@104 (T@U) T@U)
(declare-fun $generated@@109 (T@U T@U T@U) Bool)
(declare-fun $generated@@114 (T@U) T@U)
(declare-fun $generated@@121 (T@U Int) T@U)
(declare-fun $generated@@125 (T@U) Bool)
(declare-fun $generated@@145 (T@U) T@U)
(declare-fun $generated@@148 (T@U) T@U)
(declare-fun $generated@@150 (T@U) T@U)
(declare-fun $generated@@152 (T@U) T@U)
(declare-fun $generated@@155 (T@U) T@U)
(declare-fun $generated@@158 (T@U) T@U)
(declare-fun $generated@@166 (T@U) Int)
(declare-fun $generated@@167 (T@U) Int)
(declare-fun $generated@@176 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@177 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@178 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@210 (T@U) T@U)
(declare-fun $generated@@211 (T@U) T@U)
(declare-fun $generated@@236 (T@U) Int)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@16 $generated@@17) 0) (= ($generated@@16 $generated@@18) 1)) (= ($generated@@16 $generated@@19) 2)) (forall (($generated@@26 Bool) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 Int) ) (! (= ($generated@@23 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 T@U) ) (! (= ($generated@@22 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))) (forall (($generated@@30 Real) ) (! (= ($generated@@25 ($generated@@24 $generated@@30)) $generated@@30)
 :pattern ( ($generated@@24 $generated@@30))
))) (forall (($generated@@31 T@U) ) (! (= ($generated@@24 ($generated@@25 $generated@@31)) $generated@@31)
 :pattern ( ($generated@@25 $generated@@31))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13 $generated@@14 $generated@@15)
)
(assert (= ($generated@@32 $generated) $generated@@1))
(assert (= ($generated@@32 $generated@@0) $generated@@2))
(assert (= ($generated@@16 $generated@@34) 3))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@38 ($generated@@35 $generated@@37) $generated@@39) ($generated@@33 $generated@@34 $generated@@38 ($generated@@36 $generated@@37) $generated@@39))
 :pattern ( ($generated@@33 $generated@@34 $generated@@38 ($generated@@35 $generated@@37) $generated@@39))
)))
(assert (= ($generated@@40 $generated@@41) 0))
(assert (= ($generated@@16 $generated@@44) 4))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@U) ) (!  (=> ($generated@@43 $generated@@44 $generated@@47 ($generated@@45 $generated@@46)) ($generated@@42 $generated@@47))
 :pattern ( ($generated@@42 $generated@@47) ($generated@@43 $generated@@44 $generated@@47 ($generated@@45 $generated@@46)))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@U) ) (!  (=> ($generated@@43 $generated@@44 $generated@@51 ($generated@@49 $generated@@50)) ($generated@@48 $generated@@51))
 :pattern ( ($generated@@48 $generated@@51) ($generated@@43 $generated@@44 $generated@@51 ($generated@@49 $generated@@50)))
)))
(assert (= ($generated@@16 $generated@@52) 5))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@U) ) (! (= ($generated@@33 $generated@@52 $generated@@55 $generated@@53 $generated@@56) ($generated@@33 $generated@@52 $generated@@55 $generated@@54 $generated@@56))
 :pattern ( ($generated@@33 $generated@@52 $generated@@55 $generated@@53 $generated@@56))
 :pattern ( ($generated@@33 $generated@@52 $generated@@55 $generated@@54 $generated@@56))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@66 T@T) ($generated@@67 T@T) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@59 $generated@@66 $generated@@67 ($generated@@63 $generated@@66 $generated@@67 $generated@@69 $generated@@70 $generated@@68) $generated@@70) $generated@@68)
 :weight 0
)) (forall (($generated@@71 T@T) ($generated@@72 T@T) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ) (!  (or (= $generated@@75 $generated@@76) (= ($generated@@59 $generated@@71 $generated@@72 ($generated@@63 $generated@@71 $generated@@72 $generated@@74 $generated@@75 $generated@@73) $generated@@76) ($generated@@59 $generated@@71 $generated@@72 $generated@@74 $generated@@76)))
 :weight 0
))) (= ($generated@@16 $generated@@60) 6)) (= ($generated@@16 $generated@@61) 7)) (forall (($generated@@77 T@T) ($generated@@78 T@T) ) (= ($generated@@16 ($generated@@62 $generated@@77 $generated@@78)) 8))) (forall (($generated@@79 T@T) ($generated@@80 T@T) ) (! (= ($generated@@64 ($generated@@62 $generated@@79 $generated@@80)) $generated@@79)
 :pattern ( ($generated@@62 $generated@@79 $generated@@80))
))) (forall (($generated@@81 T@T) ($generated@@82 T@T) ) (! (= ($generated@@65 ($generated@@62 $generated@@81 $generated@@82)) $generated@@82)
 :pattern ( ($generated@@62 $generated@@81 $generated@@82))
))))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ) (! (= ($generated@@33 $generated@@52 $generated@@83 $generated@@54 $generated@@84)  (or (= $generated@@83 $generated@@57) ($generated@@21 ($generated@@58 $generated@@17 ($generated@@59 $generated@@60 $generated@@61 ($generated@@59 $generated@@52 ($generated@@62 $generated@@60 $generated@@61) $generated@@84 $generated@@83) $generated@@4)))))
 :pattern ( ($generated@@33 $generated@@52 $generated@@83 $generated@@54 $generated@@84))
)))
(assert (forall (($generated@@86 Int) ) (! (= ($generated@@85 $generated@@86) $generated@@86)
 :pattern ( ($generated@@85 $generated@@86))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@87 $generated@@89 $generated@@88) $generated@@88)
 :pattern ( ($generated@@87 $generated@@89 $generated@@88))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ) (!  (=> (and ($generated@@43 $generated@@34 $generated@@92 ($generated@@36 $generated@@94)) ($generated@@91 $generated@@93 $generated@@94)) ($generated@@43 $generated@@34 ($generated@@90 $generated@@92 $generated@@93) ($generated@@36 $generated@@94)))
 :pattern ( ($generated@@43 $generated@@34 ($generated@@90 $generated@@92 $generated@@93) ($generated@@36 $generated@@94)))
)))
(assert (forall (($generated@@96 T@U) ) (! (= ($generated@@42 $generated@@96) (= ($generated@@95 $generated@@96) $generated@@10))
 :pattern ( ($generated@@42 $generated@@96))
)))
(assert (forall (($generated@@97 T@U) ) (! (= ($generated@@48 $generated@@97) (= ($generated@@95 $generated@@97) $generated@@11))
 :pattern ( ($generated@@48 $generated@@97))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@T) ) (! (= ($generated@@98 $generated@@100 ($generated@@58 $generated@@100 $generated@@99)) $generated@@99)
 :pattern ( ($generated@@58 $generated@@100 $generated@@99))
)))
(assert (forall (($generated@@102 T@U) ) (!  (=> ($generated@@42 $generated@@102) (exists (($generated@@103 T@U) ) (= $generated@@102 ($generated@@101 $generated@@103))))
 :pattern ( ($generated@@42 $generated@@102))
)))
(assert (forall (($generated@@105 T@U) ) (!  (=> ($generated@@48 $generated@@105) (exists (($generated@@106 T@U) ) (= $generated@@105 ($generated@@104 $generated@@106))))
 :pattern ( ($generated@@48 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ) (! (= ($generated@@40 ($generated@@90 $generated@@107 $generated@@108)) (+ 1 ($generated@@40 $generated@@107)))
 :pattern ( ($generated@@90 $generated@@107 $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@T) ) (! (= ($generated@@109 ($generated@@98 $generated@@113 $generated@@110) $generated@@111 $generated@@112) ($generated@@33 $generated@@113 $generated@@110 $generated@@111 $generated@@112))
 :pattern ( ($generated@@109 ($generated@@98 $generated@@113 $generated@@110) $generated@@111 $generated@@112))
)))
(assert (forall (($generated@@115 T@U) ) (!  (and (= ($generated@@32 ($generated@@45 $generated@@115)) $generated@@7) (= ($generated@@114 ($generated@@45 $generated@@115)) $generated@@13))
 :pattern ( ($generated@@45 $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ) (!  (and (= ($generated@@32 ($generated@@49 $generated@@116)) $generated@@8) (= ($generated@@114 ($generated@@49 $generated@@116)) $generated@@14))
 :pattern ( ($generated@@49 $generated@@116))
)))
(assert (forall (($generated@@117 T@U) ) (!  (and (= ($generated@@32 ($generated@@35 $generated@@117)) $generated@@9) (= ($generated@@114 ($generated@@35 $generated@@117)) $generated@@15))
 :pattern ( ($generated@@35 $generated@@117))
)))
(assert (forall (($generated@@118 T@U) ) (!  (=> ($generated@@91 $generated@@118 $generated@@54) (and (= ($generated@@98 $generated@@52 ($generated@@58 $generated@@52 $generated@@118)) $generated@@118) ($generated@@43 $generated@@52 ($generated@@58 $generated@@52 $generated@@118) $generated@@54)))
 :pattern ( ($generated@@91 $generated@@118 $generated@@54))
)))
(assert (forall (($generated@@119 T@U) ) (!  (=> ($generated@@91 $generated@@119 $generated@@53) (and (= ($generated@@98 $generated@@52 ($generated@@58 $generated@@52 $generated@@119)) $generated@@119) ($generated@@43 $generated@@52 ($generated@@58 $generated@@52 $generated@@119) $generated@@53)))
 :pattern ( ($generated@@91 $generated@@119 $generated@@53))
)))
(assert (forall (($generated@@120 T@U) ) (! (= ($generated@@43 $generated@@52 $generated@@120 $generated@@53)  (and ($generated@@43 $generated@@52 $generated@@120 $generated@@54) (or (not (= $generated@@120 $generated@@57)) (not true))))
 :pattern ( ($generated@@43 $generated@@52 $generated@@120 $generated@@53))
 :pattern ( ($generated@@43 $generated@@52 $generated@@120 $generated@@54))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 Int) ($generated@@124 T@U) ) (!  (and (=> (= $generated@@123 ($generated@@40 $generated@@122)) (= ($generated@@121 ($generated@@90 $generated@@122 $generated@@124) $generated@@123) $generated@@124)) (=> (or (not (= $generated@@123 ($generated@@40 $generated@@122))) (not true)) (= ($generated@@121 ($generated@@90 $generated@@122 $generated@@124) $generated@@123) ($generated@@121 $generated@@122 $generated@@123))))
 :pattern ( ($generated@@121 ($generated@@90 $generated@@122 $generated@@124) $generated@@123))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ) (!  (=> ($generated@@125 $generated@@128) (= ($generated@@33 $generated@@44 ($generated@@101 $generated@@127) ($generated@@45 $generated@@126) $generated@@128) ($generated@@109 $generated@@127 $generated@@126 $generated@@128)))
 :pattern ( ($generated@@33 $generated@@44 ($generated@@101 $generated@@127) ($generated@@45 $generated@@126) $generated@@128))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (!  (=> ($generated@@125 $generated@@131) (= ($generated@@33 $generated@@44 ($generated@@104 $generated@@130) ($generated@@49 $generated@@129) $generated@@131) ($generated@@109 $generated@@130 $generated@@129 $generated@@131)))
 :pattern ( ($generated@@33 $generated@@44 ($generated@@104 $generated@@130) ($generated@@49 $generated@@129) $generated@@131))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@43 $generated@@34 $generated@@133 ($generated@@35 $generated@@132))  (and ($generated@@43 $generated@@34 $generated@@133 ($generated@@36 $generated@@132)) (<= ($generated@@40 $generated@@133) ($generated@@85 10))))
 :pattern ( ($generated@@43 $generated@@34 $generated@@133 ($generated@@35 $generated@@132)))
)))
(assert (forall (($generated@@134 T@U) ) (!  (=> ($generated@@91 $generated@@134 $generated@@0) (and (= ($generated@@98 $generated@@18 ($generated@@58 $generated@@18 $generated@@134)) $generated@@134) ($generated@@43 $generated@@18 ($generated@@58 $generated@@18 $generated@@134) $generated@@0)))
 :pattern ( ($generated@@91 $generated@@134 $generated@@0))
)))
(assert (forall (($generated@@135 T@U) ) (!  (=> ($generated@@91 $generated@@135 $generated) (and (= ($generated@@98 $generated@@17 ($generated@@58 $generated@@17 $generated@@135)) $generated@@135) ($generated@@43 $generated@@17 ($generated@@58 $generated@@17 $generated@@135) $generated)))
 :pattern ( ($generated@@91 $generated@@135 $generated))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@T) ) (! (= ($generated@@91 ($generated@@98 $generated@@138 $generated@@136) $generated@@137) ($generated@@43 $generated@@138 $generated@@136 $generated@@137))
 :pattern ( ($generated@@91 ($generated@@98 $generated@@138 $generated@@136) $generated@@137))
)))
(assert (forall (($generated@@139 T@U) ) (! (<= 0 ($generated@@40 $generated@@139))
 :pattern ( ($generated@@40 $generated@@139))
)))
(assert (forall (($generated@@140 T@U) ) (! ($generated@@43 $generated@@52 $generated@@140 $generated@@54)
 :pattern ( ($generated@@43 $generated@@52 $generated@@140 $generated@@54))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@141 ($generated@@36 $generated@@142) $generated@@143) (forall (($generated@@144 Int) ) (!  (=> (and (<= 0 $generated@@144) (< $generated@@144 ($generated@@40 $generated@@141))) ($generated@@109 ($generated@@121 $generated@@141 $generated@@144) $generated@@142 $generated@@143))
 :pattern ( ($generated@@121 $generated@@141 $generated@@144))
)))
 :pattern ( ($generated@@33 $generated@@34 $generated@@141 ($generated@@36 $generated@@142) $generated@@143))
)))
(assert (forall (($generated@@146 T@U) ) (! (= ($generated@@145 ($generated@@36 $generated@@146)) $generated@@146)
 :pattern ( ($generated@@36 $generated@@146))
)))
(assert (forall (($generated@@147 T@U) ) (! (= ($generated@@32 ($generated@@36 $generated@@147)) $generated@@3)
 :pattern ( ($generated@@36 $generated@@147))
)))
(assert (forall (($generated@@149 T@U) ) (! (= ($generated@@148 ($generated@@45 $generated@@149)) $generated@@149)
 :pattern ( ($generated@@45 $generated@@149))
)))
(assert (forall (($generated@@151 T@U) ) (! (= ($generated@@150 ($generated@@49 $generated@@151)) $generated@@151)
 :pattern ( ($generated@@49 $generated@@151))
)))
(assert (forall (($generated@@153 T@U) ) (! (= ($generated@@152 ($generated@@35 $generated@@153)) $generated@@153)
 :pattern ( ($generated@@35 $generated@@153))
)))
(assert (forall (($generated@@154 T@U) ) (! (= ($generated@@95 ($generated@@101 $generated@@154)) $generated@@10)
 :pattern ( ($generated@@101 $generated@@154))
)))
(assert (forall (($generated@@156 T@U) ) (! (= ($generated@@155 ($generated@@101 $generated@@156)) $generated@@156)
 :pattern ( ($generated@@101 $generated@@156))
)))
(assert (forall (($generated@@157 T@U) ) (! (= ($generated@@95 ($generated@@104 $generated@@157)) $generated@@11)
 :pattern ( ($generated@@104 $generated@@157))
)))
(assert (forall (($generated@@159 T@U) ) (! (= ($generated@@158 ($generated@@104 $generated@@159)) $generated@@159)
 :pattern ( ($generated@@104 $generated@@159))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@T) ) (! (= ($generated@@58 $generated@@161 ($generated@@98 $generated@@161 $generated@@160)) $generated@@160)
 :pattern ( ($generated@@98 $generated@@161 $generated@@160))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ) (! (= ($generated@@43 $generated@@44 ($generated@@101 $generated@@163) ($generated@@45 $generated@@162)) ($generated@@91 $generated@@163 $generated@@162))
 :pattern ( ($generated@@43 $generated@@44 ($generated@@101 $generated@@163) ($generated@@45 $generated@@162)))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (! (= ($generated@@43 $generated@@44 ($generated@@104 $generated@@165) ($generated@@49 $generated@@164)) ($generated@@91 $generated@@165 $generated@@164))
 :pattern ( ($generated@@43 $generated@@44 ($generated@@104 $generated@@165) ($generated@@49 $generated@@164)))
)))
(assert (forall (($generated@@168 T@U) ) (! (< ($generated@@166 $generated@@168) ($generated@@167 ($generated@@101 $generated@@168)))
 :pattern ( ($generated@@101 $generated@@168))
)))
(assert (forall (($generated@@169 T@U) ) (! (< ($generated@@166 $generated@@169) ($generated@@167 ($generated@@104 $generated@@169)))
 :pattern ( ($generated@@104 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> (and ($generated@@125 $generated@@172) (and ($generated@@42 $generated@@170) ($generated@@33 $generated@@44 $generated@@170 ($generated@@45 $generated@@171) $generated@@172))) ($generated@@109 ($generated@@155 $generated@@170) $generated@@171 $generated@@172))
 :pattern ( ($generated@@109 ($generated@@155 $generated@@170) $generated@@171 $generated@@172))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ) (!  (=> (and ($generated@@125 $generated@@175) (and ($generated@@48 $generated@@173) ($generated@@33 $generated@@44 $generated@@173 ($generated@@49 $generated@@174) $generated@@175))) ($generated@@109 ($generated@@158 $generated@@173) $generated@@174 $generated@@175))
 :pattern ( ($generated@@109 ($generated@@158 $generated@@173) $generated@@174 $generated@@175))
)))
(assert  (and (forall (($generated@@179 T@T) ($generated@@180 T@T) ($generated@@181 T@T) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ) (! (= ($generated@@176 $generated@@179 $generated@@180 $generated@@181 ($generated@@178 $generated@@179 $generated@@180 $generated@@181 $generated@@183 $generated@@184 $generated@@185 $generated@@182) $generated@@184 $generated@@185) $generated@@182)
 :weight 0
)) (and (forall (($generated@@186 T@T) ($generated@@187 T@T) ($generated@@188 T@T) ($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ) (!  (or (= $generated@@191 $generated@@193) (= ($generated@@176 $generated@@186 $generated@@187 $generated@@188 ($generated@@178 $generated@@186 $generated@@187 $generated@@188 $generated@@190 $generated@@191 $generated@@192 $generated@@189) $generated@@193 $generated@@194) ($generated@@176 $generated@@186 $generated@@187 $generated@@188 $generated@@190 $generated@@193 $generated@@194)))
 :weight 0
)) (forall (($generated@@195 T@T) ($generated@@196 T@T) ($generated@@197 T@T) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ) (!  (or (= $generated@@201 $generated@@203) (= ($generated@@176 $generated@@195 $generated@@196 $generated@@197 ($generated@@178 $generated@@195 $generated@@196 $generated@@197 $generated@@199 $generated@@200 $generated@@201 $generated@@198) $generated@@202 $generated@@203) ($generated@@176 $generated@@195 $generated@@196 $generated@@197 $generated@@199 $generated@@202 $generated@@203)))
 :weight 0
)))))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 Bool) ($generated@@208 T@U) ($generated@@209 T@U) ) (! (= ($generated@@21 ($generated@@176 $generated@@52 $generated@@60 $generated@@17 ($generated@@177 $generated@@204 $generated@@205 $generated@@206 $generated@@207) $generated@@208 $generated@@209))  (=> (and (or (not (= $generated@@208 $generated@@204)) (not true)) ($generated@@21 ($generated@@58 $generated@@17 ($generated@@59 $generated@@60 $generated@@61 ($generated@@59 $generated@@52 ($generated@@62 $generated@@60 $generated@@61) $generated@@205 $generated@@208) $generated@@206)))) $generated@@207))
 :pattern ( ($generated@@176 $generated@@52 $generated@@60 $generated@@17 ($generated@@177 $generated@@204 $generated@@205 $generated@@206 $generated@@207) $generated@@208 $generated@@209))
)))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ) (!  (and (= ($generated@@210 ($generated@@90 $generated@@212 $generated@@213)) $generated@@212) (= ($generated@@211 ($generated@@90 $generated@@212 $generated@@213)) $generated@@213))
 :pattern ( ($generated@@90 $generated@@212 $generated@@213))
)))
(assert (forall (($generated@@214 T@U) ) (! (= ($generated@@166 ($generated@@98 $generated@@44 $generated@@214)) ($generated@@167 $generated@@214))
 :pattern ( ($generated@@166 ($generated@@98 $generated@@44 $generated@@214)))
)))
(assert (forall (($generated@@215 T@U) ($generated@@216 T@U) ) (!  (=> ($generated@@91 $generated@@215 ($generated@@36 $generated@@216)) (and (= ($generated@@98 $generated@@34 ($generated@@58 $generated@@34 $generated@@215)) $generated@@215) ($generated@@43 $generated@@34 ($generated@@58 $generated@@34 $generated@@215) ($generated@@36 $generated@@216))))
 :pattern ( ($generated@@91 $generated@@215 ($generated@@36 $generated@@216)))
)))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ) (!  (=> ($generated@@91 $generated@@218 ($generated@@45 $generated@@217)) (and (= ($generated@@98 $generated@@44 ($generated@@58 $generated@@44 $generated@@218)) $generated@@218) ($generated@@43 $generated@@44 ($generated@@58 $generated@@44 $generated@@218) ($generated@@45 $generated@@217))))
 :pattern ( ($generated@@91 $generated@@218 ($generated@@45 $generated@@217)))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ) (!  (=> ($generated@@91 $generated@@220 ($generated@@49 $generated@@219)) (and (= ($generated@@98 $generated@@44 ($generated@@58 $generated@@44 $generated@@220)) $generated@@220) ($generated@@43 $generated@@44 ($generated@@58 $generated@@44 $generated@@220) ($generated@@49 $generated@@219))))
 :pattern ( ($generated@@91 $generated@@220 ($generated@@49 $generated@@219)))
)))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@U) ) (!  (=> ($generated@@91 $generated@@222 ($generated@@35 $generated@@221)) (and (= ($generated@@98 $generated@@34 ($generated@@58 $generated@@34 $generated@@222)) $generated@@222) ($generated@@43 $generated@@34 ($generated@@58 $generated@@34 $generated@@222) ($generated@@35 $generated@@221))))
 :pattern ( ($generated@@91 $generated@@222 ($generated@@35 $generated@@221)))
)))
(assert (= ($generated@@32 $generated@@54) $generated@@5))
(assert (= ($generated@@114 $generated@@54) $generated@@12))
(assert (= ($generated@@32 $generated@@53) $generated@@6))
(assert (= ($generated@@114 $generated@@53) $generated@@12))
(assert (forall (($generated@@223 Int) ) (! (= ($generated@@98 $generated@@18 ($generated@@22 ($generated@@85 $generated@@223))) ($generated@@87 $generated@@61 ($generated@@98 $generated@@18 ($generated@@22 $generated@@223))))
 :pattern ( ($generated@@98 $generated@@18 ($generated@@22 ($generated@@85 $generated@@223))))
)))
(assert (forall (($generated@@224 T@U) ) (! (= ($generated@@101 ($generated@@87 $generated@@61 $generated@@224)) ($generated@@87 $generated@@44 ($generated@@101 $generated@@224)))
 :pattern ( ($generated@@101 ($generated@@87 $generated@@61 $generated@@224)))
)))
(assert (forall (($generated@@225 T@U) ) (! (= ($generated@@104 ($generated@@87 $generated@@61 $generated@@225)) ($generated@@87 $generated@@44 ($generated@@104 $generated@@225)))
 :pattern ( ($generated@@104 ($generated@@87 $generated@@61 $generated@@225)))
)))
(assert (forall (($generated@@226 T@U) ($generated@@227 T@T) ) (! (= ($generated@@98 $generated@@227 ($generated@@87 $generated@@227 $generated@@226)) ($generated@@87 $generated@@61 ($generated@@98 $generated@@227 $generated@@226)))
 :pattern ( ($generated@@98 $generated@@227 ($generated@@87 $generated@@227 $generated@@226)))
)))
(assert (forall (($generated@@228 T@U) ) (!  (=> (= ($generated@@40 $generated@@228) 0) (= $generated@@228 $generated@@41))
 :pattern ( ($generated@@40 $generated@@228))
)))
(assert (forall (($generated@@229 T@U) ($generated@@230 T@U) ) (! ($generated@@33 $generated@@18 $generated@@230 $generated@@0 $generated@@229)
 :pattern ( ($generated@@33 $generated@@18 $generated@@230 $generated@@0 $generated@@229))
)))
(assert (forall (($generated@@231 T@U) ($generated@@232 T@U) ) (! ($generated@@33 $generated@@17 $generated@@232 $generated $generated@@231)
 :pattern ( ($generated@@33 $generated@@17 $generated@@232 $generated $generated@@231))
)))
(assert (forall (($generated@@233 T@U) ($generated@@234 T@U) ) (! (= ($generated@@43 $generated@@34 $generated@@233 ($generated@@36 $generated@@234)) (forall (($generated@@235 Int) ) (!  (=> (and (<= 0 $generated@@235) (< $generated@@235 ($generated@@40 $generated@@233))) ($generated@@91 ($generated@@121 $generated@@233 $generated@@235) $generated@@234))
 :pattern ( ($generated@@121 $generated@@233 $generated@@235))
)))
 :pattern ( ($generated@@43 $generated@@34 $generated@@233 ($generated@@36 $generated@@234)))
)))
(assert (forall (($generated@@237 T@U) ($generated@@238 Int) ) (!  (=> (and (<= 0 $generated@@238) (< $generated@@238 ($generated@@40 $generated@@237))) (< ($generated@@167 ($generated@@58 $generated@@44 ($generated@@121 $generated@@237 $generated@@238))) ($generated@@236 $generated@@237)))
 :pattern ( ($generated@@167 ($generated@@58 $generated@@44 ($generated@@121 $generated@@237 $generated@@238))))
)))
(assert (forall (($generated@@239 T@U) ) (! ($generated@@43 $generated@@18 $generated@@239 $generated@@0)
 :pattern ( ($generated@@43 $generated@@18 $generated@@239 $generated@@0))
)))
(assert (forall (($generated@@240 T@U) ) (! ($generated@@43 $generated@@17 $generated@@240 $generated)
 :pattern ( ($generated@@43 $generated@@17 $generated@@240 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@241 () T@U)
(declare-fun $generated@@242 () T@U)
(declare-fun $generated@@243 () T@U)
(declare-fun $generated@@244 () T@U)
(declare-fun $generated@@245 (T@U) Bool)
(declare-fun $generated@@246 () T@U)
(declare-fun $generated@@247 () T@U)
(declare-fun $generated@@248 () T@U)
(declare-fun $generated@@249 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@250  (=> (and (and (= $generated@@241 ($generated@@177 $generated@@57 $generated@@242 $generated@@4 false)) (= $generated@@243 ($generated@@87 $generated@@44 ($generated@@101 ($generated@@98 $generated@@18 ($generated@@22 ($generated@@85 10))))))) (and (= $generated@@244 ($generated@@104 ($generated@@98 $generated@@52 $generated@@57))) (= (ControlFlow 0 2) (- 0 1)))) ($generated@@43 $generated@@34 ($generated@@87 $generated@@34 ($generated@@90 ($generated@@90 ($generated@@90 $generated@@41 ($generated@@98 $generated@@17 ($generated@@87 $generated@@17 ($generated@@20 false)))) ($generated@@98 $generated@@17 ($generated@@87 $generated@@17 ($generated@@20 true)))) ($generated@@98 $generated@@17 ($generated@@87 $generated@@17 ($generated@@20 false))))) ($generated@@35 $generated)))))
(let (($generated@@251  (=> (and ($generated@@125 $generated@@242) ($generated@@245 $generated@@242)) (=> (and (and (and (and ($generated@@43 $generated@@44 $generated@@246 ($generated@@45 $generated@@0)) ($generated@@33 $generated@@44 $generated@@246 ($generated@@45 $generated@@0) $generated@@242)) true) (and (and ($generated@@43 $generated@@44 $generated@@247 ($generated@@49 $generated@@54)) ($generated@@33 $generated@@44 $generated@@247 ($generated@@49 $generated@@54) $generated@@242)) true)) (and (and (and ($generated@@43 $generated@@34 $generated@@248 ($generated@@35 $generated)) ($generated@@33 $generated@@34 $generated@@248 ($generated@@35 $generated) $generated@@242)) true) (and (= 1 $generated@@249) (= (ControlFlow 0 3) 2)))) $generated@@250))))
$generated@@251)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)