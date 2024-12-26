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
(declare-fun $generated@@24 (T@U Int) T@U)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 (T@U) Int)
(declare-fun $generated@@27 (T@U) Int)
(declare-fun $generated@@28 (T@T T@U) T@U)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@33 (T@T T@U) T@U)
(declare-fun $generated@@36 (T@U) Bool)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@39 (T@U) Bool)
(declare-fun $generated@@41 () Int)
(declare-fun $generated@@42 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@43 (T@U T@U T@U) T@U)
(declare-fun $generated@@44 (T@U) T@U)
(declare-fun $generated@@45 (T@U T@U T@U) Bool)
(declare-fun $generated@@46 (T@U) Bool)
(declare-fun $generated@@51 (T@T T@U) T@U)
(declare-fun $generated@@54 (T@U) T@U)
(declare-fun $generated@@59 (T@U T@U T@U) Bool)
(declare-fun $generated@@64 (T@T T@U T@U) Bool)
(declare-fun $generated@@65 (T@U) T@U)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@74 () T@T)
(declare-fun $generated@@75 (T@U) T@U)
(declare-fun $generated@@84 (T@U T@U) Bool)
(declare-fun $generated@@85 () T@T)
(declare-fun $generated@@95 (T@U) T@U)
(declare-fun $generated@@98 (T@U) T@U)
(declare-fun $generated@@101 (T@U) T@U)
(declare-fun $generated@@112 (T@U) Int)
(declare-fun $generated@@114 (T@U) Int)
(declare-fun $generated@@119 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@120 () T@T)
(declare-fun $generated@@121 () T@T)
(declare-fun $generated@@122 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@123 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@124 () T@T)
(declare-fun $generated@@125 (T@T T@T) T@T)
(declare-fun $generated@@126 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@127 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@128 (T@T) T@T)
(declare-fun $generated@@129 (T@T) T@T)
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
(assert (forall (($generated@@30 T@U) ($generated@@31 Int) ) (!  (=> (and (<= 0 $generated@@31) (< $generated@@31 ($generated@@26 $generated@@30))) (< ($generated@@27 ($generated@@28 $generated@@29 ($generated@@24 $generated@@30 $generated@@31))) ($generated@@27 ($generated@@25 $generated@@30))))
 :pattern ( ($generated@@24 $generated@@30 $generated@@31) ($generated@@25 $generated@@30))
)))
(assert (= ($generated@@26 $generated@@32) 0))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@T) ) (! (= ($generated@@33 $generated@@35 $generated@@34) $generated@@34)
 :pattern ( ($generated@@33 $generated@@35 $generated@@34))
)))
(assert (forall (($generated@@38 T@U) ) (! (= ($generated@@36 $generated@@38) (= ($generated@@37 $generated@@38) $generated@@4))
 :pattern ( ($generated@@36 $generated@@38))
)))
(assert (forall (($generated@@40 T@U) ) (! (= ($generated@@39 $generated@@40) (= ($generated@@37 $generated@@40) $generated@@5))
 :pattern ( ($generated@@39 $generated@@40))
)))
(assert  (=> (<= 1 $generated@@41) (forall (($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ) (!  (=> (and (or ($generated@@45 $generated@@48 $generated@@49 $generated@@50) (and (< 1 $generated@@41) (and ($generated@@42 $generated@@29 $generated@@50 ($generated@@44 $generated@@48) $generated@@47) ($generated@@39 $generated@@50)))) ($generated@@46 $generated@@47)) ($generated@@42 $generated@@29 ($generated@@43 $generated@@48 $generated@@49 $generated@@50) ($generated@@44 $generated@@49) $generated@@47))
 :pattern ( ($generated@@42 $generated@@29 ($generated@@43 $generated@@48 $generated@@49 $generated@@50) ($generated@@44 $generated@@49) $generated@@47))
))))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@T) ) (! (= ($generated@@51 $generated@@53 ($generated@@28 $generated@@53 $generated@@52)) $generated@@52)
 :pattern ( ($generated@@28 $generated@@53 $generated@@52))
)))
(assert (forall (($generated@@55 T@U) ) (!  (=> ($generated@@36 $generated@@55) (exists (($generated@@56 T@U) ) (= $generated@@55 ($generated@@54 $generated@@56))))
 :pattern ( ($generated@@36 $generated@@55))
)))
(assert (forall (($generated@@57 T@U) ) (!  (=> ($generated@@39 $generated@@57) (exists (($generated@@58 T@U) ) (= $generated@@57 ($generated@@25 $generated@@58))))
 :pattern ( ($generated@@39 $generated@@57))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@T) ) (! (= ($generated@@59 ($generated@@51 $generated@@63 $generated@@60) $generated@@61 $generated@@62) ($generated@@42 $generated@@63 $generated@@60 $generated@@61 $generated@@62))
 :pattern ( ($generated@@59 ($generated@@51 $generated@@63 $generated@@60) $generated@@61 $generated@@62))
)))
(assert  (=> (<= 1 $generated@@41) (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (!  (=> (or ($generated@@45 $generated@@66 $generated@@67 $generated@@68) (and (< 1 $generated@@41) (and ($generated@@64 $generated@@29 $generated@@68 ($generated@@44 $generated@@66)) ($generated@@39 $generated@@68)))) (= ($generated@@43 $generated@@66 $generated@@67 $generated@@68) ($generated@@25 ($generated@@65 $generated@@68))))
 :pattern ( ($generated@@43 $generated@@66 $generated@@67 $generated@@68))
))))
(assert (forall (($generated@@70 T@U) ) (!  (and (= ($generated@@23 ($generated@@44 $generated@@70)) $generated@@3) (= ($generated@@69 ($generated@@44 $generated@@70)) $generated@@6))
 :pattern ( ($generated@@44 $generated@@70))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (!  (=> ($generated@@46 $generated@@73) (= ($generated@@42 $generated@@29 ($generated@@54 $generated@@72) ($generated@@44 $generated@@71) $generated@@73) ($generated@@59 $generated@@72 $generated@@71 $generated@@73)))
 :pattern ( ($generated@@42 $generated@@29 ($generated@@54 $generated@@72) ($generated@@44 $generated@@71) $generated@@73))
)))
(assert (= ($generated@@7 $generated@@74) 4))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ) (!  (=> (and ($generated@@46 $generated@@77) (and ($generated@@39 $generated@@76) (exists (($generated@@78 T@U) ) (! ($generated@@42 $generated@@29 $generated@@76 ($generated@@44 $generated@@78) $generated@@77)
 :pattern ( ($generated@@42 $generated@@29 $generated@@76 ($generated@@44 $generated@@78) $generated@@77))
)))) ($generated@@42 $generated@@74 ($generated@@65 $generated@@76) ($generated@@75 $generated) $generated@@77))
 :pattern ( ($generated@@42 $generated@@74 ($generated@@65 $generated@@76) ($generated@@75 $generated) $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ) (!  (=> ($generated@@46 $generated@@81) (= ($generated@@42 $generated@@29 ($generated@@25 $generated@@80) ($generated@@44 $generated@@79) $generated@@81) ($generated@@42 $generated@@74 $generated@@80 ($generated@@75 $generated) $generated@@81)))
 :pattern ( ($generated@@42 $generated@@29 ($generated@@25 $generated@@80) ($generated@@44 $generated@@79) $generated@@81))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ) (!  (=> ($generated@@64 $generated@@29 $generated@@83 ($generated@@44 $generated@@82)) (or ($generated@@36 $generated@@83) ($generated@@39 $generated@@83)))
 :pattern ( ($generated@@39 $generated@@83) ($generated@@64 $generated@@29 $generated@@83 ($generated@@44 $generated@@82)))
 :pattern ( ($generated@@36 $generated@@83) ($generated@@64 $generated@@29 $generated@@83 ($generated@@44 $generated@@82)))
)))
(assert (= ($generated@@7 $generated@@85) 5))
(assert (forall (($generated@@86 T@U) ) (!  (=> ($generated@@84 $generated@@86 $generated) (and (= ($generated@@51 $generated@@85 ($generated@@28 $generated@@85 $generated@@86)) $generated@@86) ($generated@@64 $generated@@85 ($generated@@28 $generated@@85 $generated@@86) $generated)))
 :pattern ( ($generated@@84 $generated@@86 $generated))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@84 ($generated@@51 $generated@@89 $generated@@87) $generated@@88) ($generated@@64 $generated@@89 $generated@@87 $generated@@88))
 :pattern ( ($generated@@84 ($generated@@51 $generated@@89 $generated@@87) $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ) (! (<= 0 ($generated@@26 $generated@@90))
 :pattern ( ($generated@@26 $generated@@90))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ) (! (= ($generated@@42 $generated@@74 $generated@@91 ($generated@@75 $generated@@92) $generated@@93) (forall (($generated@@94 Int) ) (!  (=> (and (<= 0 $generated@@94) (< $generated@@94 ($generated@@26 $generated@@91))) ($generated@@59 ($generated@@24 $generated@@91 $generated@@94) $generated@@92 $generated@@93))
 :pattern ( ($generated@@24 $generated@@91 $generated@@94))
)))
 :pattern ( ($generated@@42 $generated@@74 $generated@@91 ($generated@@75 $generated@@92) $generated@@93))
)))
(assert (forall (($generated@@96 T@U) ) (! (= ($generated@@95 ($generated@@75 $generated@@96)) $generated@@96)
 :pattern ( ($generated@@75 $generated@@96))
)))
(assert (forall (($generated@@97 T@U) ) (! (= ($generated@@23 ($generated@@75 $generated@@97)) $generated@@1)
 :pattern ( ($generated@@75 $generated@@97))
)))
(assert (forall (($generated@@99 T@U) ) (! (= ($generated@@98 ($generated@@44 $generated@@99)) $generated@@99)
 :pattern ( ($generated@@44 $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ) (! (= ($generated@@37 ($generated@@54 $generated@@100)) $generated@@4)
 :pattern ( ($generated@@54 $generated@@100))
)))
(assert (forall (($generated@@102 T@U) ) (! (= ($generated@@101 ($generated@@54 $generated@@102)) $generated@@102)
 :pattern ( ($generated@@54 $generated@@102))
)))
(assert (forall (($generated@@103 T@U) ) (! (= ($generated@@37 ($generated@@25 $generated@@103)) $generated@@5)
 :pattern ( ($generated@@25 $generated@@103))
)))
(assert (forall (($generated@@104 T@U) ) (! (= ($generated@@65 ($generated@@25 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@25 $generated@@104))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@T) ) (! (= ($generated@@28 $generated@@106 ($generated@@51 $generated@@106 $generated@@105)) $generated@@105)
 :pattern ( ($generated@@51 $generated@@106 $generated@@105))
)))
(assert  (=> (<= 1 $generated@@41) (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (!  (=> (or ($generated@@45 $generated@@107 $generated@@108 $generated@@109) (and (< 1 $generated@@41) (and ($generated@@64 $generated@@29 $generated@@109 ($generated@@44 $generated@@107)) ($generated@@39 $generated@@109)))) ($generated@@64 $generated@@29 ($generated@@43 $generated@@107 $generated@@108 $generated@@109) ($generated@@44 $generated@@108)))
 :pattern ( ($generated@@43 $generated@@107 $generated@@108 $generated@@109))
))))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@64 $generated@@29 ($generated@@54 $generated@@111) ($generated@@44 $generated@@110)) ($generated@@84 $generated@@111 $generated@@110))
 :pattern ( ($generated@@64 $generated@@29 ($generated@@54 $generated@@111) ($generated@@44 $generated@@110)))
)))
(assert (forall (($generated@@113 T@U) ) (! (< ($generated@@112 $generated@@113) ($generated@@27 ($generated@@54 $generated@@113)))
 :pattern ( ($generated@@54 $generated@@113))
)))
(assert (forall (($generated@@115 T@U) ) (! (< ($generated@@114 $generated@@115) ($generated@@27 ($generated@@25 $generated@@115)))
 :pattern ( ($generated@@25 $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (!  (=> (and ($generated@@46 $generated@@118) (and ($generated@@36 $generated@@116) ($generated@@42 $generated@@29 $generated@@116 ($generated@@44 $generated@@117) $generated@@118))) ($generated@@59 ($generated@@101 $generated@@116) $generated@@117 $generated@@118))
 :pattern ( ($generated@@59 ($generated@@101 $generated@@116) $generated@@117 $generated@@118))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@T) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@119 $generated@@130 $generated@@131 $generated@@132 ($generated@@126 $generated@@130 $generated@@131 $generated@@132 $generated@@134 $generated@@135 $generated@@136 $generated@@133) $generated@@135 $generated@@136) $generated@@133)
 :weight 0
)) (and (forall (($generated@@137 T@T) ($generated@@138 T@T) ($generated@@139 T@T) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ) (!  (or (= $generated@@142 $generated@@144) (= ($generated@@119 $generated@@137 $generated@@138 $generated@@139 ($generated@@126 $generated@@137 $generated@@138 $generated@@139 $generated@@141 $generated@@142 $generated@@143 $generated@@140) $generated@@144 $generated@@145) ($generated@@119 $generated@@137 $generated@@138 $generated@@139 $generated@@141 $generated@@144 $generated@@145)))
 :weight 0
)) (forall (($generated@@146 T@T) ($generated@@147 T@T) ($generated@@148 T@T) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ) (!  (or (= $generated@@152 $generated@@154) (= ($generated@@119 $generated@@146 $generated@@147 $generated@@148 ($generated@@126 $generated@@146 $generated@@147 $generated@@148 $generated@@150 $generated@@151 $generated@@152 $generated@@149) $generated@@153 $generated@@154) ($generated@@119 $generated@@146 $generated@@147 $generated@@148 $generated@@150 $generated@@153 $generated@@154)))
 :weight 0
)))) (= ($generated@@7 $generated@@120) 6)) (= ($generated@@7 $generated@@121) 7)) (forall (($generated@@155 T@T) ($generated@@156 T@T) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ) (! (= ($generated@@123 $generated@@155 $generated@@156 ($generated@@127 $generated@@155 $generated@@156 $generated@@158 $generated@@159 $generated@@157) $generated@@159) $generated@@157)
 :weight 0
))) (forall (($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ) (!  (or (= $generated@@164 $generated@@165) (= ($generated@@123 $generated@@160 $generated@@161 ($generated@@127 $generated@@160 $generated@@161 $generated@@163 $generated@@164 $generated@@162) $generated@@165) ($generated@@123 $generated@@160 $generated@@161 $generated@@163 $generated@@165)))
 :weight 0
))) (= ($generated@@7 $generated@@124) 8)) (forall (($generated@@166 T@T) ($generated@@167 T@T) ) (= ($generated@@7 ($generated@@125 $generated@@166 $generated@@167)) 9))) (forall (($generated@@168 T@T) ($generated@@169 T@T) ) (! (= ($generated@@128 ($generated@@125 $generated@@168 $generated@@169)) $generated@@168)
 :pattern ( ($generated@@125 $generated@@168 $generated@@169))
))) (forall (($generated@@170 T@T) ($generated@@171 T@T) ) (! (= ($generated@@129 ($generated@@125 $generated@@170 $generated@@171)) $generated@@171)
 :pattern ( ($generated@@125 $generated@@170 $generated@@171))
))))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 Bool) ($generated@@176 T@U) ($generated@@177 T@U) ) (! (= ($generated@@12 ($generated@@119 $generated@@120 $generated@@121 $generated@@8 ($generated@@122 $generated@@172 $generated@@173 $generated@@174 $generated@@175) $generated@@176 $generated@@177))  (=> (and (or (not (= $generated@@176 $generated@@172)) (not true)) ($generated@@12 ($generated@@28 $generated@@8 ($generated@@123 $generated@@121 $generated@@124 ($generated@@123 $generated@@120 ($generated@@125 $generated@@121 $generated@@124) $generated@@173 $generated@@176) $generated@@174)))) $generated@@175))
 :pattern ( ($generated@@119 $generated@@120 $generated@@121 $generated@@8 ($generated@@122 $generated@@172 $generated@@173 $generated@@174 $generated@@175) $generated@@176 $generated@@177))
)))
(assert (forall (($generated@@178 T@U) ) (! (= ($generated@@112 ($generated@@51 $generated@@29 $generated@@178)) ($generated@@27 $generated@@178))
 :pattern ( ($generated@@112 ($generated@@51 $generated@@29 $generated@@178)))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ) (!  (=> ($generated@@84 $generated@@179 ($generated@@75 $generated@@180)) (and (= ($generated@@51 $generated@@74 ($generated@@28 $generated@@74 $generated@@179)) $generated@@179) ($generated@@64 $generated@@74 ($generated@@28 $generated@@74 $generated@@179) ($generated@@75 $generated@@180))))
 :pattern ( ($generated@@84 $generated@@179 ($generated@@75 $generated@@180)))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@U) ) (!  (=> ($generated@@84 $generated@@182 ($generated@@44 $generated@@181)) (and (= ($generated@@51 $generated@@29 ($generated@@28 $generated@@29 $generated@@182)) $generated@@182) ($generated@@64 $generated@@29 ($generated@@28 $generated@@29 $generated@@182) ($generated@@44 $generated@@181))))
 :pattern ( ($generated@@84 $generated@@182 ($generated@@44 $generated@@181)))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (! (= ($generated@@64 $generated@@29 ($generated@@25 $generated@@184) ($generated@@44 $generated@@183)) ($generated@@64 $generated@@74 $generated@@184 ($generated@@75 $generated)))
 :pattern ( ($generated@@64 $generated@@29 ($generated@@25 $generated@@184) ($generated@@44 $generated@@183)))
)))
(assert (forall (($generated@@185 T@U) ) (! (= ($generated@@54 ($generated@@33 $generated@@124 $generated@@185)) ($generated@@33 $generated@@29 ($generated@@54 $generated@@185)))
 :pattern ( ($generated@@54 ($generated@@33 $generated@@124 $generated@@185)))
)))
(assert (forall (($generated@@186 T@U) ) (! (= ($generated@@25 ($generated@@33 $generated@@74 $generated@@186)) ($generated@@33 $generated@@29 ($generated@@25 $generated@@186)))
 :pattern ( ($generated@@25 ($generated@@33 $generated@@74 $generated@@186)))
)))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@T) ) (! (= ($generated@@51 $generated@@188 ($generated@@33 $generated@@188 $generated@@187)) ($generated@@33 $generated@@124 ($generated@@51 $generated@@188 $generated@@187)))
 :pattern ( ($generated@@51 $generated@@188 ($generated@@33 $generated@@188 $generated@@187)))
)))
(assert (forall (($generated@@189 T@U) ) (!  (=> (= ($generated@@26 $generated@@189) 0) (= $generated@@189 $generated@@32))
 :pattern ( ($generated@@26 $generated@@189))
)))
(assert  (=> (<= 1 $generated@@41) (forall (($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ) (!  (=> (or ($generated@@45 $generated@@190 $generated@@191 ($generated@@33 $generated@@29 $generated@@192)) (and (< 1 $generated@@41) (and ($generated@@64 $generated@@29 $generated@@192 ($generated@@44 $generated@@190)) ($generated@@12 ($generated@@33 $generated@@8 ($generated@@11 ($generated@@39 ($generated@@33 $generated@@29 $generated@@192)))))))) (= ($generated@@43 $generated@@190 $generated@@191 ($generated@@33 $generated@@29 $generated@@192)) ($generated@@33 $generated@@29 ($generated@@25 ($generated@@33 $generated@@74 ($generated@@65 ($generated@@33 $generated@@29 $generated@@192)))))))
 :weight 3
 :pattern ( ($generated@@43 $generated@@190 $generated@@191 ($generated@@33 $generated@@29 $generated@@192)))
))))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ) (! ($generated@@42 $generated@@85 $generated@@194 $generated $generated@@193)
 :pattern ( ($generated@@42 $generated@@85 $generated@@194 $generated $generated@@193))
)))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@U) ) (! (= ($generated@@64 $generated@@74 $generated@@195 ($generated@@75 $generated@@196)) (forall (($generated@@197 Int) ) (!  (=> (and (<= 0 $generated@@197) (< $generated@@197 ($generated@@26 $generated@@195))) ($generated@@84 ($generated@@24 $generated@@195 $generated@@197) $generated@@196))
 :pattern ( ($generated@@24 $generated@@195 $generated@@197))
)))
 :pattern ( ($generated@@64 $generated@@74 $generated@@195 ($generated@@75 $generated@@196)))
)))
(assert (forall (($generated@@198 T@U) ($generated@@199 Int) ) (!  (=> (and (<= 0 $generated@@199) (< $generated@@199 ($generated@@26 $generated@@198))) (< ($generated@@27 ($generated@@28 $generated@@29 ($generated@@24 $generated@@198 $generated@@199))) ($generated@@114 $generated@@198)))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@29 ($generated@@24 $generated@@198 $generated@@199))))
)))
(assert (forall (($generated@@200 T@U) ) (! ($generated@@64 $generated@@85 $generated@@200 $generated)
 :pattern ( ($generated@@64 $generated@@85 $generated@@200 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () T@U)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 (T@U) Bool)
(declare-fun $generated@@206 () T@U)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@207  (=> (= (ControlFlow 0 3) (- 0 2)) ($generated@@39 $generated@@201))))
(let (($generated@@208 true))
(let (($generated@@209  (=> (and (= $generated@@202 ($generated@@122 $generated@@203 $generated@@204 $generated@@2 false)) ($generated@@39 $generated@@201)) (and (=> (= (ControlFlow 0 4) 1) $generated@@208) (=> (= (ControlFlow 0 4) 3) $generated@@207)))))
(let (($generated@@210  (=> (and ($generated@@46 $generated@@204) ($generated@@205 $generated@@204)) (=> (and (and ($generated@@64 $generated@@29 $generated@@201 ($generated@@44 $generated@@206)) ($generated@@42 $generated@@29 $generated@@201 ($generated@@44 $generated@@206) $generated@@204)) (and (= 1 $generated@@41) (= (ControlFlow 0 5) 4))) $generated@@209))))
$generated@@210)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)