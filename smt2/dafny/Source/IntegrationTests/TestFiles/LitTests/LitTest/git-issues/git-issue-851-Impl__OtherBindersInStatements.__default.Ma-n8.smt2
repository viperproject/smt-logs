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
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 (T@U T@U T@U) T@U)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@39 (T@U) Bool)
(declare-fun $generated@@40 (T@T T@U T@U) Bool)
(declare-fun $generated@@41 () T@T)
(declare-fun $generated@@42 (T@U T@U) T@U)
(declare-fun $generated@@46 (T@U T@U T@U) Bool)
(declare-fun $generated@@47 () T@U)
(declare-fun $generated@@48 (T@U) Bool)
(declare-fun $generated@@49 () T@U)
(declare-fun $generated@@52 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@53 () T@T)
(declare-fun $generated@@54 () T@U)
(declare-fun $generated@@57 () T@U)
(declare-fun $generated@@60 (T@U T@U) T@U)
(declare-fun $generated@@61 (T@U T@U) Bool)
(declare-fun $generated@@66 () T@U)
(declare-fun $generated@@67 (T@T T@U) T@U)
(declare-fun $generated@@68 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@69 () T@T)
(declare-fun $generated@@70 () T@T)
(declare-fun $generated@@71 (T@T T@T) T@T)
(declare-fun $generated@@72 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@73 (T@T) T@T)
(declare-fun $generated@@74 (T@T) T@T)
(declare-fun $generated@@96 (Int) Int)
(declare-fun $generated@@98 (T@T T@U) T@U)
(declare-fun $generated@@101 (T@U T@U) T@U)
(declare-fun $generated@@102 (T@U T@U) Bool)
(declare-fun $generated@@103 () T@T)
(declare-fun $generated@@114 (T@U) T@U)
(declare-fun $generated@@116 (T@T T@U) T@U)
(declare-fun $generated@@119 (T@U) T@U)
(declare-fun $generated@@125 () T@T)
(declare-fun $generated@@126 (T@U) T@U)
(declare-fun $generated@@142 (T@U) T@U)
(declare-fun $generated@@145 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@151 (Int Int) Int)
(declare-fun $generated@@162 (T@U) T@U)
(declare-fun $generated@@165 (T@U) T@U)
(declare-fun $generated@@172 (T@U) T@U)
(declare-fun $generated@@175 (T@U) T@U)
(declare-fun $generated@@178 (T@U) T@U)
(declare-fun $generated@@181 (T@U) T@U)
(declare-fun $generated@@185 (T@U) T@U)
(declare-fun $generated@@195 (T@U) Int)
(declare-fun $generated@@196 (T@U) Int)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@209 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@210 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@211 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@243 (T@U) T@U)
(declare-fun $generated@@248 (T@U) T@U)
(declare-fun $generated@@251 (T@U) T@U)
(declare-fun $generated@@266 (T@U) Bool)
(declare-fun $generated@@267 (T@U) T@U)
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
(assert (forall (($generated@@32 T@U) ($generated@@33 T@U) ($generated@@34 T@U) ) (! (= ($generated@@30 ($generated@@31 $generated@@32 $generated@@33 $generated@@34)) $generated@@32)
 :pattern ( ($generated@@30 ($generated@@31 $generated@@32 $generated@@33 $generated@@34)))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@35 ($generated@@31 $generated@@36 $generated@@37 $generated@@38)) $generated@@37)
 :pattern ( ($generated@@35 ($generated@@31 $generated@@36 $generated@@37 $generated@@38)))
)))
(assert (= ($generated@@13 $generated@@41) 3))
(assert (forall (($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ) (!  (=> ($generated@@40 $generated@@41 $generated@@45 ($generated@@42 $generated@@43 $generated@@44)) ($generated@@39 $generated@@45))
 :pattern ( ($generated@@39 $generated@@45) ($generated@@40 $generated@@41 $generated@@45 ($generated@@42 $generated@@43 $generated@@44)))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@U) ) (!  (=> (and ($generated@@46 $generated@@50 $generated@@47 $generated@@51) ($generated@@48 $generated@@51)) ($generated@@46 $generated@@50 $generated@@49 $generated@@51))
 :pattern ( ($generated@@46 $generated@@50 $generated@@47 $generated@@51))
)))
(assert (= ($generated@@13 $generated@@53) 4))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@U) ) (! (= ($generated@@52 $generated@@53 $generated@@55 $generated@@54 $generated@@56) ($generated@@52 $generated@@53 $generated@@55 $generated@@49 $generated@@56))
 :pattern ( ($generated@@52 $generated@@53 $generated@@55 $generated@@54 $generated@@56))
 :pattern ( ($generated@@52 $generated@@53 $generated@@55 $generated@@49 $generated@@56))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@52 $generated@@53 $generated@@58 $generated@@57 $generated@@59) ($generated@@52 $generated@@53 $generated@@58 $generated@@47 $generated@@59))
 :pattern ( ($generated@@52 $generated@@53 $generated@@58 $generated@@57 $generated@@59))
 :pattern ( ($generated@@52 $generated@@53 $generated@@58 $generated@@47 $generated@@59))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (! (= ($generated@@40 $generated@@41 ($generated@@60 $generated@@64 $generated@@65) ($generated@@42 $generated@@62 $generated@@63))  (and ($generated@@61 $generated@@64 $generated@@62) ($generated@@61 $generated@@65 $generated@@63)))
 :pattern ( ($generated@@40 $generated@@41 ($generated@@60 $generated@@64 $generated@@65) ($generated@@42 $generated@@62 $generated@@63)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@75 T@T) ($generated@@76 T@T) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@68 $generated@@75 $generated@@76 ($generated@@72 $generated@@75 $generated@@76 $generated@@78 $generated@@79 $generated@@77) $generated@@79) $generated@@77)
 :weight 0
)) (forall (($generated@@80 T@T) ($generated@@81 T@T) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (!  (or (= $generated@@84 $generated@@85) (= ($generated@@68 $generated@@80 $generated@@81 ($generated@@72 $generated@@80 $generated@@81 $generated@@83 $generated@@84 $generated@@82) $generated@@85) ($generated@@68 $generated@@80 $generated@@81 $generated@@83 $generated@@85)))
 :weight 0
))) (= ($generated@@13 $generated@@69) 5)) (= ($generated@@13 $generated@@70) 6)) (forall (($generated@@86 T@T) ($generated@@87 T@T) ) (= ($generated@@13 ($generated@@71 $generated@@86 $generated@@87)) 7))) (forall (($generated@@88 T@T) ($generated@@89 T@T) ) (! (= ($generated@@73 ($generated@@71 $generated@@88 $generated@@89)) $generated@@88)
 :pattern ( ($generated@@71 $generated@@88 $generated@@89))
))) (forall (($generated@@90 T@T) ($generated@@91 T@T) ) (! (= ($generated@@74 ($generated@@71 $generated@@90 $generated@@91)) $generated@@91)
 :pattern ( ($generated@@71 $generated@@90 $generated@@91))
))))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ) (! (= ($generated@@52 $generated@@53 $generated@@92 $generated@@49 $generated@@93)  (or (= $generated@@92 $generated@@66) ($generated@@18 ($generated@@67 $generated@@14 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@53 ($generated@@71 $generated@@69 $generated@@70) $generated@@93 $generated@@92) $generated@@3)))))
 :pattern ( ($generated@@52 $generated@@53 $generated@@92 $generated@@49 $generated@@93))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@52 $generated@@53 $generated@@94 $generated@@47 $generated@@95)  (or (= $generated@@94 $generated@@66) ($generated@@18 ($generated@@67 $generated@@14 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@53 ($generated@@71 $generated@@69 $generated@@70) $generated@@95 $generated@@94) $generated@@3)))))
 :pattern ( ($generated@@52 $generated@@53 $generated@@94 $generated@@47 $generated@@95))
)))
(assert (forall (($generated@@97 Int) ) (! (= ($generated@@96 $generated@@97) $generated@@97)
 :pattern ( ($generated@@96 $generated@@97))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@T) ) (! (= ($generated@@98 $generated@@100 $generated@@99) $generated@@99)
 :pattern ( ($generated@@98 $generated@@100 $generated@@99))
)))
(assert (= ($generated@@13 $generated@@103) 8))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ) (!  (=> (forall (($generated@@108 T@U) )  (=> ($generated@@102 $generated@@104 $generated@@108) (and ($generated@@61 $generated@@108 $generated@@106) ($generated@@61 ($generated@@68 $generated@@70 $generated@@70 $generated@@105 $generated@@108) $generated@@107)))) ($generated@@40 $generated@@103 ($generated@@31 $generated@@104 $generated@@105 ($generated@@101 $generated@@106 $generated@@107)) ($generated@@101 $generated@@106 $generated@@107)))
 :pattern ( ($generated@@31 $generated@@104 $generated@@105 ($generated@@101 $generated@@106 $generated@@107)))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (!  (=> ($generated@@48 $generated@@113) (= ($generated@@52 $generated@@41 ($generated@@60 $generated@@111 $generated@@112) ($generated@@42 $generated@@109 $generated@@110) $generated@@113)  (and ($generated@@46 $generated@@111 $generated@@109 $generated@@113) ($generated@@46 $generated@@112 $generated@@110 $generated@@113))))
 :pattern ( ($generated@@52 $generated@@41 ($generated@@60 $generated@@111 $generated@@112) ($generated@@42 $generated@@109 $generated@@110) $generated@@113))
)))
(assert (forall (($generated@@115 T@U) ) (! (= ($generated@@39 $generated@@115) (= ($generated@@114 $generated@@115) $generated@@6))
 :pattern ( ($generated@@39 $generated@@115))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@T) ) (! (= ($generated@@116 $generated@@118 ($generated@@67 $generated@@118 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@67 $generated@@118 $generated@@117))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@102 ($generated@@119 $generated@@120) $generated@@121) ($generated@@18 ($generated@@68 $generated@@70 $generated@@14 $generated@@120 $generated@@121)))
 :pattern ( ($generated@@102 ($generated@@119 $generated@@120) $generated@@121))
)))
(assert (forall (($generated@@122 T@U) ) (!  (=> ($generated@@39 $generated@@122) (exists (($generated@@123 T@U) ($generated@@124 T@U) ) (= $generated@@122 ($generated@@60 $generated@@123 $generated@@124))))
 :pattern ( ($generated@@39 $generated@@122))
)))
(assert (= ($generated@@13 $generated@@125) 9))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ) (! (= ($generated@@40 $generated@@125 $generated@@127 ($generated@@126 $generated@@128)) (forall (($generated@@129 T@U) ) (!  (=> ($generated@@102 $generated@@127 $generated@@129) ($generated@@61 $generated@@129 $generated@@128))
 :pattern ( ($generated@@102 $generated@@127 $generated@@129))
)))
 :pattern ( ($generated@@40 $generated@@125 $generated@@127 ($generated@@126 $generated@@128)))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@T) ) (! (= ($generated@@46 ($generated@@116 $generated@@133 $generated@@130) $generated@@131 $generated@@132) ($generated@@52 $generated@@133 $generated@@130 $generated@@131 $generated@@132))
 :pattern ( ($generated@@46 ($generated@@116 $generated@@133 $generated@@130) $generated@@131 $generated@@132))
)))
(assert (forall (($generated@@134 T@U) ) (!  (=> ($generated@@61 $generated@@134 $generated@@49) (and (= ($generated@@116 $generated@@53 ($generated@@67 $generated@@53 $generated@@134)) $generated@@134) ($generated@@40 $generated@@53 ($generated@@67 $generated@@53 $generated@@134) $generated@@49)))
 :pattern ( ($generated@@61 $generated@@134 $generated@@49))
)))
(assert (forall (($generated@@135 T@U) ) (!  (=> ($generated@@61 $generated@@135 $generated@@54) (and (= ($generated@@116 $generated@@53 ($generated@@67 $generated@@53 $generated@@135)) $generated@@135) ($generated@@40 $generated@@53 ($generated@@67 $generated@@53 $generated@@135) $generated@@54)))
 :pattern ( ($generated@@61 $generated@@135 $generated@@54))
)))
(assert (forall (($generated@@136 T@U) ) (!  (=> ($generated@@61 $generated@@136 $generated@@57) (and (= ($generated@@116 $generated@@53 ($generated@@67 $generated@@53 $generated@@136)) $generated@@136) ($generated@@40 $generated@@53 ($generated@@67 $generated@@53 $generated@@136) $generated@@57)))
 :pattern ( ($generated@@61 $generated@@136 $generated@@57))
)))
(assert (forall (($generated@@137 T@U) ) (!  (=> ($generated@@61 $generated@@137 $generated@@47) (and (= ($generated@@116 $generated@@53 ($generated@@67 $generated@@53 $generated@@137)) $generated@@137) ($generated@@40 $generated@@53 ($generated@@67 $generated@@53 $generated@@137) $generated@@47)))
 :pattern ( ($generated@@61 $generated@@137 $generated@@47))
)))
(assert (forall (($generated@@138 T@U) ) (! (= ($generated@@40 $generated@@53 $generated@@138 $generated@@54)  (and ($generated@@40 $generated@@53 $generated@@138 $generated@@49) (or (not (= $generated@@138 $generated@@66)) (not true))))
 :pattern ( ($generated@@40 $generated@@53 $generated@@138 $generated@@54))
 :pattern ( ($generated@@40 $generated@@53 $generated@@138 $generated@@49))
)))
(assert (forall (($generated@@139 T@U) ) (! (= ($generated@@40 $generated@@53 $generated@@139 $generated@@57)  (and ($generated@@40 $generated@@53 $generated@@139 $generated@@47) (or (not (= $generated@@139 $generated@@66)) (not true))))
 :pattern ( ($generated@@40 $generated@@53 $generated@@139 $generated@@57))
 :pattern ( ($generated@@40 $generated@@53 $generated@@139 $generated@@47))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ) (!  (=> ($generated@@52 $generated@@53 $generated@@140 $generated@@47 $generated@@141) ($generated@@52 $generated@@53 $generated@@140 $generated@@49 $generated@@141))
 :pattern ( ($generated@@52 $generated@@53 $generated@@140 $generated@@47 $generated@@141))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ) (! (= ($generated@@68 $generated@@70 $generated@@70 ($generated@@142 $generated@@143) $generated@@144) $generated@@143)
 :pattern ( ($generated@@68 $generated@@70 $generated@@70 ($generated@@142 $generated@@143) $generated@@144))
)))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 Bool) ($generated@@150 T@U) ) (! (= ($generated@@18 ($generated@@68 $generated@@70 $generated@@14 ($generated@@145 $generated@@146 $generated@@147 $generated@@148 $generated@@149) $generated@@150))  (and (and ($generated@@61 $generated@@150 $generated@@146) ($generated@@46 $generated@@150 $generated@@147 $generated@@148)) $generated@@149))
 :pattern ( ($generated@@68 $generated@@70 $generated@@14 ($generated@@145 $generated@@146 $generated@@147 $generated@@148 $generated@@149) $generated@@150))
)))
(assert (forall (($generated@@152 Int) ($generated@@153 Int) ) (! (= ($generated@@151 $generated@@152 $generated@@153) (div $generated@@152 $generated@@153))
 :pattern ( ($generated@@151 $generated@@152 $generated@@153))
)))
(assert (forall (($generated@@154 T@U) ) (!  (=> ($generated@@61 $generated@@154 $generated) (and (= ($generated@@116 $generated@@14 ($generated@@67 $generated@@14 $generated@@154)) $generated@@154) ($generated@@40 $generated@@14 ($generated@@67 $generated@@14 $generated@@154) $generated)))
 :pattern ( ($generated@@61 $generated@@154 $generated))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@T) ) (! (= ($generated@@61 ($generated@@116 $generated@@157 $generated@@155) $generated@@156) ($generated@@40 $generated@@157 $generated@@155 $generated@@156))
 :pattern ( ($generated@@61 ($generated@@116 $generated@@157 $generated@@155) $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ) (! (= ($generated@@52 $generated@@125 $generated@@158 ($generated@@126 $generated@@159) $generated@@160) (forall (($generated@@161 T@U) ) (!  (=> ($generated@@102 $generated@@158 $generated@@161) ($generated@@46 $generated@@161 $generated@@159 $generated@@160))
 :pattern ( ($generated@@102 $generated@@158 $generated@@161))
)))
 :pattern ( ($generated@@52 $generated@@125 $generated@@158 ($generated@@126 $generated@@159) $generated@@160))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ) (! (= ($generated@@162 ($generated@@101 $generated@@163 $generated@@164)) $generated@@163)
 :pattern ( ($generated@@101 $generated@@163 $generated@@164))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ) (! (= ($generated@@165 ($generated@@101 $generated@@166 $generated@@167)) $generated@@167)
 :pattern ( ($generated@@101 $generated@@166 $generated@@167))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (! (= ($generated@@29 ($generated@@101 $generated@@168 $generated@@169)) $generated@@2)
 :pattern ( ($generated@@101 $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ) (! (= ($generated@@114 ($generated@@60 $generated@@170 $generated@@171)) $generated@@6)
 :pattern ( ($generated@@60 $generated@@170 $generated@@171))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ) (! (= ($generated@@172 ($generated@@42 $generated@@173 $generated@@174)) $generated@@173)
 :pattern ( ($generated@@42 $generated@@173 $generated@@174))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ) (! (= ($generated@@175 ($generated@@42 $generated@@176 $generated@@177)) $generated@@177)
 :pattern ( ($generated@@42 $generated@@176 $generated@@177))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ) (! (= ($generated@@178 ($generated@@60 $generated@@179 $generated@@180)) $generated@@179)
 :pattern ( ($generated@@60 $generated@@179 $generated@@180))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ) (! (= ($generated@@181 ($generated@@60 $generated@@182 $generated@@183)) $generated@@183)
 :pattern ( ($generated@@60 $generated@@182 $generated@@183))
)))
(assert (forall (($generated@@184 T@U) ) (! ($generated@@40 $generated@@53 $generated@@184 $generated@@49)
 :pattern ( ($generated@@40 $generated@@53 $generated@@184 $generated@@49))
)))
(assert (forall (($generated@@186 T@U) ) (! (= ($generated@@185 ($generated@@126 $generated@@186)) $generated@@186)
 :pattern ( ($generated@@126 $generated@@186))
)))
(assert (forall (($generated@@187 T@U) ) (! (= ($generated@@29 ($generated@@126 $generated@@187)) $generated@@1)
 :pattern ( ($generated@@126 $generated@@187))
)))
(assert (forall (($generated@@188 T@U) ($generated@@189 T@T) ) (! (= ($generated@@67 $generated@@189 ($generated@@116 $generated@@189 $generated@@188)) $generated@@188)
 :pattern ( ($generated@@116 $generated@@189 $generated@@188))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ) (! (= ($generated@@52 $generated@@103 $generated@@190 ($generated@@101 $generated@@191 $generated@@192) $generated@@193) (forall (($generated@@194 T@U) ) (!  (=> ($generated@@102 ($generated@@30 $generated@@190) $generated@@194) (and ($generated@@46 ($generated@@68 $generated@@70 $generated@@70 ($generated@@35 $generated@@190) $generated@@194) $generated@@192 $generated@@193) ($generated@@46 $generated@@194 $generated@@191 $generated@@193)))
 :pattern ( ($generated@@68 $generated@@70 $generated@@70 ($generated@@35 $generated@@190) $generated@@194))
 :pattern ( ($generated@@102 ($generated@@30 $generated@@190) $generated@@194))
)))
 :pattern ( ($generated@@52 $generated@@103 $generated@@190 ($generated@@101 $generated@@191 $generated@@192) $generated@@193))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ) (! (< ($generated@@195 $generated@@197) ($generated@@196 ($generated@@60 $generated@@197 $generated@@198)))
 :pattern ( ($generated@@60 $generated@@197 $generated@@198))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ) (! (< ($generated@@195 $generated@@200) ($generated@@196 ($generated@@60 $generated@@199 $generated@@200)))
 :pattern ( ($generated@@60 $generated@@199 $generated@@200))
)))
(assert (forall (($generated@@202 T@U) ) (!  (not ($generated@@102 ($generated@@30 $generated@@201) $generated@@202))
 :pattern ( ($generated@@102 ($generated@@30 $generated@@201) $generated@@202))
)))
(assert (forall (($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ) (!  (=> ($generated@@61 $generated@@203 ($generated@@101 $generated@@204 $generated@@205)) (and (= ($generated@@116 $generated@@103 ($generated@@67 $generated@@103 $generated@@203)) $generated@@203) ($generated@@40 $generated@@103 ($generated@@67 $generated@@103 $generated@@203) ($generated@@101 $generated@@204 $generated@@205))))
 :pattern ( ($generated@@61 $generated@@203 ($generated@@101 $generated@@204 $generated@@205)))
)))
(assert (forall (($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ) (!  (=> ($generated@@61 $generated@@208 ($generated@@42 $generated@@206 $generated@@207)) (and (= ($generated@@116 $generated@@41 ($generated@@67 $generated@@41 $generated@@208)) $generated@@208) ($generated@@40 $generated@@41 ($generated@@67 $generated@@41 $generated@@208) ($generated@@42 $generated@@206 $generated@@207))))
 :pattern ( ($generated@@61 $generated@@208 ($generated@@42 $generated@@206 $generated@@207)))
)))
(assert  (and (forall (($generated@@212 T@T) ($generated@@213 T@T) ($generated@@214 T@T) ($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ) (! (= ($generated@@209 $generated@@212 $generated@@213 $generated@@214 ($generated@@211 $generated@@212 $generated@@213 $generated@@214 $generated@@216 $generated@@217 $generated@@218 $generated@@215) $generated@@217 $generated@@218) $generated@@215)
 :weight 0
)) (and (forall (($generated@@219 T@T) ($generated@@220 T@T) ($generated@@221 T@T) ($generated@@222 T@U) ($generated@@223 T@U) ($generated@@224 T@U) ($generated@@225 T@U) ($generated@@226 T@U) ($generated@@227 T@U) ) (!  (or (= $generated@@224 $generated@@226) (= ($generated@@209 $generated@@219 $generated@@220 $generated@@221 ($generated@@211 $generated@@219 $generated@@220 $generated@@221 $generated@@223 $generated@@224 $generated@@225 $generated@@222) $generated@@226 $generated@@227) ($generated@@209 $generated@@219 $generated@@220 $generated@@221 $generated@@223 $generated@@226 $generated@@227)))
 :weight 0
)) (forall (($generated@@228 T@T) ($generated@@229 T@T) ($generated@@230 T@T) ($generated@@231 T@U) ($generated@@232 T@U) ($generated@@233 T@U) ($generated@@234 T@U) ($generated@@235 T@U) ($generated@@236 T@U) ) (!  (or (= $generated@@234 $generated@@236) (= ($generated@@209 $generated@@228 $generated@@229 $generated@@230 ($generated@@211 $generated@@228 $generated@@229 $generated@@230 $generated@@232 $generated@@233 $generated@@234 $generated@@231) $generated@@235 $generated@@236) ($generated@@209 $generated@@228 $generated@@229 $generated@@230 $generated@@232 $generated@@235 $generated@@236)))
 :weight 0
)))))
(assert (forall (($generated@@237 T@U) ($generated@@238 T@U) ($generated@@239 T@U) ($generated@@240 Bool) ($generated@@241 T@U) ($generated@@242 T@U) ) (! (= ($generated@@18 ($generated@@209 $generated@@53 $generated@@69 $generated@@14 ($generated@@210 $generated@@237 $generated@@238 $generated@@239 $generated@@240) $generated@@241 $generated@@242))  (=> (and (or (not (= $generated@@241 $generated@@237)) (not true)) ($generated@@18 ($generated@@67 $generated@@14 ($generated@@68 $generated@@69 $generated@@70 ($generated@@68 $generated@@53 ($generated@@71 $generated@@69 $generated@@70) $generated@@238 $generated@@241) $generated@@239)))) $generated@@240))
 :pattern ( ($generated@@209 $generated@@53 $generated@@69 $generated@@14 ($generated@@210 $generated@@237 $generated@@238 $generated@@239 $generated@@240) $generated@@241 $generated@@242))
)))
(assert (forall (($generated@@244 T@U) ($generated@@245 T@U) ) (!  (and (= ($generated@@29 ($generated@@42 $generated@@244 $generated@@245)) $generated@@7) (= ($generated@@243 ($generated@@42 $generated@@244 $generated@@245)) $generated@@11))
 :pattern ( ($generated@@42 $generated@@244 $generated@@245))
)))
(assert (forall (($generated@@246 T@U) ) (!  (or (= $generated@@246 $generated@@201) (exists (($generated@@247 T@U) ) ($generated@@102 ($generated@@30 $generated@@246) $generated@@247)))
 :pattern ( ($generated@@30 $generated@@246))
)))
(assert (forall (($generated@@249 T@U) ) (!  (or (= $generated@@249 $generated@@201) (exists (($generated@@250 T@U) ) ($generated@@102 ($generated@@248 $generated@@249) $generated@@250)))
 :pattern ( ($generated@@248 $generated@@249))
)))
(assert (forall (($generated@@252 T@U) ($generated@@253 T@U) ) (! (= ($generated@@102 ($generated@@251 $generated@@252) $generated@@253)  (and ($generated@@102 ($generated@@30 $generated@@252) ($generated@@178 ($generated@@67 $generated@@41 $generated@@253))) (= ($generated@@68 $generated@@70 $generated@@70 ($generated@@35 $generated@@252) ($generated@@178 ($generated@@67 $generated@@41 $generated@@253))) ($generated@@181 ($generated@@67 $generated@@41 $generated@@253)))))
 :pattern ( ($generated@@102 ($generated@@251 $generated@@252) $generated@@253))
)))
(assert (forall (($generated@@254 T@U) ($generated@@255 T@U) ) (! (= ($generated@@102 ($generated@@248 $generated@@254) $generated@@255) (exists (($generated@@256 T@U) ) (!  (and ($generated@@102 ($generated@@30 $generated@@254) $generated@@256) (= $generated@@255 ($generated@@68 $generated@@70 $generated@@70 ($generated@@35 $generated@@254) $generated@@256)))
 :pattern ( ($generated@@102 ($generated@@30 $generated@@254) $generated@@256))
 :pattern ( ($generated@@68 $generated@@70 $generated@@70 ($generated@@35 $generated@@254) $generated@@256))
)))
 :pattern ( ($generated@@102 ($generated@@248 $generated@@254) $generated@@255))
)))
(assert (forall (($generated@@257 T@U) ) (! (= ($generated@@195 ($generated@@116 $generated@@41 $generated@@257)) ($generated@@196 $generated@@257))
 :pattern ( ($generated@@195 ($generated@@116 $generated@@41 $generated@@257)))
)))
(assert (forall (($generated@@258 T@U) ($generated@@259 T@U) ) (!  (=> ($generated@@61 $generated@@258 ($generated@@126 $generated@@259)) (and (= ($generated@@116 $generated@@125 ($generated@@67 $generated@@125 $generated@@258)) $generated@@258) ($generated@@40 $generated@@125 ($generated@@67 $generated@@125 $generated@@258) ($generated@@126 $generated@@259))))
 :pattern ( ($generated@@61 $generated@@258 ($generated@@126 $generated@@259)))
)))
(assert (forall (($generated@@260 T@U) ) (!  (=> ($generated@@40 $generated@@53 $generated@@260 $generated@@47) ($generated@@40 $generated@@53 $generated@@260 $generated@@49))
 :pattern ( ($generated@@40 $generated@@53 $generated@@260 $generated@@47))
)))
(assert (forall (($generated@@261 T@U) ) (!  (=> ($generated@@61 $generated@@261 $generated@@47) ($generated@@61 $generated@@261 $generated@@49))
 :pattern ( ($generated@@61 $generated@@261 $generated@@47))
)))
(assert (forall (($generated@@262 T@U) ($generated@@263 T@U) ($generated@@264 T@U) ) (! (= ($generated@@40 $generated@@103 $generated@@262 ($generated@@101 $generated@@263 $generated@@264)) (forall (($generated@@265 T@U) ) (!  (=> ($generated@@102 ($generated@@30 $generated@@262) $generated@@265) (and ($generated@@61 ($generated@@68 $generated@@70 $generated@@70 ($generated@@35 $generated@@262) $generated@@265) $generated@@264) ($generated@@61 $generated@@265 $generated@@263)))
 :pattern ( ($generated@@68 $generated@@70 $generated@@70 ($generated@@35 $generated@@262) $generated@@265))
 :pattern ( ($generated@@102 ($generated@@30 $generated@@262) $generated@@265))
)))
 :pattern ( ($generated@@40 $generated@@103 $generated@@262 ($generated@@101 $generated@@263 $generated@@264)))
)))
(assert (= ($generated@@29 $generated@@49) $generated@@4))
(assert (= ($generated@@243 $generated@@49) $generated@@10))
(assert (= ($generated@@29 $generated@@54) $generated@@5))
(assert (= ($generated@@243 $generated@@54) $generated@@10))
(assert (= ($generated@@29 $generated@@57) $generated@@8))
(assert (= ($generated@@243 $generated@@57) $generated@@12))
(assert (= ($generated@@29 $generated@@47) $generated@@9))
(assert (= ($generated@@243 $generated@@47) $generated@@12))
(assert (forall (($generated@@268 T@U) ) (! (= ($generated@@40 $generated@@53 $generated@@268 $generated@@47)  (or (= $generated@@268 $generated@@66) ($generated@@266 ($generated@@267 $generated@@268))))
 :pattern ( ($generated@@40 $generated@@53 $generated@@268 $generated@@47))
)))
(assert (forall (($generated@@269 T@U) ($generated@@270 T@U) ($generated@@271 T@U) ) (!  (=> (and ($generated@@48 $generated@@271) (and ($generated@@39 $generated@@269) (exists (($generated@@272 T@U) ) (! ($generated@@52 $generated@@41 $generated@@269 ($generated@@42 $generated@@270 $generated@@272) $generated@@271)
 :pattern ( ($generated@@52 $generated@@41 $generated@@269 ($generated@@42 $generated@@270 $generated@@272) $generated@@271))
)))) ($generated@@46 ($generated@@178 $generated@@269) $generated@@270 $generated@@271))
 :pattern ( ($generated@@46 ($generated@@178 $generated@@269) $generated@@270 $generated@@271))
)))
(assert (forall (($generated@@273 T@U) ($generated@@274 T@U) ($generated@@275 T@U) ) (!  (=> (and ($generated@@48 $generated@@275) (and ($generated@@39 $generated@@273) (exists (($generated@@276 T@U) ) (! ($generated@@52 $generated@@41 $generated@@273 ($generated@@42 $generated@@276 $generated@@274) $generated@@275)
 :pattern ( ($generated@@52 $generated@@41 $generated@@273 ($generated@@42 $generated@@276 $generated@@274) $generated@@275))
)))) ($generated@@46 ($generated@@181 $generated@@273) $generated@@274 $generated@@275))
 :pattern ( ($generated@@46 ($generated@@181 $generated@@273) $generated@@274 $generated@@275))
)))
(assert (forall (($generated@@277 T@U) ($generated@@278 T@U) ) (! (= ($generated@@60 ($generated@@98 $generated@@70 $generated@@277) ($generated@@98 $generated@@70 $generated@@278)) ($generated@@98 $generated@@41 ($generated@@60 $generated@@277 $generated@@278)))
 :pattern ( ($generated@@60 ($generated@@98 $generated@@70 $generated@@277) ($generated@@98 $generated@@70 $generated@@278)))
)))
(assert (forall (($generated@@279 Int) ) (! (= ($generated@@116 $generated@@15 ($generated@@19 ($generated@@96 $generated@@279))) ($generated@@98 $generated@@70 ($generated@@116 $generated@@15 ($generated@@19 $generated@@279))))
 :pattern ( ($generated@@116 $generated@@15 ($generated@@19 ($generated@@96 $generated@@279))))
)))
(assert (forall (($generated@@280 T@U) ($generated@@281 T@T) ) (! (= ($generated@@116 $generated@@281 ($generated@@98 $generated@@281 $generated@@280)) ($generated@@98 $generated@@70 ($generated@@116 $generated@@281 $generated@@280)))
 :pattern ( ($generated@@116 $generated@@281 ($generated@@98 $generated@@281 $generated@@280)))
)))
(assert (forall (($generated@@282 T@U) ($generated@@283 T@U) ) (! ($generated@@52 $generated@@14 $generated@@283 $generated $generated@@282)
 :pattern ( ($generated@@52 $generated@@14 $generated@@283 $generated $generated@@282))
)))
(assert (forall (($generated@@284 T@U) ) (!  (or (= $generated@@284 $generated@@201) (exists (($generated@@285 T@U) ($generated@@286 T@U) ) ($generated@@102 ($generated@@251 $generated@@284) ($generated@@116 $generated@@41 ($generated@@60 $generated@@285 $generated@@286)))))
 :pattern ( ($generated@@251 $generated@@284))
)))
(assert (forall (($generated@@287 T@U) ($generated@@288 T@U) ($generated@@289 T@U) ) (!  (=> ($generated@@40 $generated@@103 $generated@@287 ($generated@@101 $generated@@288 $generated@@289)) (and (and ($generated@@40 $generated@@125 ($generated@@30 $generated@@287) ($generated@@126 $generated@@288)) ($generated@@40 $generated@@125 ($generated@@248 $generated@@287) ($generated@@126 $generated@@289))) ($generated@@40 $generated@@125 ($generated@@251 $generated@@287) ($generated@@126 ($generated@@42 $generated@@288 $generated@@289)))))
 :pattern ( ($generated@@40 $generated@@103 $generated@@287 ($generated@@101 $generated@@288 $generated@@289)))
)))
(assert (forall (($generated@@290 T@U) ) (! ($generated@@40 $generated@@14 $generated@@290 $generated)
 :pattern ( ($generated@@40 $generated@@14 $generated@@290 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@291 () T@U)
(declare-fun $generated@@292 () T@U)
(declare-fun $generated@@293 () T@U)
(declare-fun $generated@@294 () T@U)
(declare-fun $generated@@295 (T@U) Bool)
(declare-fun $generated@@296 () T@U)
(declare-fun $generated@@297 () T@U)
(declare-fun $generated@@298 () Int)
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
 (=> (= (ControlFlow 0 0) 10) (let (($generated@@299  (=> (and (= $generated@@291 ($generated@@31 ($generated@@119 ($generated@@145 $generated@@57 $generated@@57 $generated@@292 ($generated@@18 ($generated@@98 $generated@@14 ($generated@@17 true))))) ($generated@@142 ($generated@@116 $generated@@14 ($generated@@17 (= ($generated@@96 ($generated@@151 5 ($generated@@96 0))) ($generated@@96 19))))) ($generated@@101 $generated@@57 $generated))) (= (ControlFlow 0 2) (- 0 1))) (or (not (= ($generated@@96 0) 0)) (not true)))))
(let (($generated@@300  (=> (and (not ($generated@@18 ($generated@@98 $generated@@14 ($generated@@17 true)))) (= (ControlFlow 0 7) 2)) $generated@@299)))
(let (($generated@@301  (=> ($generated@@18 ($generated@@98 $generated@@14 ($generated@@17 true))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (not (= $generated@@293 $generated@@66)) (not true))) (=> (or (not (= $generated@@293 $generated@@66)) (not true)) (=> (and (and ($generated@@48 $generated@@294) ($generated@@295 $generated@@294)) (and ($generated@@18 ($generated@@98 $generated@@14 ($generated@@17 false))) (= $generated@@292 $generated@@294))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (not (= ($generated@@96 0) 0)) (not true))) (=> (or (not (= ($generated@@96 0) 0)) (not true)) (=> (= (ControlFlow 0 4) 2) $generated@@299)))))))))
(let (($generated@@302  (=> (and ($generated@@40 $generated@@53 $generated@@293 $generated@@57) ($generated@@52 $generated@@53 $generated@@293 $generated@@57 $generated@@292)) (and (=> (= (ControlFlow 0 8) 4) $generated@@301) (=> (= (ControlFlow 0 8) 7) $generated@@300)))))
(let (($generated@@303  (=> (and (not (and ($generated@@40 $generated@@53 $generated@@293 $generated@@57) ($generated@@52 $generated@@53 $generated@@293 $generated@@57 $generated@@292))) (= (ControlFlow 0 3) 2)) $generated@@299)))
(let (($generated@@304  (=> (= $generated@@296 ($generated@@210 $generated@@66 $generated@@292 $generated@@3 false)) (and (=> (= (ControlFlow 0 9) 8) $generated@@302) (=> (= (ControlFlow 0 9) 3) $generated@@303)))))
(let (($generated@@305  (=> (and ($generated@@48 $generated@@292) ($generated@@295 $generated@@292)) (=> (and (and (and ($generated@@40 $generated@@103 $generated@@297 ($generated@@101 $generated@@57 $generated)) ($generated@@52 $generated@@103 $generated@@297 ($generated@@101 $generated@@57 $generated) $generated@@292)) true) (and (= 1 $generated@@298) (= (ControlFlow 0 10) 9))) $generated@@304))))
$generated@@305))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)