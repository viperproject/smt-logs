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
(declare-fun $generated@@29 (T@U Int) T@U)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 (T@U) Int)
(declare-fun $generated@@32 (T@U) Int)
(declare-fun $generated@@33 (T@T T@U) T@U)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@38 (T@T T@U T@U) Bool)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 () T@U)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@42 (T@U) T@U)
(declare-fun $generated@@44 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@45 () T@U)
(declare-fun $generated@@48 () Int)
(declare-fun $generated@@49 (T@U T@U) Bool)
(declare-fun $generated@@50 (T@T T@U) T@U)
(declare-fun $generated@@51 (T@U T@U) Bool)
(declare-fun $generated@@52 (T@U) T@U)
(declare-fun $generated@@53 (T@U) Bool)
(declare-fun $generated@@56 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@57 () T@T)
(declare-fun $generated@@58 () T@T)
(declare-fun $generated@@59 (T@T T@T) T@T)
(declare-fun $generated@@60 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@61 (T@T) T@T)
(declare-fun $generated@@62 (T@T) T@T)
(declare-fun $generated@@82 (T@U T@U) Bool)
(declare-fun $generated@@86 (Int) Int)
(declare-fun $generated@@90 (T@U) Bool)
(declare-fun $generated@@91 (T@U) T@U)
(declare-fun $generated@@94 (T@U T@U T@U) T@U)
(declare-fun $generated@@95 (T@U T@U T@U) Bool)
(declare-fun $generated@@96 (T@U) Bool)
(declare-fun $generated@@101 (T@T T@U) T@U)
(declare-fun $generated@@104 (T@U) T@U)
(declare-fun $generated@@109 (T@U T@U T@U) Bool)
(declare-fun $generated@@123 (T@U) T@U)
(declare-fun $generated@@127 (T@U) T@U)
(declare-fun $generated@@129 (T@U T@U) Bool)
(declare-fun $generated@@136 () T@T)
(declare-fun $generated@@137 (T@U) T@U)
(declare-fun $generated@@150 () T@T)
(declare-fun $generated@@160 (T@U) T@U)
(declare-fun $generated@@163 (T@U) T@U)
(declare-fun $generated@@166 (T@U) T@U)
(declare-fun $generated@@177 (T@U) Int)
(declare-fun $generated@@179 (T@U) Int)
(declare-fun $generated@@184 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@185 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@186 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (= ($generated@@28 $generated) $generated@@1))
(assert (= ($generated@@28 $generated@@0) $generated@@2))
(assert (= ($generated@@12 $generated@@34) 3))
(assert (forall (($generated@@35 T@U) ($generated@@36 Int) ) (!  (=> (and (<= 0 $generated@@36) (< $generated@@36 ($generated@@31 $generated@@35))) (< ($generated@@32 ($generated@@33 $generated@@34 ($generated@@29 $generated@@35 $generated@@36))) ($generated@@32 ($generated@@30 $generated@@35))))
 :pattern ( ($generated@@29 $generated@@35 $generated@@36) ($generated@@30 $generated@@35))
)))
(assert (= ($generated@@31 $generated@@37) 0))
(assert (= ($generated@@12 $generated@@39) 4))
(assert (forall (($generated@@43 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@43 $generated@@40)  (or (= $generated@@43 $generated@@41) (= ($generated@@42 $generated@@43) $generated@@40)))
 :pattern ( ($generated@@38 $generated@@39 $generated@@43 $generated@@40))
)))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@U) ) (! (= ($generated@@44 $generated@@39 $generated@@46 $generated@@45 $generated@@47) ($generated@@44 $generated@@39 $generated@@46 $generated@@40 $generated@@47))
 :pattern ( ($generated@@44 $generated@@39 $generated@@46 $generated@@45 $generated@@47))
 :pattern ( ($generated@@44 $generated@@39 $generated@@46 $generated@@40 $generated@@47))
)))
(assert  (=> (<= 0 $generated@@48) (forall (($generated@@54 T@U) ($generated@@55 T@U) ) (!  (=> (or ($generated@@51 $generated@@54 ($generated@@50 $generated@@34 $generated@@55)) (and (< 0 $generated@@48) ($generated@@38 $generated@@34 $generated@@55 ($generated@@52 $generated@@54)))) (= ($generated@@49 $generated@@54 ($generated@@50 $generated@@34 $generated@@55)) ($generated@@17 ($generated@@50 $generated@@13 ($generated@@16 ($generated@@53 ($generated@@50 $generated@@34 $generated@@55)))))))
 :weight 3
 :pattern ( ($generated@@49 $generated@@54 ($generated@@50 $generated@@34 $generated@@55)))
))))
(assert  (and (and (and (and (and (and (forall (($generated@@63 T@T) ($generated@@64 T@T) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ) (! (= ($generated@@56 $generated@@63 $generated@@64 ($generated@@60 $generated@@63 $generated@@64 $generated@@66 $generated@@67 $generated@@65) $generated@@67) $generated@@65)
 :weight 0
)) (forall (($generated@@68 T@T) ($generated@@69 T@T) ($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (!  (or (= $generated@@72 $generated@@73) (= ($generated@@56 $generated@@68 $generated@@69 ($generated@@60 $generated@@68 $generated@@69 $generated@@71 $generated@@72 $generated@@70) $generated@@73) ($generated@@56 $generated@@68 $generated@@69 $generated@@71 $generated@@73)))
 :weight 0
))) (= ($generated@@12 $generated@@57) 5)) (= ($generated@@12 $generated@@58) 6)) (forall (($generated@@74 T@T) ($generated@@75 T@T) ) (= ($generated@@12 ($generated@@59 $generated@@74 $generated@@75)) 7))) (forall (($generated@@76 T@T) ($generated@@77 T@T) ) (! (= ($generated@@61 ($generated@@59 $generated@@76 $generated@@77)) $generated@@76)
 :pattern ( ($generated@@59 $generated@@76 $generated@@77))
))) (forall (($generated@@78 T@T) ($generated@@79 T@T) ) (! (= ($generated@@62 ($generated@@59 $generated@@78 $generated@@79)) $generated@@79)
 :pattern ( ($generated@@59 $generated@@78 $generated@@79))
))))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@44 $generated@@39 $generated@@80 $generated@@40 $generated@@81)  (or (= $generated@@80 $generated@@41) ($generated@@17 ($generated@@33 $generated@@13 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@39 ($generated@@59 $generated@@57 $generated@@58) $generated@@81 $generated@@80) $generated@@4)))))
 :pattern ( ($generated@@44 $generated@@39 $generated@@80 $generated@@40 $generated@@81))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ) (!  (=> ($generated@@82 $generated@@83 $generated@@84) (forall (($generated@@85 T@U) ) (!  (=> ($generated@@17 ($generated@@33 $generated@@13 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@39 ($generated@@59 $generated@@57 $generated@@58) $generated@@83 $generated@@85) $generated@@4))) ($generated@@17 ($generated@@33 $generated@@13 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@39 ($generated@@59 $generated@@57 $generated@@58) $generated@@84 $generated@@85) $generated@@4))))
 :pattern ( ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@39 ($generated@@59 $generated@@57 $generated@@58) $generated@@84 $generated@@85) $generated@@4))
)))
 :pattern ( ($generated@@82 $generated@@83 $generated@@84))
)))
(assert (forall (($generated@@87 Int) ) (! (= ($generated@@86 $generated@@87) $generated@@87)
 :pattern ( ($generated@@86 $generated@@87))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@50 $generated@@89 $generated@@88) $generated@@88)
 :pattern ( ($generated@@50 $generated@@89 $generated@@88))
)))
(assert (forall (($generated@@92 T@U) ) (! (= ($generated@@90 $generated@@92) (= ($generated@@91 $generated@@92) $generated@@8))
 :pattern ( ($generated@@90 $generated@@92))
)))
(assert (forall (($generated@@93 T@U) ) (! (= ($generated@@53 $generated@@93) (= ($generated@@91 $generated@@93) $generated@@9))
 :pattern ( ($generated@@53 $generated@@93))
)))
(assert  (=> (<= 1 $generated@@48) (forall (($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ) (!  (=> (and (or ($generated@@95 $generated@@98 $generated@@99 $generated@@100) (and (< 1 $generated@@48) (and ($generated@@44 $generated@@34 $generated@@100 ($generated@@52 $generated@@98) $generated@@97) ($generated@@53 $generated@@100)))) ($generated@@96 $generated@@97)) ($generated@@44 $generated@@34 ($generated@@94 $generated@@98 $generated@@99 $generated@@100) ($generated@@52 $generated@@99) $generated@@97))
 :pattern ( ($generated@@44 $generated@@34 ($generated@@94 $generated@@98 $generated@@99 $generated@@100) ($generated@@52 $generated@@99) $generated@@97))
))))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@T) ) (! (= ($generated@@101 $generated@@103 ($generated@@33 $generated@@103 $generated@@102)) $generated@@102)
 :pattern ( ($generated@@33 $generated@@103 $generated@@102))
)))
(assert (forall (($generated@@105 T@U) ) (!  (=> ($generated@@90 $generated@@105) (exists (($generated@@106 T@U) ) (= $generated@@105 ($generated@@104 $generated@@106))))
 :pattern ( ($generated@@90 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ) (!  (=> ($generated@@53 $generated@@107) (exists (($generated@@108 T@U) ) (= $generated@@107 ($generated@@30 $generated@@108))))
 :pattern ( ($generated@@53 $generated@@107))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@T) ) (! (= ($generated@@109 ($generated@@101 $generated@@113 $generated@@110) $generated@@111 $generated@@112) ($generated@@44 $generated@@113 $generated@@110 $generated@@111 $generated@@112))
 :pattern ( ($generated@@109 ($generated@@101 $generated@@113 $generated@@110) $generated@@111 $generated@@112))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (!  (=> ($generated@@82 $generated@@114 $generated@@115) (=> ($generated@@109 $generated@@116 $generated@@117 $generated@@114) ($generated@@109 $generated@@116 $generated@@117 $generated@@115)))
 :pattern ( ($generated@@82 $generated@@114 $generated@@115) ($generated@@109 $generated@@116 $generated@@117 $generated@@114))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@T) ) (!  (=> ($generated@@82 $generated@@118 $generated@@119) (=> ($generated@@44 $generated@@122 $generated@@120 $generated@@121 $generated@@118) ($generated@@44 $generated@@122 $generated@@120 $generated@@121 $generated@@119)))
 :pattern ( ($generated@@82 $generated@@118 $generated@@119) ($generated@@44 $generated@@122 $generated@@120 $generated@@121 $generated@@118))
)))
(assert  (=> (<= 1 $generated@@48) (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> (or ($generated@@95 $generated@@124 $generated@@125 $generated@@126) (and (< 1 $generated@@48) (and ($generated@@38 $generated@@34 $generated@@126 ($generated@@52 $generated@@124)) ($generated@@53 $generated@@126)))) (= ($generated@@94 $generated@@124 $generated@@125 $generated@@126) ($generated@@30 ($generated@@123 $generated@@126))))
 :pattern ( ($generated@@94 $generated@@124 $generated@@125 $generated@@126))
))))
(assert (forall (($generated@@128 T@U) ) (!  (and (= ($generated@@28 ($generated@@52 $generated@@128)) $generated@@7) (= ($generated@@127 ($generated@@52 $generated@@128)) $generated@@11))
 :pattern ( ($generated@@52 $generated@@128))
)))
(assert (forall (($generated@@130 T@U) ) (!  (=> ($generated@@129 $generated@@130 $generated@@45) (and (= ($generated@@101 $generated@@39 ($generated@@33 $generated@@39 $generated@@130)) $generated@@130) ($generated@@38 $generated@@39 ($generated@@33 $generated@@39 $generated@@130) $generated@@45)))
 :pattern ( ($generated@@129 $generated@@130 $generated@@45))
)))
(assert (forall (($generated@@131 T@U) ) (!  (=> ($generated@@129 $generated@@131 $generated@@40) (and (= ($generated@@101 $generated@@39 ($generated@@33 $generated@@39 $generated@@131)) $generated@@131) ($generated@@38 $generated@@39 ($generated@@33 $generated@@39 $generated@@131) $generated@@40)))
 :pattern ( ($generated@@129 $generated@@131 $generated@@40))
)))
(assert (forall (($generated@@132 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@132 $generated@@45)  (and ($generated@@38 $generated@@39 $generated@@132 $generated@@40) (or (not (= $generated@@132 $generated@@41)) (not true))))
 :pattern ( ($generated@@38 $generated@@39 $generated@@132 $generated@@45))
 :pattern ( ($generated@@38 $generated@@39 $generated@@132 $generated@@40))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (!  (=> ($generated@@96 $generated@@135) (= ($generated@@44 $generated@@34 ($generated@@104 $generated@@134) ($generated@@52 $generated@@133) $generated@@135) ($generated@@109 $generated@@134 $generated@@133 $generated@@135)))
 :pattern ( ($generated@@44 $generated@@34 ($generated@@104 $generated@@134) ($generated@@52 $generated@@133) $generated@@135))
)))
(assert (= ($generated@@12 $generated@@136) 8))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ) (!  (=> (and ($generated@@96 $generated@@139) (and ($generated@@53 $generated@@138) (exists (($generated@@140 T@U) ) (! ($generated@@44 $generated@@34 $generated@@138 ($generated@@52 $generated@@140) $generated@@139)
 :pattern ( ($generated@@44 $generated@@34 $generated@@138 ($generated@@52 $generated@@140) $generated@@139))
)))) ($generated@@44 $generated@@136 ($generated@@123 $generated@@138) ($generated@@137 $generated) $generated@@139))
 :pattern ( ($generated@@44 $generated@@136 ($generated@@123 $generated@@138) ($generated@@137 $generated) $generated@@139))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (!  (=> ($generated@@96 $generated@@143) (= ($generated@@44 $generated@@34 ($generated@@30 $generated@@142) ($generated@@52 $generated@@141) $generated@@143) ($generated@@44 $generated@@136 $generated@@142 ($generated@@137 $generated) $generated@@143)))
 :pattern ( ($generated@@44 $generated@@34 ($generated@@30 $generated@@142) ($generated@@52 $generated@@141) $generated@@143))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ) (!  (=> ($generated@@38 $generated@@34 $generated@@145 ($generated@@52 $generated@@144)) (or ($generated@@90 $generated@@145) ($generated@@53 $generated@@145)))
 :pattern ( ($generated@@53 $generated@@145) ($generated@@38 $generated@@34 $generated@@145 ($generated@@52 $generated@@144)))
 :pattern ( ($generated@@90 $generated@@145) ($generated@@38 $generated@@34 $generated@@145 ($generated@@52 $generated@@144)))
)))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (!  (=> (or (not (= $generated@@146 $generated@@148)) (not true)) (=> (and ($generated@@82 $generated@@146 $generated@@147) ($generated@@82 $generated@@147 $generated@@148)) ($generated@@82 $generated@@146 $generated@@148)))
 :pattern ( ($generated@@82 $generated@@146 $generated@@147) ($generated@@82 $generated@@147 $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ) (!  (=> ($generated@@129 $generated@@149 $generated@@0) (and (= ($generated@@101 $generated@@14 ($generated@@33 $generated@@14 $generated@@149)) $generated@@149) ($generated@@38 $generated@@14 ($generated@@33 $generated@@14 $generated@@149) $generated@@0)))
 :pattern ( ($generated@@129 $generated@@149 $generated@@0))
)))
(assert (= ($generated@@12 $generated@@150) 9))
(assert (forall (($generated@@151 T@U) ) (!  (=> ($generated@@129 $generated@@151 $generated) (and (= ($generated@@101 $generated@@150 ($generated@@33 $generated@@150 $generated@@151)) $generated@@151) ($generated@@38 $generated@@150 ($generated@@33 $generated@@150 $generated@@151) $generated)))
 :pattern ( ($generated@@129 $generated@@151 $generated))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@T) ) (! (= ($generated@@129 ($generated@@101 $generated@@154 $generated@@152) $generated@@153) ($generated@@38 $generated@@154 $generated@@152 $generated@@153))
 :pattern ( ($generated@@129 ($generated@@101 $generated@@154 $generated@@152) $generated@@153))
)))
(assert (forall (($generated@@155 T@U) ) (! (<= 0 ($generated@@31 $generated@@155))
 :pattern ( ($generated@@31 $generated@@155))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (! (= ($generated@@44 $generated@@136 $generated@@156 ($generated@@137 $generated@@157) $generated@@158) (forall (($generated@@159 Int) ) (!  (=> (and (<= 0 $generated@@159) (< $generated@@159 ($generated@@31 $generated@@156))) ($generated@@109 ($generated@@29 $generated@@156 $generated@@159) $generated@@157 $generated@@158))
 :pattern ( ($generated@@29 $generated@@156 $generated@@159))
)))
 :pattern ( ($generated@@44 $generated@@136 $generated@@156 ($generated@@137 $generated@@157) $generated@@158))
)))
(assert (forall (($generated@@161 T@U) ) (! (= ($generated@@160 ($generated@@137 $generated@@161)) $generated@@161)
 :pattern ( ($generated@@137 $generated@@161))
)))
(assert (forall (($generated@@162 T@U) ) (! (= ($generated@@28 ($generated@@137 $generated@@162)) $generated@@3)
 :pattern ( ($generated@@137 $generated@@162))
)))
(assert (forall (($generated@@164 T@U) ) (! (= ($generated@@163 ($generated@@52 $generated@@164)) $generated@@164)
 :pattern ( ($generated@@52 $generated@@164))
)))
(assert (forall (($generated@@165 T@U) ) (! (= ($generated@@91 ($generated@@104 $generated@@165)) $generated@@8)
 :pattern ( ($generated@@104 $generated@@165))
)))
(assert (forall (($generated@@167 T@U) ) (! (= ($generated@@166 ($generated@@104 $generated@@167)) $generated@@167)
 :pattern ( ($generated@@104 $generated@@167))
)))
(assert (forall (($generated@@168 T@U) ) (! (= ($generated@@91 ($generated@@30 $generated@@168)) $generated@@9)
 :pattern ( ($generated@@30 $generated@@168))
)))
(assert (forall (($generated@@169 T@U) ) (! (= ($generated@@123 ($generated@@30 $generated@@169)) $generated@@169)
 :pattern ( ($generated@@30 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@T) ) (! (= ($generated@@33 $generated@@171 ($generated@@101 $generated@@171 $generated@@170)) $generated@@170)
 :pattern ( ($generated@@101 $generated@@171 $generated@@170))
)))
(assert  (=> (<= 1 $generated@@48) (forall (($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ) (!  (=> (or ($generated@@95 $generated@@172 $generated@@173 $generated@@174) (and (< 1 $generated@@48) (and ($generated@@38 $generated@@34 $generated@@174 ($generated@@52 $generated@@172)) ($generated@@53 $generated@@174)))) ($generated@@38 $generated@@34 ($generated@@94 $generated@@172 $generated@@173 $generated@@174) ($generated@@52 $generated@@173)))
 :pattern ( ($generated@@94 $generated@@172 $generated@@173 $generated@@174))
))))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (! (= ($generated@@38 $generated@@34 ($generated@@104 $generated@@176) ($generated@@52 $generated@@175)) ($generated@@129 $generated@@176 $generated@@175))
 :pattern ( ($generated@@38 $generated@@34 ($generated@@104 $generated@@176) ($generated@@52 $generated@@175)))
)))
(assert (forall (($generated@@178 T@U) ) (! (< ($generated@@177 $generated@@178) ($generated@@32 ($generated@@104 $generated@@178)))
 :pattern ( ($generated@@104 $generated@@178))
)))
(assert (forall (($generated@@180 T@U) ) (! (< ($generated@@179 $generated@@180) ($generated@@32 ($generated@@30 $generated@@180)))
 :pattern ( ($generated@@30 $generated@@180))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@U) ($generated@@183 T@U) ) (!  (=> (and ($generated@@96 $generated@@183) (and ($generated@@90 $generated@@181) ($generated@@44 $generated@@34 $generated@@181 ($generated@@52 $generated@@182) $generated@@183))) ($generated@@109 ($generated@@166 $generated@@181) $generated@@182 $generated@@183))
 :pattern ( ($generated@@109 ($generated@@166 $generated@@181) $generated@@182 $generated@@183))
)))
(assert  (and (forall (($generated@@187 T@T) ($generated@@188 T@T) ($generated@@189 T@T) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ) (! (= ($generated@@184 $generated@@187 $generated@@188 $generated@@189 ($generated@@186 $generated@@187 $generated@@188 $generated@@189 $generated@@191 $generated@@192 $generated@@193 $generated@@190) $generated@@192 $generated@@193) $generated@@190)
 :weight 0
)) (and (forall (($generated@@194 T@T) ($generated@@195 T@T) ($generated@@196 T@T) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ) (!  (or (= $generated@@199 $generated@@201) (= ($generated@@184 $generated@@194 $generated@@195 $generated@@196 ($generated@@186 $generated@@194 $generated@@195 $generated@@196 $generated@@198 $generated@@199 $generated@@200 $generated@@197) $generated@@201 $generated@@202) ($generated@@184 $generated@@194 $generated@@195 $generated@@196 $generated@@198 $generated@@201 $generated@@202)))
 :weight 0
)) (forall (($generated@@203 T@T) ($generated@@204 T@T) ($generated@@205 T@T) ($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ) (!  (or (= $generated@@209 $generated@@211) (= ($generated@@184 $generated@@203 $generated@@204 $generated@@205 ($generated@@186 $generated@@203 $generated@@204 $generated@@205 $generated@@207 $generated@@208 $generated@@209 $generated@@206) $generated@@210 $generated@@211) ($generated@@184 $generated@@203 $generated@@204 $generated@@205 $generated@@207 $generated@@210 $generated@@211)))
 :weight 0
)))))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 Bool) ($generated@@216 T@U) ($generated@@217 T@U) ) (! (= ($generated@@17 ($generated@@184 $generated@@39 $generated@@57 $generated@@13 ($generated@@185 $generated@@212 $generated@@213 $generated@@214 $generated@@215) $generated@@216 $generated@@217))  (=> (and (or (not (= $generated@@216 $generated@@212)) (not true)) ($generated@@17 ($generated@@33 $generated@@13 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@39 ($generated@@59 $generated@@57 $generated@@58) $generated@@213 $generated@@216) $generated@@214)))) $generated@@215))
 :pattern ( ($generated@@184 $generated@@39 $generated@@57 $generated@@13 ($generated@@185 $generated@@212 $generated@@213 $generated@@214 $generated@@215) $generated@@216 $generated@@217))
)))
(assert (forall (($generated@@218 T@U) ) (! (= ($generated@@177 ($generated@@101 $generated@@34 $generated@@218)) ($generated@@32 $generated@@218))
 :pattern ( ($generated@@177 ($generated@@101 $generated@@34 $generated@@218)))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ) (!  (=> ($generated@@129 $generated@@219 ($generated@@137 $generated@@220)) (and (= ($generated@@101 $generated@@136 ($generated@@33 $generated@@136 $generated@@219)) $generated@@219) ($generated@@38 $generated@@136 ($generated@@33 $generated@@136 $generated@@219) ($generated@@137 $generated@@220))))
 :pattern ( ($generated@@129 $generated@@219 ($generated@@137 $generated@@220)))
)))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@U) ) (!  (=> ($generated@@129 $generated@@222 ($generated@@52 $generated@@221)) (and (= ($generated@@101 $generated@@34 ($generated@@33 $generated@@34 $generated@@222)) $generated@@222) ($generated@@38 $generated@@34 ($generated@@33 $generated@@34 $generated@@222) ($generated@@52 $generated@@221))))
 :pattern ( ($generated@@129 $generated@@222 ($generated@@52 $generated@@221)))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 T@U) ) (! (= ($generated@@38 $generated@@34 ($generated@@30 $generated@@224) ($generated@@52 $generated@@223)) ($generated@@38 $generated@@136 $generated@@224 ($generated@@137 $generated)))
 :pattern ( ($generated@@38 $generated@@34 ($generated@@30 $generated@@224) ($generated@@52 $generated@@223)))
)))
(assert (= ($generated@@28 $generated@@45) $generated@@5))
(assert (= ($generated@@127 $generated@@45) $generated@@10))
(assert (= ($generated@@28 $generated@@40) $generated@@6))
(assert (= ($generated@@127 $generated@@40) $generated@@10))
(assert  (=> (<= 0 $generated@@48) (forall (($generated@@225 T@U) ($generated@@226 T@U) ) (!  (=> (or ($generated@@51 $generated@@225 $generated@@226) (and (< 0 $generated@@48) ($generated@@38 $generated@@34 $generated@@226 ($generated@@52 $generated@@225)))) (= ($generated@@49 $generated@@225 $generated@@226) ($generated@@53 $generated@@226)))
 :pattern ( ($generated@@49 $generated@@225 $generated@@226))
))))
(assert (forall (($generated@@227 Int) ) (! (= ($generated@@101 $generated@@14 ($generated@@18 ($generated@@86 $generated@@227))) ($generated@@50 $generated@@58 ($generated@@101 $generated@@14 ($generated@@18 $generated@@227))))
 :pattern ( ($generated@@101 $generated@@14 ($generated@@18 ($generated@@86 $generated@@227))))
)))
(assert (forall (($generated@@228 T@U) ) (! (= ($generated@@104 ($generated@@50 $generated@@58 $generated@@228)) ($generated@@50 $generated@@34 ($generated@@104 $generated@@228)))
 :pattern ( ($generated@@104 ($generated@@50 $generated@@58 $generated@@228)))
)))
(assert (forall (($generated@@229 T@U) ) (! (= ($generated@@30 ($generated@@50 $generated@@136 $generated@@229)) ($generated@@50 $generated@@34 ($generated@@30 $generated@@229)))
 :pattern ( ($generated@@30 ($generated@@50 $generated@@136 $generated@@229)))
)))
(assert (forall (($generated@@230 T@U) ($generated@@231 T@T) ) (! (= ($generated@@101 $generated@@231 ($generated@@50 $generated@@231 $generated@@230)) ($generated@@50 $generated@@58 ($generated@@101 $generated@@231 $generated@@230)))
 :pattern ( ($generated@@101 $generated@@231 ($generated@@50 $generated@@231 $generated@@230)))
)))
(assert (forall (($generated@@232 T@U) ) (!  (=> (= ($generated@@31 $generated@@232) 0) (= $generated@@232 $generated@@37))
 :pattern ( ($generated@@31 $generated@@232))
)))
(assert  (=> (<= 1 $generated@@48) (forall (($generated@@233 T@U) ($generated@@234 T@U) ($generated@@235 T@U) ) (!  (=> (or ($generated@@95 $generated@@233 $generated@@234 ($generated@@50 $generated@@34 $generated@@235)) (and (< 1 $generated@@48) (and ($generated@@38 $generated@@34 $generated@@235 ($generated@@52 $generated@@233)) ($generated@@17 ($generated@@50 $generated@@13 ($generated@@16 ($generated@@53 ($generated@@50 $generated@@34 $generated@@235)))))))) (= ($generated@@94 $generated@@233 $generated@@234 ($generated@@50 $generated@@34 $generated@@235)) ($generated@@50 $generated@@34 ($generated@@30 ($generated@@50 $generated@@136 ($generated@@123 ($generated@@50 $generated@@34 $generated@@235)))))))
 :weight 3
 :pattern ( ($generated@@94 $generated@@233 $generated@@234 ($generated@@50 $generated@@34 $generated@@235)))
))))
(assert (forall (($generated@@236 T@U) ($generated@@237 T@U) ) (! ($generated@@44 $generated@@14 $generated@@237 $generated@@0 $generated@@236)
 :pattern ( ($generated@@44 $generated@@14 $generated@@237 $generated@@0 $generated@@236))
)))
(assert (forall (($generated@@238 T@U) ($generated@@239 T@U) ) (! ($generated@@44 $generated@@150 $generated@@239 $generated $generated@@238)
 :pattern ( ($generated@@44 $generated@@150 $generated@@239 $generated $generated@@238))
)))
(assert (forall (($generated@@240 T@U) ($generated@@241 T@U) ) (! (= ($generated@@38 $generated@@136 $generated@@240 ($generated@@137 $generated@@241)) (forall (($generated@@242 Int) ) (!  (=> (and (<= 0 $generated@@242) (< $generated@@242 ($generated@@31 $generated@@240))) ($generated@@129 ($generated@@29 $generated@@240 $generated@@242) $generated@@241))
 :pattern ( ($generated@@29 $generated@@240 $generated@@242))
)))
 :pattern ( ($generated@@38 $generated@@136 $generated@@240 ($generated@@137 $generated@@241)))
)))
(assert (forall (($generated@@243 T@U) ($generated@@244 Int) ) (!  (=> (and (<= 0 $generated@@244) (< $generated@@244 ($generated@@31 $generated@@243))) (< ($generated@@32 ($generated@@33 $generated@@34 ($generated@@29 $generated@@243 $generated@@244))) ($generated@@179 $generated@@243)))
 :pattern ( ($generated@@32 ($generated@@33 $generated@@34 ($generated@@29 $generated@@243 $generated@@244))))
)))
(assert (forall (($generated@@245 T@U) ) (! ($generated@@38 $generated@@14 $generated@@245 $generated@@0)
 :pattern ( ($generated@@38 $generated@@14 $generated@@245 $generated@@0))
)))
(assert (forall (($generated@@246 T@U) ) (! ($generated@@38 $generated@@150 $generated@@246 $generated)
 :pattern ( ($generated@@38 $generated@@150 $generated@@246 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@247 () T@U)
(declare-fun $generated@@248 () T@U)
(declare-fun $generated@@249 () T@U)
(declare-fun $generated@@250 () T@U)
(declare-fun $generated@@251 () T@U)
(declare-fun $generated@@252 () T@U)
(declare-fun $generated@@253 () T@U)
(declare-fun $generated@@254 () T@U)
(declare-fun $generated@@255 () Int)
(declare-fun $generated@@256 () T@U)
(declare-fun $generated@@257 () T@U)
(declare-fun $generated@@258 (T@U) Bool)
(declare-fun $generated@@259 () T@U)
(declare-fun $generated@@260 () T@U)
(declare-fun $generated@@261 () T@U)
(declare-fun $generated@@262 () Int)
(declare-fun $generated@@263 () T@U)
(declare-fun $generated@@264 () T@U)
(declare-fun $generated@@265 () T@U)
(declare-fun $generated@@266 () T@U)
(declare-fun $generated@@267 () T@U)
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
 (=> (= (ControlFlow 0 0) 10) (let (($generated@@268  (=> (= (ControlFlow 0 2) (- 0 1)) ($generated@@53 $generated@@247))))
(let (($generated@@269  (=> (and (and (not ($generated@@49 $generated@@0 $generated@@248)) (= $generated@@249 ($generated@@50 $generated@@34 ($generated@@104 ($generated@@101 $generated@@14 ($generated@@18 ($generated@@86 0))))))) (and (= $generated@@247 $generated@@249) (= (ControlFlow 0 7) 2))) $generated@@268)))
(let (($generated@@270  (=> (and ($generated@@49 $generated@@0 $generated@@248) ($generated@@109 ($generated@@101 $generated@@34 $generated@@248) ($generated@@52 $generated@@0) $generated@@250)) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($generated@@53 $generated@@248)) (=> (and ($generated@@53 $generated@@248) ($generated@@95 $generated@@0 $generated@@0 $generated@@248)) (=> (and (and ($generated@@95 $generated@@0 $generated@@0 $generated@@248) (= $generated@@251 ($generated@@94 $generated@@0 $generated@@0 $generated@@248))) (and (= $generated@@247 $generated@@251) (= (ControlFlow 0 5) 2))) $generated@@268))))))
(let (($generated@@271  (=> (not ($generated@@49 $generated@@0 $generated@@252)) (=> (and (and (and (and (and ($generated@@38 $generated@@34 $generated@@253 ($generated@@52 $generated@@0)) ($generated@@44 $generated@@34 $generated@@253 ($generated@@52 $generated@@0) $generated@@254)) (= $generated@@255 ($generated@@86 (- 0 1)))) (and ($generated@@38 $generated@@34 $generated@@256 ($generated@@52 $generated@@0)) ($generated@@44 $generated@@34 $generated@@256 ($generated@@52 $generated@@0) $generated@@257))) (and (and ($generated@@96 $generated@@250) ($generated@@258 $generated@@250)) (and ($generated@@38 $generated@@34 $generated@@248 ($generated@@52 $generated@@0)) ($generated@@44 $generated@@34 $generated@@248 ($generated@@52 $generated@@0) $generated@@250)))) (and (and (and (=> (<= ($generated@@86 0) $generated@@255) ($generated@@90 $generated@@248)) (=> (<= ($generated@@86 0) $generated@@255) (= ($generated@@19 ($generated@@33 $generated@@14 ($generated@@166 $generated@@248))) $generated@@255))) (and (=> (< $generated@@255 0) ($generated@@53 $generated@@248)) (forall (($generated@@272 T@U) ) (!  (=> (and (or (not (= $generated@@272 $generated@@41)) (not true)) ($generated@@17 ($generated@@33 $generated@@13 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@39 ($generated@@59 $generated@@57 $generated@@58) $generated@@254 $generated@@272) $generated@@4)))) (= ($generated@@56 $generated@@39 ($generated@@59 $generated@@57 $generated@@58) $generated@@250 $generated@@272) ($generated@@56 $generated@@39 ($generated@@59 $generated@@57 $generated@@58) $generated@@254 $generated@@272)))
 :pattern ( ($generated@@56 $generated@@39 ($generated@@59 $generated@@57 $generated@@58) $generated@@250 $generated@@272))
)))) (and (and ($generated@@82 $generated@@254 $generated@@250) ($generated@@109 ($generated@@101 $generated@@34 $generated@@248) ($generated@@52 $generated@@0) $generated@@250)) (and ($generated@@51 $generated@@0 $generated@@248) ($generated@@51 $generated@@0 $generated@@248))))) (and (=> (= (ControlFlow 0 8) 5) $generated@@270) (=> (= (ControlFlow 0 8) 7) $generated@@269))))))
(let (($generated@@273  (=> (and ($generated@@49 $generated@@0 $generated@@252) ($generated@@109 ($generated@@101 $generated@@34 $generated@@252) ($generated@@52 $generated@@0) $generated@@254)) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($generated@@53 $generated@@252)) (=> (and ($generated@@53 $generated@@252) ($generated@@95 $generated@@0 $generated@@0 $generated@@252)) (=> (and (and ($generated@@95 $generated@@0 $generated@@0 $generated@@252) (= $generated@@259 ($generated@@94 $generated@@0 $generated@@0 $generated@@252))) (and (= $generated@@247 $generated@@259) (= (ControlFlow 0 3) 2))) $generated@@268))))))
(let (($generated@@274  (=> (= $generated@@260 ($generated@@185 $generated@@41 $generated@@257 $generated@@4 false)) (=> (and (and (and (and (and ($generated@@38 $generated@@34 $generated@@261 ($generated@@52 $generated@@0)) ($generated@@44 $generated@@34 $generated@@261 ($generated@@52 $generated@@0) $generated@@257)) (= $generated@@262 ($generated@@86 1))) (and ($generated@@38 $generated@@34 $generated@@263 ($generated@@52 $generated@@0)) ($generated@@44 $generated@@34 $generated@@263 ($generated@@52 $generated@@0) $generated@@257))) (and (and ($generated@@96 $generated@@254) ($generated@@258 $generated@@254)) (and ($generated@@38 $generated@@34 $generated@@252 ($generated@@52 $generated@@0)) ($generated@@44 $generated@@34 $generated@@252 ($generated@@52 $generated@@0) $generated@@254)))) (and (and (and (=> (<= ($generated@@86 0) $generated@@262) ($generated@@90 $generated@@252)) (=> (<= ($generated@@86 0) $generated@@262) (= ($generated@@19 ($generated@@33 $generated@@14 ($generated@@166 $generated@@252))) $generated@@262))) (and (=> (< $generated@@262 0) ($generated@@53 $generated@@252)) (forall (($generated@@275 T@U) ) (!  (=> (and (or (not (= $generated@@275 $generated@@41)) (not true)) ($generated@@17 ($generated@@33 $generated@@13 ($generated@@56 $generated@@57 $generated@@58 ($generated@@56 $generated@@39 ($generated@@59 $generated@@57 $generated@@58) $generated@@257 $generated@@275) $generated@@4)))) (= ($generated@@56 $generated@@39 ($generated@@59 $generated@@57 $generated@@58) $generated@@254 $generated@@275) ($generated@@56 $generated@@39 ($generated@@59 $generated@@57 $generated@@58) $generated@@257 $generated@@275)))
 :pattern ( ($generated@@56 $generated@@39 ($generated@@59 $generated@@57 $generated@@58) $generated@@254 $generated@@275))
)))) (and (and ($generated@@82 $generated@@257 $generated@@254) ($generated@@109 ($generated@@101 $generated@@34 $generated@@252) ($generated@@52 $generated@@0) $generated@@254)) (and ($generated@@51 $generated@@0 $generated@@252) ($generated@@51 $generated@@0 $generated@@252))))) (and (=> (= (ControlFlow 0 9) 3) $generated@@273) (=> (= (ControlFlow 0 9) 8) $generated@@271))))))
(let (($generated@@276  (=> (and ($generated@@96 $generated@@257) ($generated@@258 $generated@@257)) (=> (and (and (and (and (or (not (= $generated@@264 $generated@@41)) (not true)) (and ($generated@@38 $generated@@39 $generated@@264 $generated@@45) ($generated@@44 $generated@@39 $generated@@264 $generated@@45 $generated@@257))) (and ($generated@@38 $generated@@34 $generated@@265 ($generated@@52 $generated@@0)) ($generated@@44 $generated@@34 $generated@@265 ($generated@@52 $generated@@0) $generated@@257))) (and (and ($generated@@38 $generated@@34 $generated@@266 ($generated@@52 $generated@@0)) ($generated@@44 $generated@@34 $generated@@266 ($generated@@52 $generated@@0) $generated@@257)) true)) (and (and (and ($generated@@38 $generated@@34 $generated@@267 ($generated@@52 $generated@@0)) ($generated@@44 $generated@@34 $generated@@267 ($generated@@52 $generated@@0) $generated@@257)) true) (and (= 2 $generated@@48) (= (ControlFlow 0 10) 9)))) $generated@@274))))
$generated@@276))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)