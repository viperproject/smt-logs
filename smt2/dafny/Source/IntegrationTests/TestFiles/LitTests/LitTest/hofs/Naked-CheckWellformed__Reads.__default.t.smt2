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
(declare-fun $generated@@4 (T@T) Int)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 (Bool) T@U)
(declare-fun $generated@@9 (T@U) Bool)
(declare-fun $generated@@10 (Int) T@U)
(declare-fun $generated@@11 (T@U) Int)
(declare-fun $generated@@12 (Real) T@U)
(declare-fun $generated@@13 (T@U) Real)
(declare-fun $generated@@20 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@24 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 (T@U T@U Int) Bool)
(declare-fun $generated@@27 (T@T T@U) T@U)
(declare-fun $generated@@31 (T@U T@U) Bool)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@34 () Int)
(declare-fun $generated@@35 (T@U T@U Int) Int)
(declare-fun $generated@@36 (T@U Int) Bool)
(declare-fun $generated@@37 (T@U) Bool)
(declare-fun $generated@@38 (Int) Int)
(declare-fun $generated@@42 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@43 (T@U) T@U)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@49 (T@T T@U T@U) Bool)
(declare-fun $generated@@50 () T@T)
(declare-fun $generated@@51 (T@U T@U) T@U)
(declare-fun $generated@@52 (T@U T@U) Bool)
(declare-fun $generated@@60 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@61 (T@T T@U) T@U)
(declare-fun $generated@@69 (T@T T@U) T@U)
(declare-fun $generated@@72 () T@U)
(declare-fun $generated@@73 (T@U T@U) Bool)
(declare-fun $generated@@85 (T@U T@U T@U) Bool)
(declare-fun $generated@@109 (T@U) T@U)
(declare-fun $generated@@112 (T@U) T@U)
(declare-fun $generated@@117 () T@T)
(declare-fun $generated@@118 () T@U)
(declare-fun $generated@@119 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@120 () T@T)
(declare-fun $generated@@121 () T@T)
(declare-fun $generated@@122 (T@T T@T) T@T)
(declare-fun $generated@@123 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@124 (T@T) T@T)
(declare-fun $generated@@125 (T@T) T@T)
(declare-fun $generated@@152 (T@U) T@U)
(declare-fun $generated@@153 (T@U) T@U)
(declare-fun $generated@@171 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@172 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@173 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@4 $generated@@5) 0) (= ($generated@@4 $generated@@6) 1)) (= ($generated@@4 $generated@@7) 2)) (forall (($generated@@14 Bool) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Int) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Real) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3)
)
(assert (forall (($generated@@22 T@U) ($generated@@23 T@U) ) (! ($generated@@20 $generated@@6 $generated@@22 $generated@@21 $generated@@23)
 :pattern ( ($generated@@20 $generated@@6 $generated@@22 $generated@@21 $generated@@23))
)))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ) (! (= ($generated@@24 $generated@@21 $generated@@21 $generated@@29 ($generated@@25 $generated@@28) $generated@@30) ($generated@@26 $generated@@28 $generated@@29 ($generated@@11 ($generated@@27 $generated@@6 $generated@@30))))
 :pattern ( ($generated@@24 $generated@@21 $generated@@21 $generated@@29 ($generated@@25 $generated@@28) $generated@@30))
)))
(assert (forall (($generated@@33 T@U) ) (!  (not ($generated@@31 $generated@@32 $generated@@33))
 :pattern ( ($generated@@31 $generated@@32 $generated@@33))
)))
(assert  (=> (<= 0 $generated@@34) (forall (($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 Int) ) (!  (=> (or ($generated@@36 $generated@@40 $generated@@41) (and (< 0 $generated@@34) (and ($generated@@37 $generated@@40) (<= ($generated@@38 0) $generated@@41)))) (<= ($generated@@38 0) ($generated@@35 $generated@@39 $generated@@40 $generated@@41)))
 :pattern ( ($generated@@35 $generated@@39 $generated@@40 $generated@@41))
))))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (! (= ($generated@@31 ($generated@@42 $generated@@21 $generated@@21 $generated@@47 ($generated@@25 $generated@@46) $generated@@48) $generated@@45) ($generated@@31 ($generated@@42 $generated@@21 $generated@@21 $generated@@47 ($generated@@25 ($generated@@43 $generated@@44)) $generated@@48) $generated@@45))
 :pattern ( ($generated@@31 ($generated@@42 $generated@@21 $generated@@21 $generated@@47 ($generated@@25 $generated@@46) $generated@@48) $generated@@45))
)))
(assert (= ($generated@@4 $generated@@50) 3))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ) (!  (=> (and (and ($generated@@49 $generated@@50 $generated@@53 ($generated@@51 $generated@@54 $generated@@55)) (forall (($generated@@58 T@U) ) (!  (=> ($generated@@52 $generated@@58 $generated@@56) ($generated@@52 $generated@@58 $generated@@54))
 :pattern ( ($generated@@52 $generated@@58 $generated@@56))
 :pattern ( ($generated@@52 $generated@@58 $generated@@54))
))) (forall (($generated@@59 T@U) ) (!  (=> ($generated@@52 $generated@@59 $generated@@55) ($generated@@52 $generated@@59 $generated@@57))
 :pattern ( ($generated@@52 $generated@@59 $generated@@55))
 :pattern ( ($generated@@52 $generated@@59 $generated@@57))
))) ($generated@@49 $generated@@50 $generated@@53 ($generated@@51 $generated@@56 $generated@@57)))
 :pattern ( ($generated@@49 $generated@@50 $generated@@53 ($generated@@51 $generated@@54 $generated@@55)) ($generated@@49 $generated@@50 $generated@@53 ($generated@@51 $generated@@56 $generated@@57)))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 Int) ) (! (= ($generated@@35 $generated@@62 $generated@@63 $generated@@64) ($generated@@11 ($generated@@27 $generated@@6 ($generated@@60 $generated@@21 $generated@@21 $generated@@63 ($generated@@25 $generated@@62) ($generated@@61 $generated@@6 ($generated@@10 $generated@@64))))))
 :pattern ( ($generated@@35 $generated@@62 $generated@@63 $generated@@64))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 Int) ) (!  (=> (and ($generated@@37 $generated@@66) (<= ($generated@@38 0) $generated@@67)) (= ($generated@@26 $generated@@65 $generated@@66 $generated@@67) true))
 :pattern ( ($generated@@26 $generated@@65 $generated@@66 $generated@@67) ($generated@@37 $generated@@66))
)))
(assert (forall (($generated@@68 Int) ) (! (= ($generated@@38 $generated@@68) $generated@@68)
 :pattern ( ($generated@@38 $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@T) ) (! (= ($generated@@69 $generated@@71 $generated@@70) $generated@@70)
 :pattern ( ($generated@@69 $generated@@71 $generated@@70))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ) (!  (=> (and ($generated@@37 $generated@@76) (and ($generated@@52 $generated@@78 $generated@@74) ($generated@@49 $generated@@50 $generated@@77 ($generated@@51 $generated@@74 $generated@@75)))) (= ($generated@@73 ($generated@@42 $generated@@74 $generated@@75 $generated@@72 $generated@@77 $generated@@78) $generated@@32) ($generated@@73 ($generated@@42 $generated@@74 $generated@@75 $generated@@76 $generated@@77 $generated@@78) $generated@@32)))
 :pattern ( ($generated@@42 $generated@@74 $generated@@75 $generated@@72 $generated@@77 $generated@@78) ($generated@@37 $generated@@76))
 :pattern ( ($generated@@42 $generated@@74 $generated@@75 $generated@@76 $generated@@77 $generated@@78))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@60 $generated@@21 $generated@@21 $generated@@80 ($generated@@25 $generated@@79) $generated@@81) ($generated@@61 $generated@@6 ($generated@@10 ($generated@@35 $generated@@79 $generated@@80 ($generated@@11 ($generated@@27 $generated@@6 $generated@@81))))))
 :pattern ( ($generated@@60 $generated@@21 $generated@@21 $generated@@80 ($generated@@25 $generated@@79) $generated@@81))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@T) ) (! (= ($generated@@61 $generated@@83 ($generated@@27 $generated@@83 $generated@@82)) $generated@@82)
 :pattern ( ($generated@@27 $generated@@83 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ) (! (= ($generated@@49 $generated@@6 $generated@@84 $generated@@21) (<= ($generated@@38 0) ($generated@@11 $generated@@84)))
 :pattern ( ($generated@@49 $generated@@6 $generated@@84 $generated@@21))
)))
(assert ($generated@@37 $generated@@72))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@85 ($generated@@61 $generated@@89 $generated@@86) $generated@@87 $generated@@88) ($generated@@20 $generated@@89 $generated@@86 $generated@@87 $generated@@88))
 :pattern ( ($generated@@85 ($generated@@61 $generated@@89 $generated@@86) $generated@@87 $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ) (!  (=> ($generated@@52 $generated@@90 $generated@@21) (and (= ($generated@@61 $generated@@6 ($generated@@27 $generated@@6 $generated@@90)) $generated@@90) ($generated@@49 $generated@@6 ($generated@@27 $generated@@6 $generated@@90) $generated@@21)))
 :pattern ( ($generated@@52 $generated@@90 $generated@@21))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 Int) ) (! (= ($generated@@35 ($generated@@43 $generated@@91) $generated@@92 $generated@@93) ($generated@@35 $generated@@91 $generated@@92 $generated@@93))
 :pattern ( ($generated@@35 ($generated@@43 $generated@@91) $generated@@92 $generated@@93))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (!  (=> (and ($generated@@37 $generated@@97) ($generated@@20 $generated@@50 $generated@@94 ($generated@@51 $generated@@95 $generated@@96) $generated@@97)) (forall (($generated@@98 T@U) ) (!  (=> (and ($generated@@85 $generated@@98 $generated@@95 $generated@@97) ($generated@@24 $generated@@95 $generated@@96 $generated@@97 $generated@@94 $generated@@98)) ($generated@@85 ($generated@@60 $generated@@95 $generated@@96 $generated@@97 $generated@@94 $generated@@98) $generated@@96 $generated@@97))
 :pattern ( ($generated@@60 $generated@@95 $generated@@96 $generated@@97 $generated@@94 $generated@@98))
)))
 :pattern ( ($generated@@20 $generated@@50 $generated@@94 ($generated@@51 $generated@@95 $generated@@96) $generated@@97))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (!  (=> ($generated@@73 $generated@@99 $generated@@100) (= $generated@@99 $generated@@100))
 :pattern ( ($generated@@73 $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@49 $generated@@50 $generated@@101 ($generated@@51 $generated@@102 $generated@@103)) (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (!  (=> (and (and ($generated@@37 $generated@@104) ($generated@@52 $generated@@105 $generated@@102)) ($generated@@24 $generated@@102 $generated@@103 $generated@@104 $generated@@101 $generated@@105)) ($generated@@52 ($generated@@60 $generated@@102 $generated@@103 $generated@@104 $generated@@101 $generated@@105) $generated@@103))
 :pattern ( ($generated@@60 $generated@@102 $generated@@103 $generated@@104 $generated@@101 $generated@@105))
)))
 :pattern ( ($generated@@49 $generated@@50 $generated@@101 ($generated@@51 $generated@@102 $generated@@103)))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@T) ) (! (= ($generated@@52 ($generated@@61 $generated@@108 $generated@@106) $generated@@107) ($generated@@49 $generated@@108 $generated@@106 $generated@@107))
 :pattern ( ($generated@@52 ($generated@@61 $generated@@108 $generated@@106) $generated@@107))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@109 ($generated@@51 $generated@@110 $generated@@111)) $generated@@110)
 :pattern ( ($generated@@51 $generated@@110 $generated@@111))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ) (! (= ($generated@@112 ($generated@@51 $generated@@113 $generated@@114)) $generated@@114)
 :pattern ( ($generated@@51 $generated@@113 $generated@@114))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@T) ) (! (= ($generated@@27 $generated@@116 ($generated@@61 $generated@@116 $generated@@115)) $generated@@115)
 :pattern ( ($generated@@61 $generated@@116 $generated@@115))
)))
(assert  (and (and (and (and (and (and (and (= ($generated@@4 $generated@@117) 4) (forall (($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ) (! (= ($generated@@119 $generated@@126 $generated@@127 ($generated@@123 $generated@@126 $generated@@127 $generated@@129 $generated@@130 $generated@@128) $generated@@130) $generated@@128)
 :weight 0
))) (forall (($generated@@131 T@T) ($generated@@132 T@T) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (!  (or (= $generated@@135 $generated@@136) (= ($generated@@119 $generated@@131 $generated@@132 ($generated@@123 $generated@@131 $generated@@132 $generated@@134 $generated@@135 $generated@@133) $generated@@136) ($generated@@119 $generated@@131 $generated@@132 $generated@@134 $generated@@136)))
 :weight 0
))) (= ($generated@@4 $generated@@120) 5)) (= ($generated@@4 $generated@@121) 6)) (forall (($generated@@137 T@T) ($generated@@138 T@T) ) (= ($generated@@4 ($generated@@122 $generated@@137 $generated@@138)) 7))) (forall (($generated@@139 T@T) ($generated@@140 T@T) ) (! (= ($generated@@124 ($generated@@122 $generated@@139 $generated@@140)) $generated@@139)
 :pattern ( ($generated@@122 $generated@@139 $generated@@140))
))) (forall (($generated@@141 T@T) ($generated@@142 T@T) ) (! (= ($generated@@125 ($generated@@122 $generated@@141 $generated@@142)) $generated@@142)
 :pattern ( ($generated@@122 $generated@@141 $generated@@142))
))))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> ($generated@@37 $generated@@146) (= ($generated@@20 $generated@@50 $generated@@143 ($generated@@51 $generated@@144 $generated@@145) $generated@@146) (forall (($generated@@147 T@U) ) (!  (=> (and (and ($generated@@52 $generated@@147 $generated@@144) ($generated@@85 $generated@@147 $generated@@144 $generated@@146)) ($generated@@24 $generated@@144 $generated@@145 $generated@@146 $generated@@143 $generated@@147)) (forall (($generated@@148 T@U) ) (!  (=> (and (or (not (= $generated@@148 $generated@@118)) (not true)) ($generated@@31 ($generated@@42 $generated@@144 $generated@@145 $generated@@146 $generated@@143 $generated@@147) ($generated@@61 $generated@@117 $generated@@148))) ($generated@@9 ($generated@@27 $generated@@5 ($generated@@119 $generated@@120 $generated@@121 ($generated@@119 $generated@@117 ($generated@@122 $generated@@120 $generated@@121) $generated@@146 $generated@@148) $generated))))
 :pattern ( ($generated@@31 ($generated@@42 $generated@@144 $generated@@145 $generated@@146 $generated@@143 $generated@@147) ($generated@@61 $generated@@117 $generated@@148)))
)))
 :pattern ( ($generated@@60 $generated@@144 $generated@@145 $generated@@146 $generated@@143 $generated@@147))
 :pattern ( ($generated@@42 $generated@@144 $generated@@145 $generated@@146 $generated@@143 $generated@@147))
))))
 :pattern ( ($generated@@20 $generated@@50 $generated@@143 ($generated@@51 $generated@@144 $generated@@145) $generated@@146))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ) (!  (=> ($generated@@52 $generated@@151 ($generated@@51 $generated@@149 $generated@@150)) (and (= ($generated@@61 $generated@@50 ($generated@@27 $generated@@50 $generated@@151)) $generated@@151) ($generated@@49 $generated@@50 ($generated@@27 $generated@@50 $generated@@151) ($generated@@51 $generated@@149 $generated@@150))))
 :pattern ( ($generated@@52 $generated@@151 ($generated@@51 $generated@@149 $generated@@150)))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ) (!  (and (= ($generated@@152 ($generated@@51 $generated@@154 $generated@@155)) $generated@@1) (= ($generated@@153 ($generated@@51 $generated@@154 $generated@@155)) $generated@@3))
 :pattern ( ($generated@@51 $generated@@154 $generated@@155))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ) (!  (=> (and (and ($generated@@37 $generated@@158) (and ($generated@@52 $generated@@160 $generated@@156) ($generated@@49 $generated@@50 $generated@@159 ($generated@@51 $generated@@156 $generated@@157)))) ($generated@@73 ($generated@@42 $generated@@156 $generated@@157 $generated@@72 $generated@@159 $generated@@160) $generated@@32)) (= ($generated@@24 $generated@@156 $generated@@157 $generated@@72 $generated@@159 $generated@@160) ($generated@@24 $generated@@156 $generated@@157 $generated@@158 $generated@@159 $generated@@160)))
 :pattern ( ($generated@@24 $generated@@156 $generated@@157 $generated@@72 $generated@@159 $generated@@160) ($generated@@37 $generated@@158))
 :pattern ( ($generated@@24 $generated@@156 $generated@@157 $generated@@158 $generated@@159 $generated@@160))
)))
(assert (forall (($generated@@161 T@U) ) (! (= ($generated@@25 ($generated@@43 $generated@@161)) ($generated@@25 $generated@@161))
 :pattern ( ($generated@@25 ($generated@@43 $generated@@161)))
)))
(assert (= ($generated@@152 $generated@@21) $generated@@0))
(assert (= ($generated@@153 $generated@@21) $generated@@2))
(assert  (=> (<= 0 $generated@@34) (forall (($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 Int) ) (!  (=> (or ($generated@@36 $generated@@163 $generated@@164) (and (< 0 $generated@@34) (and ($generated@@37 $generated@@163) (<= ($generated@@38 0) $generated@@164)))) (= ($generated@@35 ($generated@@43 $generated@@162) $generated@@163 $generated@@164) $generated@@164))
 :pattern ( ($generated@@35 ($generated@@43 $generated@@162) $generated@@163 $generated@@164) ($generated@@37 $generated@@163))
))))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (! (= ($generated@@73 $generated@@165 $generated@@166) (forall (($generated@@167 T@U) ) (! (= ($generated@@31 $generated@@165 $generated@@167) ($generated@@31 $generated@@166 $generated@@167))
 :pattern ( ($generated@@31 $generated@@165 $generated@@167))
 :pattern ( ($generated@@31 $generated@@166 $generated@@167))
)))
 :pattern ( ($generated@@73 $generated@@165 $generated@@166))
)))
(assert (forall (($generated@@168 Int) ) (! (= ($generated@@61 $generated@@6 ($generated@@10 ($generated@@38 $generated@@168))) ($generated@@69 $generated@@121 ($generated@@61 $generated@@6 ($generated@@10 $generated@@168))))
 :pattern ( ($generated@@61 $generated@@6 ($generated@@10 ($generated@@38 $generated@@168))))
)))
(assert (forall (($generated@@169 T@U) ($generated@@170 T@T) ) (! (= ($generated@@61 $generated@@170 ($generated@@69 $generated@@170 $generated@@169)) ($generated@@69 $generated@@121 ($generated@@61 $generated@@170 $generated@@169)))
 :pattern ( ($generated@@61 $generated@@170 ($generated@@69 $generated@@170 $generated@@169)))
)))
(assert  (and (forall (($generated@@174 T@T) ($generated@@175 T@T) ($generated@@176 T@T) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ) (! (= ($generated@@171 $generated@@174 $generated@@175 $generated@@176 ($generated@@173 $generated@@174 $generated@@175 $generated@@176 $generated@@178 $generated@@179 $generated@@180 $generated@@177) $generated@@179 $generated@@180) $generated@@177)
 :weight 0
)) (and (forall (($generated@@181 T@T) ($generated@@182 T@T) ($generated@@183 T@T) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ) (!  (or (= $generated@@186 $generated@@188) (= ($generated@@171 $generated@@181 $generated@@182 $generated@@183 ($generated@@173 $generated@@181 $generated@@182 $generated@@183 $generated@@185 $generated@@186 $generated@@187 $generated@@184) $generated@@188 $generated@@189) ($generated@@171 $generated@@181 $generated@@182 $generated@@183 $generated@@185 $generated@@188 $generated@@189)))
 :weight 0
)) (forall (($generated@@190 T@T) ($generated@@191 T@T) ($generated@@192 T@T) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ) (!  (or (= $generated@@196 $generated@@198) (= ($generated@@171 $generated@@190 $generated@@191 $generated@@192 ($generated@@173 $generated@@190 $generated@@191 $generated@@192 $generated@@194 $generated@@195 $generated@@196 $generated@@193) $generated@@197 $generated@@198) ($generated@@171 $generated@@190 $generated@@191 $generated@@192 $generated@@194 $generated@@197 $generated@@198)))
 :weight 0
)))))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ) (! (= ($generated@@9 ($generated@@171 $generated@@117 $generated@@120 $generated@@5 ($generated@@172 $generated@@199 $generated@@200 $generated@@201 $generated@@202) $generated@@203 $generated@@204))  (=> (and (or (not (= $generated@@203 $generated@@199)) (not true)) ($generated@@9 ($generated@@27 $generated@@5 ($generated@@119 $generated@@120 $generated@@121 ($generated@@119 $generated@@117 ($generated@@122 $generated@@120 $generated@@121) $generated@@200 $generated@@203) $generated@@201)))) ($generated@@31 $generated@@202 ($generated@@61 $generated@@117 $generated@@203))))
 :pattern ( ($generated@@171 $generated@@117 $generated@@120 $generated@@5 ($generated@@172 $generated@@199 $generated@@200 $generated@@201 $generated@@202) $generated@@203 $generated@@204))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 () Int)
(declare-fun $generated@@208 () Bool)
(declare-fun $generated@@209 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 9) (let (($generated@@210 true))
(let (($generated@@211 true))
(let (($generated@@212  (=> (= $generated@@205 ($generated@@172 $generated@@118 $generated@@206 $generated ($generated@@42 $generated@@21 $generated@@21 $generated@@206 ($generated@@25 ($generated@@43 $generated@@44)) ($generated@@61 $generated@@6 ($generated@@10 $generated@@207))))) (and (=> (= (ControlFlow 0 3) (- 0 8)) (or (not (= 0 $generated@@34)) (not true))) (=> (or (not (= 0 $generated@@34)) (not true)) (=> (and ($generated@@85 ($generated@@61 $generated@@50 ($generated@@25 ($generated@@43 $generated@@44))) ($generated@@51 $generated@@21 $generated@@21) $generated@@206) ($generated@@20 $generated@@6 ($generated@@10 $generated@@207) $generated@@21 $generated@@206)) (and (=> (= (ControlFlow 0 3) (- 0 7)) ($generated@@24 $generated@@21 $generated@@21 $generated@@206 ($generated@@25 ($generated@@43 $generated@@44)) ($generated@@61 $generated@@6 ($generated@@10 $generated@@207)))) (=> ($generated@@24 $generated@@21 $generated@@21 $generated@@206 ($generated@@25 ($generated@@43 $generated@@44)) ($generated@@61 $generated@@6 ($generated@@10 $generated@@207))) (=> (= $generated@@208 (forall (($generated@@213 T@U) ($generated@@214 T@U) )  (=> (and (and (or (not (= $generated@@213 $generated@@118)) (not true)) ($generated@@9 ($generated@@27 $generated@@5 ($generated@@119 $generated@@120 $generated@@121 ($generated@@119 $generated@@117 ($generated@@122 $generated@@120 $generated@@121) $generated@@206 $generated@@213) $generated)))) ($generated@@31 ($generated@@42 $generated@@21 $generated@@21 $generated@@206 ($generated@@25 ($generated@@43 $generated@@44)) ($generated@@61 $generated@@6 ($generated@@10 $generated@@207))) ($generated@@61 $generated@@117 $generated@@213))) ($generated@@9 ($generated@@171 $generated@@117 $generated@@120 $generated@@5 $generated@@205 $generated@@213 $generated@@214))))) (and (=> (= (ControlFlow 0 3) (- 0 6)) $generated@@208) (=> $generated@@208 (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (not (= 0 $generated@@34)) (not true))) (=> (or (not (= 0 $generated@@34)) (not true)) (=> (and ($generated@@85 ($generated@@61 $generated@@50 ($generated@@25 ($generated@@43 $generated@@44))) ($generated@@51 $generated@@21 $generated@@21) $generated@@206) ($generated@@20 $generated@@6 ($generated@@10 $generated@@207) $generated@@21 $generated@@206)) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($generated@@24 $generated@@21 $generated@@21 $generated@@206 ($generated@@25 ($generated@@43 $generated@@44)) ($generated@@61 $generated@@6 ($generated@@10 $generated@@207)))) (=> ($generated@@24 $generated@@21 $generated@@21 $generated@@206 ($generated@@25 ($generated@@43 $generated@@44)) ($generated@@61 $generated@@6 ($generated@@10 $generated@@207))) (and (=> (= (ControlFlow 0 3) 1) $generated@@211) (=> (= (ControlFlow 0 3) 2) $generated@@210))))))))))))))))))
(let (($generated@@215  (=> (and (and (and ($generated@@37 $generated@@206) ($generated@@209 $generated@@206)) (<= ($generated@@38 0) $generated@@207)) (and (= 0 $generated@@34) (= (ControlFlow 0 9) 3))) $generated@@212)))
$generated@@215)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 8))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)