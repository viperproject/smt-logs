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
(declare-fun $generated@@102 (T@U Int Int) T@U)
(declare-fun $generated@@107 (T@U Int Int) T@U)
(declare-fun $generated@@108 (Int) Int)
(declare-fun $generated@@122 (T@U) T@U)
(declare-fun $generated@@125 (T@U) T@U)
(declare-fun $generated@@132 (T@U) T@U)
(declare-fun $generated@@135 (T@U) T@U)
(declare-fun $generated@@138 (T@U) T@U)
(declare-fun $generated@@141 (T@U) T@U)
(declare-fun $generated@@144 (T@U) T@U)
(declare-fun $generated@@154 (T@U) Int)
(declare-fun $generated@@155 (T@U) Int)
(declare-fun $generated@@160 () T@U)
(declare-fun $generated@@168 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@169 () T@T)
(declare-fun $generated@@170 () T@T)
(declare-fun $generated@@171 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@172 (T@T T@T) T@T)
(declare-fun $generated@@173 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@174 (T@T) T@T)
(declare-fun $generated@@175 (T@T) T@T)
(declare-fun $generated@@213 (T@U) T@U)
(declare-fun $generated@@218 (T@U) T@U)
(declare-fun $generated@@221 (T@U) T@U)
(declare-fun $generated@@242 () T@U)
(declare-fun $generated@@243 (Int) Int)
(declare-fun $generated@@245 () T@U)
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
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@T) ) (! (= ($generated@@75 ($generated@@84 $generated@@101 $generated@@98) $generated@@99 $generated@@100) ($generated@@73 $generated@@101 $generated@@98 $generated@@99 $generated@@100))
 :pattern ( ($generated@@75 ($generated@@84 $generated@@101 $generated@@98) $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 Int) ($generated@@105 Int) ($generated@@106 T@U) ) (! (= ($generated@@12 ($generated@@53 $generated@@54 $generated@@8 ($generated@@102 $generated@@103 $generated@@104 $generated@@105) $generated@@106))  (and ($generated@@41 $generated@@106 $generated@@103) (and (<= $generated@@104 ($generated@@14 ($generated@@83 $generated@@9 $generated@@106))) (< ($generated@@14 ($generated@@83 $generated@@9 $generated@@106)) $generated@@105))))
 :pattern ( ($generated@@53 $generated@@54 $generated@@8 ($generated@@102 $generated@@103 $generated@@104 $generated@@105) $generated@@106))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 Int) ($generated@@111 Int) ($generated@@112 T@U) ) (! (= ($generated@@12 ($generated@@53 $generated@@54 $generated@@8 ($generated@@107 $generated@@109 $generated@@110 $generated@@111) $generated@@112))  (and ($generated@@41 $generated@@112 $generated@@109) (exists (($generated@@113 Int) )  (and (and (<= $generated@@110 $generated@@113) (< $generated@@113 $generated@@111)) (= ($generated@@14 ($generated@@83 $generated@@9 $generated@@112)) ($generated@@108 $generated@@113))))))
 :pattern ( ($generated@@53 $generated@@54 $generated@@8 ($generated@@107 $generated@@109 $generated@@110 $generated@@111) $generated@@112))
)))
(assert (forall (($generated@@114 T@U) ) (!  (=> ($generated@@41 $generated@@114 $generated) (and (= ($generated@@84 $generated@@9 ($generated@@83 $generated@@9 $generated@@114)) $generated@@114) ($generated@@34 $generated@@9 ($generated@@83 $generated@@9 $generated@@114) $generated)))
 :pattern ( ($generated@@41 $generated@@114 $generated))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@T) ) (! (= ($generated@@41 ($generated@@84 $generated@@117 $generated@@115) $generated@@116) ($generated@@34 $generated@@117 $generated@@115 $generated@@116))
 :pattern ( ($generated@@41 ($generated@@84 $generated@@117 $generated@@115) $generated@@116))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@73 $generated@@93 $generated@@118 ($generated@@94 $generated@@119) $generated@@120) (forall (($generated@@121 T@U) ) (!  (=> ($generated@@52 $generated@@118 $generated@@121) ($generated@@75 $generated@@121 $generated@@119 $generated@@120))
 :pattern ( ($generated@@52 $generated@@118 $generated@@121))
)))
 :pattern ( ($generated@@73 $generated@@93 $generated@@118 ($generated@@94 $generated@@119) $generated@@120))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (! (= ($generated@@122 ($generated@@51 $generated@@123 $generated@@124)) $generated@@123)
 :pattern ( ($generated@@51 $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (! (= ($generated@@125 ($generated@@51 $generated@@126 $generated@@127)) $generated@@127)
 :pattern ( ($generated@@51 $generated@@126 $generated@@127))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (! (= ($generated@@23 ($generated@@51 $generated@@128 $generated@@129)) $generated@@2)
 :pattern ( ($generated@@51 $generated@@128 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@81 ($generated@@40 $generated@@130 $generated@@131)) $generated@@4)
 :pattern ( ($generated@@40 $generated@@130 $generated@@131))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ) (! (= ($generated@@132 ($generated@@36 $generated@@133 $generated@@134)) $generated@@133)
 :pattern ( ($generated@@36 $generated@@133 $generated@@134))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (! (= ($generated@@135 ($generated@@36 $generated@@136 $generated@@137)) $generated@@137)
 :pattern ( ($generated@@36 $generated@@136 $generated@@137))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@138 ($generated@@40 $generated@@139 $generated@@140)) $generated@@139)
 :pattern ( ($generated@@40 $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (! (= ($generated@@141 ($generated@@40 $generated@@142 $generated@@143)) $generated@@143)
 :pattern ( ($generated@@40 $generated@@142 $generated@@143))
)))
(assert (forall (($generated@@145 T@U) ) (! (= ($generated@@144 ($generated@@94 $generated@@145)) $generated@@145)
 :pattern ( ($generated@@94 $generated@@145))
)))
(assert (forall (($generated@@146 T@U) ) (! (= ($generated@@23 ($generated@@94 $generated@@146)) $generated@@1)
 :pattern ( ($generated@@94 $generated@@146))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@T) ) (! (= ($generated@@83 $generated@@148 ($generated@@84 $generated@@148 $generated@@147)) $generated@@147)
 :pattern ( ($generated@@84 $generated@@148 $generated@@147))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ) (! (= ($generated@@73 $generated@@55 $generated@@149 ($generated@@51 $generated@@150 $generated@@151) $generated@@152) (forall (($generated@@153 T@U) ) (!  (=> ($generated@@52 ($generated@@24 $generated@@149) $generated@@153) (and ($generated@@75 ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@149) $generated@@153) $generated@@151 $generated@@152) ($generated@@75 $generated@@153 $generated@@150 $generated@@152)))
 :pattern ( ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@149) $generated@@153))
 :pattern ( ($generated@@52 ($generated@@24 $generated@@149) $generated@@153))
)))
 :pattern ( ($generated@@73 $generated@@55 $generated@@149 ($generated@@51 $generated@@150 $generated@@151) $generated@@152))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ) (! (< ($generated@@154 $generated@@156) ($generated@@155 ($generated@@40 $generated@@156 $generated@@157)))
 :pattern ( ($generated@@40 $generated@@156 $generated@@157))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ) (! (< ($generated@@154 $generated@@159) ($generated@@155 ($generated@@40 $generated@@158 $generated@@159)))
 :pattern ( ($generated@@40 $generated@@158 $generated@@159))
)))
(assert (forall (($generated@@161 T@U) ) (!  (not ($generated@@52 ($generated@@24 $generated@@160) $generated@@161))
 :pattern ( ($generated@@52 ($generated@@24 $generated@@160) $generated@@161))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ) (!  (=> ($generated@@41 $generated@@162 ($generated@@51 $generated@@163 $generated@@164)) (and (= ($generated@@84 $generated@@55 ($generated@@83 $generated@@55 $generated@@162)) $generated@@162) ($generated@@34 $generated@@55 ($generated@@83 $generated@@55 $generated@@162) ($generated@@51 $generated@@163 $generated@@164))))
 :pattern ( ($generated@@41 $generated@@162 ($generated@@51 $generated@@163 $generated@@164)))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (!  (=> ($generated@@41 $generated@@167 ($generated@@36 $generated@@165 $generated@@166)) (and (= ($generated@@84 $generated@@35 ($generated@@83 $generated@@35 $generated@@167)) $generated@@167) ($generated@@34 $generated@@35 ($generated@@83 $generated@@35 $generated@@167) ($generated@@36 $generated@@165 $generated@@166))))
 :pattern ( ($generated@@41 $generated@@167 ($generated@@36 $generated@@165 $generated@@166)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@176 T@T) ($generated@@177 T@T) ($generated@@178 T@T) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ) (! (= ($generated@@168 $generated@@176 $generated@@177 $generated@@178 ($generated@@173 $generated@@176 $generated@@177 $generated@@178 $generated@@180 $generated@@181 $generated@@182 $generated@@179) $generated@@181 $generated@@182) $generated@@179)
 :weight 0
)) (and (forall (($generated@@183 T@T) ($generated@@184 T@T) ($generated@@185 T@T) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ) (!  (or (= $generated@@188 $generated@@190) (= ($generated@@168 $generated@@183 $generated@@184 $generated@@185 ($generated@@173 $generated@@183 $generated@@184 $generated@@185 $generated@@187 $generated@@188 $generated@@189 $generated@@186) $generated@@190 $generated@@191) ($generated@@168 $generated@@183 $generated@@184 $generated@@185 $generated@@187 $generated@@190 $generated@@191)))
 :weight 0
)) (forall (($generated@@192 T@T) ($generated@@193 T@T) ($generated@@194 T@T) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ) (!  (or (= $generated@@198 $generated@@200) (= ($generated@@168 $generated@@192 $generated@@193 $generated@@194 ($generated@@173 $generated@@192 $generated@@193 $generated@@194 $generated@@196 $generated@@197 $generated@@198 $generated@@195) $generated@@199 $generated@@200) ($generated@@168 $generated@@192 $generated@@193 $generated@@194 $generated@@196 $generated@@199 $generated@@200)))
 :weight 0
)))) (= ($generated@@7 $generated@@169) 7)) (= ($generated@@7 $generated@@170) 8)) (forall (($generated@@201 T@T) ($generated@@202 T@T) ) (= ($generated@@7 ($generated@@172 $generated@@201 $generated@@202)) 9))) (forall (($generated@@203 T@T) ($generated@@204 T@T) ) (! (= ($generated@@174 ($generated@@172 $generated@@203 $generated@@204)) $generated@@203)
 :pattern ( ($generated@@172 $generated@@203 $generated@@204))
))) (forall (($generated@@205 T@T) ($generated@@206 T@T) ) (! (= ($generated@@175 ($generated@@172 $generated@@205 $generated@@206)) $generated@@206)
 :pattern ( ($generated@@172 $generated@@205 $generated@@206))
))))
(assert (forall (($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 Bool) ($generated@@211 T@U) ($generated@@212 T@U) ) (! (= ($generated@@12 ($generated@@168 $generated@@169 $generated@@170 $generated@@8 ($generated@@171 $generated@@207 $generated@@208 $generated@@209 $generated@@210) $generated@@211 $generated@@212))  (=> (and (or (not (= $generated@@211 $generated@@207)) (not true)) ($generated@@12 ($generated@@83 $generated@@8 ($generated@@53 $generated@@170 $generated@@54 ($generated@@53 $generated@@169 ($generated@@172 $generated@@170 $generated@@54) $generated@@208 $generated@@211) $generated@@209)))) $generated@@210))
 :pattern ( ($generated@@168 $generated@@169 $generated@@170 $generated@@8 ($generated@@171 $generated@@207 $generated@@208 $generated@@209 $generated@@210) $generated@@211 $generated@@212))
)))
(assert (forall (($generated@@214 T@U) ($generated@@215 T@U) ) (!  (and (= ($generated@@23 ($generated@@36 $generated@@214 $generated@@215)) $generated@@5) (= ($generated@@213 ($generated@@36 $generated@@214 $generated@@215)) $generated@@6))
 :pattern ( ($generated@@36 $generated@@214 $generated@@215))
)))
(assert (forall (($generated@@216 T@U) ) (!  (or (= $generated@@216 $generated@@160) (exists (($generated@@217 T@U) ) ($generated@@52 ($generated@@24 $generated@@216) $generated@@217)))
 :pattern ( ($generated@@24 $generated@@216))
)))
(assert (forall (($generated@@219 T@U) ) (!  (or (= $generated@@219 $generated@@160) (exists (($generated@@220 T@U) ) ($generated@@52 ($generated@@218 $generated@@219) $generated@@220)))
 :pattern ( ($generated@@218 $generated@@219))
)))
(assert (forall (($generated@@222 T@U) ($generated@@223 T@U) ) (! (= ($generated@@52 ($generated@@221 $generated@@222) $generated@@223)  (and ($generated@@52 ($generated@@24 $generated@@222) ($generated@@138 ($generated@@83 $generated@@35 $generated@@223))) (= ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@222) ($generated@@138 ($generated@@83 $generated@@35 $generated@@223))) ($generated@@141 ($generated@@83 $generated@@35 $generated@@223)))))
 :pattern ( ($generated@@52 ($generated@@221 $generated@@222) $generated@@223))
)))
(assert (forall (($generated@@224 T@U) ($generated@@225 T@U) ) (! (= ($generated@@52 ($generated@@218 $generated@@224) $generated@@225) (exists (($generated@@226 T@U) ) (!  (and ($generated@@52 ($generated@@24 $generated@@224) $generated@@226) (= $generated@@225 ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@224) $generated@@226)))
 :pattern ( ($generated@@52 ($generated@@24 $generated@@224) $generated@@226))
 :pattern ( ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@224) $generated@@226))
)))
 :pattern ( ($generated@@52 ($generated@@218 $generated@@224) $generated@@225))
)))
(assert (forall (($generated@@227 T@U) ) (! (= ($generated@@154 ($generated@@84 $generated@@35 $generated@@227)) ($generated@@155 $generated@@227))
 :pattern ( ($generated@@154 ($generated@@84 $generated@@35 $generated@@227)))
)))
(assert (forall (($generated@@228 T@U) ($generated@@229 T@U) ) (!  (=> ($generated@@41 $generated@@228 ($generated@@94 $generated@@229)) (and (= ($generated@@84 $generated@@93 ($generated@@83 $generated@@93 $generated@@228)) $generated@@228) ($generated@@34 $generated@@93 ($generated@@83 $generated@@93 $generated@@228) ($generated@@94 $generated@@229))))
 :pattern ( ($generated@@41 $generated@@228 ($generated@@94 $generated@@229)))
)))
(assert (forall (($generated@@230 T@U) ($generated@@231 T@U) ($generated@@232 T@U) ) (! (= ($generated@@34 $generated@@55 $generated@@230 ($generated@@51 $generated@@231 $generated@@232)) (forall (($generated@@233 T@U) ) (!  (=> ($generated@@52 ($generated@@24 $generated@@230) $generated@@233) (and ($generated@@41 ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@230) $generated@@233) $generated@@232) ($generated@@41 $generated@@233 $generated@@231)))
 :pattern ( ($generated@@53 $generated@@54 $generated@@54 ($generated@@29 $generated@@230) $generated@@233))
 :pattern ( ($generated@@52 ($generated@@24 $generated@@230) $generated@@233))
)))
 :pattern ( ($generated@@34 $generated@@55 $generated@@230 ($generated@@51 $generated@@231 $generated@@232)))
)))
(assert (forall (($generated@@234 T@U) ($generated@@235 T@U) ($generated@@236 T@U) ) (!  (=> (and ($generated@@74 $generated@@236) (and ($generated@@33 $generated@@234) (exists (($generated@@237 T@U) ) (! ($generated@@73 $generated@@35 $generated@@234 ($generated@@36 $generated@@235 $generated@@237) $generated@@236)
 :pattern ( ($generated@@73 $generated@@35 $generated@@234 ($generated@@36 $generated@@235 $generated@@237) $generated@@236))
)))) ($generated@@75 ($generated@@138 $generated@@234) $generated@@235 $generated@@236))
 :pattern ( ($generated@@75 ($generated@@138 $generated@@234) $generated@@235 $generated@@236))
)))
(assert (forall (($generated@@238 T@U) ($generated@@239 T@U) ($generated@@240 T@U) ) (!  (=> (and ($generated@@74 $generated@@240) (and ($generated@@33 $generated@@238) (exists (($generated@@241 T@U) ) (! ($generated@@73 $generated@@35 $generated@@238 ($generated@@36 $generated@@241 $generated@@239) $generated@@240)
 :pattern ( ($generated@@73 $generated@@35 $generated@@238 ($generated@@36 $generated@@241 $generated@@239) $generated@@240))
)))) ($generated@@75 ($generated@@141 $generated@@238) $generated@@239 $generated@@240))
 :pattern ( ($generated@@75 ($generated@@141 $generated@@238) $generated@@239 $generated@@240))
)))
(assert (forall (($generated@@244 T@U) ) (! (= ($generated@@53 $generated@@54 $generated@@54 $generated@@242 $generated@@244) ($generated@@84 $generated@@9 ($generated@@13 ($generated@@243 ($generated@@14 ($generated@@83 $generated@@9 $generated@@244))))))
 :pattern ( ($generated@@53 $generated@@54 $generated@@54 $generated@@242 $generated@@244))
)))
(assert (forall (($generated@@246 T@U) ) (! (= ($generated@@53 $generated@@54 $generated@@54 $generated@@245 $generated@@246) ($generated@@84 $generated@@9 ($generated@@13 ($generated@@108 ($generated@@14 ($generated@@83 $generated@@9 $generated@@246))))))
 :pattern ( ($generated@@53 $generated@@54 $generated@@54 $generated@@245 $generated@@246))
)))
(assert (forall (($generated@@247 T@U) ($generated@@248 T@U) ) (! (= ($generated@@40 ($generated@@48 $generated@@54 $generated@@247) ($generated@@48 $generated@@54 $generated@@248)) ($generated@@48 $generated@@35 ($generated@@40 $generated@@247 $generated@@248)))
 :pattern ( ($generated@@40 ($generated@@48 $generated@@54 $generated@@247) ($generated@@48 $generated@@54 $generated@@248)))
)))
(assert (forall (($generated@@249 Int) ) (! (= ($generated@@84 $generated@@9 ($generated@@13 ($generated@@46 $generated@@249))) ($generated@@48 $generated@@54 ($generated@@84 $generated@@9 ($generated@@13 $generated@@249))))
 :pattern ( ($generated@@84 $generated@@9 ($generated@@13 ($generated@@46 $generated@@249))))
)))
(assert (forall (($generated@@250 T@U) ($generated@@251 T@T) ) (! (= ($generated@@84 $generated@@251 ($generated@@48 $generated@@251 $generated@@250)) ($generated@@48 $generated@@54 ($generated@@84 $generated@@251 $generated@@250)))
 :pattern ( ($generated@@84 $generated@@251 ($generated@@48 $generated@@251 $generated@@250)))
)))
(assert (forall (($generated@@252 T@U) ($generated@@253 T@U) ) (! ($generated@@73 $generated@@9 $generated@@253 $generated $generated@@252)
 :pattern ( ($generated@@73 $generated@@9 $generated@@253 $generated $generated@@252))
)))
(assert (forall (($generated@@254 T@U) ) (!  (or (= $generated@@254 $generated@@160) (exists (($generated@@255 T@U) ($generated@@256 T@U) ) ($generated@@52 ($generated@@221 $generated@@254) ($generated@@84 $generated@@35 ($generated@@40 $generated@@255 $generated@@256)))))
 :pattern ( ($generated@@221 $generated@@254))
)))
(assert (forall (($generated@@257 T@U) ($generated@@258 T@U) ($generated@@259 T@U) ) (!  (=> ($generated@@34 $generated@@55 $generated@@257 ($generated@@51 $generated@@258 $generated@@259)) (and (and ($generated@@34 $generated@@93 ($generated@@24 $generated@@257) ($generated@@94 $generated@@258)) ($generated@@34 $generated@@93 ($generated@@218 $generated@@257) ($generated@@94 $generated@@259))) ($generated@@34 $generated@@93 ($generated@@221 $generated@@257) ($generated@@94 ($generated@@36 $generated@@258 $generated@@259)))))
 :pattern ( ($generated@@34 $generated@@55 $generated@@257 ($generated@@51 $generated@@258 $generated@@259)))
)))
(assert (forall (($generated@@260 T@U) ) (! ($generated@@34 $generated@@9 $generated@@260 $generated)
 :pattern ( ($generated@@34 $generated@@9 $generated@@260 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@261 () Int)
(declare-fun $generated@@262 () T@U)
(declare-fun $generated@@263 (Int) Bool)
(declare-fun $generated@@264 () Int)
(declare-fun $generated@@265 () Int)
(declare-fun $generated@@266 () T@U)
(declare-fun $generated@@267 () T@U)
(declare-fun $generated@@268 (T@U) Bool)
(declare-fun $generated@@269 () T@U)
(declare-fun $generated@@270 () T@U)
(declare-fun $generated@@271 () Int)
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
 (=> (= (ControlFlow 0 0) 26) (let (($generated@@272 true))
(let (($generated@@273  (=> (and (not (and (<= ($generated@@46 (- 0 2)) $generated@@261) (< $generated@@261 6))) (= (ControlFlow 0 20) 17)) $generated@@272)))
(let (($generated@@274  (=> (and (and (<= ($generated@@46 (- 0 2)) $generated@@261) (< $generated@@261 6)) ($generated@@73 $generated@@9 ($generated@@13 $generated@@261) $generated $generated@@262)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= ($generated@@46 0) $generated@@261)) (=> (<= ($generated@@46 0) $generated@@261) (=> (and ($generated@@263 $generated@@261) (= (ControlFlow 0 18) 17)) $generated@@272))))))
(let (($generated@@275  (=> (< $generated@@261 ($generated@@46 (- 0 2))) (and (=> (= (ControlFlow 0 22) 18) $generated@@274) (=> (= (ControlFlow 0 22) 20) $generated@@273)))))
(let (($generated@@276  (=> (<= ($generated@@46 (- 0 2)) $generated@@261) (and (=> (= (ControlFlow 0 21) 18) $generated@@274) (=> (= (ControlFlow 0 21) 20) $generated@@273)))))
(let (($generated@@277  (and (=> (= (ControlFlow 0 23) 21) $generated@@276) (=> (= (ControlFlow 0 23) 22) $generated@@275))))
(let (($generated@@278 true))
(let (($generated@@279  (and (=> (= (ControlFlow 0 24) 23) $generated@@277) (=> (= (ControlFlow 0 24) 16) $generated@@278))))
(let (($generated@@280 true))
(let (($generated@@281  (=> (and (not (and (and (<= ($generated@@46 (- 0 2)) $generated@@264) (< $generated@@264 6)) (and (<= ($generated@@46 (- 0 2)) $generated@@265) (< $generated@@265 6)))) (= (ControlFlow 0 5) 2)) $generated@@280)))
(let (($generated@@282  (=> (and (and (<= ($generated@@46 (- 0 2)) $generated@@264) (< $generated@@264 6)) (and (<= ($generated@@46 (- 0 2)) $generated@@265) (< $generated@@265 6))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (or (not (= ($generated@@108 $generated@@264) ($generated@@108 $generated@@265))) (not true)) (= $generated@@264 $generated@@265))) (=> (or (or (not (= ($generated@@108 $generated@@264) ($generated@@108 $generated@@265))) (not true)) (= $generated@@264 $generated@@265)) (=> (= (ControlFlow 0 3) 2) $generated@@280))))))
(let (($generated@@283  (=> (not (and (<= ($generated@@46 (- 0 2)) $generated@@264) (< $generated@@264 6))) (and (=> (= (ControlFlow 0 7) 3) $generated@@282) (=> (= (ControlFlow 0 7) 5) $generated@@281)))))
(let (($generated@@284  (=> (and (<= ($generated@@46 (- 0 2)) $generated@@264) (< $generated@@264 6)) (and (=> (= (ControlFlow 0 6) 3) $generated@@282) (=> (= (ControlFlow 0 6) 5) $generated@@281)))))
(let (($generated@@285  (=> (not (and (<= ($generated@@46 (- 0 2)) $generated@@264) (< $generated@@264 6))) (and (=> (= (ControlFlow 0 10) 6) $generated@@284) (=> (= (ControlFlow 0 10) 7) $generated@@283)))))
(let (($generated@@286  (=> (and (and (<= ($generated@@46 (- 0 2)) $generated@@264) (< $generated@@264 6)) ($generated@@73 $generated@@9 ($generated@@13 $generated@@264) $generated $generated@@262)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (<= ($generated@@46 0) $generated@@264)) (=> (and (<= ($generated@@46 0) $generated@@264) ($generated@@263 $generated@@264)) (and (=> (= (ControlFlow 0 8) 6) $generated@@284) (=> (= (ControlFlow 0 8) 7) $generated@@283)))))))
(let (($generated@@287  (=> (< $generated@@264 ($generated@@46 (- 0 2))) (and (=> (= (ControlFlow 0 12) 8) $generated@@286) (=> (= (ControlFlow 0 12) 10) $generated@@285)))))
(let (($generated@@288  (=> (<= ($generated@@46 (- 0 2)) $generated@@264) (and (=> (= (ControlFlow 0 11) 8) $generated@@286) (=> (= (ControlFlow 0 11) 10) $generated@@285)))))
(let (($generated@@289  (and (=> (= (ControlFlow 0 13) 11) $generated@@288) (=> (= (ControlFlow 0 13) 12) $generated@@287))))
(let (($generated@@290 true))
(let (($generated@@291  (and (=> (= (ControlFlow 0 14) 13) $generated@@289) (=> (= (ControlFlow 0 14) 1) $generated@@290))))
(let (($generated@@292  (=> (= (ControlFlow 0 15) 14) $generated@@291)))
(let (($generated@@293  (=> (= $generated@@266 ($generated@@171 $generated@@267 $generated@@262 $generated@@3 false)) (and (=> (= (ControlFlow 0 25) 24) $generated@@279) (=> (= (ControlFlow 0 25) 15) $generated@@292)))))
(let (($generated@@294  (=> (and ($generated@@74 $generated@@262) ($generated@@268 $generated@@262)) (=> (and (and ($generated@@34 $generated@@55 $generated@@269 ($generated@@51 $generated $generated)) ($generated@@73 $generated@@55 $generated@@269 ($generated@@51 $generated $generated) $generated@@262)) true) (=> (and (and (and ($generated@@34 $generated@@55 $generated@@270 ($generated@@51 $generated $generated)) ($generated@@73 $generated@@55 $generated@@270 ($generated@@51 $generated $generated) $generated@@262)) true) (and (= 1 $generated@@271) (= (ControlFlow 0 26) 25))) $generated@@293)))))
$generated@@294))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 9))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 4))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 18) (- 19))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)