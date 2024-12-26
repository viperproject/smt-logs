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
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@24 () Int)
(declare-fun $generated@@25 (T@U T@U Int) Int)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 (T@U Int) Bool)
(declare-fun $generated@@28 (T@T T@U T@U) Bool)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 (T@U T@U) T@U)
(declare-fun $generated@@31 (Int) Int)
(declare-fun $generated@@35 (T@U) Bool)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 (T@U T@U) T@U)
(declare-fun $generated@@41 (T@U T@U) T@U)
(declare-fun $generated@@42 (T@U T@U) Bool)
(declare-fun $generated@@48 (T@T T@U) T@U)
(declare-fun $generated@@51 (T@U T@U) Bool)
(declare-fun $generated@@52 (T@U T@U) Bool)
(declare-fun $generated@@56 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@57 (T@U) Bool)
(declare-fun $generated@@58 (T@U T@U T@U) Bool)
(declare-fun $generated@@64 (T@U) T@U)
(declare-fun $generated@@66 (T@T T@U) T@U)
(declare-fun $generated@@67 (T@T T@U) T@U)
(declare-fun $generated@@73 () T@T)
(declare-fun $generated@@74 (T@U) T@U)
(declare-fun $generated@@93 (T@U) T@U)
(declare-fun $generated@@96 (T@U) T@U)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@109 (T@U) T@U)
(declare-fun $generated@@112 (T@U) T@U)
(declare-fun $generated@@115 (T@U) T@U)
(declare-fun $generated@@120 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@121 () T@T)
(declare-fun $generated@@122 (T@U) T@U)
(declare-fun $generated@@123 (T@U) T@U)
(declare-fun $generated@@124 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@141 (T@U) Int)
(declare-fun $generated@@142 (T@U) Int)
(declare-fun $generated@@147 () T@U)
(declare-fun $generated@@155 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@156 () T@T)
(declare-fun $generated@@157 () T@T)
(declare-fun $generated@@158 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@159 (T@T T@T) T@T)
(declare-fun $generated@@160 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@161 (T@T) T@T)
(declare-fun $generated@@162 (T@T) T@T)
(declare-fun $generated@@200 (T@U) T@U)
(declare-fun $generated@@205 (T@U) T@U)
(declare-fun $generated@@208 (T@U) T@U)
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
(assert (= ($generated@@23 $generated) $generated@@0))
(assert (= ($generated@@7 $generated@@29) 3))
(assert  (=> (<= 0 $generated@@24) (forall (($generated@@32 T@U) ($generated@@33 T@U) ($generated@@34 Int) ) (!  (=> (or ($generated@@27 $generated@@33 $generated@@34) (and (< 0 $generated@@24) (and ($generated@@28 $generated@@29 $generated@@33 ($generated@@30 $generated $generated)) (<= ($generated@@31 0) $generated@@34)))) (and (=> (or (not (= $generated@@34 ($generated@@31 0))) (not true)) ($generated@@27 $generated@@33 (- $generated@@34 1))) (= ($generated@@25 ($generated@@26 $generated@@32) $generated@@33 $generated@@34) (ite (= $generated@@34 ($generated@@31 0)) 0 ($generated@@25 $generated@@32 $generated@@33 (- $generated@@34 1))))))
 :pattern ( ($generated@@25 ($generated@@26 $generated@@32) $generated@@33 $generated@@34))
))))
(assert (= ($generated@@7 $generated@@36) 4))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ) (!  (=> ($generated@@28 $generated@@36 $generated@@40 ($generated@@37 $generated@@38 $generated@@39)) ($generated@@35 $generated@@40))
 :pattern ( ($generated@@35 $generated@@40) ($generated@@28 $generated@@36 $generated@@40 ($generated@@37 $generated@@38 $generated@@39)))
)))
(assert (forall (($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ) (! (= ($generated@@28 $generated@@36 ($generated@@41 $generated@@45 $generated@@46) ($generated@@37 $generated@@43 $generated@@44))  (and ($generated@@42 $generated@@45 $generated@@43) ($generated@@42 $generated@@46 $generated@@44)))
 :pattern ( ($generated@@28 $generated@@36 ($generated@@41 $generated@@45 $generated@@46) ($generated@@37 $generated@@43 $generated@@44)))
)))
(assert (forall (($generated@@47 Int) ) (! (= ($generated@@31 $generated@@47) $generated@@47)
 :pattern ( ($generated@@31 $generated@@47))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@T) ) (! (= ($generated@@48 $generated@@50 $generated@@49) $generated@@49)
 :pattern ( ($generated@@48 $generated@@50 $generated@@49))
)))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ) (! (= ($generated@@51 $generated@@53 $generated@@54) (forall (($generated@@55 T@U) ) (!  (=> ($generated@@52 $generated@@53 $generated@@55) ($generated@@52 $generated@@54 $generated@@55))
 :pattern ( ($generated@@52 $generated@@53 $generated@@55))
 :pattern ( ($generated@@52 $generated@@54 $generated@@55))
)))
 :pattern ( ($generated@@51 $generated@@53 $generated@@54))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ) (!  (=> ($generated@@57 $generated@@63) (= ($generated@@56 $generated@@36 ($generated@@41 $generated@@61 $generated@@62) ($generated@@37 $generated@@59 $generated@@60) $generated@@63)  (and ($generated@@58 $generated@@61 $generated@@59 $generated@@63) ($generated@@58 $generated@@62 $generated@@60 $generated@@63))))
 :pattern ( ($generated@@56 $generated@@36 ($generated@@41 $generated@@61 $generated@@62) ($generated@@37 $generated@@59 $generated@@60) $generated@@63))
)))
(assert (forall (($generated@@65 T@U) ) (! (= ($generated@@35 $generated@@65) (= ($generated@@64 $generated@@65) $generated@@4))
 :pattern ( ($generated@@35 $generated@@65))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@T) ) (! (= ($generated@@67 $generated@@69 ($generated@@66 $generated@@69 $generated@@68)) $generated@@68)
 :pattern ( ($generated@@66 $generated@@69 $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ) (!  (=> ($generated@@35 $generated@@70) (exists (($generated@@71 T@U) ($generated@@72 T@U) ) (= $generated@@70 ($generated@@41 $generated@@71 $generated@@72))))
 :pattern ( ($generated@@35 $generated@@70))
)))
(assert (= ($generated@@7 $generated@@73) 5))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ) (! (= ($generated@@28 $generated@@73 $generated@@75 ($generated@@74 $generated@@76)) (forall (($generated@@77 T@U) ) (!  (=> ($generated@@52 $generated@@75 $generated@@77) ($generated@@42 $generated@@77 $generated@@76))
 :pattern ( ($generated@@52 $generated@@75 $generated@@77))
)))
 :pattern ( ($generated@@28 $generated@@73 $generated@@75 ($generated@@74 $generated@@76)))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@T) ) (! (= ($generated@@58 ($generated@@67 $generated@@81 $generated@@78) $generated@@79 $generated@@80) ($generated@@56 $generated@@81 $generated@@78 $generated@@79 $generated@@80))
 :pattern ( ($generated@@58 ($generated@@67 $generated@@81 $generated@@78) $generated@@79 $generated@@80))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 Int) ) (! (= ($generated@@25 ($generated@@26 $generated@@82) $generated@@83 $generated@@84) ($generated@@25 $generated@@82 $generated@@83 $generated@@84))
 :pattern ( ($generated@@25 ($generated@@26 $generated@@82) $generated@@83 $generated@@84))
)))
(assert (forall (($generated@@85 T@U) ) (!  (=> ($generated@@42 $generated@@85 $generated) (and (= ($generated@@67 $generated@@9 ($generated@@66 $generated@@9 $generated@@85)) $generated@@85) ($generated@@28 $generated@@9 ($generated@@66 $generated@@9 $generated@@85) $generated)))
 :pattern ( ($generated@@42 $generated@@85 $generated))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@T) ) (! (= ($generated@@42 ($generated@@67 $generated@@88 $generated@@86) $generated@@87) ($generated@@28 $generated@@88 $generated@@86 $generated@@87))
 :pattern ( ($generated@@42 ($generated@@67 $generated@@88 $generated@@86) $generated@@87))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@56 $generated@@73 $generated@@89 ($generated@@74 $generated@@90) $generated@@91) (forall (($generated@@92 T@U) ) (!  (=> ($generated@@52 $generated@@89 $generated@@92) ($generated@@58 $generated@@92 $generated@@90 $generated@@91))
 :pattern ( ($generated@@52 $generated@@89 $generated@@92))
)))
 :pattern ( ($generated@@56 $generated@@73 $generated@@89 ($generated@@74 $generated@@90) $generated@@91))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@93 ($generated@@30 $generated@@94 $generated@@95)) $generated@@94)
 :pattern ( ($generated@@30 $generated@@94 $generated@@95))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@96 ($generated@@30 $generated@@97 $generated@@98)) $generated@@98)
 :pattern ( ($generated@@30 $generated@@97 $generated@@98))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (! (= ($generated@@23 ($generated@@30 $generated@@99 $generated@@100)) $generated@@2)
 :pattern ( ($generated@@30 $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ) (! (= ($generated@@64 ($generated@@41 $generated@@101 $generated@@102)) $generated@@4)
 :pattern ( ($generated@@41 $generated@@101 $generated@@102))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@103 ($generated@@37 $generated@@104 $generated@@105)) $generated@@104)
 :pattern ( ($generated@@37 $generated@@104 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ) (! (= ($generated@@106 ($generated@@37 $generated@@107 $generated@@108)) $generated@@108)
 :pattern ( ($generated@@37 $generated@@107 $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@109 ($generated@@41 $generated@@110 $generated@@111)) $generated@@110)
 :pattern ( ($generated@@41 $generated@@110 $generated@@111))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ) (! (= ($generated@@112 ($generated@@41 $generated@@113 $generated@@114)) $generated@@114)
 :pattern ( ($generated@@41 $generated@@113 $generated@@114))
)))
(assert (forall (($generated@@116 T@U) ) (! (= ($generated@@115 ($generated@@74 $generated@@116)) $generated@@116)
 :pattern ( ($generated@@74 $generated@@116))
)))
(assert (forall (($generated@@117 T@U) ) (! (= ($generated@@23 ($generated@@74 $generated@@117)) $generated@@1)
 :pattern ( ($generated@@74 $generated@@117))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@T) ) (! (= ($generated@@66 $generated@@119 ($generated@@67 $generated@@119 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@67 $generated@@119 $generated@@118))
)))
(assert  (and (and (forall (($generated@@125 T@T) ($generated@@126 T@T) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ) (! (= ($generated@@120 $generated@@125 $generated@@126 ($generated@@124 $generated@@125 $generated@@126 $generated@@128 $generated@@129 $generated@@127) $generated@@129) $generated@@127)
 :weight 0
)) (forall (($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (!  (or (= $generated@@134 $generated@@135) (= ($generated@@120 $generated@@130 $generated@@131 ($generated@@124 $generated@@130 $generated@@131 $generated@@133 $generated@@134 $generated@@132) $generated@@135) ($generated@@120 $generated@@130 $generated@@131 $generated@@133 $generated@@135)))
 :weight 0
))) (= ($generated@@7 $generated@@121) 6)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@56 $generated@@29 $generated@@136 ($generated@@30 $generated@@137 $generated@@138) $generated@@139) (forall (($generated@@140 T@U) ) (!  (=> ($generated@@52 ($generated@@123 $generated@@136) $generated@@140) (and ($generated@@58 ($generated@@120 $generated@@121 $generated@@121 ($generated@@122 $generated@@136) $generated@@140) $generated@@138 $generated@@139) ($generated@@58 $generated@@140 $generated@@137 $generated@@139)))
 :pattern ( ($generated@@120 $generated@@121 $generated@@121 ($generated@@122 $generated@@136) $generated@@140))
 :pattern ( ($generated@@52 ($generated@@123 $generated@@136) $generated@@140))
)))
 :pattern ( ($generated@@56 $generated@@29 $generated@@136 ($generated@@30 $generated@@137 $generated@@138) $generated@@139))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ) (! (< ($generated@@141 $generated@@143) ($generated@@142 ($generated@@41 $generated@@143 $generated@@144)))
 :pattern ( ($generated@@41 $generated@@143 $generated@@144))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ) (! (< ($generated@@141 $generated@@146) ($generated@@142 ($generated@@41 $generated@@145 $generated@@146)))
 :pattern ( ($generated@@41 $generated@@145 $generated@@146))
)))
(assert (forall (($generated@@148 T@U) ) (!  (not ($generated@@52 ($generated@@123 $generated@@147) $generated@@148))
 :pattern ( ($generated@@52 ($generated@@123 $generated@@147) $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ) (!  (=> ($generated@@42 $generated@@149 ($generated@@30 $generated@@150 $generated@@151)) (and (= ($generated@@67 $generated@@29 ($generated@@66 $generated@@29 $generated@@149)) $generated@@149) ($generated@@28 $generated@@29 ($generated@@66 $generated@@29 $generated@@149) ($generated@@30 $generated@@150 $generated@@151))))
 :pattern ( ($generated@@42 $generated@@149 ($generated@@30 $generated@@150 $generated@@151)))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ) (!  (=> ($generated@@42 $generated@@154 ($generated@@37 $generated@@152 $generated@@153)) (and (= ($generated@@67 $generated@@36 ($generated@@66 $generated@@36 $generated@@154)) $generated@@154) ($generated@@28 $generated@@36 ($generated@@66 $generated@@36 $generated@@154) ($generated@@37 $generated@@152 $generated@@153))))
 :pattern ( ($generated@@42 $generated@@154 ($generated@@37 $generated@@152 $generated@@153)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@163 T@T) ($generated@@164 T@T) ($generated@@165 T@T) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ) (! (= ($generated@@155 $generated@@163 $generated@@164 $generated@@165 ($generated@@160 $generated@@163 $generated@@164 $generated@@165 $generated@@167 $generated@@168 $generated@@169 $generated@@166) $generated@@168 $generated@@169) $generated@@166)
 :weight 0
)) (and (forall (($generated@@170 T@T) ($generated@@171 T@T) ($generated@@172 T@T) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ) (!  (or (= $generated@@175 $generated@@177) (= ($generated@@155 $generated@@170 $generated@@171 $generated@@172 ($generated@@160 $generated@@170 $generated@@171 $generated@@172 $generated@@174 $generated@@175 $generated@@176 $generated@@173) $generated@@177 $generated@@178) ($generated@@155 $generated@@170 $generated@@171 $generated@@172 $generated@@174 $generated@@177 $generated@@178)))
 :weight 0
)) (forall (($generated@@179 T@T) ($generated@@180 T@T) ($generated@@181 T@T) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ) (!  (or (= $generated@@185 $generated@@187) (= ($generated@@155 $generated@@179 $generated@@180 $generated@@181 ($generated@@160 $generated@@179 $generated@@180 $generated@@181 $generated@@183 $generated@@184 $generated@@185 $generated@@182) $generated@@186 $generated@@187) ($generated@@155 $generated@@179 $generated@@180 $generated@@181 $generated@@183 $generated@@186 $generated@@187)))
 :weight 0
)))) (= ($generated@@7 $generated@@156) 7)) (= ($generated@@7 $generated@@157) 8)) (forall (($generated@@188 T@T) ($generated@@189 T@T) ) (= ($generated@@7 ($generated@@159 $generated@@188 $generated@@189)) 9))) (forall (($generated@@190 T@T) ($generated@@191 T@T) ) (! (= ($generated@@161 ($generated@@159 $generated@@190 $generated@@191)) $generated@@190)
 :pattern ( ($generated@@159 $generated@@190 $generated@@191))
))) (forall (($generated@@192 T@T) ($generated@@193 T@T) ) (! (= ($generated@@162 ($generated@@159 $generated@@192 $generated@@193)) $generated@@193)
 :pattern ( ($generated@@159 $generated@@192 $generated@@193))
))))
(assert (forall (($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 Bool) ($generated@@198 T@U) ($generated@@199 T@U) ) (! (= ($generated@@12 ($generated@@155 $generated@@156 $generated@@157 $generated@@8 ($generated@@158 $generated@@194 $generated@@195 $generated@@196 $generated@@197) $generated@@198 $generated@@199))  (=> (and (or (not (= $generated@@198 $generated@@194)) (not true)) ($generated@@12 ($generated@@66 $generated@@8 ($generated@@120 $generated@@157 $generated@@121 ($generated@@120 $generated@@156 ($generated@@159 $generated@@157 $generated@@121) $generated@@195 $generated@@198) $generated@@196)))) $generated@@197))
 :pattern ( ($generated@@155 $generated@@156 $generated@@157 $generated@@8 ($generated@@158 $generated@@194 $generated@@195 $generated@@196 $generated@@197) $generated@@198 $generated@@199))
)))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@U) ) (!  (and (= ($generated@@23 ($generated@@37 $generated@@201 $generated@@202)) $generated@@5) (= ($generated@@200 ($generated@@37 $generated@@201 $generated@@202)) $generated@@6))
 :pattern ( ($generated@@37 $generated@@201 $generated@@202))
)))
(assert (forall (($generated@@203 T@U) ) (!  (or (= $generated@@203 $generated@@147) (exists (($generated@@204 T@U) ) ($generated@@52 ($generated@@123 $generated@@203) $generated@@204)))
 :pattern ( ($generated@@123 $generated@@203))
)))
(assert (forall (($generated@@206 T@U) ) (!  (or (= $generated@@206 $generated@@147) (exists (($generated@@207 T@U) ) ($generated@@52 ($generated@@205 $generated@@206) $generated@@207)))
 :pattern ( ($generated@@205 $generated@@206))
)))
(assert (forall (($generated@@209 T@U) ($generated@@210 T@U) ) (! (= ($generated@@52 ($generated@@208 $generated@@209) $generated@@210)  (and ($generated@@52 ($generated@@123 $generated@@209) ($generated@@109 ($generated@@66 $generated@@36 $generated@@210))) (= ($generated@@120 $generated@@121 $generated@@121 ($generated@@122 $generated@@209) ($generated@@109 ($generated@@66 $generated@@36 $generated@@210))) ($generated@@112 ($generated@@66 $generated@@36 $generated@@210)))))
 :pattern ( ($generated@@52 ($generated@@208 $generated@@209) $generated@@210))
)))
(assert (forall (($generated@@211 T@U) ($generated@@212 T@U) ) (! (= ($generated@@52 ($generated@@205 $generated@@211) $generated@@212) (exists (($generated@@213 T@U) ) (!  (and ($generated@@52 ($generated@@123 $generated@@211) $generated@@213) (= $generated@@212 ($generated@@120 $generated@@121 $generated@@121 ($generated@@122 $generated@@211) $generated@@213)))
 :pattern ( ($generated@@52 ($generated@@123 $generated@@211) $generated@@213))
 :pattern ( ($generated@@120 $generated@@121 $generated@@121 ($generated@@122 $generated@@211) $generated@@213))
)))
 :pattern ( ($generated@@52 ($generated@@205 $generated@@211) $generated@@212))
)))
(assert (forall (($generated@@214 T@U) ) (! (= ($generated@@141 ($generated@@67 $generated@@36 $generated@@214)) ($generated@@142 $generated@@214))
 :pattern ( ($generated@@141 ($generated@@67 $generated@@36 $generated@@214)))
)))
(assert (forall (($generated@@215 T@U) ($generated@@216 T@U) ) (!  (=> ($generated@@42 $generated@@215 ($generated@@74 $generated@@216)) (and (= ($generated@@67 $generated@@73 ($generated@@66 $generated@@73 $generated@@215)) $generated@@215) ($generated@@28 $generated@@73 ($generated@@66 $generated@@73 $generated@@215) ($generated@@74 $generated@@216))))
 :pattern ( ($generated@@42 $generated@@215 ($generated@@74 $generated@@216)))
)))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ($generated@@219 T@U) ) (! (= ($generated@@28 $generated@@29 $generated@@217 ($generated@@30 $generated@@218 $generated@@219)) (forall (($generated@@220 T@U) ) (!  (=> ($generated@@52 ($generated@@123 $generated@@217) $generated@@220) (and ($generated@@42 ($generated@@120 $generated@@121 $generated@@121 ($generated@@122 $generated@@217) $generated@@220) $generated@@219) ($generated@@42 $generated@@220 $generated@@218)))
 :pattern ( ($generated@@120 $generated@@121 $generated@@121 ($generated@@122 $generated@@217) $generated@@220))
 :pattern ( ($generated@@52 ($generated@@123 $generated@@217) $generated@@220))
)))
 :pattern ( ($generated@@28 $generated@@29 $generated@@217 ($generated@@30 $generated@@218 $generated@@219)))
)))
(assert  (=> (<= 0 $generated@@24) (forall (($generated@@221 T@U) ($generated@@222 T@U) ($generated@@223 Int) ) (!  (=> (or ($generated@@27 ($generated@@48 $generated@@29 $generated@@222) ($generated@@31 $generated@@223)) (and (< 0 $generated@@24) (and ($generated@@28 $generated@@29 $generated@@222 ($generated@@30 $generated $generated)) (<= ($generated@@31 0) $generated@@223)))) (and (=> (or (not (= ($generated@@31 $generated@@223) ($generated@@31 0))) (not true)) ($generated@@27 ($generated@@48 $generated@@29 $generated@@222) ($generated@@31 (- $generated@@223 1)))) (= ($generated@@25 ($generated@@26 $generated@@221) ($generated@@48 $generated@@29 $generated@@222) ($generated@@31 $generated@@223)) (ite (= ($generated@@31 $generated@@223) ($generated@@31 0)) 0 ($generated@@25 ($generated@@26 $generated@@221) ($generated@@48 $generated@@29 $generated@@222) ($generated@@31 (- $generated@@223 1)))))))
 :weight 3
 :pattern ( ($generated@@25 ($generated@@26 $generated@@221) ($generated@@48 $generated@@29 $generated@@222) ($generated@@31 $generated@@223)))
))))
(assert (forall (($generated@@224 T@U) ($generated@@225 T@U) ($generated@@226 T@U) ) (!  (=> (and ($generated@@57 $generated@@226) (and ($generated@@35 $generated@@224) (exists (($generated@@227 T@U) ) (! ($generated@@56 $generated@@36 $generated@@224 ($generated@@37 $generated@@225 $generated@@227) $generated@@226)
 :pattern ( ($generated@@56 $generated@@36 $generated@@224 ($generated@@37 $generated@@225 $generated@@227) $generated@@226))
)))) ($generated@@58 ($generated@@109 $generated@@224) $generated@@225 $generated@@226))
 :pattern ( ($generated@@58 ($generated@@109 $generated@@224) $generated@@225 $generated@@226))
)))
(assert (forall (($generated@@228 T@U) ($generated@@229 T@U) ($generated@@230 T@U) ) (!  (=> (and ($generated@@57 $generated@@230) (and ($generated@@35 $generated@@228) (exists (($generated@@231 T@U) ) (! ($generated@@56 $generated@@36 $generated@@228 ($generated@@37 $generated@@231 $generated@@229) $generated@@230)
 :pattern ( ($generated@@56 $generated@@36 $generated@@228 ($generated@@37 $generated@@231 $generated@@229) $generated@@230))
)))) ($generated@@58 ($generated@@112 $generated@@228) $generated@@229 $generated@@230))
 :pattern ( ($generated@@58 ($generated@@112 $generated@@228) $generated@@229 $generated@@230))
)))
(assert (forall (($generated@@232 T@U) ($generated@@233 T@U) ) (! (= ($generated@@41 ($generated@@48 $generated@@121 $generated@@232) ($generated@@48 $generated@@121 $generated@@233)) ($generated@@48 $generated@@36 ($generated@@41 $generated@@232 $generated@@233)))
 :pattern ( ($generated@@41 ($generated@@48 $generated@@121 $generated@@232) ($generated@@48 $generated@@121 $generated@@233)))
)))
(assert (forall (($generated@@234 Int) ) (! (= ($generated@@67 $generated@@9 ($generated@@13 ($generated@@31 $generated@@234))) ($generated@@48 $generated@@121 ($generated@@67 $generated@@9 ($generated@@13 $generated@@234))))
 :pattern ( ($generated@@67 $generated@@9 ($generated@@13 ($generated@@31 $generated@@234))))
)))
(assert (forall (($generated@@235 T@U) ($generated@@236 T@T) ) (! (= ($generated@@67 $generated@@236 ($generated@@48 $generated@@236 $generated@@235)) ($generated@@48 $generated@@121 ($generated@@67 $generated@@236 $generated@@235)))
 :pattern ( ($generated@@67 $generated@@236 ($generated@@48 $generated@@236 $generated@@235)))
)))
(assert (forall (($generated@@237 T@U) ($generated@@238 T@U) ) (! ($generated@@56 $generated@@9 $generated@@238 $generated $generated@@237)
 :pattern ( ($generated@@56 $generated@@9 $generated@@238 $generated $generated@@237))
)))
(assert (forall (($generated@@239 T@U) ) (!  (or (= $generated@@239 $generated@@147) (exists (($generated@@240 T@U) ($generated@@241 T@U) ) ($generated@@52 ($generated@@208 $generated@@239) ($generated@@67 $generated@@36 ($generated@@41 $generated@@240 $generated@@241)))))
 :pattern ( ($generated@@208 $generated@@239))
)))
(assert (forall (($generated@@242 T@U) ($generated@@243 T@U) ($generated@@244 T@U) ) (!  (=> ($generated@@28 $generated@@29 $generated@@242 ($generated@@30 $generated@@243 $generated@@244)) (and (and ($generated@@28 $generated@@73 ($generated@@123 $generated@@242) ($generated@@74 $generated@@243)) ($generated@@28 $generated@@73 ($generated@@205 $generated@@242) ($generated@@74 $generated@@244))) ($generated@@28 $generated@@73 ($generated@@208 $generated@@242) ($generated@@74 ($generated@@37 $generated@@243 $generated@@244)))))
 :pattern ( ($generated@@28 $generated@@29 $generated@@242 ($generated@@30 $generated@@243 $generated@@244)))
)))
(assert (forall (($generated@@245 T@U) ) (! ($generated@@28 $generated@@9 $generated@@245 $generated)
 :pattern ( ($generated@@28 $generated@@9 $generated@@245 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@246 () T@U)
(declare-fun $generated@@247 () T@U)
(declare-fun $generated@@248 () T@U)
(declare-fun $generated@@249 () T@U)
(declare-fun $generated@@250 (T@U) Bool)
(declare-fun $generated@@251 () T@U)
(declare-fun $generated@@252 () Int)
(declare-fun $generated@@253 () T@U)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@254  (=> (= $generated@@246 ($generated@@158 $generated@@247 $generated@@248 $generated@@3 false)) (=> (and (and (and ($generated@@57 $generated@@249) ($generated@@250 $generated@@249)) (= $generated@@248 $generated@@249)) (and (forall (($generated@@255 Int) ($generated@@256 T@U) ) (!  (=> (and (and (and (<= ($generated@@31 0) $generated@@255) ($generated@@28 $generated@@29 $generated@@256 ($generated@@30 $generated $generated))) ($generated@@12 ($generated@@48 $generated@@8 ($generated@@11 true)))) (or (and (<= 0 $generated@@255) (< $generated@@255 $generated@@252)) (and (= $generated@@255 $generated@@252) (and ($generated@@51 ($generated@@123 $generated@@256) ($generated@@123 $generated@@253)) (not ($generated@@51 ($generated@@123 $generated@@253) ($generated@@123 $generated@@256))))))) (= ($generated@@25 ($generated@@26 $generated@@251) $generated@@256 $generated@@255) ($generated@@31 0)))
 :pattern ( ($generated@@25 ($generated@@26 $generated@@251) $generated@@256 $generated@@255))
)) (= (ControlFlow 0 2) (- 0 1)))) (= ($generated@@25 ($generated@@26 ($generated@@26 $generated@@251)) $generated@@253 $generated@@252) ($generated@@31 0))))))
(let (($generated@@257  (=> (and (and (and ($generated@@57 $generated@@248) ($generated@@250 $generated@@248)) (<= ($generated@@31 0) $generated@@252)) (and (and ($generated@@28 $generated@@29 $generated@@253 ($generated@@30 $generated $generated)) ($generated@@56 $generated@@29 $generated@@253 ($generated@@30 $generated $generated) $generated@@248)) (and (= 1 $generated@@24) (= (ControlFlow 0 3) 2)))) $generated@@254)))
$generated@@257)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)