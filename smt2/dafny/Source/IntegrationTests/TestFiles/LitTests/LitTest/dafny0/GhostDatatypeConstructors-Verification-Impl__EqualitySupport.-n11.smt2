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
(declare-fun $generated@@13 () T@U)
(declare-fun $generated@@14 (T@T) Int)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 () T@T)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 (Bool) T@U)
(declare-fun $generated@@19 (T@U) Bool)
(declare-fun $generated@@20 (Int) T@U)
(declare-fun $generated@@21 (T@U) Int)
(declare-fun $generated@@22 (Real) T@U)
(declare-fun $generated@@23 (T@U) Real)
(declare-fun $generated@@30 (T@U T@U) Bool)
(declare-fun $generated@@31 (T@U) Bool)
(declare-fun $generated@@32 (T@U) Bool)
(declare-fun $generated@@35 (Bool Real T@U) T@U)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@41 (T@U) Int)
(declare-fun $generated@@44 (T@U) T@U)
(declare-fun $generated@@48 (T@U) Real)
(declare-fun $generated@@52 (T@U) T@U)
(declare-fun $generated@@56 (T@U) Bool)
(declare-fun $generated@@59 (T@T T@U T@U) Bool)
(declare-fun $generated@@60 () T@T)
(declare-fun $generated@@61 () T@U)
(declare-fun $generated@@62 () T@T)
(declare-fun $generated@@66 (Real Bool) T@U)
(declare-fun $generated@@71 (Int) Int)
(declare-fun $generated@@73 (T@T T@U) T@U)
(declare-fun $generated@@79 (T@U) Bool)
(declare-fun $generated@@81 (T@T T@U) T@U)
(declare-fun $generated@@82 (T@T T@U) T@U)
(declare-fun $generated@@92 (Int) T@U)
(declare-fun $generated@@95 (Bool) T@U)
(declare-fun $generated@@114 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@115 () T@T)
(declare-fun $generated@@116 () T@T)
(declare-fun $generated@@117 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@118 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@119 () T@T)
(declare-fun $generated@@120 (T@T T@T) T@T)
(declare-fun $generated@@121 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@122 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@123 (T@T) T@T)
(declare-fun $generated@@124 (T@T) T@T)
(declare-fun $generated@@173 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@174 (T@U) Bool)
(declare-fun $generated@@191 (T@U) T@U)
(declare-fun $generated@@192 (T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@14 $generated@@15) 0) (= ($generated@@14 $generated@@16) 1)) (= ($generated@@14 $generated@@17) 2)) (forall (($generated@@24 Bool) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 Int) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 Real) ) (! (= ($generated@@23 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 T@U) ) (! (= ($generated@@22 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13)
)
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ) (!  (=> (and ($generated@@31 $generated@@33) ($generated@@31 $generated@@34)) (= ($generated@@30 $generated@@33 $generated@@34) (= ($generated@@32 $generated@@33) ($generated@@32 $generated@@34))))
 :pattern ( ($generated@@30 $generated@@33 $generated@@34) ($generated@@31 $generated@@33))
 :pattern ( ($generated@@30 $generated@@33 $generated@@34) ($generated@@31 $generated@@34))
)))
(assert (forall (($generated@@36 Bool) ($generated@@37 Real) ($generated@@38 T@U) ) (! (= ($generated@@32 ($generated@@35 $generated@@36 $generated@@37 $generated@@38)) $generated@@36)
 :pattern ( ($generated@@35 $generated@@36 $generated@@37 $generated@@38))
)))
(assert (= ($generated@@39 $generated) $generated@@3))
(assert (= ($generated@@39 $generated@@0) $generated@@4))
(assert (= ($generated@@39 $generated@@1) $generated@@5))
(assert (= ($generated@@39 $generated@@2) $generated@@6))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@U) ) (!  (=> (and ($generated@@40 $generated@@42) ($generated@@40 $generated@@43)) (= ($generated@@30 $generated@@42 $generated@@43) (= ($generated@@41 $generated@@42) ($generated@@41 $generated@@43))))
 :pattern ( ($generated@@30 $generated@@42 $generated@@43) ($generated@@40 $generated@@42))
 :pattern ( ($generated@@30 $generated@@42 $generated@@43) ($generated@@40 $generated@@43))
)))
(assert (forall (($generated@@45 Bool) ($generated@@46 Real) ($generated@@47 T@U) ) (! (= ($generated@@44 ($generated@@35 $generated@@45 $generated@@46 $generated@@47)) $generated@@11)
 :pattern ( ($generated@@35 $generated@@45 $generated@@46 $generated@@47))
)))
(assert (forall (($generated@@49 Bool) ($generated@@50 Real) ($generated@@51 T@U) ) (! (= ($generated@@48 ($generated@@35 $generated@@49 $generated@@50 $generated@@51)) $generated@@50)
 :pattern ( ($generated@@35 $generated@@49 $generated@@50 $generated@@51))
)))
(assert (forall (($generated@@53 Bool) ($generated@@54 Real) ($generated@@55 T@U) ) (! (= ($generated@@52 ($generated@@35 $generated@@53 $generated@@54 $generated@@55)) $generated@@55)
 :pattern ( ($generated@@35 $generated@@53 $generated@@54 $generated@@55))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@U) ) (!  (=> (and ($generated@@56 $generated@@57) ($generated@@56 $generated@@58)) (= ($generated@@30 $generated@@57 $generated@@58)  (and (and (= ($generated@@32 $generated@@57) ($generated@@32 $generated@@58)) (= ($generated@@48 $generated@@57) ($generated@@48 $generated@@58))) (= ($generated@@52 $generated@@57) ($generated@@52 $generated@@58)))))
 :pattern ( ($generated@@30 $generated@@57 $generated@@58) ($generated@@56 $generated@@57))
 :pattern ( ($generated@@30 $generated@@57 $generated@@58) ($generated@@56 $generated@@58))
)))
(assert  (and (= ($generated@@14 $generated@@60) 3) (= ($generated@@14 $generated@@62) 4)))
(assert (forall (($generated@@63 Bool) ($generated@@64 Real) ($generated@@65 T@U) ) (! (= ($generated@@59 $generated@@60 ($generated@@35 $generated@@63 $generated@@64 $generated@@65) $generated@@61)  (and (and ($generated@@59 $generated@@15 ($generated@@18 $generated@@63) $generated) ($generated@@59 $generated@@17 ($generated@@22 $generated@@64) $generated@@2)) ($generated@@59 $generated@@62 $generated@@65 $generated@@0)))
 :pattern ( ($generated@@59 $generated@@60 ($generated@@35 $generated@@63 $generated@@64 $generated@@65) $generated@@61))
)))
(assert (forall (($generated@@67 Real) ($generated@@68 Bool) ) (! (= ($generated@@59 $generated@@60 ($generated@@66 $generated@@67 $generated@@68) $generated@@61)  (and ($generated@@59 $generated@@17 ($generated@@22 $generated@@67) $generated@@2) ($generated@@59 $generated@@15 ($generated@@18 $generated@@68) $generated)))
 :pattern ( ($generated@@59 $generated@@60 ($generated@@66 $generated@@67 $generated@@68) $generated@@61))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@30 $generated@@69 $generated@@70) (= $generated@@69 $generated@@70))
 :pattern ( ($generated@@30 $generated@@69 $generated@@70))
)))
(assert (forall (($generated@@72 Int) ) (! (= ($generated@@71 $generated@@72) $generated@@72)
 :pattern ( ($generated@@71 $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@T) ) (! (= ($generated@@73 $generated@@75 $generated@@74) $generated@@74)
 :pattern ( ($generated@@73 $generated@@75 $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ) (! (= ($generated@@40 $generated@@76) (= ($generated@@44 $generated@@76) $generated@@9))
 :pattern ( ($generated@@40 $generated@@76))
)))
(assert (forall (($generated@@77 T@U) ) (! (= ($generated@@31 $generated@@77) (= ($generated@@44 $generated@@77) $generated@@10))
 :pattern ( ($generated@@31 $generated@@77))
)))
(assert (forall (($generated@@78 T@U) ) (! (= ($generated@@56 $generated@@78) (= ($generated@@44 $generated@@78) $generated@@11))
 :pattern ( ($generated@@56 $generated@@78))
)))
(assert (forall (($generated@@80 T@U) ) (! (= ($generated@@79 $generated@@80) (= ($generated@@44 $generated@@80) $generated@@12))
 :pattern ( ($generated@@79 $generated@@80))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@T) ) (! (= ($generated@@82 $generated@@84 ($generated@@81 $generated@@84 $generated@@83)) $generated@@83)
 :pattern ( ($generated@@81 $generated@@84 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ) (!  (=> ($generated@@56 $generated@@85) (exists (($generated@@86 Bool) ($generated@@87 Real) ($generated@@88 T@U) ) (= $generated@@85 ($generated@@35 $generated@@86 $generated@@87 $generated@@88))))
 :pattern ( ($generated@@56 $generated@@85))
)))
(assert (forall (($generated@@89 T@U) ) (!  (=> ($generated@@79 $generated@@89) (exists (($generated@@90 Real) ($generated@@91 Bool) ) (= $generated@@89 ($generated@@66 $generated@@90 $generated@@91))))
 :pattern ( ($generated@@79 $generated@@89))
)))
(assert (forall (($generated@@93 T@U) ) (!  (=> ($generated@@40 $generated@@93) (exists (($generated@@94 Int) ) (= $generated@@93 ($generated@@92 $generated@@94))))
 :pattern ( ($generated@@40 $generated@@93))
)))
(assert (forall (($generated@@96 T@U) ) (!  (=> ($generated@@31 $generated@@96) (exists (($generated@@97 Bool) ) (= $generated@@96 ($generated@@95 $generated@@97))))
 :pattern ( ($generated@@31 $generated@@96))
)))
(assert (forall (($generated@@98 Real) ($generated@@99 Bool) ) (! (= ($generated@@32 ($generated@@66 $generated@@98 $generated@@99)) $generated@@99)
 :pattern ( ($generated@@66 $generated@@98 $generated@@99))
)))
(assert (forall (($generated@@100 Bool) ) (! (= ($generated@@32 ($generated@@95 $generated@@100)) $generated@@100)
 :pattern ( ($generated@@95 $generated@@100))
)))
(assert (forall (($generated@@101 Real) ($generated@@102 Bool) ) (! (= ($generated@@44 ($generated@@66 $generated@@101 $generated@@102)) $generated@@12)
 :pattern ( ($generated@@66 $generated@@101 $generated@@102))
)))
(assert (forall (($generated@@103 Real) ($generated@@104 Bool) ) (! (= ($generated@@48 ($generated@@66 $generated@@103 $generated@@104)) $generated@@103)
 :pattern ( ($generated@@66 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@105 Int) ) (! (= ($generated@@44 ($generated@@92 $generated@@105)) $generated@@9)
 :pattern ( ($generated@@92 $generated@@105))
)))
(assert (forall (($generated@@106 Int) ) (! (= ($generated@@41 ($generated@@92 $generated@@106)) $generated@@106)
 :pattern ( ($generated@@92 $generated@@106))
)))
(assert (forall (($generated@@107 Bool) ) (! (= ($generated@@44 ($generated@@95 $generated@@107)) $generated@@10)
 :pattern ( ($generated@@95 $generated@@107))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@T) ) (! (= ($generated@@81 $generated@@109 ($generated@@82 $generated@@109 $generated@@108)) $generated@@108)
 :pattern ( ($generated@@82 $generated@@109 $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (!  (=> (and ($generated@@79 $generated@@110) ($generated@@79 $generated@@111)) (= ($generated@@30 $generated@@110 $generated@@111)  (and (= ($generated@@48 $generated@@110) ($generated@@48 $generated@@111)) (= ($generated@@32 $generated@@110) ($generated@@32 $generated@@111)))))
 :pattern ( ($generated@@30 $generated@@110 $generated@@111) ($generated@@79 $generated@@110))
 :pattern ( ($generated@@30 $generated@@110 $generated@@111) ($generated@@79 $generated@@111))
)))
(assert (forall (($generated@@112 Int) ) (! (= ($generated@@59 $generated@@60 ($generated@@92 $generated@@112) $generated@@61) ($generated@@59 $generated@@16 ($generated@@20 $generated@@112) $generated@@1))
 :pattern ( ($generated@@59 $generated@@60 ($generated@@92 $generated@@112) $generated@@61))
)))
(assert (forall (($generated@@113 Bool) ) (! (= ($generated@@59 $generated@@60 ($generated@@95 $generated@@113) $generated@@61) ($generated@@59 $generated@@15 ($generated@@18 $generated@@113) $generated))
 :pattern ( ($generated@@59 $generated@@60 ($generated@@95 $generated@@113) $generated@@61))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@125 T@T) ($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@114 $generated@@125 $generated@@126 $generated@@127 ($generated@@121 $generated@@125 $generated@@126 $generated@@127 $generated@@129 $generated@@130 $generated@@131 $generated@@128) $generated@@130 $generated@@131) $generated@@128)
 :weight 0
)) (and (forall (($generated@@132 T@T) ($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (!  (or (= $generated@@137 $generated@@139) (= ($generated@@114 $generated@@132 $generated@@133 $generated@@134 ($generated@@121 $generated@@132 $generated@@133 $generated@@134 $generated@@136 $generated@@137 $generated@@138 $generated@@135) $generated@@139 $generated@@140) ($generated@@114 $generated@@132 $generated@@133 $generated@@134 $generated@@136 $generated@@139 $generated@@140)))
 :weight 0
)) (forall (($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ) (!  (or (= $generated@@147 $generated@@149) (= ($generated@@114 $generated@@141 $generated@@142 $generated@@143 ($generated@@121 $generated@@141 $generated@@142 $generated@@143 $generated@@145 $generated@@146 $generated@@147 $generated@@144) $generated@@148 $generated@@149) ($generated@@114 $generated@@141 $generated@@142 $generated@@143 $generated@@145 $generated@@148 $generated@@149)))
 :weight 0
)))) (= ($generated@@14 $generated@@115) 5)) (= ($generated@@14 $generated@@116) 6)) (forall (($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ) (! (= ($generated@@118 $generated@@150 $generated@@151 ($generated@@122 $generated@@150 $generated@@151 $generated@@153 $generated@@154 $generated@@152) $generated@@154) $generated@@152)
 :weight 0
))) (forall (($generated@@155 T@T) ($generated@@156 T@T) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ) (!  (or (= $generated@@159 $generated@@160) (= ($generated@@118 $generated@@155 $generated@@156 ($generated@@122 $generated@@155 $generated@@156 $generated@@158 $generated@@159 $generated@@157) $generated@@160) ($generated@@118 $generated@@155 $generated@@156 $generated@@158 $generated@@160)))
 :weight 0
))) (= ($generated@@14 $generated@@119) 7)) (forall (($generated@@161 T@T) ($generated@@162 T@T) ) (= ($generated@@14 ($generated@@120 $generated@@161 $generated@@162)) 8))) (forall (($generated@@163 T@T) ($generated@@164 T@T) ) (! (= ($generated@@123 ($generated@@120 $generated@@163 $generated@@164)) $generated@@163)
 :pattern ( ($generated@@120 $generated@@163 $generated@@164))
))) (forall (($generated@@165 T@T) ($generated@@166 T@T) ) (! (= ($generated@@124 ($generated@@120 $generated@@165 $generated@@166)) $generated@@166)
 :pattern ( ($generated@@120 $generated@@165 $generated@@166))
))))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 Bool) ($generated@@171 T@U) ($generated@@172 T@U) ) (! (= ($generated@@19 ($generated@@114 $generated@@115 $generated@@116 $generated@@15 ($generated@@117 $generated@@167 $generated@@168 $generated@@169 $generated@@170) $generated@@171 $generated@@172))  (=> (and (or (not (= $generated@@171 $generated@@167)) (not true)) ($generated@@19 ($generated@@81 $generated@@15 ($generated@@118 $generated@@116 $generated@@119 ($generated@@118 $generated@@115 ($generated@@120 $generated@@116 $generated@@119) $generated@@168 $generated@@171) $generated@@169)))) $generated@@170))
 :pattern ( ($generated@@114 $generated@@115 $generated@@116 $generated@@15 ($generated@@117 $generated@@167 $generated@@168 $generated@@169 $generated@@170) $generated@@171 $generated@@172))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (!  (=> (and ($generated@@174 $generated@@176) (and ($generated@@40 $generated@@175) ($generated@@173 $generated@@60 $generated@@175 $generated@@61 $generated@@176))) ($generated@@173 $generated@@16 ($generated@@20 ($generated@@41 $generated@@175)) $generated@@1 $generated@@176))
 :pattern ( ($generated@@173 $generated@@16 ($generated@@20 ($generated@@41 $generated@@175)) $generated@@1 $generated@@176))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ) (!  (=> (and ($generated@@174 $generated@@178) (and ($generated@@31 $generated@@177) ($generated@@173 $generated@@60 $generated@@177 $generated@@61 $generated@@178))) ($generated@@173 $generated@@15 ($generated@@18 ($generated@@32 $generated@@177)) $generated $generated@@178))
 :pattern ( ($generated@@173 $generated@@15 ($generated@@18 ($generated@@32 $generated@@177)) $generated $generated@@178))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ) (!  (=> (and ($generated@@174 $generated@@180) (and ($generated@@56 $generated@@179) ($generated@@173 $generated@@60 $generated@@179 $generated@@61 $generated@@180))) ($generated@@173 $generated@@15 ($generated@@18 ($generated@@32 $generated@@179)) $generated $generated@@180))
 :pattern ( ($generated@@173 $generated@@15 ($generated@@18 ($generated@@32 $generated@@179)) $generated $generated@@180))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@U) ) (!  (=> (and ($generated@@174 $generated@@182) (and ($generated@@56 $generated@@181) ($generated@@173 $generated@@60 $generated@@181 $generated@@61 $generated@@182))) ($generated@@173 $generated@@17 ($generated@@22 ($generated@@48 $generated@@181)) $generated@@2 $generated@@182))
 :pattern ( ($generated@@173 $generated@@17 ($generated@@22 ($generated@@48 $generated@@181)) $generated@@2 $generated@@182))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (!  (=> (and ($generated@@174 $generated@@184) (and ($generated@@56 $generated@@183) ($generated@@173 $generated@@60 $generated@@183 $generated@@61 $generated@@184))) ($generated@@173 $generated@@62 ($generated@@52 $generated@@183) $generated@@0 $generated@@184))
 :pattern ( ($generated@@173 $generated@@62 ($generated@@52 $generated@@183) $generated@@0 $generated@@184))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ) (!  (=> (and ($generated@@174 $generated@@186) (and ($generated@@79 $generated@@185) ($generated@@173 $generated@@60 $generated@@185 $generated@@61 $generated@@186))) ($generated@@173 $generated@@17 ($generated@@22 ($generated@@48 $generated@@185)) $generated@@2 $generated@@186))
 :pattern ( ($generated@@173 $generated@@17 ($generated@@22 ($generated@@48 $generated@@185)) $generated@@2 $generated@@186))
)))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@U) ) (!  (=> (and ($generated@@174 $generated@@188) (and ($generated@@79 $generated@@187) ($generated@@173 $generated@@60 $generated@@187 $generated@@61 $generated@@188))) ($generated@@173 $generated@@15 ($generated@@18 ($generated@@32 $generated@@187)) $generated $generated@@188))
 :pattern ( ($generated@@173 $generated@@15 ($generated@@18 ($generated@@32 $generated@@187)) $generated $generated@@188))
)))
(assert (forall (($generated@@189 T@U) ($generated@@190 T@U) ) (!  (=> (and ($generated@@174 $generated@@190) ($generated@@59 $generated@@60 $generated@@189 $generated@@61)) ($generated@@173 $generated@@60 $generated@@189 $generated@@61 $generated@@190))
 :pattern ( ($generated@@173 $generated@@60 $generated@@189 $generated@@61 $generated@@190))
)))
(assert (= ($generated@@39 $generated@@61) $generated@@8))
(assert (= ($generated@@191 $generated@@61) $generated@@13))
(assert (forall (($generated@@193 T@U) ) (!  (=> ($generated@@192 $generated@@193) (or (or (or ($generated@@40 $generated@@193) ($generated@@31 $generated@@193)) ($generated@@56 $generated@@193)) ($generated@@79 $generated@@193)))
 :pattern ( ($generated@@192 $generated@@193))
)))
(assert (forall (($generated@@194 Int) ) (! (= ($generated@@82 $generated@@16 ($generated@@20 ($generated@@71 $generated@@194))) ($generated@@73 $generated@@119 ($generated@@82 $generated@@16 ($generated@@20 $generated@@194))))
 :pattern ( ($generated@@82 $generated@@16 ($generated@@20 ($generated@@71 $generated@@194))))
)))
(assert (forall (($generated@@195 Int) ) (! (= ($generated@@92 ($generated@@71 $generated@@195)) ($generated@@73 $generated@@60 ($generated@@92 $generated@@195)))
 :pattern ( ($generated@@92 ($generated@@71 $generated@@195)))
)))
(assert (forall (($generated@@196 T@U) ) (! (= ($generated@@95 ($generated@@19 ($generated@@73 $generated@@15 $generated@@196))) ($generated@@73 $generated@@60 ($generated@@95 ($generated@@19 $generated@@196))))
 :pattern ( ($generated@@95 ($generated@@19 ($generated@@73 $generated@@15 $generated@@196))))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@T) ) (! (= ($generated@@82 $generated@@198 ($generated@@73 $generated@@198 $generated@@197)) ($generated@@73 $generated@@119 ($generated@@82 $generated@@198 $generated@@197)))
 :pattern ( ($generated@@82 $generated@@198 ($generated@@73 $generated@@198 $generated@@197)))
)))
(assert (forall (($generated@@199 T@U) ) (!  (=> ($generated@@59 $generated@@60 $generated@@199 $generated@@61) (or (or (or ($generated@@40 $generated@@199) ($generated@@31 $generated@@199)) ($generated@@56 $generated@@199)) ($generated@@79 $generated@@199)))
 :pattern ( ($generated@@79 $generated@@199) ($generated@@59 $generated@@60 $generated@@199 $generated@@61))
 :pattern ( ($generated@@56 $generated@@199) ($generated@@59 $generated@@60 $generated@@199 $generated@@61))
 :pattern ( ($generated@@31 $generated@@199) ($generated@@59 $generated@@60 $generated@@199 $generated@@61))
 :pattern ( ($generated@@40 $generated@@199) ($generated@@59 $generated@@60 $generated@@199 $generated@@61))
)))
(assert (forall (($generated@@200 T@U) ($generated@@201 T@U) ) (! ($generated@@173 $generated@@16 $generated@@201 $generated@@1 $generated@@200)
 :pattern ( ($generated@@173 $generated@@16 $generated@@201 $generated@@1 $generated@@200))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ) (! ($generated@@173 $generated@@17 $generated@@203 $generated@@2 $generated@@202)
 :pattern ( ($generated@@173 $generated@@17 $generated@@203 $generated@@2 $generated@@202))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ) (! ($generated@@173 $generated@@15 $generated@@205 $generated $generated@@204)
 :pattern ( ($generated@@173 $generated@@15 $generated@@205 $generated $generated@@204))
)))
(assert (forall (($generated@@206 T@U) ($generated@@207 T@U) ) (! ($generated@@173 $generated@@62 $generated@@207 $generated@@0 $generated@@206)
 :pattern ( ($generated@@173 $generated@@62 $generated@@207 $generated@@0 $generated@@206))
)))
(assert (forall (($generated@@208 T@U) ) (! ($generated@@59 $generated@@16 $generated@@208 $generated@@1)
 :pattern ( ($generated@@59 $generated@@16 $generated@@208 $generated@@1))
)))
(assert (forall (($generated@@209 T@U) ) (! ($generated@@59 $generated@@17 $generated@@209 $generated@@2)
 :pattern ( ($generated@@59 $generated@@17 $generated@@209 $generated@@2))
)))
(assert (forall (($generated@@210 T@U) ) (! ($generated@@59 $generated@@15 $generated@@210 $generated)
 :pattern ( ($generated@@59 $generated@@15 $generated@@210 $generated))
)))
(assert (forall (($generated@@211 T@U) ) (! ($generated@@59 $generated@@62 $generated@@211 $generated@@0)
 :pattern ( ($generated@@59 $generated@@62 $generated@@211 $generated@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@212 () T@U)
(declare-fun $generated@@213 () T@U)
(declare-fun $generated@@214 () T@U)
(declare-fun $generated@@215 () T@U)
(declare-fun $generated@@216 (T@U) Bool)
(declare-fun $generated@@217 () Int)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@218 true))
(let (($generated@@219 true))
(let (($generated@@220  (=> (= $generated@@212 ($generated@@117 $generated@@213 $generated@@214 $generated@@7 false)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (and (not ($generated@@31 $generated@@215)) (not ($generated@@56 $generated@@215)))) (=> (and (not ($generated@@31 $generated@@215)) (not ($generated@@56 $generated@@215))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (and (not ($generated@@31 $generated@@215)) (not ($generated@@56 $generated@@215)))) (=> (and (not ($generated@@31 $generated@@215)) (not ($generated@@56 $generated@@215))) (=> (and ($generated@@192 $generated@@215) ($generated@@192 $generated@@215)) (and (=> (= (ControlFlow 0 3) 1) $generated@@219) (=> (= (ControlFlow 0 3) 2) $generated@@218))))))))))
(let (($generated@@221  (=> (and ($generated@@174 $generated@@214) ($generated@@216 $generated@@214)) (=> (and (and (and (and ($generated@@59 $generated@@60 $generated@@215 $generated@@61) ($generated@@173 $generated@@60 $generated@@215 $generated@@61 $generated@@214)) ($generated@@192 $generated@@215)) (= 0 $generated@@217)) (and (or ($generated@@40 $generated@@215) ($generated@@79 $generated@@215)) (= (ControlFlow 0 6) 3))) $generated@@220))))
$generated@@221)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)