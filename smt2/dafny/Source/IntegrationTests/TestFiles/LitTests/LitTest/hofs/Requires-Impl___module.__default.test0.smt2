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
(declare-fun $generated@@20 (T@U) T@U)
(declare-fun $generated@@21 () Int)
(declare-fun $generated@@22 (Int) Int)
(declare-fun $generated@@23 (Int) Bool)
(declare-fun $generated@@24 (Int) Bool)
(declare-fun $generated@@26 (T@U T@U) Bool)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@29 (T@T T@U T@U) Bool)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 (T@U T@U) T@U)
(declare-fun $generated@@32 (T@U T@U) Bool)
(declare-fun $generated@@40 (Int) Bool)
(declare-fun $generated@@42 (Int) Int)
(declare-fun $generated@@44 (T@T T@U) T@U)
(declare-fun $generated@@47 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@48 () T@U)
(declare-fun $generated@@49 (T@U) Bool)
(declare-fun $generated@@50 (T@U T@U) Bool)
(declare-fun $generated@@56 (T@T T@U) T@U)
(declare-fun $generated@@57 (T@T T@U) T@U)
(declare-fun $generated@@60 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@61 () T@U)
(declare-fun $generated@@64 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@65 (Int) Bool)
(declare-fun $generated@@70 (T@U T@U T@U) Bool)
(declare-fun $generated@@71 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@98 (T@U) T@U)
(declare-fun $generated@@101 (T@U) T@U)
(declare-fun $generated@@106 () T@T)
(declare-fun $generated@@107 () T@U)
(declare-fun $generated@@108 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@109 () T@T)
(declare-fun $generated@@110 () T@T)
(declare-fun $generated@@111 (T@T T@T) T@T)
(declare-fun $generated@@112 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@113 (T@T) T@T)
(declare-fun $generated@@114 (T@T) T@T)
(declare-fun $generated@@141 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@142 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@143 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@175 (T@U) T@U)
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
(assert (= ($generated@@20 $generated) $generated@@0))
(assert  (=> (<= 1 $generated@@21) (forall (($generated@@25 Int) ) (!  (=> (or ($generated@@23 $generated@@25) (and (< 1 $generated@@21) ($generated@@24 $generated@@25))) (= ($generated@@22 $generated@@25) (- $generated@@25 1)))
 :pattern ( ($generated@@22 $generated@@25))
))))
(assert (forall (($generated@@28 T@U) ) (!  (not ($generated@@26 $generated@@27 $generated@@28))
 :pattern ( ($generated@@26 $generated@@27 $generated@@28))
)))
(assert (= ($generated@@4 $generated@@30) 3))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ) (!  (=> (and (and ($generated@@29 $generated@@30 $generated@@33 ($generated@@31 $generated@@34 $generated@@35)) (forall (($generated@@38 T@U) ) (!  (=> ($generated@@32 $generated@@38 $generated@@36) ($generated@@32 $generated@@38 $generated@@34))
 :pattern ( ($generated@@32 $generated@@38 $generated@@36))
 :pattern ( ($generated@@32 $generated@@38 $generated@@34))
))) (forall (($generated@@39 T@U) ) (!  (=> ($generated@@32 $generated@@39 $generated@@35) ($generated@@32 $generated@@39 $generated@@37))
 :pattern ( ($generated@@32 $generated@@39 $generated@@35))
 :pattern ( ($generated@@32 $generated@@39 $generated@@37))
))) ($generated@@29 $generated@@30 $generated@@33 ($generated@@31 $generated@@36 $generated@@37)))
 :pattern ( ($generated@@29 $generated@@30 $generated@@33 ($generated@@31 $generated@@34 $generated@@35)) ($generated@@29 $generated@@30 $generated@@33 ($generated@@31 $generated@@36 $generated@@37)))
)))
(assert  (=> (<= 0 $generated@@21) (forall (($generated@@41 Int) ) (!  (=> (or ($generated@@40 $generated@@41) (< 0 $generated@@21)) (= ($generated@@24 $generated@@41) (> $generated@@41 0)))
 :pattern ( ($generated@@24 $generated@@41))
))))
(assert (forall (($generated@@43 Int) ) (! (= ($generated@@42 $generated@@43) $generated@@43)
 :pattern ( ($generated@@42 $generated@@43))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@T) ) (! (= ($generated@@44 $generated@@46 $generated@@45) $generated@@45)
 :pattern ( ($generated@@44 $generated@@46 $generated@@45))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (!  (=> (and ($generated@@49 $generated@@53) (and ($generated@@32 $generated@@55 $generated@@51) ($generated@@29 $generated@@30 $generated@@54 ($generated@@31 $generated@@51 $generated@@52)))) (= ($generated@@50 ($generated@@47 $generated@@51 $generated@@52 $generated@@48 $generated@@54 $generated@@55) $generated@@27) ($generated@@50 ($generated@@47 $generated@@51 $generated@@52 $generated@@53 $generated@@54 $generated@@55) $generated@@27)))
 :pattern ( ($generated@@47 $generated@@51 $generated@@52 $generated@@48 $generated@@54 $generated@@55) ($generated@@49 $generated@@53))
 :pattern ( ($generated@@47 $generated@@51 $generated@@52 $generated@@53 $generated@@54 $generated@@55))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@T) ) (! (= ($generated@@57 $generated@@59 ($generated@@56 $generated@@59 $generated@@58)) $generated@@58)
 :pattern ( ($generated@@56 $generated@@59 $generated@@58))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 Int) ) (! (= ($generated@@22 $generated@@63) ($generated@@11 ($generated@@56 $generated@@6 ($generated@@60 $generated $generated $generated@@62 $generated@@61 ($generated@@57 $generated@@6 ($generated@@10 $generated@@63))))))
 :pattern ( ($generated@@22 $generated@@63) ($generated@@49 $generated@@62))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ) (! (= ($generated@@64 $generated $generated $generated@@66 $generated@@61 $generated@@67) ($generated@@65 ($generated@@11 ($generated@@56 $generated@@6 $generated@@67))))
 :pattern ( ($generated@@64 $generated $generated $generated@@66 $generated@@61 $generated@@67))
)))
(assert  (=> (<= 1 $generated@@21) (forall (($generated@@68 Int) ) (!  (=> (or ($generated@@23 ($generated@@42 $generated@@68)) (and (< 1 $generated@@21) ($generated@@9 ($generated@@44 $generated@@5 ($generated@@8 ($generated@@24 ($generated@@42 $generated@@68))))))) (= ($generated@@22 ($generated@@42 $generated@@68)) ($generated@@42 (- $generated@@68 1))))
 :weight 3
 :pattern ( ($generated@@22 ($generated@@42 $generated@@68)))
))))
(assert  (=> (<= 0 $generated@@21) (forall (($generated@@69 Int) ) (!  (=> (or ($generated@@40 ($generated@@42 $generated@@69)) (< 0 $generated@@21)) (= ($generated@@24 ($generated@@42 $generated@@69)) ($generated@@9 ($generated@@44 $generated@@5 ($generated@@8 (> $generated@@69 0))))))
 :weight 3
 :pattern ( ($generated@@24 ($generated@@42 $generated@@69)))
))))
(assert ($generated@@49 $generated@@48))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@T) ) (! (= ($generated@@70 ($generated@@57 $generated@@75 $generated@@72) $generated@@73 $generated@@74) ($generated@@71 $generated@@75 $generated@@72 $generated@@73 $generated@@74))
 :pattern ( ($generated@@70 ($generated@@57 $generated@@75 $generated@@72) $generated@@73 $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ) (! (= ($generated@@26 ($generated@@47 $generated $generated $generated@@77 $generated@@61 $generated@@78) $generated@@76) false)
 :pattern ( ($generated@@26 ($generated@@47 $generated $generated $generated@@77 $generated@@61 $generated@@78) $generated@@76))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ) (!  (=> (and ($generated@@49 $generated@@82) ($generated@@71 $generated@@30 $generated@@79 ($generated@@31 $generated@@80 $generated@@81) $generated@@82)) (forall (($generated@@83 T@U) ) (!  (=> (and ($generated@@70 $generated@@83 $generated@@80 $generated@@82) ($generated@@64 $generated@@80 $generated@@81 $generated@@82 $generated@@79 $generated@@83)) ($generated@@70 ($generated@@60 $generated@@80 $generated@@81 $generated@@82 $generated@@79 $generated@@83) $generated@@81 $generated@@82))
 :pattern ( ($generated@@60 $generated@@80 $generated@@81 $generated@@82 $generated@@79 $generated@@83))
)))
 :pattern ( ($generated@@71 $generated@@30 $generated@@79 ($generated@@31 $generated@@80 $generated@@81) $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@60 $generated $generated $generated@@84 $generated@@61 $generated@@85) ($generated@@57 $generated@@6 ($generated@@10 ($generated@@22 ($generated@@11 ($generated@@56 $generated@@6 $generated@@85))))))
 :pattern ( ($generated@@60 $generated $generated $generated@@84 $generated@@61 $generated@@85))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ) (!  (=> ($generated@@50 $generated@@86 $generated@@87) (= $generated@@86 $generated@@87))
 :pattern ( ($generated@@50 $generated@@86 $generated@@87))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@29 $generated@@30 $generated@@88 ($generated@@31 $generated@@89 $generated@@90)) (forall (($generated@@91 T@U) ($generated@@92 T@U) ) (!  (=> (and (and ($generated@@49 $generated@@91) ($generated@@32 $generated@@92 $generated@@89)) ($generated@@64 $generated@@89 $generated@@90 $generated@@91 $generated@@88 $generated@@92)) ($generated@@32 ($generated@@60 $generated@@89 $generated@@90 $generated@@91 $generated@@88 $generated@@92) $generated@@90))
 :pattern ( ($generated@@60 $generated@@89 $generated@@90 $generated@@91 $generated@@88 $generated@@92))
)))
 :pattern ( ($generated@@29 $generated@@30 $generated@@88 ($generated@@31 $generated@@89 $generated@@90)))
)))
(assert (forall (($generated@@93 T@U) ) (!  (=> ($generated@@32 $generated@@93 $generated) (and (= ($generated@@57 $generated@@6 ($generated@@56 $generated@@6 $generated@@93)) $generated@@93) ($generated@@29 $generated@@6 ($generated@@56 $generated@@6 $generated@@93) $generated)))
 :pattern ( ($generated@@32 $generated@@93 $generated))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@T) ) (! (= ($generated@@32 ($generated@@57 $generated@@96 $generated@@94) $generated@@95) ($generated@@29 $generated@@96 $generated@@94 $generated@@95))
 :pattern ( ($generated@@32 ($generated@@57 $generated@@96 $generated@@94) $generated@@95))
)))
(assert (forall (($generated@@97 Int) ) (! (= ($generated@@65 $generated@@97) ($generated@@24 $generated@@97))
 :pattern ( ($generated@@65 $generated@@97))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (! (= ($generated@@98 ($generated@@31 $generated@@99 $generated@@100)) $generated@@99)
 :pattern ( ($generated@@31 $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@101 ($generated@@31 $generated@@102 $generated@@103)) $generated@@103)
 :pattern ( ($generated@@31 $generated@@102 $generated@@103))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@T) ) (! (= ($generated@@56 $generated@@105 ($generated@@57 $generated@@105 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@57 $generated@@105 $generated@@104))
)))
(assert  (and (and (and (and (and (and (and (= ($generated@@4 $generated@@106) 4) (forall (($generated@@115 T@T) ($generated@@116 T@T) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ) (! (= ($generated@@108 $generated@@115 $generated@@116 ($generated@@112 $generated@@115 $generated@@116 $generated@@118 $generated@@119 $generated@@117) $generated@@119) $generated@@117)
 :weight 0
))) (forall (($generated@@120 T@T) ($generated@@121 T@T) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (!  (or (= $generated@@124 $generated@@125) (= ($generated@@108 $generated@@120 $generated@@121 ($generated@@112 $generated@@120 $generated@@121 $generated@@123 $generated@@124 $generated@@122) $generated@@125) ($generated@@108 $generated@@120 $generated@@121 $generated@@123 $generated@@125)))
 :weight 0
))) (= ($generated@@4 $generated@@109) 5)) (= ($generated@@4 $generated@@110) 6)) (forall (($generated@@126 T@T) ($generated@@127 T@T) ) (= ($generated@@4 ($generated@@111 $generated@@126 $generated@@127)) 7))) (forall (($generated@@128 T@T) ($generated@@129 T@T) ) (! (= ($generated@@113 ($generated@@111 $generated@@128 $generated@@129)) $generated@@128)
 :pattern ( ($generated@@111 $generated@@128 $generated@@129))
))) (forall (($generated@@130 T@T) ($generated@@131 T@T) ) (! (= ($generated@@114 ($generated@@111 $generated@@130 $generated@@131)) $generated@@131)
 :pattern ( ($generated@@111 $generated@@130 $generated@@131))
))))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (!  (=> ($generated@@49 $generated@@135) (= ($generated@@71 $generated@@30 $generated@@132 ($generated@@31 $generated@@133 $generated@@134) $generated@@135) (forall (($generated@@136 T@U) ) (!  (=> (and (and ($generated@@32 $generated@@136 $generated@@133) ($generated@@70 $generated@@136 $generated@@133 $generated@@135)) ($generated@@64 $generated@@133 $generated@@134 $generated@@135 $generated@@132 $generated@@136)) (forall (($generated@@137 T@U) ) (!  (=> (and (or (not (= $generated@@137 $generated@@107)) (not true)) ($generated@@26 ($generated@@47 $generated@@133 $generated@@134 $generated@@135 $generated@@132 $generated@@136) ($generated@@57 $generated@@106 $generated@@137))) ($generated@@9 ($generated@@56 $generated@@5 ($generated@@108 $generated@@109 $generated@@110 ($generated@@108 $generated@@106 ($generated@@111 $generated@@109 $generated@@110) $generated@@135 $generated@@137) $generated@@1))))
 :pattern ( ($generated@@26 ($generated@@47 $generated@@133 $generated@@134 $generated@@135 $generated@@132 $generated@@136) ($generated@@57 $generated@@106 $generated@@137)))
)))
 :pattern ( ($generated@@60 $generated@@133 $generated@@134 $generated@@135 $generated@@132 $generated@@136))
 :pattern ( ($generated@@47 $generated@@133 $generated@@134 $generated@@135 $generated@@132 $generated@@136))
))))
 :pattern ( ($generated@@71 $generated@@30 $generated@@132 ($generated@@31 $generated@@133 $generated@@134) $generated@@135))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (!  (=> ($generated@@32 $generated@@140 ($generated@@31 $generated@@138 $generated@@139)) (and (= ($generated@@57 $generated@@30 ($generated@@56 $generated@@30 $generated@@140)) $generated@@140) ($generated@@29 $generated@@30 ($generated@@56 $generated@@30 $generated@@140) ($generated@@31 $generated@@138 $generated@@139))))
 :pattern ( ($generated@@32 $generated@@140 ($generated@@31 $generated@@138 $generated@@139)))
)))
(assert  (and (forall (($generated@@144 T@T) ($generated@@145 T@T) ($generated@@146 T@T) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (! (= ($generated@@141 $generated@@144 $generated@@145 $generated@@146 ($generated@@143 $generated@@144 $generated@@145 $generated@@146 $generated@@148 $generated@@149 $generated@@150 $generated@@147) $generated@@149 $generated@@150) $generated@@147)
 :weight 0
)) (and (forall (($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@T) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ) (!  (or (= $generated@@156 $generated@@158) (= ($generated@@141 $generated@@151 $generated@@152 $generated@@153 ($generated@@143 $generated@@151 $generated@@152 $generated@@153 $generated@@155 $generated@@156 $generated@@157 $generated@@154) $generated@@158 $generated@@159) ($generated@@141 $generated@@151 $generated@@152 $generated@@153 $generated@@155 $generated@@158 $generated@@159)))
 :weight 0
)) (forall (($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@T) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ) (!  (or (= $generated@@166 $generated@@168) (= ($generated@@141 $generated@@160 $generated@@161 $generated@@162 ($generated@@143 $generated@@160 $generated@@161 $generated@@162 $generated@@164 $generated@@165 $generated@@166 $generated@@163) $generated@@167 $generated@@168) ($generated@@141 $generated@@160 $generated@@161 $generated@@162 $generated@@164 $generated@@167 $generated@@168)))
 :weight 0
)))))
(assert (forall (($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 Bool) ($generated@@173 T@U) ($generated@@174 T@U) ) (! (= ($generated@@9 ($generated@@141 $generated@@106 $generated@@109 $generated@@5 ($generated@@142 $generated@@169 $generated@@170 $generated@@171 $generated@@172) $generated@@173 $generated@@174))  (=> (and (or (not (= $generated@@173 $generated@@169)) (not true)) ($generated@@9 ($generated@@56 $generated@@5 ($generated@@108 $generated@@109 $generated@@110 ($generated@@108 $generated@@106 ($generated@@111 $generated@@109 $generated@@110) $generated@@170 $generated@@173) $generated@@171)))) $generated@@172))
 :pattern ( ($generated@@141 $generated@@106 $generated@@109 $generated@@5 ($generated@@142 $generated@@169 $generated@@170 $generated@@171 $generated@@172) $generated@@173 $generated@@174))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ) (!  (and (= ($generated@@20 ($generated@@31 $generated@@176 $generated@@177)) $generated@@2) (= ($generated@@175 ($generated@@31 $generated@@176 $generated@@177)) $generated@@3))
 :pattern ( ($generated@@31 $generated@@176 $generated@@177))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ) (!  (=> (and (and ($generated@@49 $generated@@180) (and ($generated@@32 $generated@@182 $generated@@178) ($generated@@29 $generated@@30 $generated@@181 ($generated@@31 $generated@@178 $generated@@179)))) ($generated@@50 ($generated@@47 $generated@@178 $generated@@179 $generated@@48 $generated@@181 $generated@@182) $generated@@27)) (= ($generated@@64 $generated@@178 $generated@@179 $generated@@48 $generated@@181 $generated@@182) ($generated@@64 $generated@@178 $generated@@179 $generated@@180 $generated@@181 $generated@@182)))
 :pattern ( ($generated@@64 $generated@@178 $generated@@179 $generated@@48 $generated@@181 $generated@@182) ($generated@@49 $generated@@180))
 :pattern ( ($generated@@64 $generated@@178 $generated@@179 $generated@@180 $generated@@181 $generated@@182))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (! (= ($generated@@50 $generated@@183 $generated@@184) (forall (($generated@@185 T@U) ) (! (= ($generated@@26 $generated@@183 $generated@@185) ($generated@@26 $generated@@184 $generated@@185))
 :pattern ( ($generated@@26 $generated@@183 $generated@@185))
 :pattern ( ($generated@@26 $generated@@184 $generated@@185))
)))
 :pattern ( ($generated@@50 $generated@@183 $generated@@184))
)))
(assert (forall (($generated@@186 Int) ) (! (= ($generated@@57 $generated@@6 ($generated@@10 ($generated@@42 $generated@@186))) ($generated@@44 $generated@@110 ($generated@@57 $generated@@6 ($generated@@10 $generated@@186))))
 :pattern ( ($generated@@57 $generated@@6 ($generated@@10 ($generated@@42 $generated@@186))))
)))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@T) ) (! (= ($generated@@57 $generated@@188 ($generated@@44 $generated@@188 $generated@@187)) ($generated@@44 $generated@@110 ($generated@@57 $generated@@188 $generated@@187)))
 :pattern ( ($generated@@57 $generated@@188 ($generated@@44 $generated@@188 $generated@@187)))
)))
(assert (forall (($generated@@189 T@U) ($generated@@190 T@U) ) (! ($generated@@71 $generated@@6 $generated@@190 $generated $generated@@189)
 :pattern ( ($generated@@71 $generated@@6 $generated@@190 $generated $generated@@189))
)))
(assert (forall (($generated@@191 T@U) ) (! ($generated@@29 $generated@@6 $generated@@191 $generated)
 :pattern ( ($generated@@29 $generated@@6 $generated@@191 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@192 () T@U)
(declare-fun $generated@@193 () Int)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@196 true))
(let (($generated@@197  (=> ($generated@@64 $generated $generated $generated@@192 $generated@@61 ($generated@@57 $generated@@6 ($generated@@10 $generated@@193))) (=> (and (and ($generated@@71 $generated@@6 ($generated@@10 $generated@@193) $generated $generated@@192) (= (ControlFlow 0 2) (- 0 1))) ($generated@@40 $generated@@193)) (or ($generated@@24 $generated@@193) (> $generated@@193 0))))))
(let (($generated@@198  (=> (= $generated@@194 ($generated@@142 $generated@@107 $generated@@192 $generated@@1 false)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (not (= 1 $generated@@21)) (not true))) (=> (or (not (= 1 $generated@@21)) (not true)) (=> (and ($generated@@70 ($generated@@57 $generated@@30 $generated@@61) ($generated@@31 $generated $generated) $generated@@192) ($generated@@71 $generated@@6 ($generated@@10 $generated@@193) $generated $generated@@192)) (and (=> (= (ControlFlow 0 4) 2) $generated@@197) (=> (= (ControlFlow 0 4) 3) $generated@@196))))))))
(let (($generated@@199  (=> (and (and ($generated@@49 $generated@@192) ($generated@@195 $generated@@192)) (and (= 2 $generated@@21) (= (ControlFlow 0 6) 4))) $generated@@198)))
$generated@@199)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)