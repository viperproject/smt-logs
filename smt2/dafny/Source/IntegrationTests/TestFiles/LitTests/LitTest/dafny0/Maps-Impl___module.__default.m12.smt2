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
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 (T@U T@U T@U) T@U)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@33 (T@U) Bool)
(declare-fun $generated@@34 (T@T T@U T@U) Bool)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@40 (T@U T@U) T@U)
(declare-fun $generated@@41 (T@U T@U) Bool)
(declare-fun $generated@@46 (Int) Int)
(declare-fun $generated@@48 (T@T T@U) T@U)
(declare-fun $generated@@51 (T@U T@U) T@U)
(declare-fun $generated@@52 (T@U T@U) Bool)
(declare-fun $generated@@53 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@54 () T@T)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@73 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@74 (T@U) Bool)
(declare-fun $generated@@75 (T@U T@U T@U) Bool)
(declare-fun $generated@@81 (T@U) T@U)
(declare-fun $generated@@83 (T@T T@U) T@U)
(declare-fun $generated@@84 (T@T T@U) T@U)
(declare-fun $generated@@87 (T@U) T@U)
(declare-fun $generated@@93 () T@T)
(declare-fun $generated@@94 (T@U) T@U)
(declare-fun $generated@@98 (Int) T@U)
(declare-fun $generated@@99 (Int Int) Int)
(declare-fun $generated@@106 (T@U Int Int) T@U)
(declare-fun $generated@@119 (T@U) T@U)
(declare-fun $generated@@122 (T@U) T@U)
(declare-fun $generated@@129 (T@U) T@U)
(declare-fun $generated@@132 (T@U) T@U)
(declare-fun $generated@@135 (T@U) T@U)
(declare-fun $generated@@138 (T@U) T@U)
(declare-fun $generated@@141 (T@U) T@U)
(declare-fun $generated@@151 (T@U) Int)
(declare-fun $generated@@152 (T@U) Int)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@165 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@166 () T@T)
(declare-fun $generated@@167 () T@T)
(declare-fun $generated@@168 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@169 (T@T T@T) T@T)
(declare-fun $generated@@170 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@171 (T@T) T@T)
(declare-fun $generated@@172 (T@T) T@T)
(declare-fun $generated@@210 (T@U) T@U)
(declare-fun $generated@@217 (T@U) T@U)
(declare-fun $generated@@220 (T@U) T@U)
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
(assert (forall (($generated@@26 T@U) ($generated@@27 T@U) ($generated@@28 T@U) ) (! (= ($generated@@24 ($generated@@25 $generated@@26 $generated@@27 $generated@@28)) $generated@@26)
 :pattern ( ($generated@@24 ($generated@@25 $generated@@26 $generated@@27 $generated@@28)))
)))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 T@U) ) (! (= ($generated@@29 ($generated@@25 $generated@@30 $generated@@31 $generated@@32)) $generated@@31)
 :pattern ( ($generated@@29 ($generated@@25 $generated@@30 $generated@@31 $generated@@32)))
)))
(assert (= ($generated@@7 $generated@@35) 3))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ) (!  (=> ($generated@@34 $generated@@35 $generated@@39 ($generated@@36 $generated@@37 $generated@@38)) ($generated@@33 $generated@@39))
 :pattern ( ($generated@@33 $generated@@39) ($generated@@34 $generated@@35 $generated@@39 ($generated@@36 $generated@@37 $generated@@38)))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ) (! (= ($generated@@34 $generated@@35 ($generated@@40 $generated@@44 $generated@@45) ($generated@@36 $generated@@42 $generated@@43))  (and ($generated@@41 $generated@@44 $generated@@42) ($generated@@41 $generated@@45 $generated@@43)))
 :pattern ( ($generated@@34 $generated@@35 ($generated@@40 $generated@@44 $generated@@45) ($generated@@36 $generated@@42 $generated@@43)))
)))
(assert (forall (($generated@@47 Int) ) (! (= ($generated@@46 $generated@@47) $generated@@47)
 :pattern ( ($generated@@46 $generated@@47))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@T) ) (! (= ($generated@@48 $generated@@50 $generated@@49) $generated@@49)
 :pattern ( ($generated@@48 $generated@@50 $generated@@49))
)))
(assert  (and (and (and (forall (($generated@@57 T@T) ($generated@@58 T@T) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@53 $generated@@57 $generated@@58 ($generated@@56 $generated@@57 $generated@@58 $generated@@60 $generated@@61 $generated@@59) $generated@@61) $generated@@59)
 :weight 0
)) (forall (($generated@@62 T@T) ($generated@@63 T@T) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ) (!  (or (= $generated@@66 $generated@@67) (= ($generated@@53 $generated@@62 $generated@@63 ($generated@@56 $generated@@62 $generated@@63 $generated@@65 $generated@@66 $generated@@64) $generated@@67) ($generated@@53 $generated@@62 $generated@@63 $generated@@65 $generated@@67)))
 :weight 0
))) (= ($generated@@7 $generated@@54) 4)) (= ($generated@@7 $generated@@55) 5)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (!  (=> (forall (($generated@@72 T@U) )  (=> ($generated@@52 $generated@@68 $generated@@72) (and ($generated@@41 $generated@@72 $generated@@70) ($generated@@41 ($generated@@53 $generated@@54 $generated@@54 $generated@@69 $generated@@72) $generated@@71)))) ($generated@@34 $generated@@55 ($generated@@25 $generated@@68 $generated@@69 ($generated@@51 $generated@@70 $generated@@71)) ($generated@@51 $generated@@70 $generated@@71)))
 :pattern ( ($generated@@25 $generated@@68 $generated@@69 ($generated@@51 $generated@@70 $generated@@71)))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ) (!  (=> ($generated@@74 $generated@@80) (= ($generated@@73 $generated@@35 ($generated@@40 $generated@@78 $generated@@79) ($generated@@36 $generated@@76 $generated@@77) $generated@@80)  (and ($generated@@75 $generated@@78 $generated@@76 $generated@@80) ($generated@@75 $generated@@79 $generated@@77 $generated@@80))))
 :pattern ( ($generated@@73 $generated@@35 ($generated@@40 $generated@@78 $generated@@79) ($generated@@36 $generated@@76 $generated@@77) $generated@@80))
)))
(assert (forall (($generated@@82 T@U) ) (! (= ($generated@@33 $generated@@82) (= ($generated@@81 $generated@@82) $generated@@4))
 :pattern ( ($generated@@33 $generated@@82))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@T) ) (! (= ($generated@@84 $generated@@86 ($generated@@83 $generated@@86 $generated@@85)) $generated@@85)
 :pattern ( ($generated@@83 $generated@@86 $generated@@85))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ) (! (= ($generated@@52 ($generated@@87 $generated@@88) $generated@@89) ($generated@@12 ($generated@@53 $generated@@54 $generated@@8 $generated@@88 $generated@@89)))
 :pattern ( ($generated@@52 ($generated@@87 $generated@@88) $generated@@89))
)))
(assert (forall (($generated@@90 T@U) ) (!  (=> ($generated@@33 $generated@@90) (exists (($generated@@91 T@U) ($generated@@92 T@U) ) (= $generated@@90 ($generated@@40 $generated@@91 $generated@@92))))
 :pattern ( ($generated@@33 $generated@@90))
)))
(assert (= ($generated@@7 $generated@@93) 6))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (! (= ($generated@@34 $generated@@93 $generated@@95 ($generated@@94 $generated@@96)) (forall (($generated@@97 T@U) ) (!  (=> ($generated@@52 $generated@@95 $generated@@97) ($generated@@41 $generated@@97 $generated@@96))
 :pattern ( ($generated@@52 $generated@@95 $generated@@97))
)))
 :pattern ( ($generated@@34 $generated@@93 $generated@@95 ($generated@@94 $generated@@96)))
)))
(assert (forall (($generated@@100 Int) ($generated@@101 T@U) ) (! (= ($generated@@53 $generated@@54 $generated@@54 ($generated@@98 $generated@@100) $generated@@101) ($generated@@84 $generated@@9 ($generated@@13 ($generated@@99 ($generated@@14 ($generated@@83 $generated@@9 $generated@@101)) $generated@@100))))
 :pattern ( ($generated@@53 $generated@@54 $generated@@54 ($generated@@98 $generated@@100) $generated@@101))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@T) ) (! (= ($generated@@75 ($generated@@84 $generated@@105 $generated@@102) $generated@@103 $generated@@104) ($generated@@73 $generated@@105 $generated@@102 $generated@@103 $generated@@104))
 :pattern ( ($generated@@75 ($generated@@84 $generated@@105 $generated@@102) $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 Int) ($generated@@109 Int) ($generated@@110 T@U) ) (! (= ($generated@@12 ($generated@@53 $generated@@54 $generated@@8 ($generated@@106 $generated@@107 $generated@@108 $generated@@109) $generated@@110))  (and ($generated@@41 $generated@@110 $generated@@107) (and (<= $generated@@108 ($generated@@14 ($generated@@83 $generated@@9 $generated@@110))) (< ($generated@@14 ($generated@@83 $generated@@9 $generated@@110)) $generated@@109))))
 :pattern ( ($generated@@53 $generated@@54 $generated@@8 ($generated@@106 $generated@@107 $generated@@108 $generated@@109) $generated@@110))
)))
(assert (forall (($generated@@111 T@U) ) (!  (=> ($generated@@41 $generated@@111 $generated) (and (= ($generated@@84 $generated@@9 ($generated@@83 $generated@@9 $generated@@111)) $generated@@111) ($generated@@34 $generated@@9 ($generated@@83 $generated@@9 $generated@@111) $generated)))
 :pattern ( ($generated@@41 $generated@@111 $generated))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@T) ) (! (= ($generated@@41 ($generated@@84 $generated@@114 $generated@@112) $generated@@113) ($generated@@34 $generated@@114 $generated@@112 $generated@@113))
 :pattern ( ($generated@@41 ($generated@@84 $generated@@114 $generated@@112) $generated@@113))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@73 $generated@@93 $generated@@115 ($generated@@94 $generated@@116) $generated@@117) (forall (($generated@@118 T@U) ) (!  (=> ($generated@@52 $generated@@115 $generated@@118) ($generated@@75 $generated@@118 $generated@@116 $generated@@117))
 :pattern ( ($generated@@52 $generated@@115 $generated@@118))
)))
 :pattern ( ($generated@@73 $generated@@93 $generated@@115 ($generated@@94 $generated@@116) $generated@@117))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@119 ($generated@@51 $generated@@120 $generated@@121)) $generated@@120)
 :pattern ( ($generated@@51 $generated@@120 $generated@@121))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (! (= ($generated@@122 ($generated@@51 $generated@@123 $generated@@124)) $generated@@124)
 :pattern ( ($generated@@51 $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@23 ($generated@@51 $generated@@125 $generated@@126)) $generated@@2)
 :pattern ( ($generated@@51 $generated@@125 $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ) (! (= ($generated@@81 ($generated@@40 $generated@@127 $generated@@128)) $generated@@4)
 :pattern ( ($generated@@40 $generated@@127 $generated@@128))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@129 ($generated@@36 $generated@@130 $generated@@131)) $generated@@130)
 :pattern ( ($generated@@36 $generated@@130 $generated@@131))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ) (! (= ($generated@@132 ($generated@@36 $generated@@133 $generated@@134)) $generated@@134)
 :pattern ( ($generated@@36 $generated@@133 $generated@@134))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (! (= ($generated@@135 ($generated@@40 $generated@@136 $generated@@137)) $generated@@136)
 :pattern ( ($generated@@40 $generated@@136 $generated@@137))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@138 ($generated@@40 $generated@@139 $generated@@140)) $generated@@140)
 :pattern ( ($generated@@40 $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@142 T@U) ) (! (= ($generated@@141 ($generated@@94 $generated@@142)) $generated@@142)
 :pattern ( ($generated@@94 $generated@@142))
)))
(assert (forall (($generated@@143 T@U) ) (! (= ($generated@@23 ($generated@@94 $generated@@143)) $generated@@1)
 :pattern ( ($generated@@94 $generated@@143))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@T) ) (! (= ($generated@@83 $generated@@145 ($generated@@84 $generated@@145 $generated@@144)) $generated@@144)
 :pattern ( ($generated@@84 $generated@@145 $generated@@144))
)))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ) (! (= ($generated@@73 $generated@@55 $generated@@146 ($generated@@51 $generated@@147 $generated@@148) $generated@@149) (forall (($generated@@150 T@U) ) (!  (=> ($generated@@52 ($generated@@24 $generated@@146) $generated@@150) (and ($generated@@75 ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@146) $generated@@150) $generated@@148 $generated@@149) ($generated@@75 $generated@@150 $generated@@147 $generated@@149)))
 :pattern ( ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@146) $generated@@150))
 :pattern ( ($generated@@52 ($generated@@24 $generated@@146) $generated@@150))
)))
 :pattern ( ($generated@@73 $generated@@55 $generated@@146 ($generated@@51 $generated@@147 $generated@@148) $generated@@149))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ) (! (< ($generated@@151 $generated@@153) ($generated@@152 ($generated@@40 $generated@@153 $generated@@154)))
 :pattern ( ($generated@@40 $generated@@153 $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ) (! (< ($generated@@151 $generated@@156) ($generated@@152 ($generated@@40 $generated@@155 $generated@@156)))
 :pattern ( ($generated@@40 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ) (!  (not ($generated@@52 ($generated@@24 $generated@@157) $generated@@158))
 :pattern ( ($generated@@52 ($generated@@24 $generated@@157) $generated@@158))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (!  (=> ($generated@@41 $generated@@159 ($generated@@51 $generated@@160 $generated@@161)) (and (= ($generated@@84 $generated@@55 ($generated@@83 $generated@@55 $generated@@159)) $generated@@159) ($generated@@34 $generated@@55 ($generated@@83 $generated@@55 $generated@@159) ($generated@@51 $generated@@160 $generated@@161))))
 :pattern ( ($generated@@41 $generated@@159 ($generated@@51 $generated@@160 $generated@@161)))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ) (!  (=> ($generated@@41 $generated@@164 ($generated@@36 $generated@@162 $generated@@163)) (and (= ($generated@@84 $generated@@35 ($generated@@83 $generated@@35 $generated@@164)) $generated@@164) ($generated@@34 $generated@@35 ($generated@@83 $generated@@35 $generated@@164) ($generated@@36 $generated@@162 $generated@@163))))
 :pattern ( ($generated@@41 $generated@@164 ($generated@@36 $generated@@162 $generated@@163)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@173 T@T) ($generated@@174 T@T) ($generated@@175 T@T) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ) (! (= ($generated@@165 $generated@@173 $generated@@174 $generated@@175 ($generated@@170 $generated@@173 $generated@@174 $generated@@175 $generated@@177 $generated@@178 $generated@@179 $generated@@176) $generated@@178 $generated@@179) $generated@@176)
 :weight 0
)) (and (forall (($generated@@180 T@T) ($generated@@181 T@T) ($generated@@182 T@T) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ) (!  (or (= $generated@@185 $generated@@187) (= ($generated@@165 $generated@@180 $generated@@181 $generated@@182 ($generated@@170 $generated@@180 $generated@@181 $generated@@182 $generated@@184 $generated@@185 $generated@@186 $generated@@183) $generated@@187 $generated@@188) ($generated@@165 $generated@@180 $generated@@181 $generated@@182 $generated@@184 $generated@@187 $generated@@188)))
 :weight 0
)) (forall (($generated@@189 T@T) ($generated@@190 T@T) ($generated@@191 T@T) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ) (!  (or (= $generated@@195 $generated@@197) (= ($generated@@165 $generated@@189 $generated@@190 $generated@@191 ($generated@@170 $generated@@189 $generated@@190 $generated@@191 $generated@@193 $generated@@194 $generated@@195 $generated@@192) $generated@@196 $generated@@197) ($generated@@165 $generated@@189 $generated@@190 $generated@@191 $generated@@193 $generated@@196 $generated@@197)))
 :weight 0
)))) (= ($generated@@7 $generated@@166) 7)) (= ($generated@@7 $generated@@167) 8)) (forall (($generated@@198 T@T) ($generated@@199 T@T) ) (= ($generated@@7 ($generated@@169 $generated@@198 $generated@@199)) 9))) (forall (($generated@@200 T@T) ($generated@@201 T@T) ) (! (= ($generated@@171 ($generated@@169 $generated@@200 $generated@@201)) $generated@@200)
 :pattern ( ($generated@@169 $generated@@200 $generated@@201))
))) (forall (($generated@@202 T@T) ($generated@@203 T@T) ) (! (= ($generated@@172 ($generated@@169 $generated@@202 $generated@@203)) $generated@@203)
 :pattern ( ($generated@@169 $generated@@202 $generated@@203))
))))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 Bool) ($generated@@208 T@U) ($generated@@209 T@U) ) (! (= ($generated@@12 ($generated@@165 $generated@@166 $generated@@167 $generated@@8 ($generated@@168 $generated@@204 $generated@@205 $generated@@206 $generated@@207) $generated@@208 $generated@@209))  (=> (and (or (not (= $generated@@208 $generated@@204)) (not true)) ($generated@@12 ($generated@@83 $generated@@8 ($generated@@53 $generated@@167 $generated@@54 ($generated@@53 $generated@@166 ($generated@@169 $generated@@167 $generated@@54) $generated@@205 $generated@@208) $generated@@206)))) $generated@@207))
 :pattern ( ($generated@@165 $generated@@166 $generated@@167 $generated@@8 ($generated@@168 $generated@@204 $generated@@205 $generated@@206 $generated@@207) $generated@@208 $generated@@209))
)))
(assert (forall (($generated@@211 T@U) ($generated@@212 T@U) ) (!  (and (= ($generated@@23 ($generated@@36 $generated@@211 $generated@@212)) $generated@@5) (= ($generated@@210 ($generated@@36 $generated@@211 $generated@@212)) $generated@@6))
 :pattern ( ($generated@@36 $generated@@211 $generated@@212))
)))
(assert (forall (($generated@@213 Int) ($generated@@214 Int) ) (! (= ($generated@@99 $generated@@213 $generated@@214) (* $generated@@213 $generated@@214))
 :pattern ( ($generated@@99 $generated@@213 $generated@@214))
)))
(assert (forall (($generated@@215 T@U) ) (!  (or (= $generated@@215 $generated@@157) (exists (($generated@@216 T@U) ) ($generated@@52 ($generated@@24 $generated@@215) $generated@@216)))
 :pattern ( ($generated@@24 $generated@@215))
)))
(assert (forall (($generated@@218 T@U) ) (!  (or (= $generated@@218 $generated@@157) (exists (($generated@@219 T@U) ) ($generated@@52 ($generated@@217 $generated@@218) $generated@@219)))
 :pattern ( ($generated@@217 $generated@@218))
)))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@U) ) (! (= ($generated@@52 ($generated@@220 $generated@@221) $generated@@222)  (and ($generated@@52 ($generated@@24 $generated@@221) ($generated@@135 ($generated@@83 $generated@@35 $generated@@222))) (= ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@221) ($generated@@135 ($generated@@83 $generated@@35 $generated@@222))) ($generated@@138 ($generated@@83 $generated@@35 $generated@@222)))))
 :pattern ( ($generated@@52 ($generated@@220 $generated@@221) $generated@@222))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 T@U) ) (! (= ($generated@@52 ($generated@@217 $generated@@223) $generated@@224) (exists (($generated@@225 T@U) ) (!  (and ($generated@@52 ($generated@@24 $generated@@223) $generated@@225) (= $generated@@224 ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@223) $generated@@225)))
 :pattern ( ($generated@@52 ($generated@@24 $generated@@223) $generated@@225))
 :pattern ( ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@223) $generated@@225))
)))
 :pattern ( ($generated@@52 ($generated@@217 $generated@@223) $generated@@224))
)))
(assert (forall (($generated@@226 T@U) ) (! (= ($generated@@151 ($generated@@84 $generated@@35 $generated@@226)) ($generated@@152 $generated@@226))
 :pattern ( ($generated@@151 ($generated@@84 $generated@@35 $generated@@226)))
)))
(assert (forall (($generated@@227 T@U) ($generated@@228 T@U) ) (!  (=> ($generated@@41 $generated@@227 ($generated@@94 $generated@@228)) (and (= ($generated@@84 $generated@@93 ($generated@@83 $generated@@93 $generated@@227)) $generated@@227) ($generated@@34 $generated@@93 ($generated@@83 $generated@@93 $generated@@227) ($generated@@94 $generated@@228))))
 :pattern ( ($generated@@41 $generated@@227 ($generated@@94 $generated@@228)))
)))
(assert (forall (($generated@@229 T@U) ($generated@@230 T@U) ($generated@@231 T@U) ) (! (= ($generated@@34 $generated@@55 $generated@@229 ($generated@@51 $generated@@230 $generated@@231)) (forall (($generated@@232 T@U) ) (!  (=> ($generated@@52 ($generated@@24 $generated@@229) $generated@@232) (and ($generated@@41 ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@229) $generated@@232) $generated@@231) ($generated@@41 $generated@@232 $generated@@230)))
 :pattern ( ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@229) $generated@@232))
 :pattern ( ($generated@@52 ($generated@@24 $generated@@229) $generated@@232))
)))
 :pattern ( ($generated@@34 $generated@@55 $generated@@229 ($generated@@51 $generated@@230 $generated@@231)))
)))
(assert (forall (($generated@@233 T@U) ($generated@@234 T@U) ($generated@@235 T@U) ) (!  (=> (and ($generated@@74 $generated@@235) (and ($generated@@33 $generated@@233) (exists (($generated@@236 T@U) ) (! ($generated@@73 $generated@@35 $generated@@233 ($generated@@36 $generated@@234 $generated@@236) $generated@@235)
 :pattern ( ($generated@@73 $generated@@35 $generated@@233 ($generated@@36 $generated@@234 $generated@@236) $generated@@235))
)))) ($generated@@75 ($generated@@135 $generated@@233) $generated@@234 $generated@@235))
 :pattern ( ($generated@@75 ($generated@@135 $generated@@233) $generated@@234 $generated@@235))
)))
(assert (forall (($generated@@237 T@U) ($generated@@238 T@U) ($generated@@239 T@U) ) (!  (=> (and ($generated@@74 $generated@@239) (and ($generated@@33 $generated@@237) (exists (($generated@@240 T@U) ) (! ($generated@@73 $generated@@35 $generated@@237 ($generated@@36 $generated@@240 $generated@@238) $generated@@239)
 :pattern ( ($generated@@73 $generated@@35 $generated@@237 ($generated@@36 $generated@@240 $generated@@238) $generated@@239))
)))) ($generated@@75 ($generated@@138 $generated@@237) $generated@@238 $generated@@239))
 :pattern ( ($generated@@75 ($generated@@138 $generated@@237) $generated@@238 $generated@@239))
)))
(assert (forall (($generated@@241 T@U) ($generated@@242 T@U) ) (! (= ($generated@@40 ($generated@@48 $generated@@54 $generated@@241) ($generated@@48 $generated@@54 $generated@@242)) ($generated@@48 $generated@@35 ($generated@@40 $generated@@241 $generated@@242)))
 :pattern ( ($generated@@40 ($generated@@48 $generated@@54 $generated@@241) ($generated@@48 $generated@@54 $generated@@242)))
)))
(assert (forall (($generated@@243 Int) ) (! (= ($generated@@84 $generated@@9 ($generated@@13 ($generated@@46 $generated@@243))) ($generated@@48 $generated@@54 ($generated@@84 $generated@@9 ($generated@@13 $generated@@243))))
 :pattern ( ($generated@@84 $generated@@9 ($generated@@13 ($generated@@46 $generated@@243))))
)))
(assert (forall (($generated@@244 T@U) ($generated@@245 T@T) ) (! (= ($generated@@84 $generated@@245 ($generated@@48 $generated@@245 $generated@@244)) ($generated@@48 $generated@@54 ($generated@@84 $generated@@245 $generated@@244)))
 :pattern ( ($generated@@84 $generated@@245 ($generated@@48 $generated@@245 $generated@@244)))
)))
(assert (forall (($generated@@246 T@U) ($generated@@247 T@U) ) (! ($generated@@73 $generated@@9 $generated@@247 $generated $generated@@246)
 :pattern ( ($generated@@73 $generated@@9 $generated@@247 $generated $generated@@246))
)))
(assert (forall (($generated@@248 T@U) ) (!  (or (= $generated@@248 $generated@@157) (exists (($generated@@249 T@U) ($generated@@250 T@U) ) ($generated@@52 ($generated@@220 $generated@@248) ($generated@@84 $generated@@35 ($generated@@40 $generated@@249 $generated@@250)))))
 :pattern ( ($generated@@220 $generated@@248))
)))
(assert (forall (($generated@@251 T@U) ($generated@@252 T@U) ($generated@@253 T@U) ) (!  (=> ($generated@@34 $generated@@55 $generated@@251 ($generated@@51 $generated@@252 $generated@@253)) (and (and ($generated@@34 $generated@@93 ($generated@@24 $generated@@251) ($generated@@94 $generated@@252)) ($generated@@34 $generated@@93 ($generated@@217 $generated@@251) ($generated@@94 $generated@@253))) ($generated@@34 $generated@@93 ($generated@@220 $generated@@251) ($generated@@94 ($generated@@36 $generated@@252 $generated@@253)))))
 :pattern ( ($generated@@34 $generated@@55 $generated@@251 ($generated@@51 $generated@@252 $generated@@253)))
)))
(assert (forall (($generated@@254 T@U) ) (! ($generated@@34 $generated@@9 $generated@@254 $generated)
 :pattern ( ($generated@@34 $generated@@9 $generated@@254 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@255 () T@U)
(declare-fun $generated@@256 () Int)
(declare-fun $generated@@257 () T@U)
(declare-fun $generated@@258 () T@U)
(declare-fun $generated@@259 () T@U)
(declare-fun $generated@@260 (T@U) Bool)
(declare-fun $generated@@261 () T@U)
(declare-fun $generated@@262 () Int)
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
 (=> (= (ControlFlow 0 0) 19) (let (($generated@@263  (and (=> (= (ControlFlow 0 3) (- 0 4)) (= ($generated@@14 ($generated@@83 $generated@@9 ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@255) ($generated@@84 $generated@@9 ($generated@@13 ($generated@@46 0)))))) ($generated@@46 0))) (=> (= (ControlFlow 0 3) (- 0 2)) (= ($generated@@14 ($generated@@83 $generated@@9 ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@255) ($generated@@84 $generated@@9 ($generated@@13 ($generated@@46 2)))))) ($generated@@46 4))))))
(let (($generated@@264  (=> (and (or (not (= ($generated@@14 ($generated@@83 $generated@@9 ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@255) ($generated@@84 $generated@@9 ($generated@@13 ($generated@@46 0)))))) ($generated@@46 0))) (not true)) (= (ControlFlow 0 7) 3)) $generated@@263)))
(let (($generated@@265  (=> (= ($generated@@14 ($generated@@83 $generated@@9 ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@255) ($generated@@84 $generated@@9 ($generated@@13 ($generated@@46 0)))))) ($generated@@46 0)) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($generated@@52 ($generated@@24 $generated@@255) ($generated@@84 $generated@@9 ($generated@@13 ($generated@@46 2))))) (=> (= (ControlFlow 0 5) 3) $generated@@263)))))
(let (($generated@@266  (=> (= $generated@@255 ($generated@@25 ($generated@@87 ($generated@@106 $generated ($generated@@46 0) 10)) ($generated@@98 ($generated@@46 2)) ($generated@@51 $generated $generated))) (and (=> (= (ControlFlow 0 8) (- 0 12)) ($generated@@52 ($generated@@24 $generated@@255) ($generated@@84 $generated@@9 ($generated@@13 0)))) (=> ($generated@@52 ($generated@@24 $generated@@255) ($generated@@84 $generated@@9 ($generated@@13 0))) (and (=> (= (ControlFlow 0 8) (- 0 11)) ($generated@@52 ($generated@@24 $generated@@255) ($generated@@84 $generated@@9 ($generated@@13 1)))) (=> ($generated@@52 ($generated@@24 $generated@@255) ($generated@@84 $generated@@9 ($generated@@13 1))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (not ($generated@@52 ($generated@@24 $generated@@255) ($generated@@84 $generated@@9 ($generated@@13 10))))) (=> (not ($generated@@52 ($generated@@24 $generated@@255) ($generated@@84 $generated@@9 ($generated@@13 10)))) (and (=> (= (ControlFlow 0 8) (- 0 9)) ($generated@@52 ($generated@@24 $generated@@255) ($generated@@84 $generated@@9 ($generated@@13 ($generated@@46 0))))) (and (=> (= (ControlFlow 0 8) 5) $generated@@265) (=> (= (ControlFlow 0 8) 7) $generated@@264))))))))))))
(let (($generated@@267  (=> (and (not (and (<= ($generated@@46 0) $generated@@256) (< $generated@@256 10))) (= (ControlFlow 0 14) 8)) $generated@@266)))
(let (($generated@@268  (=> (and (and (<= ($generated@@46 0) $generated@@256) (< $generated@@256 10)) (= (ControlFlow 0 13) 8)) $generated@@266)))
(let (($generated@@269  (=> (< $generated@@256 ($generated@@46 0)) (and (=> (= (ControlFlow 0 16) 13) $generated@@268) (=> (= (ControlFlow 0 16) 14) $generated@@267)))))
(let (($generated@@270  (=> (<= ($generated@@46 0) $generated@@256) (and (=> (= (ControlFlow 0 15) 13) $generated@@268) (=> (= (ControlFlow 0 15) 14) $generated@@267)))))
(let (($generated@@271  (and (=> (= (ControlFlow 0 17) 15) $generated@@270) (=> (= (ControlFlow 0 17) 16) $generated@@269))))
(let (($generated@@272 true))
(let (($generated@@273  (=> (= $generated@@257 ($generated@@168 $generated@@258 $generated@@259 $generated@@3 false)) (and (=> (= (ControlFlow 0 18) 17) $generated@@271) (=> (= (ControlFlow 0 18) 1) $generated@@272)))))
(let (($generated@@274  (=> (and ($generated@@74 $generated@@259) ($generated@@260 $generated@@259)) (=> (and (and (and ($generated@@34 $generated@@55 $generated@@261 ($generated@@51 $generated $generated)) ($generated@@73 $generated@@55 $generated@@261 ($generated@@51 $generated $generated) $generated@@259)) true) (and (= 0 $generated@@262) (= (ControlFlow 0 19) 18))) $generated@@273))))
$generated@@274)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)