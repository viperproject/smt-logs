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
(declare-fun $generated@@5 (T@T) Int)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 (Bool) T@U)
(declare-fun $generated@@10 (T@U) Bool)
(declare-fun $generated@@11 (Int) T@U)
(declare-fun $generated@@12 (T@U) Int)
(declare-fun $generated@@13 (Real) T@U)
(declare-fun $generated@@14 (T@U) Real)
(declare-fun $generated@@21 (T@U) T@U)
(declare-fun $generated@@22 (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@24 (T@T T@U T@U) Bool)
(declare-fun $generated@@25 () T@T)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 (T@U) Int)
(declare-fun $generated@@28 (T@U) Bool)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (T@U T@U) T@U)
(declare-fun $generated@@31 (Int) T@U)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@46 (T@U T@U) Bool)
(declare-fun $generated@@61 () Int)
(declare-fun $generated@@62 (T@U Int) T@U)
(declare-fun $generated@@63 (Int) Bool)
(declare-fun $generated@@71 (Int) Int)
(declare-fun $generated@@73 (T@T T@U) T@U)
(declare-fun $generated@@76 (T@U T@U) T@U)
(declare-fun $generated@@77 (T@U T@U) Bool)
(declare-fun $generated@@81 (T@U) T@U)
(declare-fun $generated@@83 (T@T T@U) T@U)
(declare-fun $generated@@84 (T@T T@U) T@U)
(declare-fun $generated@@95 (T@U T@U T@U) Bool)
(declare-fun $generated@@96 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@101 (T@U) T@U)
(declare-fun $generated@@103 (T@U) Bool)
(declare-fun $generated@@120 (T@U) T@U)
(declare-fun $generated@@128 (T@U T@U) T@U)
(declare-fun $generated@@137 (T@U) Bool)
(declare-fun $generated@@141 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@142 () T@T)
(declare-fun $generated@@143 () T@T)
(declare-fun $generated@@144 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@145 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@146 () T@T)
(declare-fun $generated@@147 (T@T T@T) T@T)
(declare-fun $generated@@148 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@149 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@150 (T@T) T@T)
(declare-fun $generated@@151 (T@T) T@T)
(declare-fun $generated@@222 (T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@5 $generated@@6) 0) (= ($generated@@5 $generated@@7) 1)) (= ($generated@@5 $generated@@8) 2)) (forall (($generated@@15 Bool) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Int) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Real) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4)
)
(assert (= ($generated@@21 $generated) $generated@@0))
(assert (= ($generated@@5 $generated@@25) 3))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ) (!  (=> (and ($generated@@24 $generated@@25 $generated@@38 ($generated@@26 $generated@@34)) ($generated@@24 $generated@@25 $generated@@39 ($generated@@26 $generated@@35))) (= ($generated@@22 $generated@@34 $generated@@35 $generated@@36 ($generated@@23 $generated@@37) $generated@@38 $generated@@39)  (and (=> (< 0 ($generated@@27 $generated@@36)) (and (and ($generated@@28 $generated@@38) ($generated@@28 $generated@@39)) (=> (and ($generated@@28 $generated@@38) ($generated@@28 $generated@@39)) (and (= ($generated@@29 $generated@@38) ($generated@@29 $generated@@39)) ($generated@@22 $generated@@34 $generated@@35 ($generated@@30 $generated@@36 ($generated@@31 1)) $generated@@37 ($generated@@32 $generated@@38) ($generated@@32 $generated@@39)))))) (=> (and (or (not (= $generated@@36 ($generated@@31 0))) (not true)) (= ($generated@@27 $generated@@36) 0)) ($generated@@33 $generated@@34 $generated@@35 $generated@@37 $generated@@38 $generated@@39)))))
 :pattern ( ($generated@@22 $generated@@34 $generated@@35 $generated@@36 ($generated@@23 $generated@@37) $generated@@38 $generated@@39))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ) (!  (=> (or (not (= $generated@@42 ($generated@@31 0))) (not true)) (= ($generated@@22 $generated@@40 $generated@@41 $generated@@42 ($generated@@23 $generated@@43) $generated@@44 $generated@@45) ($generated@@22 $generated@@40 $generated@@41 $generated@@42 $generated@@43 $generated@@44 $generated@@45)))
 :pattern ( ($generated@@22 $generated@@40 $generated@@41 $generated@@42 ($generated@@23 $generated@@43) $generated@@44 $generated@@45))
)))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ) (!  (=> (and ($generated@@46 $generated@@47 $generated@@48) ($generated@@46 $generated@@48 $generated@@49)) ($generated@@46 $generated@@47 $generated@@49))
 :pattern ( ($generated@@46 $generated@@47 $generated@@48) ($generated@@46 $generated@@48 $generated@@49))
 :pattern ( ($generated@@46 $generated@@47 $generated@@48) ($generated@@46 $generated@@47 $generated@@49))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 Int) ($generated@@52 Int) ) (!  (=> (and (and (<= 0 $generated@@51) (<= 0 $generated@@52)) (<= (+ $generated@@51 $generated@@52) ($generated@@27 $generated@@50))) (= ($generated@@30 ($generated@@30 $generated@@50 ($generated@@31 $generated@@51)) ($generated@@31 $generated@@52)) ($generated@@30 $generated@@50 ($generated@@31 (+ $generated@@51 $generated@@52)))))
 :pattern ( ($generated@@30 ($generated@@30 $generated@@50 ($generated@@31 $generated@@51)) ($generated@@31 $generated@@52)))
)))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ) (!  (=> ($generated@@24 $generated@@25 $generated@@54 ($generated@@26 $generated@@53)) ($generated@@28 $generated@@54))
 :pattern ( ($generated@@28 $generated@@54) ($generated@@24 $generated@@25 $generated@@54 ($generated@@26 $generated@@53)))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ) (!  (=> (= $generated@@59 $generated@@60) ($generated@@22 $generated@@55 $generated@@56 $generated@@57 ($generated@@23 $generated@@58) $generated@@59 $generated@@60))
 :pattern ( ($generated@@22 $generated@@55 $generated@@56 $generated@@57 ($generated@@23 $generated@@58) $generated@@59 $generated@@60))
)))
(assert  (=> (<= 1 $generated@@61) (forall (($generated@@64 T@U) ($generated@@65 Int) ) (!  (=> (or ($generated@@63 $generated@@65) (< 1 $generated@@61)) ($generated@@24 $generated@@25 ($generated@@62 $generated@@64 $generated@@65) ($generated@@26 $generated)))
 :pattern ( ($generated@@62 $generated@@64 $generated@@65))
))))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@33 $generated@@66 $generated@@67 ($generated@@23 $generated@@68) $generated@@69 $generated@@70) (= $generated@@69 $generated@@70))
 :pattern ( ($generated@@33 $generated@@66 $generated@@67 ($generated@@23 $generated@@68) $generated@@69 $generated@@70))
)))
(assert (forall (($generated@@72 Int) ) (! (= ($generated@@71 $generated@@72) $generated@@72)
 :pattern ( ($generated@@71 $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@T) ) (! (= ($generated@@73 $generated@@75 $generated@@74) $generated@@74)
 :pattern ( ($generated@@73 $generated@@75 $generated@@74))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@24 $generated@@25 ($generated@@76 $generated@@79 $generated@@80) ($generated@@26 $generated@@78))  (and ($generated@@77 $generated@@79 $generated@@78) ($generated@@24 $generated@@25 $generated@@80 ($generated@@26 $generated@@78))))
 :pattern ( ($generated@@24 $generated@@25 ($generated@@76 $generated@@79 $generated@@80) ($generated@@26 $generated@@78)))
)))
(assert (forall (($generated@@82 T@U) ) (! (= ($generated@@28 $generated@@82) (= ($generated@@81 $generated@@82) $generated@@3))
 :pattern ( ($generated@@28 $generated@@82))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@T) ) (! (= ($generated@@84 $generated@@86 ($generated@@83 $generated@@86 $generated@@85)) $generated@@85)
 :pattern ( ($generated@@83 $generated@@86 $generated@@85))
)))
(assert (forall (($generated@@87 T@U) ) (!  (=> ($generated@@28 $generated@@87) (exists (($generated@@88 T@U) ($generated@@89 T@U) ) (= $generated@@87 ($generated@@76 $generated@@88 $generated@@89))))
 :pattern ( ($generated@@28 $generated@@87))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ) (!  (=> (and ($generated@@24 $generated@@25 $generated@@93 ($generated@@26 $generated@@90)) ($generated@@24 $generated@@25 $generated@@94 ($generated@@26 $generated@@91))) (= ($generated@@33 $generated@@90 $generated@@91 ($generated@@23 $generated@@92) $generated@@93 $generated@@94)  (and (and ($generated@@28 $generated@@93) ($generated@@28 $generated@@94)) (=> (and ($generated@@28 $generated@@93) ($generated@@28 $generated@@94)) (and (= ($generated@@29 $generated@@93) ($generated@@29 $generated@@94)) ($generated@@33 $generated@@90 $generated@@91 $generated@@92 ($generated@@32 $generated@@93) ($generated@@32 $generated@@94)))))))
 :pattern ( ($generated@@33 $generated@@90 $generated@@91 ($generated@@23 $generated@@92) $generated@@93 $generated@@94))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@T) ) (! (= ($generated@@95 ($generated@@84 $generated@@100 $generated@@97) $generated@@98 $generated@@99) ($generated@@96 $generated@@100 $generated@@97 $generated@@98 $generated@@99))
 :pattern ( ($generated@@95 ($generated@@84 $generated@@100 $generated@@97) $generated@@98 $generated@@99))
)))
(assert (forall (($generated@@102 T@U) ) (!  (and (= ($generated@@21 ($generated@@26 $generated@@102)) $generated@@2) (= ($generated@@101 ($generated@@26 $generated@@102)) $generated@@4))
 :pattern ( ($generated@@26 $generated@@102))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (!  (=> (and ($generated@@103 $generated@@105) (<= ($generated@@27 $generated@@105) ($generated@@27 $generated@@104))) (and (= ($generated@@103 ($generated@@30 $generated@@104 $generated@@105)) ($generated@@103 $generated@@104)) (= ($generated@@27 ($generated@@30 $generated@@104 $generated@@105)) (- ($generated@@27 $generated@@104) ($generated@@27 $generated@@105)))))
 :pattern ( ($generated@@30 $generated@@104 $generated@@105))
)))
(assert (forall (($generated@@106 Int) ) (!  (=> (<= 0 $generated@@106) (and ($generated@@103 ($generated@@31 $generated@@106)) (= ($generated@@27 ($generated@@31 $generated@@106)) $generated@@106)))
 :pattern ( ($generated@@31 $generated@@106))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ) (!  (or (or ($generated@@46 $generated@@107 $generated@@108) (= $generated@@107 $generated@@108)) ($generated@@46 $generated@@108 $generated@@107))
 :pattern ( ($generated@@46 $generated@@107 $generated@@108) ($generated@@46 $generated@@108 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ) (!  (=> ($generated@@77 $generated@@109 $generated) (and (= ($generated@@84 $generated@@7 ($generated@@83 $generated@@7 $generated@@109)) $generated@@109) ($generated@@24 $generated@@7 ($generated@@83 $generated@@7 $generated@@109) $generated)))
 :pattern ( ($generated@@77 $generated@@109 $generated))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@T) ) (! (= ($generated@@77 ($generated@@84 $generated@@112 $generated@@110) $generated@@111) ($generated@@24 $generated@@112 $generated@@110 $generated@@111))
 :pattern ( ($generated@@77 ($generated@@84 $generated@@112 $generated@@110) $generated@@111))
)))
(assert (forall (($generated@@113 T@U) ) (! (<= 0 ($generated@@27 $generated@@113))
 :pattern ( ($generated@@27 $generated@@113))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@81 ($generated@@76 $generated@@114 $generated@@115)) $generated@@3)
 :pattern ( ($generated@@76 $generated@@114 $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@29 ($generated@@76 $generated@@116 $generated@@117)) $generated@@116)
 :pattern ( ($generated@@76 $generated@@116 $generated@@117))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ) (! (= ($generated@@32 ($generated@@76 $generated@@118 $generated@@119)) $generated@@119)
 :pattern ( ($generated@@76 $generated@@118 $generated@@119))
)))
(assert (forall (($generated@@121 T@U) ) (! (= ($generated@@120 ($generated@@26 $generated@@121)) $generated@@121)
 :pattern ( ($generated@@26 $generated@@121))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@T) ) (! (= ($generated@@83 $generated@@123 ($generated@@84 $generated@@123 $generated@@122)) $generated@@122)
 :pattern ( ($generated@@84 $generated@@123 $generated@@122))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ) (!  (and (and (and (=> ($generated@@46 $generated@@124 $generated@@125) (or (not (= $generated@@124 $generated@@125)) (not true))) (=> (and ($generated@@103 $generated@@124) (not ($generated@@103 $generated@@125))) ($generated@@46 $generated@@124 $generated@@125))) (=> (and ($generated@@103 $generated@@124) ($generated@@103 $generated@@125)) (= ($generated@@46 $generated@@124 $generated@@125) (< ($generated@@27 $generated@@124) ($generated@@27 $generated@@125))))) (=> (and ($generated@@46 $generated@@124 $generated@@125) ($generated@@103 $generated@@125)) ($generated@@103 $generated@@124)))
 :pattern ( ($generated@@46 $generated@@124 $generated@@125))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 Int) ) (! (= ($generated@@62 ($generated@@23 $generated@@126) $generated@@127) ($generated@@62 $generated@@126 $generated@@127))
 :pattern ( ($generated@@62 ($generated@@23 $generated@@126) $generated@@127))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ) (! (= ($generated@@128 ($generated@@23 $generated@@129) $generated@@130) ($generated@@128 $generated@@129 $generated@@130))
 :pattern ( ($generated@@128 ($generated@@23 $generated@@129) $generated@@130))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@33 $generated@@131 $generated@@132 ($generated@@23 $generated@@133) $generated@@134 $generated@@135) (forall (($generated@@136 T@U) ) (! ($generated@@22 $generated@@131 $generated@@132 $generated@@136 ($generated@@23 $generated@@133) $generated@@134 $generated@@135)
 :pattern ( ($generated@@22 $generated@@131 $generated@@132 $generated@@136 ($generated@@23 $generated@@133) $generated@@134 $generated@@135))
)))
 :pattern ( ($generated@@33 $generated@@131 $generated@@132 ($generated@@23 $generated@@133) $generated@@134 $generated@@135))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (!  (=> (and ($generated@@137 $generated@@140) (and ($generated@@28 $generated@@138) ($generated@@96 $generated@@25 $generated@@138 ($generated@@26 $generated@@139) $generated@@140))) ($generated@@95 ($generated@@29 $generated@@138) $generated@@139 $generated@@140))
 :pattern ( ($generated@@95 ($generated@@29 $generated@@138) $generated@@139 $generated@@140))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@152 T@T) ($generated@@153 T@T) ($generated@@154 T@T) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (! (= ($generated@@141 $generated@@152 $generated@@153 $generated@@154 ($generated@@148 $generated@@152 $generated@@153 $generated@@154 $generated@@156 $generated@@157 $generated@@158 $generated@@155) $generated@@157 $generated@@158) $generated@@155)
 :weight 0
)) (and (forall (($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (!  (or (= $generated@@164 $generated@@166) (= ($generated@@141 $generated@@159 $generated@@160 $generated@@161 ($generated@@148 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@164 $generated@@165 $generated@@162) $generated@@166 $generated@@167) ($generated@@141 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@166 $generated@@167)))
 :weight 0
)) (forall (($generated@@168 T@T) ($generated@@169 T@T) ($generated@@170 T@T) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (!  (or (= $generated@@174 $generated@@176) (= ($generated@@141 $generated@@168 $generated@@169 $generated@@170 ($generated@@148 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@173 $generated@@174 $generated@@171) $generated@@175 $generated@@176) ($generated@@141 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@175 $generated@@176)))
 :weight 0
)))) (= ($generated@@5 $generated@@142) 4)) (= ($generated@@5 $generated@@143) 5)) (forall (($generated@@177 T@T) ($generated@@178 T@T) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (! (= ($generated@@145 $generated@@177 $generated@@178 ($generated@@149 $generated@@177 $generated@@178 $generated@@180 $generated@@181 $generated@@179) $generated@@181) $generated@@179)
 :weight 0
))) (forall (($generated@@182 T@T) ($generated@@183 T@T) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ) (!  (or (= $generated@@186 $generated@@187) (= ($generated@@145 $generated@@182 $generated@@183 ($generated@@149 $generated@@182 $generated@@183 $generated@@185 $generated@@186 $generated@@184) $generated@@187) ($generated@@145 $generated@@182 $generated@@183 $generated@@185 $generated@@187)))
 :weight 0
))) (= ($generated@@5 $generated@@146) 6)) (forall (($generated@@188 T@T) ($generated@@189 T@T) ) (= ($generated@@5 ($generated@@147 $generated@@188 $generated@@189)) 7))) (forall (($generated@@190 T@T) ($generated@@191 T@T) ) (! (= ($generated@@150 ($generated@@147 $generated@@190 $generated@@191)) $generated@@190)
 :pattern ( ($generated@@147 $generated@@190 $generated@@191))
))) (forall (($generated@@192 T@T) ($generated@@193 T@T) ) (! (= ($generated@@151 ($generated@@147 $generated@@192 $generated@@193)) $generated@@193)
 :pattern ( ($generated@@147 $generated@@192 $generated@@193))
))))
(assert (forall (($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 Bool) ($generated@@198 T@U) ($generated@@199 T@U) ) (! (= ($generated@@10 ($generated@@141 $generated@@142 $generated@@143 $generated@@6 ($generated@@144 $generated@@194 $generated@@195 $generated@@196 $generated@@197) $generated@@198 $generated@@199))  (=> (and (or (not (= $generated@@198 $generated@@194)) (not true)) ($generated@@10 ($generated@@83 $generated@@6 ($generated@@145 $generated@@143 $generated@@146 ($generated@@145 $generated@@142 ($generated@@147 $generated@@143 $generated@@146) $generated@@195 $generated@@198) $generated@@196)))) $generated@@197))
 :pattern ( ($generated@@141 $generated@@142 $generated@@143 $generated@@6 ($generated@@144 $generated@@194 $generated@@195 $generated@@196 $generated@@197) $generated@@198 $generated@@199))
)))
(assert (forall (($generated@@200 T@U) ($generated@@201 T@U) ) (!  (=> ($generated@@77 $generated@@201 ($generated@@26 $generated@@200)) (and (= ($generated@@84 $generated@@25 ($generated@@83 $generated@@25 $generated@@201)) $generated@@201) ($generated@@24 $generated@@25 ($generated@@83 $generated@@25 $generated@@201) ($generated@@26 $generated@@200))))
 :pattern ( ($generated@@77 $generated@@201 ($generated@@26 $generated@@200)))
)))
(assert  (=> (<= 1 $generated@@61) (forall (($generated@@202 T@U) ($generated@@203 Int) ) (!  (=> (or ($generated@@63 $generated@@203) (< 1 $generated@@61)) (and ($generated@@63 (+ $generated@@203 1)) (= ($generated@@62 ($generated@@23 $generated@@202) $generated@@203) ($generated@@76 ($generated@@84 $generated@@7 ($generated@@11 $generated@@203)) ($generated@@62 $generated@@202 (+ $generated@@203 1))))))
 :pattern ( ($generated@@62 ($generated@@23 $generated@@202) $generated@@203))
))))
(assert (forall (($generated@@204 T@U) ) (!  (=> ($generated@@103 $generated@@204) (= $generated@@204 ($generated@@31 ($generated@@27 $generated@@204))))
 :pattern ( ($generated@@27 $generated@@204))
 :pattern ( ($generated@@103 $generated@@204))
)))
(assert (forall (($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ) (!  (=> (and ($generated@@137 $generated@@207) (and ($generated@@28 $generated@@205) ($generated@@96 $generated@@25 $generated@@205 ($generated@@26 $generated@@206) $generated@@207))) ($generated@@96 $generated@@25 ($generated@@32 $generated@@205) ($generated@@26 $generated@@206) $generated@@207))
 :pattern ( ($generated@@96 $generated@@25 ($generated@@32 $generated@@205) ($generated@@26 $generated@@206) $generated@@207))
)))
(assert (forall (($generated@@208 T@U) ($generated@@209 T@U) ) (!  (=> (and ($generated@@103 $generated@@209) (<= ($generated@@27 $generated@@209) ($generated@@27 $generated@@208))) (or (and (= $generated@@209 ($generated@@31 0)) (= ($generated@@30 $generated@@208 $generated@@209) $generated@@208)) (and (or (not (= $generated@@209 ($generated@@31 0))) (not true)) ($generated@@46 ($generated@@30 $generated@@208 $generated@@209) $generated@@208))))
 :pattern ( ($generated@@30 $generated@@208 $generated@@209))
)))
(assert (forall (($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 T@U) ($generated@@216 T@U) ) (!  (=> (and ($generated@@46 $generated@@212 $generated@@216) ($generated@@22 $generated@@210 $generated@@211 $generated@@216 ($generated@@23 $generated@@213) $generated@@214 $generated@@215)) ($generated@@22 $generated@@210 $generated@@211 $generated@@212 ($generated@@23 $generated@@213) $generated@@214 $generated@@215))
 :pattern ( ($generated@@22 $generated@@210 $generated@@211 $generated@@212 ($generated@@23 $generated@@213) $generated@@214 $generated@@215) ($generated@@22 $generated@@210 $generated@@211 $generated@@216 ($generated@@23 $generated@@213) $generated@@214 $generated@@215))
)))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ) (! (= ($generated@@33 $generated@@217 $generated@@218 ($generated@@23 $generated@@219) $generated@@220 $generated@@221) ($generated@@33 $generated@@217 $generated@@218 $generated@@219 $generated@@220 $generated@@221))
 :pattern ( ($generated@@33 $generated@@217 $generated@@218 ($generated@@23 $generated@@219) $generated@@220 $generated@@221))
)))
(assert  (=> (<= 1 $generated@@61) (forall (($generated@@223 T@U) ($generated@@224 T@U) ) (!  (=> (or ($generated@@222 $generated@@224) (and (< 1 $generated@@61) ($generated@@24 $generated@@25 $generated@@224 ($generated@@26 $generated)))) (and (and ($generated@@28 $generated@@224) (and ($generated@@28 $generated@@224) ($generated@@222 ($generated@@32 $generated@@224)))) (= ($generated@@128 ($generated@@23 $generated@@223) $generated@@224) ($generated@@76 ($generated@@84 $generated@@7 ($generated@@11 (+ ($generated@@12 ($generated@@83 $generated@@7 ($generated@@29 $generated@@224))) 1))) ($generated@@128 $generated@@223 ($generated@@32 $generated@@224))))))
 :pattern ( ($generated@@128 ($generated@@23 $generated@@223) $generated@@224))
))))
(assert (forall (($generated@@225 Int) ) (! (= ($generated@@84 $generated@@7 ($generated@@11 ($generated@@71 $generated@@225))) ($generated@@73 $generated@@146 ($generated@@84 $generated@@7 ($generated@@11 $generated@@225))))
 :pattern ( ($generated@@84 $generated@@7 ($generated@@11 ($generated@@71 $generated@@225))))
)))
(assert (forall (($generated@@226 T@U) ($generated@@227 T@T) ) (! (= ($generated@@84 $generated@@227 ($generated@@73 $generated@@227 $generated@@226)) ($generated@@73 $generated@@146 ($generated@@84 $generated@@227 $generated@@226)))
 :pattern ( ($generated@@84 $generated@@227 ($generated@@73 $generated@@227 $generated@@226)))
)))
(assert (forall (($generated@@228 T@U) ($generated@@229 T@U) ($generated@@230 T@U) ($generated@@231 T@U) ($generated@@232 T@U) ) (!  (=> (forall (($generated@@233 Int) ) (!  (=> (<= 0 $generated@@233) ($generated@@22 $generated@@228 $generated@@229 ($generated@@31 $generated@@233) ($generated@@23 $generated@@230) $generated@@231 $generated@@232))
 :pattern ( ($generated@@22 $generated@@228 $generated@@229 ($generated@@31 $generated@@233) ($generated@@23 $generated@@230) $generated@@231 $generated@@232))
)) ($generated@@33 $generated@@228 $generated@@229 ($generated@@23 $generated@@230) $generated@@231 $generated@@232))
 :pattern ( ($generated@@33 $generated@@228 $generated@@229 ($generated@@23 $generated@@230) $generated@@231 $generated@@232))
)))
(assert (forall (($generated@@234 T@U) ($generated@@235 T@U) ) (! ($generated@@96 $generated@@7 $generated@@235 $generated $generated@@234)
 :pattern ( ($generated@@96 $generated@@7 $generated@@235 $generated $generated@@234))
)))
(assert (forall (($generated@@236 T@U) ($generated@@237 T@U) ($generated@@238 T@U) ($generated@@239 T@U) ) (!  (=> ($generated@@137 $generated@@239) (= ($generated@@96 $generated@@25 ($generated@@76 $generated@@237 $generated@@238) ($generated@@26 $generated@@236) $generated@@239)  (and ($generated@@95 $generated@@237 $generated@@236 $generated@@239) ($generated@@96 $generated@@25 $generated@@238 ($generated@@26 $generated@@236) $generated@@239))))
 :pattern ( ($generated@@96 $generated@@25 ($generated@@76 $generated@@237 $generated@@238) ($generated@@26 $generated@@236) $generated@@239))
)))
(assert  (=> (<= 1 $generated@@61) (forall (($generated@@240 T@U) ($generated@@241 T@U) ) (!  (=> (or ($generated@@222 $generated@@241) (and (< 1 $generated@@61) ($generated@@24 $generated@@25 $generated@@241 ($generated@@26 $generated)))) ($generated@@24 $generated@@25 ($generated@@128 $generated@@240 $generated@@241) ($generated@@26 $generated)))
 :pattern ( ($generated@@128 $generated@@240 $generated@@241))
))))
(assert (forall (($generated@@242 T@U) ) (! ($generated@@24 $generated@@7 $generated@@242 $generated)
 :pattern ( ($generated@@24 $generated@@7 $generated@@242 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@243 () T@U)
(declare-fun $generated@@244 () T@U)
(declare-fun $generated@@245 () T@U)
(declare-fun $generated@@246 () T@U)
(declare-fun $generated@@247 (T@U) Bool)
(declare-fun $generated@@248 () Int)
(declare-fun $generated@@249 () T@U)
(declare-fun $generated@@250 () T@U)
(declare-fun $generated@@251 () Int)
(declare-fun $generated@@252 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@253  (=> (= $generated@@243 ($generated@@144 $generated@@244 $generated@@245 $generated@@1 false)) (=> (and (and (and (and ($generated@@137 $generated@@246) ($generated@@247 $generated@@246)) (= $generated@@245 $generated@@246)) (and (and ($generated@@96 $generated@@7 ($generated@@11 $generated@@248) $generated $generated@@246) ($generated@@63 $generated@@248)) (and ($generated@@28 ($generated@@62 ($generated@@23 $generated@@249) $generated@@248)) (= $generated@@250 ($generated@@62 ($generated@@23 $generated@@249) $generated@@248))))) (and (and (and ($generated@@96 $generated@@25 $generated@@250 ($generated@@26 $generated) $generated@@246) ($generated@@222 ($generated@@62 ($generated@@23 $generated@@249) $generated@@248))) (and ($generated@@28 ($generated@@128 ($generated@@23 $generated@@249) ($generated@@62 ($generated@@23 $generated@@249) $generated@@248))) (= $generated@@251 (+ $generated@@248 1)))) (and (and ($generated@@96 $generated@@7 ($generated@@11 $generated@@251) $generated $generated@@246) ($generated@@63 (+ $generated@@248 1))) (and ($generated@@28 ($generated@@62 ($generated@@23 $generated@@249) (+ $generated@@248 1))) (= (ControlFlow 0 2) (- 0 1)))))) (<= 0 $generated@@252)))))
(let (($generated@@254  (=> (and (and (and ($generated@@137 $generated@@245) ($generated@@247 $generated@@245)) (<= ($generated@@71 0) $generated@@252)) (and (= 2 $generated@@61) (= (ControlFlow 0 3) 2))) $generated@@253)))
$generated@@254)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)