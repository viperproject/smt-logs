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
(declare-fun $generated@@12 (T@T) Int)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 (Bool) T@U)
(declare-fun $generated@@17 (T@U) Bool)
(declare-fun $generated@@18 (Int) T@U)
(declare-fun $generated@@19 (T@U) Int)
(declare-fun $generated@@20 (Real) T@U)
(declare-fun $generated@@21 (T@U) Real)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@T T@U T@U) Bool)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 (T@U T@U) T@U)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@35 (T@U T@U) T@U)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@37 (T@U T@U) Bool)
(declare-fun $generated@@42 (Int) Int)
(declare-fun $generated@@44 (T@T T@U) T@U)
(declare-fun $generated@@47 () Int)
(declare-fun $generated@@48 (T@U T@U T@U) Int)
(declare-fun $generated@@49 (T@U) T@U)
(declare-fun $generated@@50 () T@T)
(declare-fun $generated@@51 (T@U T@U) Bool)
(declare-fun $generated@@52 (T@U T@U) T@U)
(declare-fun $generated@@53 (T@U) Bool)
(declare-fun $generated@@54 (T@U) T@U)
(declare-fun $generated@@55 (T@U) T@U)
(declare-fun $generated@@56 (T@U) Bool)
(declare-fun $generated@@57 (T@U) Int)
(declare-fun $generated@@58 (T@U) Bool)
(declare-fun $generated@@59 (T@U T@U) Bool)
(declare-fun $generated@@60 (T@U) T@U)
(declare-fun $generated@@61 (T@T T@U) T@U)
(declare-fun $generated@@62 (T@U) Int)
(declare-fun $generated@@63 (T@T T@U) T@U)
(declare-fun $generated@@64 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@65 () T@T)
(declare-fun $generated@@66 (T@U) T@U)
(declare-fun $generated@@67 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@82 (T@U) T@U)
(declare-fun $generated@@91 () T@T)
(declare-fun $generated@@92 (T@U) T@U)
(declare-fun $generated@@96 (Int) T@U)
(declare-fun $generated@@99 (Int) T@U)
(declare-fun $generated@@113 (T@U) T@U)
(declare-fun $generated@@116 (T@U) T@U)
(declare-fun $generated@@123 (T@U) T@U)
(declare-fun $generated@@126 (T@U) T@U)
(declare-fun $generated@@129 (T@U) T@U)
(declare-fun $generated@@132 (T@U) T@U)
(declare-fun $generated@@141 (T@U) T@U)
(declare-fun $generated@@150 (T@U) Int)
(declare-fun $generated@@151 (T@U) Int)
(declare-fun $generated@@160 () T@U)
(declare-fun $generated@@170 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@171 () T@T)
(declare-fun $generated@@172 () T@T)
(declare-fun $generated@@173 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@174 (T@T T@T) T@T)
(declare-fun $generated@@175 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@176 (T@T) T@T)
(declare-fun $generated@@177 (T@T) T@T)
(declare-fun $generated@@218 (T@U) T@U)
(declare-fun $generated@@224 (T@U) T@U)
(declare-fun $generated@@227 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@12 $generated@@13) 0) (= ($generated@@12 $generated@@14) 1)) (= ($generated@@12 $generated@@15) 2)) (forall (($generated@@22 Bool) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 Int) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 Real) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11)
)
(assert (= ($generated@@28 $generated) $generated@@0))
(assert (= ($generated@@12 $generated@@30) 3))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ) (! (= ($generated@@29 $generated@@30 ($generated@@31 $generated@@33 $generated@@34) $generated@@32)  (and ($generated@@29 $generated@@30 $generated@@33 $generated@@32) ($generated@@29 $generated@@30 $generated@@34 $generated@@32)))
 :pattern ( ($generated@@29 $generated@@30 ($generated@@31 $generated@@33 $generated@@34) $generated@@32))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ) (! (= ($generated@@29 $generated@@30 ($generated@@35 $generated@@40 $generated@@41) ($generated@@36 $generated@@38 $generated@@39))  (and ($generated@@37 $generated@@40 $generated@@38) ($generated@@37 $generated@@41 $generated@@39)))
 :pattern ( ($generated@@29 $generated@@30 ($generated@@35 $generated@@40 $generated@@41) ($generated@@36 $generated@@38 $generated@@39)))
)))
(assert (forall (($generated@@43 Int) ) (! (= ($generated@@42 $generated@@43) $generated@@43)
 :pattern ( ($generated@@42 $generated@@43))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@T) ) (! (= ($generated@@44 $generated@@46 $generated@@45) $generated@@45)
 :pattern ( ($generated@@44 $generated@@46 $generated@@45))
)))
(assert  (and (and (and (= ($generated@@12 $generated@@50) 4) (forall (($generated@@68 T@T) ($generated@@69 T@T) ($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@64 $generated@@68 $generated@@69 ($generated@@67 $generated@@68 $generated@@69 $generated@@71 $generated@@72 $generated@@70) $generated@@72) $generated@@70)
 :weight 0
))) (forall (($generated@@73 T@T) ($generated@@74 T@T) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ) (!  (or (= $generated@@77 $generated@@78) (= ($generated@@64 $generated@@73 $generated@@74 ($generated@@67 $generated@@73 $generated@@74 $generated@@76 $generated@@77 $generated@@75) $generated@@78) ($generated@@64 $generated@@73 $generated@@74 $generated@@76 $generated@@78)))
 :weight 0
))) (= ($generated@@12 $generated@@65) 5)))
(assert  (=> (<= 1 $generated@@47) (forall (($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ) (!  (=> (or ($generated@@51 ($generated@@44 $generated@@50 $generated@@80) ($generated@@44 $generated@@30 $generated@@81)) (and (< 1 $generated@@47) (and ($generated@@29 $generated@@50 $generated@@80 ($generated@@52 $generated $generated)) ($generated@@29 $generated@@30 $generated@@81 $generated@@32)))) (and (=> ($generated@@17 ($generated@@44 $generated@@13 ($generated@@16 ($generated@@53 ($generated@@44 $generated@@30 $generated@@81))))) (and ($generated@@51 ($generated@@44 $generated@@50 $generated@@80) ($generated@@44 $generated@@30 ($generated@@54 ($generated@@44 $generated@@30 $generated@@81)))) ($generated@@51 ($generated@@44 $generated@@50 $generated@@80) ($generated@@44 $generated@@30 ($generated@@55 ($generated@@44 $generated@@30 $generated@@81)))))) (= ($generated@@48 ($generated@@49 $generated@@79) ($generated@@44 $generated@@50 $generated@@80) ($generated@@44 $generated@@30 $generated@@81)) (ite ($generated@@53 ($generated@@44 $generated@@30 $generated@@81)) (+ ($generated@@48 ($generated@@49 $generated@@79) ($generated@@44 $generated@@50 $generated@@80) ($generated@@44 $generated@@30 ($generated@@54 ($generated@@44 $generated@@30 $generated@@81)))) ($generated@@48 ($generated@@49 $generated@@79) ($generated@@44 $generated@@50 $generated@@80) ($generated@@44 $generated@@30 ($generated@@55 ($generated@@44 $generated@@30 $generated@@81))))) (ite ($generated@@56 ($generated@@44 $generated@@30 $generated@@81)) ($generated@@57 ($generated@@44 $generated@@30 $generated@@81)) (ite  (and ($generated@@58 ($generated@@44 $generated@@30 $generated@@81)) ($generated@@59 ($generated@@60 $generated@@80) ($generated@@61 $generated@@14 ($generated@@18 ($generated@@62 ($generated@@44 $generated@@30 $generated@@81)))))) ($generated@@19 ($generated@@63 $generated@@14 ($generated@@64 $generated@@65 $generated@@65 ($generated@@66 ($generated@@44 $generated@@50 $generated@@80)) ($generated@@61 $generated@@14 ($generated@@18 ($generated@@42 ($generated@@62 ($generated@@44 $generated@@30 $generated@@81)))))))) 0))))))
 :weight 3
 :pattern ( ($generated@@48 ($generated@@49 $generated@@79) ($generated@@44 $generated@@50 $generated@@80) ($generated@@44 $generated@@30 $generated@@81)))
))))
(assert (forall (($generated@@83 T@U) ) (! (= ($generated@@53 $generated@@83) (= ($generated@@82 $generated@@83) $generated@@7))
 :pattern ( ($generated@@53 $generated@@83))
)))
(assert (forall (($generated@@84 T@U) ) (! (= ($generated@@56 $generated@@84) (= ($generated@@82 $generated@@84) $generated@@8))
 :pattern ( ($generated@@56 $generated@@84))
)))
(assert (forall (($generated@@85 T@U) ) (! (= ($generated@@58 $generated@@85) (= ($generated@@82 $generated@@85) $generated@@9))
 :pattern ( ($generated@@58 $generated@@85))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@61 $generated@@87 ($generated@@63 $generated@@87 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@63 $generated@@87 $generated@@86))
)))
(assert (forall (($generated@@88 T@U) ) (!  (=> ($generated@@53 $generated@@88) (exists (($generated@@89 T@U) ($generated@@90 T@U) ) (= $generated@@88 ($generated@@31 $generated@@89 $generated@@90))))
 :pattern ( ($generated@@53 $generated@@88))
)))
(assert (= ($generated@@12 $generated@@91) 6))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@29 $generated@@91 $generated@@93 ($generated@@92 $generated@@94)) (forall (($generated@@95 T@U) ) (!  (=> ($generated@@59 $generated@@93 $generated@@95) ($generated@@37 $generated@@95 $generated@@94))
 :pattern ( ($generated@@59 $generated@@93 $generated@@95))
)))
 :pattern ( ($generated@@29 $generated@@91 $generated@@93 ($generated@@92 $generated@@94)))
)))
(assert (forall (($generated@@97 T@U) ) (!  (=> ($generated@@56 $generated@@97) (exists (($generated@@98 Int) ) (= $generated@@97 ($generated@@96 $generated@@98))))
 :pattern ( ($generated@@56 $generated@@97))
)))
(assert (forall (($generated@@100 T@U) ) (!  (=> ($generated@@58 $generated@@100) (exists (($generated@@101 Int) ) (= $generated@@100 ($generated@@99 $generated@@101))))
 :pattern ( ($generated@@58 $generated@@100))
)))
(assert (forall (($generated@@102 T@U) ) (!  (=> ($generated@@37 $generated@@102 $generated@@32) (and (= ($generated@@61 $generated@@30 ($generated@@63 $generated@@30 $generated@@102)) $generated@@102) ($generated@@29 $generated@@30 ($generated@@63 $generated@@30 $generated@@102) $generated@@32)))
 :pattern ( ($generated@@37 $generated@@102 $generated@@32))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@48 ($generated@@49 $generated@@103) $generated@@104 $generated@@105) ($generated@@48 $generated@@103 $generated@@104 $generated@@105))
 :pattern ( ($generated@@48 ($generated@@49 $generated@@103) $generated@@104 $generated@@105))
)))
(assert  (=> (<= 1 $generated@@47) (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ) (!  (=> (or ($generated@@51 $generated@@107 $generated@@108) (and (< 1 $generated@@47) (and ($generated@@29 $generated@@50 $generated@@107 ($generated@@52 $generated $generated)) ($generated@@29 $generated@@30 $generated@@108 $generated@@32)))) (and (=> ($generated@@53 $generated@@108) (and ($generated@@51 $generated@@107 ($generated@@54 $generated@@108)) ($generated@@51 $generated@@107 ($generated@@55 $generated@@108)))) (= ($generated@@48 ($generated@@49 $generated@@106) $generated@@107 $generated@@108) (ite ($generated@@53 $generated@@108) (+ ($generated@@48 $generated@@106 $generated@@107 ($generated@@54 $generated@@108)) ($generated@@48 $generated@@106 $generated@@107 ($generated@@55 $generated@@108))) (ite ($generated@@56 $generated@@108) ($generated@@57 $generated@@108) (ite  (and ($generated@@58 $generated@@108) ($generated@@59 ($generated@@60 $generated@@107) ($generated@@61 $generated@@14 ($generated@@18 ($generated@@62 $generated@@108))))) ($generated@@19 ($generated@@63 $generated@@14 ($generated@@64 $generated@@65 $generated@@65 ($generated@@66 $generated@@107) ($generated@@61 $generated@@14 ($generated@@18 ($generated@@62 $generated@@108)))))) 0))))))
 :pattern ( ($generated@@48 ($generated@@49 $generated@@106) $generated@@107 $generated@@108))
))))
(assert (forall (($generated@@109 T@U) ) (!  (=> ($generated@@37 $generated@@109 $generated) (and (= ($generated@@61 $generated@@14 ($generated@@63 $generated@@14 $generated@@109)) $generated@@109) ($generated@@29 $generated@@14 ($generated@@63 $generated@@14 $generated@@109) $generated)))
 :pattern ( ($generated@@37 $generated@@109 $generated))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@T) ) (! (= ($generated@@37 ($generated@@61 $generated@@112 $generated@@110) $generated@@111) ($generated@@29 $generated@@112 $generated@@110 $generated@@111))
 :pattern ( ($generated@@37 ($generated@@61 $generated@@112 $generated@@110) $generated@@111))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@113 ($generated@@52 $generated@@114 $generated@@115)) $generated@@114)
 :pattern ( ($generated@@52 $generated@@114 $generated@@115))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ) (! (= ($generated@@116 ($generated@@52 $generated@@117 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@52 $generated@@117 $generated@@118))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@28 ($generated@@52 $generated@@119 $generated@@120)) $generated@@2)
 :pattern ( ($generated@@52 $generated@@119 $generated@@120))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@U) ) (! (= ($generated@@82 ($generated@@35 $generated@@121 $generated@@122)) $generated@@4)
 :pattern ( ($generated@@35 $generated@@121 $generated@@122))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ) (! (= ($generated@@123 ($generated@@36 $generated@@124 $generated@@125)) $generated@@124)
 :pattern ( ($generated@@36 $generated@@124 $generated@@125))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ) (! (= ($generated@@126 ($generated@@36 $generated@@127 $generated@@128)) $generated@@128)
 :pattern ( ($generated@@36 $generated@@127 $generated@@128))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@129 ($generated@@35 $generated@@130 $generated@@131)) $generated@@130)
 :pattern ( ($generated@@35 $generated@@130 $generated@@131))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ) (! (= ($generated@@132 ($generated@@35 $generated@@133 $generated@@134)) $generated@@134)
 :pattern ( ($generated@@35 $generated@@133 $generated@@134))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@82 ($generated@@31 $generated@@135 $generated@@136)) $generated@@7)
 :pattern ( ($generated@@31 $generated@@135 $generated@@136))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ) (! (= ($generated@@54 ($generated@@31 $generated@@137 $generated@@138)) $generated@@137)
 :pattern ( ($generated@@31 $generated@@137 $generated@@138))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@55 ($generated@@31 $generated@@139 $generated@@140)) $generated@@140)
 :pattern ( ($generated@@31 $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@142 T@U) ) (! (= ($generated@@141 ($generated@@92 $generated@@142)) $generated@@142)
 :pattern ( ($generated@@92 $generated@@142))
)))
(assert (forall (($generated@@143 T@U) ) (! (= ($generated@@28 ($generated@@92 $generated@@143)) $generated@@1)
 :pattern ( ($generated@@92 $generated@@143))
)))
(assert (forall (($generated@@144 Int) ) (! (= ($generated@@82 ($generated@@96 $generated@@144)) $generated@@8)
 :pattern ( ($generated@@96 $generated@@144))
)))
(assert (forall (($generated@@145 Int) ) (! (= ($generated@@57 ($generated@@96 $generated@@145)) $generated@@145)
 :pattern ( ($generated@@96 $generated@@145))
)))
(assert (forall (($generated@@146 Int) ) (! (= ($generated@@82 ($generated@@99 $generated@@146)) $generated@@9)
 :pattern ( ($generated@@99 $generated@@146))
)))
(assert (forall (($generated@@147 Int) ) (! (= ($generated@@62 ($generated@@99 $generated@@147)) $generated@@147)
 :pattern ( ($generated@@99 $generated@@147))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@T) ) (! (= ($generated@@63 $generated@@149 ($generated@@61 $generated@@149 $generated@@148)) $generated@@148)
 :pattern ( ($generated@@61 $generated@@149 $generated@@148))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (! (< ($generated@@150 $generated@@152) ($generated@@151 ($generated@@35 $generated@@152 $generated@@153)))
 :pattern ( ($generated@@35 $generated@@152 $generated@@153))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ) (! (< ($generated@@150 $generated@@155) ($generated@@151 ($generated@@35 $generated@@154 $generated@@155)))
 :pattern ( ($generated@@35 $generated@@154 $generated@@155))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ) (! (< ($generated@@151 $generated@@156) ($generated@@151 ($generated@@31 $generated@@156 $generated@@157)))
 :pattern ( ($generated@@31 $generated@@156 $generated@@157))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ) (! (< ($generated@@151 $generated@@159) ($generated@@151 ($generated@@31 $generated@@158 $generated@@159)))
 :pattern ( ($generated@@31 $generated@@158 $generated@@159))
)))
(assert (forall (($generated@@161 T@U) ) (!  (not ($generated@@59 ($generated@@60 $generated@@160) $generated@@161))
 :pattern ( ($generated@@59 ($generated@@60 $generated@@160) $generated@@161))
)))
(assert (forall (($generated@@162 Int) ) (! (= ($generated@@29 $generated@@30 ($generated@@96 $generated@@162) $generated@@32) ($generated@@29 $generated@@14 ($generated@@18 $generated@@162) $generated))
 :pattern ( ($generated@@29 $generated@@30 ($generated@@96 $generated@@162) $generated@@32))
)))
(assert (forall (($generated@@163 Int) ) (! (= ($generated@@29 $generated@@30 ($generated@@99 $generated@@163) $generated@@32) ($generated@@29 $generated@@14 ($generated@@18 $generated@@163) $generated))
 :pattern ( ($generated@@29 $generated@@30 ($generated@@99 $generated@@163) $generated@@32))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> ($generated@@37 $generated@@164 ($generated@@52 $generated@@165 $generated@@166)) (and (= ($generated@@61 $generated@@50 ($generated@@63 $generated@@50 $generated@@164)) $generated@@164) ($generated@@29 $generated@@50 ($generated@@63 $generated@@50 $generated@@164) ($generated@@52 $generated@@165 $generated@@166))))
 :pattern ( ($generated@@37 $generated@@164 ($generated@@52 $generated@@165 $generated@@166)))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ) (!  (=> ($generated@@37 $generated@@169 ($generated@@36 $generated@@167 $generated@@168)) (and (= ($generated@@61 $generated@@30 ($generated@@63 $generated@@30 $generated@@169)) $generated@@169) ($generated@@29 $generated@@30 ($generated@@63 $generated@@30 $generated@@169) ($generated@@36 $generated@@167 $generated@@168))))
 :pattern ( ($generated@@37 $generated@@169 ($generated@@36 $generated@@167 $generated@@168)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@178 T@T) ($generated@@179 T@T) ($generated@@180 T@T) ($generated@@181 T@U) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ) (! (= ($generated@@170 $generated@@178 $generated@@179 $generated@@180 ($generated@@175 $generated@@178 $generated@@179 $generated@@180 $generated@@182 $generated@@183 $generated@@184 $generated@@181) $generated@@183 $generated@@184) $generated@@181)
 :weight 0
)) (and (forall (($generated@@185 T@T) ($generated@@186 T@T) ($generated@@187 T@T) ($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ) (!  (or (= $generated@@190 $generated@@192) (= ($generated@@170 $generated@@185 $generated@@186 $generated@@187 ($generated@@175 $generated@@185 $generated@@186 $generated@@187 $generated@@189 $generated@@190 $generated@@191 $generated@@188) $generated@@192 $generated@@193) ($generated@@170 $generated@@185 $generated@@186 $generated@@187 $generated@@189 $generated@@192 $generated@@193)))
 :weight 0
)) (forall (($generated@@194 T@T) ($generated@@195 T@T) ($generated@@196 T@T) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ) (!  (or (= $generated@@200 $generated@@202) (= ($generated@@170 $generated@@194 $generated@@195 $generated@@196 ($generated@@175 $generated@@194 $generated@@195 $generated@@196 $generated@@198 $generated@@199 $generated@@200 $generated@@197) $generated@@201 $generated@@202) ($generated@@170 $generated@@194 $generated@@195 $generated@@196 $generated@@198 $generated@@201 $generated@@202)))
 :weight 0
)))) (= ($generated@@12 $generated@@171) 7)) (= ($generated@@12 $generated@@172) 8)) (forall (($generated@@203 T@T) ($generated@@204 T@T) ) (= ($generated@@12 ($generated@@174 $generated@@203 $generated@@204)) 9))) (forall (($generated@@205 T@T) ($generated@@206 T@T) ) (! (= ($generated@@176 ($generated@@174 $generated@@205 $generated@@206)) $generated@@205)
 :pattern ( ($generated@@174 $generated@@205 $generated@@206))
))) (forall (($generated@@207 T@T) ($generated@@208 T@T) ) (! (= ($generated@@177 ($generated@@174 $generated@@207 $generated@@208)) $generated@@208)
 :pattern ( ($generated@@174 $generated@@207 $generated@@208))
))))
(assert (forall (($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 Bool) ($generated@@213 T@U) ($generated@@214 T@U) ) (! (= ($generated@@17 ($generated@@170 $generated@@171 $generated@@172 $generated@@13 ($generated@@173 $generated@@209 $generated@@210 $generated@@211 $generated@@212) $generated@@213 $generated@@214))  (=> (and (or (not (= $generated@@213 $generated@@209)) (not true)) ($generated@@17 ($generated@@63 $generated@@13 ($generated@@64 $generated@@172 $generated@@65 ($generated@@64 $generated@@171 ($generated@@174 $generated@@172 $generated@@65) $generated@@210 $generated@@213) $generated@@211)))) $generated@@212))
 :pattern ( ($generated@@170 $generated@@171 $generated@@172 $generated@@13 ($generated@@173 $generated@@209 $generated@@210 $generated@@211 $generated@@212) $generated@@213 $generated@@214))
)))
(assert  (=> (<= 1 $generated@@47) (forall (($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 T@U) ) (!  (=> (or ($generated@@51 $generated@@216 ($generated@@44 $generated@@30 $generated@@217)) (and (< 1 $generated@@47) (and ($generated@@29 $generated@@50 $generated@@216 ($generated@@52 $generated $generated)) ($generated@@29 $generated@@30 $generated@@217 $generated@@32)))) (and (=> ($generated@@17 ($generated@@44 $generated@@13 ($generated@@16 ($generated@@53 ($generated@@44 $generated@@30 $generated@@217))))) (and ($generated@@51 $generated@@216 ($generated@@44 $generated@@30 ($generated@@54 ($generated@@44 $generated@@30 $generated@@217)))) ($generated@@51 $generated@@216 ($generated@@44 $generated@@30 ($generated@@55 ($generated@@44 $generated@@30 $generated@@217)))))) (= ($generated@@48 ($generated@@49 $generated@@215) $generated@@216 ($generated@@44 $generated@@30 $generated@@217)) (ite ($generated@@53 ($generated@@44 $generated@@30 $generated@@217)) (+ ($generated@@48 ($generated@@49 $generated@@215) $generated@@216 ($generated@@44 $generated@@30 ($generated@@54 ($generated@@44 $generated@@30 $generated@@217)))) ($generated@@48 ($generated@@49 $generated@@215) $generated@@216 ($generated@@44 $generated@@30 ($generated@@55 ($generated@@44 $generated@@30 $generated@@217))))) (ite ($generated@@56 ($generated@@44 $generated@@30 $generated@@217)) ($generated@@57 ($generated@@44 $generated@@30 $generated@@217)) (ite  (and ($generated@@58 ($generated@@44 $generated@@30 $generated@@217)) ($generated@@59 ($generated@@60 $generated@@216) ($generated@@61 $generated@@14 ($generated@@18 ($generated@@62 ($generated@@44 $generated@@30 $generated@@217)))))) ($generated@@19 ($generated@@63 $generated@@14 ($generated@@64 $generated@@65 $generated@@65 ($generated@@66 $generated@@216) ($generated@@61 $generated@@14 ($generated@@18 ($generated@@42 ($generated@@62 ($generated@@44 $generated@@30 $generated@@217)))))))) 0))))))
 :weight 3
 :pattern ( ($generated@@48 ($generated@@49 $generated@@215) $generated@@216 ($generated@@44 $generated@@30 $generated@@217)))
))))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ) (!  (and (= ($generated@@28 ($generated@@36 $generated@@219 $generated@@220)) $generated@@5) (= ($generated@@218 ($generated@@36 $generated@@219 $generated@@220)) $generated@@10))
 :pattern ( ($generated@@36 $generated@@219 $generated@@220))
)))
(assert (forall (($generated@@221 T@U) ) (!  (=> ($generated@@29 $generated@@30 $generated@@221 $generated@@32) (or (or ($generated@@53 $generated@@221) ($generated@@56 $generated@@221)) ($generated@@58 $generated@@221)))
 :pattern ( ($generated@@58 $generated@@221) ($generated@@29 $generated@@30 $generated@@221 $generated@@32))
 :pattern ( ($generated@@56 $generated@@221) ($generated@@29 $generated@@30 $generated@@221 $generated@@32))
 :pattern ( ($generated@@53 $generated@@221) ($generated@@29 $generated@@30 $generated@@221 $generated@@32))
)))
(assert (forall (($generated@@222 T@U) ) (!  (or (= $generated@@222 $generated@@160) (exists (($generated@@223 T@U) ) ($generated@@59 ($generated@@60 $generated@@222) $generated@@223)))
 :pattern ( ($generated@@60 $generated@@222))
)))
(assert (forall (($generated@@225 T@U) ) (!  (or (= $generated@@225 $generated@@160) (exists (($generated@@226 T@U) ) ($generated@@59 ($generated@@224 $generated@@225) $generated@@226)))
 :pattern ( ($generated@@224 $generated@@225))
)))
(assert (forall (($generated@@228 T@U) ($generated@@229 T@U) ) (! (= ($generated@@59 ($generated@@227 $generated@@228) $generated@@229)  (and ($generated@@59 ($generated@@60 $generated@@228) ($generated@@129 ($generated@@63 $generated@@30 $generated@@229))) (= ($generated@@64 $generated@@65 $generated@@65 ($generated@@66 $generated@@228) ($generated@@129 ($generated@@63 $generated@@30 $generated@@229))) ($generated@@132 ($generated@@63 $generated@@30 $generated@@229)))))
 :pattern ( ($generated@@59 ($generated@@227 $generated@@228) $generated@@229))
)))
(assert (forall (($generated@@230 T@U) ($generated@@231 T@U) ) (! (= ($generated@@59 ($generated@@224 $generated@@230) $generated@@231) (exists (($generated@@232 T@U) ) (!  (and ($generated@@59 ($generated@@60 $generated@@230) $generated@@232) (= $generated@@231 ($generated@@64 $generated@@65 $generated@@65 ($generated@@66 $generated@@230) $generated@@232)))
 :pattern ( ($generated@@59 ($generated@@60 $generated@@230) $generated@@232))
 :pattern ( ($generated@@64 $generated@@65 $generated@@65 ($generated@@66 $generated@@230) $generated@@232))
)))
 :pattern ( ($generated@@59 ($generated@@224 $generated@@230) $generated@@231))
)))
(assert (forall (($generated@@233 T@U) ) (! (= ($generated@@150 ($generated@@61 $generated@@30 $generated@@233)) ($generated@@151 $generated@@233))
 :pattern ( ($generated@@150 ($generated@@61 $generated@@30 $generated@@233)))
)))
(assert (forall (($generated@@234 T@U) ($generated@@235 T@U) ) (!  (=> ($generated@@37 $generated@@234 ($generated@@92 $generated@@235)) (and (= ($generated@@61 $generated@@91 ($generated@@63 $generated@@91 $generated@@234)) $generated@@234) ($generated@@29 $generated@@91 ($generated@@63 $generated@@91 $generated@@234) ($generated@@92 $generated@@235))))
 :pattern ( ($generated@@37 $generated@@234 ($generated@@92 $generated@@235)))
)))
(assert (forall (($generated@@236 T@U) ($generated@@237 T@U) ($generated@@238 T@U) ) (! (= ($generated@@29 $generated@@50 $generated@@236 ($generated@@52 $generated@@237 $generated@@238)) (forall (($generated@@239 T@U) ) (!  (=> ($generated@@59 ($generated@@60 $generated@@236) $generated@@239) (and ($generated@@37 ($generated@@64 $generated@@65 $generated@@65 ($generated@@66 $generated@@236) $generated@@239) $generated@@238) ($generated@@37 $generated@@239 $generated@@237)))
 :pattern ( ($generated@@64 $generated@@65 $generated@@65 ($generated@@66 $generated@@236) $generated@@239))
 :pattern ( ($generated@@59 ($generated@@60 $generated@@236) $generated@@239))
)))
 :pattern ( ($generated@@29 $generated@@50 $generated@@236 ($generated@@52 $generated@@237 $generated@@238)))
)))
(assert (= ($generated@@28 $generated@@32) $generated@@6))
(assert (= ($generated@@218 $generated@@32) $generated@@11))
(assert (forall (($generated@@240 T@U) ($generated@@241 T@U) ) (! (= ($generated@@35 ($generated@@44 $generated@@65 $generated@@240) ($generated@@44 $generated@@65 $generated@@241)) ($generated@@44 $generated@@30 ($generated@@35 $generated@@240 $generated@@241)))
 :pattern ( ($generated@@35 ($generated@@44 $generated@@65 $generated@@240) ($generated@@44 $generated@@65 $generated@@241)))
)))
(assert (forall (($generated@@242 T@U) ($generated@@243 T@U) ) (! (= ($generated@@31 ($generated@@44 $generated@@30 $generated@@242) ($generated@@44 $generated@@30 $generated@@243)) ($generated@@44 $generated@@30 ($generated@@31 $generated@@242 $generated@@243)))
 :pattern ( ($generated@@31 ($generated@@44 $generated@@30 $generated@@242) ($generated@@44 $generated@@30 $generated@@243)))
)))
(assert (forall (($generated@@244 Int) ) (! (= ($generated@@61 $generated@@14 ($generated@@18 ($generated@@42 $generated@@244))) ($generated@@44 $generated@@65 ($generated@@61 $generated@@14 ($generated@@18 $generated@@244))))
 :pattern ( ($generated@@61 $generated@@14 ($generated@@18 ($generated@@42 $generated@@244))))
)))
(assert (forall (($generated@@245 Int) ) (! (= ($generated@@96 ($generated@@42 $generated@@245)) ($generated@@44 $generated@@30 ($generated@@96 $generated@@245)))
 :pattern ( ($generated@@96 ($generated@@42 $generated@@245)))
)))
(assert (forall (($generated@@246 Int) ) (! (= ($generated@@99 ($generated@@42 $generated@@246)) ($generated@@44 $generated@@30 ($generated@@99 $generated@@246)))
 :pattern ( ($generated@@99 ($generated@@42 $generated@@246)))
)))
(assert (forall (($generated@@247 T@U) ($generated@@248 T@T) ) (! (= ($generated@@61 $generated@@248 ($generated@@44 $generated@@248 $generated@@247)) ($generated@@44 $generated@@65 ($generated@@61 $generated@@248 $generated@@247)))
 :pattern ( ($generated@@61 $generated@@248 ($generated@@44 $generated@@248 $generated@@247)))
)))
(assert (forall (($generated@@249 T@U) ) (!  (or (= $generated@@249 $generated@@160) (exists (($generated@@250 T@U) ($generated@@251 T@U) ) ($generated@@59 ($generated@@227 $generated@@249) ($generated@@61 $generated@@30 ($generated@@35 $generated@@250 $generated@@251)))))
 :pattern ( ($generated@@227 $generated@@249))
)))
(assert (forall (($generated@@252 T@U) ($generated@@253 T@U) ($generated@@254 T@U) ) (!  (=> ($generated@@29 $generated@@50 $generated@@252 ($generated@@52 $generated@@253 $generated@@254)) (and (and ($generated@@29 $generated@@91 ($generated@@60 $generated@@252) ($generated@@92 $generated@@253)) ($generated@@29 $generated@@91 ($generated@@224 $generated@@252) ($generated@@92 $generated@@254))) ($generated@@29 $generated@@91 ($generated@@227 $generated@@252) ($generated@@92 ($generated@@36 $generated@@253 $generated@@254)))))
 :pattern ( ($generated@@29 $generated@@50 $generated@@252 ($generated@@52 $generated@@253 $generated@@254)))
)))
(assert (forall (($generated@@255 T@U) ) (! ($generated@@29 $generated@@14 $generated@@255 $generated)
 :pattern ( ($generated@@29 $generated@@14 $generated@@255 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@256 () T@U)
(declare-fun $generated@@257 () T@U)
(declare-fun $generated@@258 () T@U)
(declare-fun $generated@@259 () T@U)
(declare-fun $generated@@260 (T@U) Bool)
(declare-fun $generated@@261 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@262  (=> (and (= $generated@@256 ($generated@@173 $generated@@257 $generated@@258 $generated@@3 false)) (= (ControlFlow 0 2) (- 0 1))) (= ($generated@@42 ($generated@@48 ($generated@@49 ($generated@@49 $generated@@259)) ($generated@@44 $generated@@50 $generated@@160) ($generated@@44 $generated@@30 ($generated@@31 ($generated@@44 $generated@@30 ($generated@@31 ($generated@@44 $generated@@30 ($generated@@96 ($generated@@42 1))) ($generated@@44 $generated@@30 ($generated@@96 ($generated@@42 2))))) ($generated@@44 $generated@@30 ($generated@@31 ($generated@@44 $generated@@30 ($generated@@96 ($generated@@42 3))) ($generated@@44 $generated@@30 ($generated@@96 ($generated@@42 4))))))))) ($generated@@42 10)))))
(let (($generated@@263  (=> (and (and ($generated@@260 $generated@@258) ($generated@@261 $generated@@258)) (and (= 2 $generated@@47) (= (ControlFlow 0 3) 2))) $generated@@262)))
$generated@@263)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(pop 1)
; Timed out