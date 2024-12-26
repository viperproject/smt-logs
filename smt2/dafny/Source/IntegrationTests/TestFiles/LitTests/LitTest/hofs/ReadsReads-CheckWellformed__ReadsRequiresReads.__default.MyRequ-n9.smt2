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
(declare-fun $generated@@24 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@25 (T@T T@U) T@U)
(declare-fun $generated@@26 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@27 (T@U T@U T@U) T@U)
(declare-fun $generated@@33 (T@T T@U) T@U)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@40 (T@U T@U) Bool)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@43 () Int)
(declare-fun $generated@@44 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@45 (T@U) Bool)
(declare-fun $generated@@46 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@47 (T@T T@U T@U) Bool)
(declare-fun $generated@@48 () T@T)
(declare-fun $generated@@49 (T@U T@U) T@U)
(declare-fun $generated@@50 (T@U T@U) Bool)
(declare-fun $generated@@63 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@64 () T@T)
(declare-fun $generated@@65 () T@U)
(declare-fun $generated@@66 () T@U)
(declare-fun $generated@@69 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@70 (T@U) T@U)
(declare-fun $generated@@71 (T@U T@U T@U) T@U)
(declare-fun $generated@@78 () T@U)
(declare-fun $generated@@79 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@80 () T@T)
(declare-fun $generated@@81 () T@T)
(declare-fun $generated@@82 (T@T T@T) T@T)
(declare-fun $generated@@83 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@84 (T@T) T@T)
(declare-fun $generated@@85 (T@T) T@T)
(declare-fun $generated@@111 () T@U)
(declare-fun $generated@@112 (T@U T@U) Bool)
(declare-fun $generated@@120 () T@T)
(declare-fun $generated@@124 (T@U T@U T@U) Bool)
(declare-fun $generated@@167 (T@U) T@U)
(declare-fun $generated@@170 (T@U) T@U)
(declare-fun $generated@@174 (T@U) T@U)
(declare-fun $generated@@188 (T@U) T@U)
(declare-fun $generated@@206 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@207 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@208 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 T@U) ) (! (= ($generated@@24 $generated@@28 $generated@@29 $generated@@31 $generated@@30 $generated@@32) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@26 $generated@@28 $generated $generated@@31 ($generated@@27 $generated@@28 $generated@@29 $generated@@30) $generated@@32))))
 :pattern ( ($generated@@24 $generated@@28 $generated@@29 $generated@@31 $generated@@30 $generated@@32))
)))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@26 $generated@@34 $generated $generated@@37 ($generated@@27 $generated@@34 $generated@@35 $generated@@36) $generated@@38) ($generated@@33 $generated@@9 ($generated@@12 ($generated@@24 $generated@@34 $generated@@35 $generated@@37 $generated@@36 $generated@@38))))
 :pattern ( ($generated@@26 $generated@@34 $generated $generated@@37 ($generated@@27 $generated@@34 $generated@@35 $generated@@36) $generated@@38))
)))
(assert (= ($generated@@39 $generated) $generated@@0))
(assert (forall (($generated@@42 T@U) ) (!  (not ($generated@@40 $generated@@41 $generated@@42))
 :pattern ( ($generated@@40 $generated@@41 $generated@@42))
)))
(assert (= ($generated@@8 $generated@@48) 3))
(assert  (=> (<= 0 $generated@@43) (forall (($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (!  (=> (or ($generated@@46 $generated@@51 $generated@@52 $generated@@53 $generated@@54 $generated@@55) (and (< 0 $generated@@43) (and (and (and ($generated@@45 $generated@@53) ($generated@@47 $generated@@48 $generated@@54 ($generated@@49 $generated@@51 $generated@@52))) ($generated@@50 $generated@@55 $generated@@51)) ($generated@@24 $generated@@51 $generated@@52 $generated@@53 $generated@@54 $generated@@55)))) (and true (= ($generated@@44 $generated@@51 $generated@@52 $generated@@53 $generated@@54 $generated@@55) ($generated@@24 $generated@@51 $generated@@52 $generated@@53 $generated@@54 $generated@@55))))
 :pattern ( ($generated@@44 $generated@@51 $generated@@52 $generated@@53 $generated@@54 $generated@@55) ($generated@@45 $generated@@53))
))))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ) (!  (=> (and (and ($generated@@47 $generated@@48 $generated@@56 ($generated@@49 $generated@@57 $generated@@58)) (forall (($generated@@61 T@U) ) (!  (=> ($generated@@50 $generated@@61 $generated@@59) ($generated@@50 $generated@@61 $generated@@57))
 :pattern ( ($generated@@50 $generated@@61 $generated@@59))
 :pattern ( ($generated@@50 $generated@@61 $generated@@57))
))) (forall (($generated@@62 T@U) ) (!  (=> ($generated@@50 $generated@@62 $generated@@58) ($generated@@50 $generated@@62 $generated@@60))
 :pattern ( ($generated@@50 $generated@@62 $generated@@58))
 :pattern ( ($generated@@50 $generated@@62 $generated@@60))
))) ($generated@@47 $generated@@48 $generated@@56 ($generated@@49 $generated@@59 $generated@@60)))
 :pattern ( ($generated@@47 $generated@@48 $generated@@56 ($generated@@49 $generated@@57 $generated@@58)) ($generated@@47 $generated@@48 $generated@@56 ($generated@@49 $generated@@59 $generated@@60)))
)))
(assert (= ($generated@@8 $generated@@64) 4))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@63 $generated@@64 $generated@@67 $generated@@65 $generated@@68) ($generated@@63 $generated@@64 $generated@@67 $generated@@66 $generated@@68))
 :pattern ( ($generated@@63 $generated@@64 $generated@@67 $generated@@65 $generated@@68))
 :pattern ( ($generated@@63 $generated@@64 $generated@@67 $generated@@66 $generated@@68))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (!  (=> ($generated@@24 $generated@@73 $generated@@74 $generated@@76 $generated@@75 $generated@@77) (= ($generated@@40 ($generated@@69 $generated@@73 ($generated@@70 $generated@@66) $generated@@76 ($generated@@71 $generated@@73 $generated@@74 $generated@@75) $generated@@77) $generated@@72) ($generated@@40 ($generated@@69 $generated@@73 $generated@@74 $generated@@76 $generated@@75 $generated@@77) $generated@@72)))
 :pattern ( ($generated@@40 ($generated@@69 $generated@@73 ($generated@@70 $generated@@66) $generated@@76 ($generated@@71 $generated@@73 $generated@@74 $generated@@75) $generated@@77) $generated@@72))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@86 T@T) ($generated@@87 T@T) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@79 $generated@@86 $generated@@87 ($generated@@83 $generated@@86 $generated@@87 $generated@@89 $generated@@90 $generated@@88) $generated@@90) $generated@@88)
 :weight 0
)) (forall (($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (!  (or (= $generated@@95 $generated@@96) (= ($generated@@79 $generated@@91 $generated@@92 ($generated@@83 $generated@@91 $generated@@92 $generated@@94 $generated@@95 $generated@@93) $generated@@96) ($generated@@79 $generated@@91 $generated@@92 $generated@@94 $generated@@96)))
 :weight 0
))) (= ($generated@@8 $generated@@80) 5)) (= ($generated@@8 $generated@@81) 6)) (forall (($generated@@97 T@T) ($generated@@98 T@T) ) (= ($generated@@8 ($generated@@82 $generated@@97 $generated@@98)) 7))) (forall (($generated@@99 T@T) ($generated@@100 T@T) ) (! (= ($generated@@84 ($generated@@82 $generated@@99 $generated@@100)) $generated@@99)
 :pattern ( ($generated@@82 $generated@@99 $generated@@100))
))) (forall (($generated@@101 T@T) ($generated@@102 T@T) ) (! (= ($generated@@85 ($generated@@82 $generated@@101 $generated@@102)) $generated@@102)
 :pattern ( ($generated@@82 $generated@@101 $generated@@102))
))))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@63 $generated@@64 $generated@@103 $generated@@66 $generated@@104)  (or (= $generated@@103 $generated@@78) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@79 $generated@@80 $generated@@81 ($generated@@79 $generated@@64 ($generated@@82 $generated@@80 $generated@@81) $generated@@104 $generated@@103) $generated@@2)))))
 :pattern ( ($generated@@63 $generated@@64 $generated@@103 $generated@@66 $generated@@104))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ) (!  (=> ($generated@@24 $generated@@106 $generated@@107 $generated@@109 $generated@@108 $generated@@110) (= ($generated@@40 ($generated@@69 $generated@@106 $generated $generated@@109 ($generated@@27 $generated@@106 $generated@@107 $generated@@108) $generated@@110) $generated@@105) ($generated@@40 ($generated@@69 $generated@@106 $generated@@107 $generated@@109 $generated@@108 $generated@@110) $generated@@105)))
 :pattern ( ($generated@@40 ($generated@@69 $generated@@106 $generated $generated@@109 ($generated@@27 $generated@@106 $generated@@107 $generated@@108) $generated@@110) $generated@@105))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (!  (=> (and ($generated@@45 $generated@@115) (and ($generated@@50 $generated@@117 $generated@@113) ($generated@@47 $generated@@48 $generated@@116 ($generated@@49 $generated@@113 $generated@@114)))) (= ($generated@@112 ($generated@@69 $generated@@113 $generated@@114 $generated@@111 $generated@@116 $generated@@117) $generated@@41) ($generated@@112 ($generated@@69 $generated@@113 $generated@@114 $generated@@115 $generated@@116 $generated@@117) $generated@@41)))
 :pattern ( ($generated@@69 $generated@@113 $generated@@114 $generated@@111 $generated@@116 $generated@@117) ($generated@@45 $generated@@115))
 :pattern ( ($generated@@69 $generated@@113 $generated@@114 $generated@@115 $generated@@116 $generated@@117))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@T) ) (! (= ($generated@@33 $generated@@119 ($generated@@25 $generated@@119 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@25 $generated@@119 $generated@@118))
)))
(assert (= ($generated@@8 $generated@@120) 8))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@U) ) (! (= ($generated@@47 $generated@@120 $generated@@121 ($generated@@70 $generated@@122)) (forall (($generated@@123 T@U) ) (!  (=> ($generated@@40 $generated@@121 $generated@@123) ($generated@@50 $generated@@123 $generated@@122))
 :pattern ( ($generated@@40 $generated@@121 $generated@@123))
)))
 :pattern ( ($generated@@47 $generated@@120 $generated@@121 ($generated@@70 $generated@@122)))
)))
(assert ($generated@@45 $generated@@111))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@T) ) (! (= ($generated@@124 ($generated@@33 $generated@@128 $generated@@125) $generated@@126 $generated@@127) ($generated@@63 $generated@@128 $generated@@125 $generated@@126 $generated@@127))
 :pattern ( ($generated@@124 ($generated@@33 $generated@@128 $generated@@125) $generated@@126 $generated@@127))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@24 $generated@@129 $generated $generated@@132 ($generated@@27 $generated@@129 $generated@@130 $generated@@131) $generated@@133) true)
 :pattern ( ($generated@@24 $generated@@129 $generated $generated@@132 ($generated@@27 $generated@@129 $generated@@130 $generated@@131) $generated@@133))
)))
(assert (forall (($generated@@134 T@U) ) (!  (=> ($generated@@50 $generated@@134 $generated@@66) (and (= ($generated@@33 $generated@@64 ($generated@@25 $generated@@64 $generated@@134)) $generated@@134) ($generated@@47 $generated@@64 ($generated@@25 $generated@@64 $generated@@134) $generated@@66)))
 :pattern ( ($generated@@50 $generated@@134 $generated@@66))
)))
(assert (forall (($generated@@135 T@U) ) (!  (=> ($generated@@50 $generated@@135 $generated@@65) (and (= ($generated@@33 $generated@@64 ($generated@@25 $generated@@64 $generated@@135)) $generated@@135) ($generated@@47 $generated@@64 ($generated@@25 $generated@@64 $generated@@135) $generated@@65)))
 :pattern ( ($generated@@50 $generated@@135 $generated@@65))
)))
(assert (forall (($generated@@136 T@U) ) (! (= ($generated@@47 $generated@@64 $generated@@136 $generated@@65)  (and ($generated@@47 $generated@@64 $generated@@136 $generated@@66) (or (not (= $generated@@136 $generated@@78)) (not true))))
 :pattern ( ($generated@@47 $generated@@64 $generated@@136 $generated@@65))
 :pattern ( ($generated@@47 $generated@@64 $generated@@136 $generated@@66))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (!  (=> (and ($generated@@45 $generated@@140) ($generated@@63 $generated@@48 $generated@@137 ($generated@@49 $generated@@138 $generated@@139) $generated@@140)) (forall (($generated@@141 T@U) ) (!  (=> (and ($generated@@124 $generated@@141 $generated@@138 $generated@@140) ($generated@@24 $generated@@138 $generated@@139 $generated@@140 $generated@@137 $generated@@141)) ($generated@@124 ($generated@@26 $generated@@138 $generated@@139 $generated@@140 $generated@@137 $generated@@141) $generated@@139 $generated@@140))
 :pattern ( ($generated@@26 $generated@@138 $generated@@139 $generated@@140 $generated@@137 $generated@@141))
)))
 :pattern ( ($generated@@63 $generated@@48 $generated@@137 ($generated@@49 $generated@@138 $generated@@139) $generated@@140))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (! (= ($generated@@69 $generated@@142 $generated@@143 $generated@@145 $generated@@144 $generated@@146) ($generated@@25 $generated@@120 ($generated@@26 $generated@@142 ($generated@@70 $generated@@66) $generated@@145 ($generated@@71 $generated@@142 $generated@@143 $generated@@144) $generated@@146)))
 :pattern ( ($generated@@69 $generated@@142 $generated@@143 $generated@@145 $generated@@144 $generated@@146))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ) (!  (=> ($generated@@112 $generated@@147 $generated@@148) (= $generated@@147 $generated@@148))
 :pattern ( ($generated@@112 $generated@@147 $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ) (! (= ($generated@@24 $generated@@149 ($generated@@70 $generated@@66) $generated@@152 ($generated@@71 $generated@@149 $generated@@150 $generated@@151) $generated@@153) ($generated@@24 $generated@@149 $generated@@150 $generated@@152 $generated@@151 $generated@@153))
 :pattern ( ($generated@@24 $generated@@149 ($generated@@70 $generated@@66) $generated@@152 ($generated@@71 $generated@@149 $generated@@150 $generated@@151) $generated@@153))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@47 $generated@@48 $generated@@154 ($generated@@49 $generated@@155 $generated@@156)) (forall (($generated@@157 T@U) ($generated@@158 T@U) ) (!  (=> (and (and ($generated@@45 $generated@@157) ($generated@@50 $generated@@158 $generated@@155)) ($generated@@24 $generated@@155 $generated@@156 $generated@@157 $generated@@154 $generated@@158)) ($generated@@50 ($generated@@26 $generated@@155 $generated@@156 $generated@@157 $generated@@154 $generated@@158) $generated@@156))
 :pattern ( ($generated@@26 $generated@@155 $generated@@156 $generated@@157 $generated@@154 $generated@@158))
)))
 :pattern ( ($generated@@47 $generated@@48 $generated@@154 ($generated@@49 $generated@@155 $generated@@156)))
)))
(assert (forall (($generated@@159 T@U) ) (!  (=> ($generated@@50 $generated@@159 $generated) (and (= ($generated@@33 $generated@@9 ($generated@@25 $generated@@9 $generated@@159)) $generated@@159) ($generated@@47 $generated@@9 ($generated@@25 $generated@@9 $generated@@159) $generated)))
 :pattern ( ($generated@@50 $generated@@159 $generated))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@T) ) (! (= ($generated@@50 ($generated@@33 $generated@@162 $generated@@160) $generated@@161) ($generated@@47 $generated@@162 $generated@@160 $generated@@161))
 :pattern ( ($generated@@50 ($generated@@33 $generated@@162 $generated@@160) $generated@@161))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ) (! (= ($generated@@63 $generated@@120 $generated@@163 ($generated@@70 $generated@@164) $generated@@165) (forall (($generated@@166 T@U) ) (!  (=> ($generated@@40 $generated@@163 $generated@@166) ($generated@@124 $generated@@166 $generated@@164 $generated@@165))
 :pattern ( ($generated@@40 $generated@@163 $generated@@166))
)))
 :pattern ( ($generated@@63 $generated@@120 $generated@@163 ($generated@@70 $generated@@164) $generated@@165))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (! (= ($generated@@167 ($generated@@49 $generated@@168 $generated@@169)) $generated@@168)
 :pattern ( ($generated@@49 $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ) (! (= ($generated@@170 ($generated@@49 $generated@@171 $generated@@172)) $generated@@172)
 :pattern ( ($generated@@49 $generated@@171 $generated@@172))
)))
(assert (forall (($generated@@173 T@U) ) (! ($generated@@47 $generated@@64 $generated@@173 $generated@@66)
 :pattern ( ($generated@@47 $generated@@64 $generated@@173 $generated@@66))
)))
(assert (forall (($generated@@175 T@U) ) (! (= ($generated@@174 ($generated@@70 $generated@@175)) $generated@@175)
 :pattern ( ($generated@@70 $generated@@175))
)))
(assert (forall (($generated@@176 T@U) ) (! (= ($generated@@39 ($generated@@70 $generated@@176)) $generated@@1)
 :pattern ( ($generated@@70 $generated@@176))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@T) ) (! (= ($generated@@25 $generated@@178 ($generated@@33 $generated@@178 $generated@@177)) $generated@@177)
 :pattern ( ($generated@@33 $generated@@178 $generated@@177))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ) (!  (=> ($generated@@45 $generated@@182) (= ($generated@@63 $generated@@48 $generated@@179 ($generated@@49 $generated@@180 $generated@@181) $generated@@182) (forall (($generated@@183 T@U) ) (!  (=> (and (and ($generated@@50 $generated@@183 $generated@@180) ($generated@@124 $generated@@183 $generated@@180 $generated@@182)) ($generated@@24 $generated@@180 $generated@@181 $generated@@182 $generated@@179 $generated@@183)) (forall (($generated@@184 T@U) ) (!  (=> (and (or (not (= $generated@@184 $generated@@78)) (not true)) ($generated@@40 ($generated@@69 $generated@@180 $generated@@181 $generated@@182 $generated@@179 $generated@@183) ($generated@@33 $generated@@64 $generated@@184))) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@79 $generated@@80 $generated@@81 ($generated@@79 $generated@@64 ($generated@@82 $generated@@80 $generated@@81) $generated@@182 $generated@@184) $generated@@2))))
 :pattern ( ($generated@@40 ($generated@@69 $generated@@180 $generated@@181 $generated@@182 $generated@@179 $generated@@183) ($generated@@33 $generated@@64 $generated@@184)))
)))
 :pattern ( ($generated@@26 $generated@@180 $generated@@181 $generated@@182 $generated@@179 $generated@@183))
 :pattern ( ($generated@@69 $generated@@180 $generated@@181 $generated@@182 $generated@@179 $generated@@183))
))))
 :pattern ( ($generated@@63 $generated@@48 $generated@@179 ($generated@@49 $generated@@180 $generated@@181) $generated@@182))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ) (!  (=> ($generated@@50 $generated@@187 ($generated@@49 $generated@@185 $generated@@186)) (and (= ($generated@@33 $generated@@48 ($generated@@25 $generated@@48 $generated@@187)) $generated@@187) ($generated@@47 $generated@@48 ($generated@@25 $generated@@48 $generated@@187) ($generated@@49 $generated@@185 $generated@@186))))
 :pattern ( ($generated@@50 $generated@@187 ($generated@@49 $generated@@185 $generated@@186)))
)))
(assert (forall (($generated@@189 T@U) ($generated@@190 T@U) ) (!  (and (= ($generated@@39 ($generated@@49 $generated@@189 $generated@@190)) $generated@@5) (= ($generated@@188 ($generated@@49 $generated@@189 $generated@@190)) $generated@@7))
 :pattern ( ($generated@@49 $generated@@189 $generated@@190))
)))
(assert (forall (($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ) (!  (=> (and (and ($generated@@45 $generated@@193) (and ($generated@@50 $generated@@195 $generated@@191) ($generated@@47 $generated@@48 $generated@@194 ($generated@@49 $generated@@191 $generated@@192)))) ($generated@@112 ($generated@@69 $generated@@191 $generated@@192 $generated@@111 $generated@@194 $generated@@195) $generated@@41)) (= ($generated@@24 $generated@@191 $generated@@192 $generated@@111 $generated@@194 $generated@@195) ($generated@@24 $generated@@191 $generated@@192 $generated@@193 $generated@@194 $generated@@195)))
 :pattern ( ($generated@@24 $generated@@191 $generated@@192 $generated@@111 $generated@@194 $generated@@195) ($generated@@45 $generated@@193))
 :pattern ( ($generated@@24 $generated@@191 $generated@@192 $generated@@193 $generated@@194 $generated@@195))
)))
(assert (forall (($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ) (! (= ($generated@@26 $generated@@196 ($generated@@70 $generated@@66) $generated@@199 ($generated@@71 $generated@@196 $generated@@197 $generated@@198) $generated@@200) ($generated@@33 $generated@@120 ($generated@@69 $generated@@196 $generated@@197 $generated@@199 $generated@@198 $generated@@200)))
 :pattern ( ($generated@@26 $generated@@196 ($generated@@70 $generated@@66) $generated@@199 ($generated@@71 $generated@@196 $generated@@197 $generated@@198) $generated@@200))
)))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@U) ) (!  (=> ($generated@@50 $generated@@201 ($generated@@70 $generated@@202)) (and (= ($generated@@33 $generated@@120 ($generated@@25 $generated@@120 $generated@@201)) $generated@@201) ($generated@@47 $generated@@120 ($generated@@25 $generated@@120 $generated@@201) ($generated@@70 $generated@@202))))
 :pattern ( ($generated@@50 $generated@@201 ($generated@@70 $generated@@202)))
)))
(assert (= ($generated@@39 $generated@@66) $generated@@3))
(assert (= ($generated@@188 $generated@@66) $generated@@6))
(assert (= ($generated@@39 $generated@@65) $generated@@4))
(assert (= ($generated@@188 $generated@@65) $generated@@6))
(assert (forall (($generated@@203 T@U) ($generated@@204 T@U) ) (! (= ($generated@@112 $generated@@203 $generated@@204) (forall (($generated@@205 T@U) ) (! (= ($generated@@40 $generated@@203 $generated@@205) ($generated@@40 $generated@@204 $generated@@205))
 :pattern ( ($generated@@40 $generated@@203 $generated@@205))
 :pattern ( ($generated@@40 $generated@@204 $generated@@205))
)))
 :pattern ( ($generated@@112 $generated@@203 $generated@@204))
)))
(assert  (and (forall (($generated@@209 T@T) ($generated@@210 T@T) ($generated@@211 T@T) ($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 T@U) ) (! (= ($generated@@206 $generated@@209 $generated@@210 $generated@@211 ($generated@@208 $generated@@209 $generated@@210 $generated@@211 $generated@@213 $generated@@214 $generated@@215 $generated@@212) $generated@@214 $generated@@215) $generated@@212)
 :weight 0
)) (and (forall (($generated@@216 T@T) ($generated@@217 T@T) ($generated@@218 T@T) ($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ($generated@@222 T@U) ($generated@@223 T@U) ($generated@@224 T@U) ) (!  (or (= $generated@@221 $generated@@223) (= ($generated@@206 $generated@@216 $generated@@217 $generated@@218 ($generated@@208 $generated@@216 $generated@@217 $generated@@218 $generated@@220 $generated@@221 $generated@@222 $generated@@219) $generated@@223 $generated@@224) ($generated@@206 $generated@@216 $generated@@217 $generated@@218 $generated@@220 $generated@@223 $generated@@224)))
 :weight 0
)) (forall (($generated@@225 T@T) ($generated@@226 T@T) ($generated@@227 T@T) ($generated@@228 T@U) ($generated@@229 T@U) ($generated@@230 T@U) ($generated@@231 T@U) ($generated@@232 T@U) ($generated@@233 T@U) ) (!  (or (= $generated@@231 $generated@@233) (= ($generated@@206 $generated@@225 $generated@@226 $generated@@227 ($generated@@208 $generated@@225 $generated@@226 $generated@@227 $generated@@229 $generated@@230 $generated@@231 $generated@@228) $generated@@232 $generated@@233) ($generated@@206 $generated@@225 $generated@@226 $generated@@227 $generated@@229 $generated@@232 $generated@@233)))
 :weight 0
)))))
(assert (forall (($generated@@234 T@U) ($generated@@235 T@U) ($generated@@236 T@U) ($generated@@237 T@U) ($generated@@238 T@U) ($generated@@239 T@U) ) (! (= ($generated@@13 ($generated@@206 $generated@@64 $generated@@80 $generated@@9 ($generated@@207 $generated@@234 $generated@@235 $generated@@236 $generated@@237) $generated@@238 $generated@@239))  (=> (and (or (not (= $generated@@238 $generated@@234)) (not true)) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@79 $generated@@80 $generated@@81 ($generated@@79 $generated@@64 ($generated@@82 $generated@@80 $generated@@81) $generated@@235 $generated@@238) $generated@@236)))) ($generated@@40 $generated@@237 ($generated@@33 $generated@@64 $generated@@238))))
 :pattern ( ($generated@@206 $generated@@64 $generated@@80 $generated@@9 ($generated@@207 $generated@@234 $generated@@235 $generated@@236 $generated@@237) $generated@@238 $generated@@239))
)))
(assert (forall (($generated@@240 T@U) ($generated@@241 T@U) ) (! ($generated@@63 $generated@@9 $generated@@241 $generated $generated@@240)
 :pattern ( ($generated@@63 $generated@@9 $generated@@241 $generated $generated@@240))
)))
(assert (forall (($generated@@242 T@U) ) (! ($generated@@47 $generated@@9 $generated@@242 $generated)
 :pattern ( ($generated@@47 $generated@@9 $generated@@242 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@243 () T@U)
(declare-fun $generated@@244 () T@U)
(declare-fun $generated@@245 () T@U)
(declare-fun $generated@@246 () T@U)
(declare-fun $generated@@247 () T@U)
(declare-fun $generated@@248 () Bool)
(declare-fun $generated@@249 () T@U)
(declare-fun $generated@@250 () Bool)
(declare-fun $generated@@251 () Bool)
(declare-fun $generated@@252 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 9) (let (($generated@@253  (=> (and ($generated@@124 ($generated@@33 $generated@@48 $generated@@243) ($generated@@49 $generated@@244 $generated@@245) $generated@@246) ($generated@@124 $generated@@247 $generated@@244 $generated@@246)) (=> (and (and (= $generated@@248 (forall (($generated@@254 T@U) ($generated@@255 T@U) )  (=> (and (and (or (not (= $generated@@254 $generated@@78)) (not true)) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@79 $generated@@80 $generated@@81 ($generated@@79 $generated@@64 ($generated@@82 $generated@@80 $generated@@81) $generated@@246 $generated@@254) $generated@@2)))) ($generated@@40 ($generated@@69 $generated@@244 $generated@@245 $generated@@246 $generated@@243 $generated@@247) ($generated@@33 $generated@@64 $generated@@254))) ($generated@@13 ($generated@@206 $generated@@64 $generated@@80 $generated@@9 $generated@@249 $generated@@254 $generated@@255))))) (= ($generated@@44 $generated@@244 $generated@@245 $generated@@246 $generated@@243 $generated@@247) ($generated@@24 $generated@@244 $generated@@245 $generated@@246 $generated@@243 $generated@@247))) (and ($generated@@47 $generated@@9 ($generated@@12 ($generated@@44 $generated@@244 $generated@@245 $generated@@246 $generated@@243 $generated@@247)) $generated) (= (ControlFlow 0 3) (- 0 2)))) $generated@@248))))
(let (($generated@@256 true))
(let (($generated@@257  (=> (= $generated@@249 ($generated@@207 $generated@@78 $generated@@246 $generated@@2 ($generated@@69 $generated@@244 $generated@@245 $generated@@246 $generated@@243 $generated@@247))) (=> (and (and ($generated@@124 ($generated@@33 $generated@@48 $generated@@243) ($generated@@49 $generated@@244 $generated@@245) $generated@@246) ($generated@@124 $generated@@247 $generated@@244 $generated@@246)) (and (= $generated@@250 (forall (($generated@@258 T@U) ($generated@@259 T@U) )  (=> (and (and (or (not (= $generated@@258 $generated@@78)) (not true)) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@79 $generated@@80 $generated@@81 ($generated@@79 $generated@@64 ($generated@@82 $generated@@80 $generated@@81) $generated@@246 $generated@@258) $generated@@2)))) ($generated@@40 ($generated@@69 $generated@@244 $generated@@245 $generated@@246 $generated@@243 $generated@@247) ($generated@@33 $generated@@64 $generated@@258))) ($generated@@13 ($generated@@206 $generated@@64 $generated@@80 $generated@@9 $generated@@249 $generated@@258 $generated@@259))))) ($generated@@24 $generated@@244 $generated@@245 $generated@@246 $generated@@243 $generated@@247))) (and (=> (= (ControlFlow 0 4) (- 0 8)) $generated@@250) (=> $generated@@250 (=> (and ($generated@@124 ($generated@@33 $generated@@48 $generated@@243) ($generated@@49 $generated@@244 $generated@@245) $generated@@246) ($generated@@124 $generated@@247 $generated@@244 $generated@@246)) (and (=> (= (ControlFlow 0 4) (- 0 7)) ($generated@@24 $generated@@244 $generated@@245 $generated@@246 $generated@@243 $generated@@247)) (=> ($generated@@24 $generated@@244 $generated@@245 $generated@@246 $generated@@243 $generated@@247) (=> (= $generated@@251 (forall (($generated@@260 T@U) ($generated@@261 T@U) )  (=> (and (and (or (not (= $generated@@260 $generated@@78)) (not true)) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@79 $generated@@80 $generated@@81 ($generated@@79 $generated@@64 ($generated@@82 $generated@@80 $generated@@81) $generated@@246 $generated@@260) $generated@@2)))) ($generated@@40 ($generated@@69 $generated@@244 $generated@@245 $generated@@246 $generated@@243 $generated@@247) ($generated@@33 $generated@@64 $generated@@260))) ($generated@@13 ($generated@@206 $generated@@64 $generated@@80 $generated@@9 $generated@@249 $generated@@260 $generated@@261))))) (and (=> (= (ControlFlow 0 4) (- 0 6)) $generated@@251) (=> $generated@@251 (=> (and ($generated@@124 ($generated@@33 $generated@@48 $generated@@243) ($generated@@49 $generated@@244 $generated@@245) $generated@@246) ($generated@@124 $generated@@247 $generated@@244 $generated@@246)) (and (=> (= (ControlFlow 0 4) (- 0 5)) ($generated@@24 $generated@@244 $generated@@245 $generated@@246 $generated@@243 $generated@@247)) (=> ($generated@@24 $generated@@244 $generated@@245 $generated@@246 $generated@@243 $generated@@247) (and (=> (= (ControlFlow 0 4) 1) $generated@@256) (=> (= (ControlFlow 0 4) 3) $generated@@253)))))))))))))))))
(let (($generated@@262  (=> (and ($generated@@45 $generated@@246) ($generated@@252 $generated@@246)) (=> (and (and ($generated@@47 $generated@@48 $generated@@243 ($generated@@49 $generated@@244 $generated@@245)) ($generated@@50 $generated@@247 $generated@@244)) (and (= 0 $generated@@43) (= (ControlFlow 0 9) 4))) $generated@@257))))
$generated@@262)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)