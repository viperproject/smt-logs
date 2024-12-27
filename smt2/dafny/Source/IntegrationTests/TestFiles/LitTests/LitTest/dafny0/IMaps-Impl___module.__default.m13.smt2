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
(declare-fun $generated@@8 (T@T) Int)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 (Bool) T@U)
(declare-fun $generated@@13 (T@U) Bool)
(declare-fun $generated@@14 (Int) T@U)
(declare-fun $generated@@15 (T@U) Int)
(declare-fun $generated@@16 (Real) T@U)
(declare-fun $generated@@17 (T@U) Real)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 (T@U T@U) T@U)
(declare-fun $generated@@26 (T@U T@U) Bool)
(declare-fun $generated@@35 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 (T@U T@U) T@U)
(declare-fun $generated@@38 (T@U T@U) Bool)
(declare-fun $generated@@39 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@54 (T@U) T@U)
(declare-fun $generated@@55 (T@U T@U T@U) T@U)
(declare-fun $generated@@59 (T@U) T@U)
(declare-fun $generated@@63 (T@U) Bool)
(declare-fun $generated@@64 (T@T T@U T@U) Bool)
(declare-fun $generated@@65 () T@T)
(declare-fun $generated@@66 (T@U T@U) T@U)
(declare-fun $generated@@70 () T@U)
(declare-fun $generated@@72 (T@U T@U) T@U)
(declare-fun $generated@@77 (T@T T@T) T@T)
(declare-fun $generated@@78 (T@U) T@U)
(declare-fun $generated@@79 (T@T) T@T)
(declare-fun $generated@@80 (T@T) T@T)
(declare-fun $generated@@90 (Int) Int)
(declare-fun $generated@@92 (T@T T@U) T@U)
(declare-fun $generated@@95 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@96 (T@U) Bool)
(declare-fun $generated@@97 (T@U T@U T@U) Bool)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@105 (T@T T@U) T@U)
(declare-fun $generated@@106 (T@T T@U) T@U)
(declare-fun $generated@@112 () T@T)
(declare-fun $generated@@113 (T@U) T@U)
(declare-fun $generated@@121 () T@U)
(declare-fun $generated@@125 (T@U) T@U)
(declare-fun $generated@@132 () T@U)
(declare-fun $generated@@134 (T@U) T@U)
(declare-fun $generated@@135 (T@U) T@U)
(declare-fun $generated@@136 (T@U) T@U)
(declare-fun $generated@@142 () T@T)
(declare-fun $generated@@143 (T@U T@U) T@U)
(declare-fun $generated@@149 () T@U)
(declare-fun $generated@@164 (T@U) T@U)
(declare-fun $generated@@167 (T@U) T@U)
(declare-fun $generated@@174 (T@U) T@U)
(declare-fun $generated@@177 (T@U) T@U)
(declare-fun $generated@@184 (T@U) T@U)
(declare-fun $generated@@187 (T@U) T@U)
(declare-fun $generated@@196 (T@U) Int)
(declare-fun $generated@@197 (T@U) Int)
(declare-fun $generated@@209 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@210 () T@T)
(declare-fun $generated@@211 () T@T)
(declare-fun $generated@@212 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@213 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@250 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@8 $generated@@9) 0) (= ($generated@@8 $generated@@10) 1)) (= ($generated@@8 $generated@@11) 2)) (forall (($generated@@18 Bool) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Int) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Real) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7)
)
(assert (= ($generated@@24 $generated) $generated@@0))
(assert (forall (($generated@@27 T@U) ($generated@@28 T@U) ) (! ($generated@@26 ($generated@@25 $generated@@27 $generated@@28) $generated@@28)
 :pattern ( ($generated@@25 $generated@@27 $generated@@28))
)))
(assert (forall (($generated@@29 T@U) ($generated@@30 T@U) ($generated@@31 T@U) ) (!  (=> ($generated@@26 $generated@@29 $generated@@31) ($generated@@26 ($generated@@25 $generated@@29 $generated@@30) $generated@@31))
 :pattern ( ($generated@@25 $generated@@29 $generated@@30) ($generated@@26 $generated@@29 $generated@@31))
)))
(assert (forall (($generated@@32 T@U) ($generated@@33 T@U) ($generated@@34 T@U) ) (! (= ($generated@@26 ($generated@@25 $generated@@32 $generated@@33) $generated@@34)  (or (= $generated@@34 $generated@@33) ($generated@@26 $generated@@32 $generated@@34)))
 :pattern ( ($generated@@26 ($generated@@25 $generated@@32 $generated@@33) $generated@@34))
)))
(assert  (and (and (forall (($generated@@40 T@T) ($generated@@41 T@T) ($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ) (! (= ($generated@@35 $generated@@40 $generated@@41 ($generated@@39 $generated@@40 $generated@@41 $generated@@43 $generated@@44 $generated@@42) $generated@@44) $generated@@42)
 :weight 0
)) (forall (($generated@@45 T@T) ($generated@@46 T@T) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ) (!  (or (= $generated@@49 $generated@@50) (= ($generated@@35 $generated@@45 $generated@@46 ($generated@@39 $generated@@45 $generated@@46 $generated@@48 $generated@@49 $generated@@47) $generated@@50) ($generated@@35 $generated@@45 $generated@@46 $generated@@48 $generated@@50)))
 :weight 0
))) (= ($generated@@8 $generated@@36) 3)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@37 $generated@@51 $generated@@52) $generated@@53))  (and ($generated@@38 $generated@@53 $generated@@51) ($generated@@26 $generated@@52 $generated@@53)))
 :pattern ( ($generated@@35 $generated@@36 $generated@@9 ($generated@@37 $generated@@51 $generated@@52) $generated@@53))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (! (= ($generated@@54 ($generated@@55 $generated@@56 $generated@@57 $generated@@58)) $generated@@56)
 :pattern ( ($generated@@54 ($generated@@55 $generated@@56 $generated@@57 $generated@@58)))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ) (! (= ($generated@@59 ($generated@@55 $generated@@60 $generated@@61 $generated@@62)) $generated@@61)
 :pattern ( ($generated@@59 ($generated@@55 $generated@@60 $generated@@61 $generated@@62)))
)))
(assert (= ($generated@@8 $generated@@65) 4))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (!  (=> ($generated@@64 $generated@@65 $generated@@69 ($generated@@66 $generated@@67 $generated@@68)) ($generated@@63 $generated@@69))
 :pattern ( ($generated@@63 $generated@@69) ($generated@@64 $generated@@65 $generated@@69 ($generated@@66 $generated@@67 $generated@@68)))
)))
(assert (forall (($generated@@71 T@U) ) (!  (not ($generated@@26 $generated@@70 $generated@@71))
 :pattern ( ($generated@@26 $generated@@70 $generated@@71))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ) (! (= ($generated@@64 $generated@@65 ($generated@@72 $generated@@75 $generated@@76) ($generated@@66 $generated@@73 $generated@@74))  (and ($generated@@38 $generated@@75 $generated@@73) ($generated@@38 $generated@@76 $generated@@74)))
 :pattern ( ($generated@@64 $generated@@65 ($generated@@72 $generated@@75 $generated@@76) ($generated@@66 $generated@@73 $generated@@74)))
)))
(assert  (and (and (forall (($generated@@81 T@T) ($generated@@82 T@T) ) (= ($generated@@8 ($generated@@77 $generated@@81 $generated@@82)) 5)) (forall (($generated@@83 T@T) ($generated@@84 T@T) ) (! (= ($generated@@79 ($generated@@77 $generated@@83 $generated@@84)) $generated@@83)
 :pattern ( ($generated@@77 $generated@@83 $generated@@84))
))) (forall (($generated@@85 T@T) ($generated@@86 T@T) ) (! (= ($generated@@80 ($generated@@77 $generated@@85 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@77 $generated@@85 $generated@@86))
))))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ) (! (= ($generated@@64 ($generated@@77 $generated@@36 $generated@@9) $generated@@87 ($generated@@78 $generated@@88)) (forall (($generated@@89 T@U) ) (!  (=> ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 $generated@@87 $generated@@89)) ($generated@@38 $generated@@89 $generated@@88))
 :pattern ( ($generated@@35 $generated@@36 $generated@@9 $generated@@87 $generated@@89))
)))
 :pattern ( ($generated@@64 ($generated@@77 $generated@@36 $generated@@9) $generated@@87 ($generated@@78 $generated@@88)))
)))
(assert (forall (($generated@@91 Int) ) (! (= ($generated@@90 $generated@@91) $generated@@91)
 :pattern ( ($generated@@90 $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@T) ) (! (= ($generated@@92 $generated@@94 $generated@@93) $generated@@93)
 :pattern ( ($generated@@92 $generated@@94 $generated@@93))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ) (!  (=> ($generated@@96 $generated@@102) (= ($generated@@95 $generated@@65 ($generated@@72 $generated@@100 $generated@@101) ($generated@@66 $generated@@98 $generated@@99) $generated@@102)  (and ($generated@@97 $generated@@100 $generated@@98 $generated@@102) ($generated@@97 $generated@@101 $generated@@99 $generated@@102))))
 :pattern ( ($generated@@95 $generated@@65 ($generated@@72 $generated@@100 $generated@@101) ($generated@@66 $generated@@98 $generated@@99) $generated@@102))
)))
(assert (forall (($generated@@104 T@U) ) (! (= ($generated@@63 $generated@@104) (= ($generated@@103 $generated@@104) $generated@@5))
 :pattern ( ($generated@@63 $generated@@104))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@T) ) (! (= ($generated@@106 $generated@@108 ($generated@@105 $generated@@108 $generated@@107)) $generated@@107)
 :pattern ( ($generated@@105 $generated@@108 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ) (!  (=> ($generated@@63 $generated@@109) (exists (($generated@@110 T@U) ($generated@@111 T@U) ) (= $generated@@109 ($generated@@72 $generated@@110 $generated@@111))))
 :pattern ( ($generated@@63 $generated@@109))
)))
(assert (= ($generated@@8 $generated@@112) 6))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@64 $generated@@112 $generated@@114 ($generated@@113 $generated@@115)) (forall (($generated@@116 T@U) ) (!  (=> ($generated@@26 $generated@@114 $generated@@116) ($generated@@38 $generated@@116 $generated@@115))
 :pattern ( ($generated@@26 $generated@@114 $generated@@116))
)))
 :pattern ( ($generated@@64 $generated@@112 $generated@@114 ($generated@@113 $generated@@115)))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@T) ) (! (= ($generated@@97 ($generated@@106 $generated@@120 $generated@@117) $generated@@118 $generated@@119) ($generated@@95 $generated@@120 $generated@@117 $generated@@118 $generated@@119))
 :pattern ( ($generated@@97 ($generated@@106 $generated@@120 $generated@@117) $generated@@118 $generated@@119))
)))
(assert (forall (($generated@@122 T@U) ) (!  (not ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@121) $generated@@122)))
 :pattern ( ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@121) $generated@@122))
)))
(assert (forall (($generated@@123 T@U) ) (!  (or (= $generated@@123 $generated@@121) (exists (($generated@@124 T@U) ) ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@123) $generated@@124))))
 :pattern ( ($generated@@54 $generated@@123))
)))
(assert (forall (($generated@@126 T@U) ) (!  (or (= $generated@@126 $generated@@121) (exists (($generated@@127 T@U) ) ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@125 $generated@@126) $generated@@127))))
 :pattern ( ($generated@@125 $generated@@126))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ) (! (= ($generated@@95 ($generated@@77 $generated@@36 $generated@@9) $generated@@128 ($generated@@78 $generated@@129) $generated@@130) (forall (($generated@@131 T@U) ) (!  (=> ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 $generated@@128 $generated@@131)) ($generated@@97 $generated@@131 $generated@@129 $generated@@130))
 :pattern ( ($generated@@35 $generated@@36 $generated@@9 $generated@@128 $generated@@131))
)))
 :pattern ( ($generated@@95 ($generated@@77 $generated@@36 $generated@@9) $generated@@128 ($generated@@78 $generated@@129) $generated@@130))
)))
(assert (forall (($generated@@133 T@U) ) (! (= ($generated@@35 $generated@@36 $generated@@36 $generated@@132 $generated@@133) $generated@@133)
 :pattern ( ($generated@@35 $generated@@36 $generated@@36 $generated@@132 $generated@@133))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ) (! (= ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@134 $generated@@137) $generated@@138))  (and ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@137) ($generated@@135 ($generated@@105 $generated@@65 $generated@@138)))) (= ($generated@@35 $generated@@36 $generated@@36 ($generated@@59 $generated@@137) ($generated@@135 ($generated@@105 $generated@@65 $generated@@138))) ($generated@@136 ($generated@@105 $generated@@65 $generated@@138)))))
 :pattern ( ($generated@@35 $generated@@36 $generated@@9 ($generated@@134 $generated@@137) $generated@@138))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@125 $generated@@139) $generated@@140)) (exists (($generated@@141 T@U) ) (!  (and ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@139) $generated@@141)) (= $generated@@140 ($generated@@35 $generated@@36 $generated@@36 ($generated@@59 $generated@@139) $generated@@141)))
 :pattern ( ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@139) $generated@@141))
 :pattern ( ($generated@@35 $generated@@36 $generated@@36 ($generated@@59 $generated@@139) $generated@@141))
)))
 :pattern ( ($generated@@35 $generated@@36 $generated@@9 ($generated@@125 $generated@@139) $generated@@140))
)))
(assert (= ($generated@@8 $generated@@142) 7))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (! (= ($generated@@95 $generated@@142 $generated@@144 ($generated@@143 $generated@@145 $generated@@146) $generated@@147) (forall (($generated@@148 T@U) ) (!  (=> ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@144) $generated@@148)) (and ($generated@@97 ($generated@@35 $generated@@36 $generated@@36 ($generated@@59 $generated@@144) $generated@@148) $generated@@146 $generated@@147) ($generated@@97 $generated@@148 $generated@@145 $generated@@147)))
 :pattern ( ($generated@@35 $generated@@36 $generated@@36 ($generated@@59 $generated@@144) $generated@@148))
 :pattern ( ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@144) $generated@@148))
)))
 :pattern ( ($generated@@95 $generated@@142 $generated@@144 ($generated@@143 $generated@@145 $generated@@146) $generated@@147))
)))
(assert (forall (($generated@@150 T@U) ) (! (= (= $generated@@150 $generated@@121) (= ($generated@@54 $generated@@150) $generated@@149))
 :pattern ( ($generated@@54 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ) (! (= (= $generated@@151 $generated@@121) (= ($generated@@125 $generated@@151) $generated@@149))
 :pattern ( ($generated@@125 $generated@@151))
)))
(assert (forall (($generated@@152 T@U) ) (! (= (= $generated@@152 $generated@@121) (= ($generated@@134 $generated@@152) $generated@@149))
 :pattern ( ($generated@@134 $generated@@152))
)))
(assert (forall (($generated@@153 T@U) ) (!  (or (= $generated@@153 $generated@@121) (exists (($generated@@154 T@U) ($generated@@155 T@U) ) ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@134 $generated@@153) ($generated@@106 $generated@@65 ($generated@@72 $generated@@154 $generated@@155))))))
 :pattern ( ($generated@@134 $generated@@153))
)))
(assert (forall (($generated@@156 T@U) ) (!  (=> ($generated@@38 $generated@@156 $generated) (and (= ($generated@@106 $generated@@10 ($generated@@105 $generated@@10 $generated@@156)) $generated@@156) ($generated@@64 $generated@@10 ($generated@@105 $generated@@10 $generated@@156) $generated)))
 :pattern ( ($generated@@38 $generated@@156 $generated))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@T) ) (! (= ($generated@@38 ($generated@@106 $generated@@159 $generated@@157) $generated@@158) ($generated@@64 $generated@@159 $generated@@157 $generated@@158))
 :pattern ( ($generated@@38 ($generated@@106 $generated@@159 $generated@@157) $generated@@158))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ) (! (= ($generated@@95 $generated@@112 $generated@@160 ($generated@@113 $generated@@161) $generated@@162) (forall (($generated@@163 T@U) ) (!  (=> ($generated@@26 $generated@@160 $generated@@163) ($generated@@97 $generated@@163 $generated@@161 $generated@@162))
 :pattern ( ($generated@@26 $generated@@160 $generated@@163))
)))
 :pattern ( ($generated@@95 $generated@@112 $generated@@160 ($generated@@113 $generated@@161) $generated@@162))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (! (= ($generated@@164 ($generated@@143 $generated@@165 $generated@@166)) $generated@@165)
 :pattern ( ($generated@@143 $generated@@165 $generated@@166))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (! (= ($generated@@167 ($generated@@143 $generated@@168 $generated@@169)) $generated@@169)
 :pattern ( ($generated@@143 $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ) (! (= ($generated@@24 ($generated@@143 $generated@@170 $generated@@171)) $generated@@3)
 :pattern ( ($generated@@143 $generated@@170 $generated@@171))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ) (! (= ($generated@@103 ($generated@@72 $generated@@172 $generated@@173)) $generated@@5)
 :pattern ( ($generated@@72 $generated@@172 $generated@@173))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (! (= ($generated@@174 ($generated@@66 $generated@@175 $generated@@176)) $generated@@175)
 :pattern ( ($generated@@66 $generated@@175 $generated@@176))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@U) ) (! (= ($generated@@177 ($generated@@66 $generated@@178 $generated@@179)) $generated@@179)
 :pattern ( ($generated@@66 $generated@@178 $generated@@179))
)))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@U) ) (! (= ($generated@@135 ($generated@@72 $generated@@180 $generated@@181)) $generated@@180)
 :pattern ( ($generated@@72 $generated@@180 $generated@@181))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ) (! (= ($generated@@136 ($generated@@72 $generated@@182 $generated@@183)) $generated@@183)
 :pattern ( ($generated@@72 $generated@@182 $generated@@183))
)))
(assert (forall (($generated@@185 T@U) ) (! (= ($generated@@184 ($generated@@113 $generated@@185)) $generated@@185)
 :pattern ( ($generated@@113 $generated@@185))
)))
(assert (forall (($generated@@186 T@U) ) (! (= ($generated@@24 ($generated@@113 $generated@@186)) $generated@@1)
 :pattern ( ($generated@@113 $generated@@186))
)))
(assert (forall (($generated@@188 T@U) ) (! (= ($generated@@187 ($generated@@78 $generated@@188)) $generated@@188)
 :pattern ( ($generated@@78 $generated@@188))
)))
(assert (forall (($generated@@189 T@U) ) (! (= ($generated@@24 ($generated@@78 $generated@@189)) $generated@@2)
 :pattern ( ($generated@@78 $generated@@189))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@T) ) (! (= ($generated@@105 $generated@@191 ($generated@@106 $generated@@191 $generated@@190)) $generated@@190)
 :pattern ( ($generated@@106 $generated@@191 $generated@@190))
)))
(assert (forall (($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ) (! (= ($generated@@64 $generated@@142 $generated@@192 ($generated@@143 $generated@@193 $generated@@194)) (forall (($generated@@195 T@U) ) (!  (=> ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@192) $generated@@195)) (and ($generated@@38 ($generated@@35 $generated@@36 $generated@@36 ($generated@@59 $generated@@192) $generated@@195) $generated@@194) ($generated@@38 $generated@@195 $generated@@193)))
 :pattern ( ($generated@@35 $generated@@36 $generated@@36 ($generated@@59 $generated@@192) $generated@@195))
 :pattern ( ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@192) $generated@@195))
)))
 :pattern ( ($generated@@64 $generated@@142 $generated@@192 ($generated@@143 $generated@@193 $generated@@194)))
)))
(assert (forall (($generated@@198 T@U) ($generated@@199 T@U) ) (! (< ($generated@@196 $generated@@198) ($generated@@197 ($generated@@72 $generated@@198 $generated@@199)))
 :pattern ( ($generated@@72 $generated@@198 $generated@@199))
)))
(assert (forall (($generated@@200 T@U) ($generated@@201 T@U) ) (! (< ($generated@@196 $generated@@201) ($generated@@197 ($generated@@72 $generated@@200 $generated@@201)))
 :pattern ( ($generated@@72 $generated@@200 $generated@@201))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ) (!  (=> ($generated@@38 $generated@@202 ($generated@@143 $generated@@203 $generated@@204)) (and (= ($generated@@106 $generated@@142 ($generated@@105 $generated@@142 $generated@@202)) $generated@@202) ($generated@@64 $generated@@142 ($generated@@105 $generated@@142 $generated@@202) ($generated@@143 $generated@@203 $generated@@204))))
 :pattern ( ($generated@@38 $generated@@202 ($generated@@143 $generated@@203 $generated@@204)))
)))
(assert (forall (($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ) (!  (=> ($generated@@38 $generated@@207 ($generated@@66 $generated@@205 $generated@@206)) (and (= ($generated@@106 $generated@@65 ($generated@@105 $generated@@65 $generated@@207)) $generated@@207) ($generated@@64 $generated@@65 ($generated@@105 $generated@@65 $generated@@207) ($generated@@66 $generated@@205 $generated@@206))))
 :pattern ( ($generated@@38 $generated@@207 ($generated@@66 $generated@@205 $generated@@206)))
)))
(assert (forall (($generated@@208 T@U) ) (!  (not ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 $generated@@149 $generated@@208)))
 :pattern ( ($generated@@35 $generated@@36 $generated@@9 $generated@@149 $generated@@208))
)))
(assert  (and (and (and (forall (($generated@@214 T@T) ($generated@@215 T@T) ($generated@@216 T@T) ($generated@@217 T@U) ($generated@@218 T@U) ($generated@@219 T@U) ($generated@@220 T@U) ) (! (= ($generated@@209 $generated@@214 $generated@@215 $generated@@216 ($generated@@213 $generated@@214 $generated@@215 $generated@@216 $generated@@218 $generated@@219 $generated@@220 $generated@@217) $generated@@219 $generated@@220) $generated@@217)
 :weight 0
)) (and (forall (($generated@@221 T@T) ($generated@@222 T@T) ($generated@@223 T@T) ($generated@@224 T@U) ($generated@@225 T@U) ($generated@@226 T@U) ($generated@@227 T@U) ($generated@@228 T@U) ($generated@@229 T@U) ) (!  (or (= $generated@@226 $generated@@228) (= ($generated@@209 $generated@@221 $generated@@222 $generated@@223 ($generated@@213 $generated@@221 $generated@@222 $generated@@223 $generated@@225 $generated@@226 $generated@@227 $generated@@224) $generated@@228 $generated@@229) ($generated@@209 $generated@@221 $generated@@222 $generated@@223 $generated@@225 $generated@@228 $generated@@229)))
 :weight 0
)) (forall (($generated@@230 T@T) ($generated@@231 T@T) ($generated@@232 T@T) ($generated@@233 T@U) ($generated@@234 T@U) ($generated@@235 T@U) ($generated@@236 T@U) ($generated@@237 T@U) ($generated@@238 T@U) ) (!  (or (= $generated@@236 $generated@@238) (= ($generated@@209 $generated@@230 $generated@@231 $generated@@232 ($generated@@213 $generated@@230 $generated@@231 $generated@@232 $generated@@234 $generated@@235 $generated@@236 $generated@@233) $generated@@237 $generated@@238) ($generated@@209 $generated@@230 $generated@@231 $generated@@232 $generated@@234 $generated@@237 $generated@@238)))
 :weight 0
)))) (= ($generated@@8 $generated@@210) 8)) (= ($generated@@8 $generated@@211) 9)))
(assert (forall (($generated@@239 T@U) ($generated@@240 T@U) ($generated@@241 T@U) ($generated@@242 Bool) ($generated@@243 T@U) ($generated@@244 T@U) ) (! (= ($generated@@13 ($generated@@209 $generated@@210 $generated@@211 $generated@@9 ($generated@@212 $generated@@239 $generated@@240 $generated@@241 $generated@@242) $generated@@243 $generated@@244))  (=> (and (or (not (= $generated@@243 $generated@@239)) (not true)) ($generated@@13 ($generated@@105 $generated@@9 ($generated@@35 $generated@@211 $generated@@36 ($generated@@35 $generated@@210 ($generated@@77 $generated@@211 $generated@@36) $generated@@240 $generated@@243) $generated@@241)))) $generated@@242))
 :pattern ( ($generated@@209 $generated@@210 $generated@@211 $generated@@9 ($generated@@212 $generated@@239 $generated@@240 $generated@@241 $generated@@242) $generated@@243 $generated@@244))
)))
(assert (forall (($generated@@245 T@U) ($generated@@246 T@U) ($generated@@247 T@U) ($generated@@248 T@U) ) (!  (=> (forall (($generated@@249 T@U) )  (=> ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 $generated@@245 $generated@@249)) (and ($generated@@38 $generated@@249 $generated@@247) ($generated@@38 ($generated@@35 $generated@@36 $generated@@36 $generated@@246 $generated@@249) $generated@@248)))) ($generated@@64 $generated@@142 ($generated@@55 $generated@@245 $generated@@246 ($generated@@143 $generated@@247 $generated@@248)) ($generated@@143 $generated@@247 $generated@@248)))
 :pattern ( ($generated@@55 $generated@@245 $generated@@246 ($generated@@143 $generated@@247 $generated@@248)))
)))
(assert (forall (($generated@@251 T@U) ($generated@@252 T@U) ) (!  (and (= ($generated@@24 ($generated@@66 $generated@@251 $generated@@252)) $generated@@6) (= ($generated@@250 ($generated@@66 $generated@@251 $generated@@252)) $generated@@7))
 :pattern ( ($generated@@66 $generated@@251 $generated@@252))
)))
(assert (forall (($generated@@253 T@U) ) (! (= ($generated@@196 ($generated@@106 $generated@@65 $generated@@253)) ($generated@@197 $generated@@253))
 :pattern ( ($generated@@196 ($generated@@106 $generated@@65 $generated@@253)))
)))
(assert (forall (($generated@@254 T@U) ($generated@@255 T@U) ) (!  (=> ($generated@@38 $generated@@254 ($generated@@113 $generated@@255)) (and (= ($generated@@106 $generated@@112 ($generated@@105 $generated@@112 $generated@@254)) $generated@@254) ($generated@@64 $generated@@112 ($generated@@105 $generated@@112 $generated@@254) ($generated@@113 $generated@@255))))
 :pattern ( ($generated@@38 $generated@@254 ($generated@@113 $generated@@255)))
)))
(assert (forall (($generated@@256 T@U) ($generated@@257 T@U) ) (!  (=> ($generated@@38 $generated@@256 ($generated@@78 $generated@@257)) (and (= ($generated@@106 ($generated@@77 $generated@@36 $generated@@9) ($generated@@105 ($generated@@77 $generated@@36 $generated@@9) $generated@@256)) $generated@@256) ($generated@@64 ($generated@@77 $generated@@36 $generated@@9) ($generated@@105 ($generated@@77 $generated@@36 $generated@@9) $generated@@256) ($generated@@78 $generated@@257))))
 :pattern ( ($generated@@38 $generated@@256 ($generated@@78 $generated@@257)))
)))
(assert (forall (($generated@@258 T@U) ($generated@@259 T@U) ($generated@@260 T@U) ) (!  (=> (and ($generated@@96 $generated@@260) (and ($generated@@63 $generated@@258) (exists (($generated@@261 T@U) ) (! ($generated@@95 $generated@@65 $generated@@258 ($generated@@66 $generated@@259 $generated@@261) $generated@@260)
 :pattern ( ($generated@@95 $generated@@65 $generated@@258 ($generated@@66 $generated@@259 $generated@@261) $generated@@260))
)))) ($generated@@97 ($generated@@135 $generated@@258) $generated@@259 $generated@@260))
 :pattern ( ($generated@@97 ($generated@@135 $generated@@258) $generated@@259 $generated@@260))
)))
(assert (forall (($generated@@262 T@U) ($generated@@263 T@U) ($generated@@264 T@U) ) (!  (=> (and ($generated@@96 $generated@@264) (and ($generated@@63 $generated@@262) (exists (($generated@@265 T@U) ) (! ($generated@@95 $generated@@65 $generated@@262 ($generated@@66 $generated@@265 $generated@@263) $generated@@264)
 :pattern ( ($generated@@95 $generated@@65 $generated@@262 ($generated@@66 $generated@@265 $generated@@263) $generated@@264))
)))) ($generated@@97 ($generated@@136 $generated@@262) $generated@@263 $generated@@264))
 :pattern ( ($generated@@97 ($generated@@136 $generated@@262) $generated@@263 $generated@@264))
)))
(assert (forall (($generated@@266 T@U) ($generated@@267 T@U) ) (! (= ($generated@@72 ($generated@@92 $generated@@36 $generated@@266) ($generated@@92 $generated@@36 $generated@@267)) ($generated@@92 $generated@@65 ($generated@@72 $generated@@266 $generated@@267)))
 :pattern ( ($generated@@72 ($generated@@92 $generated@@36 $generated@@266) ($generated@@92 $generated@@36 $generated@@267)))
)))
(assert (forall (($generated@@268 Int) ) (! (= ($generated@@106 $generated@@10 ($generated@@14 ($generated@@90 $generated@@268))) ($generated@@92 $generated@@36 ($generated@@106 $generated@@10 ($generated@@14 $generated@@268))))
 :pattern ( ($generated@@106 $generated@@10 ($generated@@14 ($generated@@90 $generated@@268))))
)))
(assert (forall (($generated@@269 T@U) ($generated@@270 T@T) ) (! (= ($generated@@106 $generated@@270 ($generated@@92 $generated@@270 $generated@@269)) ($generated@@92 $generated@@36 ($generated@@106 $generated@@270 $generated@@269)))
 :pattern ( ($generated@@106 $generated@@270 ($generated@@92 $generated@@270 $generated@@269)))
)))
(assert (forall (($generated@@271 T@U) ($generated@@272 T@U) ) (! ($generated@@95 $generated@@10 $generated@@272 $generated $generated@@271)
 :pattern ( ($generated@@95 $generated@@10 $generated@@272 $generated $generated@@271))
)))
(assert (forall (($generated@@273 T@U) ($generated@@274 T@U) ($generated@@275 T@U) ) (!  (=> ($generated@@64 $generated@@142 $generated@@273 ($generated@@143 $generated@@274 $generated@@275)) (and (and ($generated@@64 ($generated@@77 $generated@@36 $generated@@9) ($generated@@54 $generated@@273) ($generated@@78 $generated@@274)) ($generated@@64 ($generated@@77 $generated@@36 $generated@@9) ($generated@@125 $generated@@273) ($generated@@78 $generated@@275))) ($generated@@64 ($generated@@77 $generated@@36 $generated@@9) ($generated@@134 $generated@@273) ($generated@@78 ($generated@@66 $generated@@274 $generated@@275)))))
 :pattern ( ($generated@@64 $generated@@142 $generated@@273 ($generated@@143 $generated@@274 $generated@@275)))
)))
(assert (forall (($generated@@276 T@U) ) (! ($generated@@64 $generated@@10 $generated@@276 $generated)
 :pattern ( ($generated@@64 $generated@@10 $generated@@276 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@277 () T@U)
(declare-fun $generated@@278 () Int)
(declare-fun $generated@@279 () T@U)
(declare-fun $generated@@280 () Int)
(declare-fun $generated@@281 () T@U)
(declare-fun $generated@@282 () T@U)
(declare-fun $generated@@283 () T@U)
(declare-fun $generated@@284 (T@U) Bool)
(declare-fun $generated@@285 () T@U)
(declare-fun $generated@@286 () T@U)
(declare-fun $generated@@287 () Int)
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
 (=> (= (ControlFlow 0 0) 14) (let (($generated@@288  (=> (= (ControlFlow 0 4) (- 0 3)) (forall (($generated@@289 Int) ) (!  (=> ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@277) ($generated@@106 $generated@@10 ($generated@@14 $generated@@289)))) (= ($generated@@15 ($generated@@105 $generated@@10 ($generated@@35 $generated@@36 $generated@@36 ($generated@@59 $generated@@277) ($generated@@106 $generated@@10 ($generated@@14 $generated@@289))))) $generated@@289))
 :pattern ( ($generated@@105 $generated@@10 ($generated@@35 $generated@@36 $generated@@36 ($generated@@59 $generated@@277) ($generated@@106 $generated@@10 ($generated@@14 $generated@@289)))))
 :pattern ( ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@277) ($generated@@106 $generated@@10 ($generated@@14 $generated@@289))))
)))))
(let (($generated@@290  (=> (and (not ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@277) ($generated@@106 $generated@@10 ($generated@@14 $generated@@278))))) (= (ControlFlow 0 7) 4)) $generated@@288)))
(let (($generated@@291  (=> ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@277) ($generated@@106 $generated@@10 ($generated@@14 $generated@@278)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($generated@@13 ($generated@@35 $generated@@36 $generated@@9 ($generated@@54 $generated@@277) ($generated@@106 $generated@@10 ($generated@@14 $generated@@278))))) (=> (= (ControlFlow 0 5) 4) $generated@@288)))))
(let (($generated@@292  (and (=> (= (ControlFlow 0 8) 5) $generated@@291) (=> (= (ControlFlow 0 8) 7) $generated@@290))))
(let (($generated@@293 true))
(let (($generated@@294  (=> (= $generated@@277 ($generated@@55 ($generated@@37 $generated $generated@@279) $generated@@132 ($generated@@143 $generated $generated))) (and (=> (= (ControlFlow 0 9) 8) $generated@@292) (=> (= (ControlFlow 0 9) 2) $generated@@293)))))
(let (($generated@@295  (=> (and (not ($generated@@26 $generated@@279 ($generated@@106 $generated@@10 ($generated@@14 $generated@@280)))) (= (ControlFlow 0 11) 9)) $generated@@294)))
(let (($generated@@296  (=> (and ($generated@@26 $generated@@279 ($generated@@106 $generated@@10 ($generated@@14 $generated@@280))) (= (ControlFlow 0 10) 9)) $generated@@294)))
(let (($generated@@297  (and (=> (= (ControlFlow 0 12) 10) $generated@@296) (=> (= (ControlFlow 0 12) 11) $generated@@295))))
(let (($generated@@298 true))
(let (($generated@@299  (=> (and (= $generated@@281 ($generated@@212 $generated@@282 $generated@@283 $generated@@4 false)) (= $generated@@279 ($generated@@92 $generated@@112 ($generated@@25 ($generated@@25 ($generated@@25 ($generated@@25 $generated@@70 ($generated@@106 $generated@@10 ($generated@@14 ($generated@@90 0)))) ($generated@@106 $generated@@10 ($generated@@14 ($generated@@90 1)))) ($generated@@106 $generated@@10 ($generated@@14 ($generated@@90 3)))) ($generated@@106 $generated@@10 ($generated@@14 ($generated@@90 4))))))) (and (=> (= (ControlFlow 0 13) 12) $generated@@297) (=> (= (ControlFlow 0 13) 1) $generated@@298)))))
(let (($generated@@300  (=> (and ($generated@@96 $generated@@283) ($generated@@284 $generated@@283)) (=> (and (and ($generated@@64 $generated@@112 $generated@@285 ($generated@@113 $generated)) ($generated@@95 $generated@@112 $generated@@285 ($generated@@113 $generated) $generated@@283)) true) (=> (and (and (and ($generated@@64 $generated@@142 $generated@@286 ($generated@@143 $generated $generated)) ($generated@@95 $generated@@142 $generated@@286 ($generated@@143 $generated $generated) $generated@@283)) true) (and (= 0 $generated@@287) (= (ControlFlow 0 14) 13))) $generated@@299)))))
$generated@@300)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)