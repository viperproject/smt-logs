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
(declare-fun $generated@@24 (T@U T@U) T@U)
(declare-fun $generated@@25 (T@U T@U) Bool)
(declare-fun $generated@@34 (T@U) Bool)
(declare-fun $generated@@35 (T@T T@U T@U) Bool)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 (T@U T@U) T@U)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@43 (T@U T@U) T@U)
(declare-fun $generated@@44 (T@U T@U) Bool)
(declare-fun $generated@@49 (Int) Int)
(declare-fun $generated@@51 (T@T T@U) T@U)
(declare-fun $generated@@54 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@55 (T@U) Bool)
(declare-fun $generated@@56 (T@U T@U T@U) Bool)
(declare-fun $generated@@62 (T@U) T@U)
(declare-fun $generated@@64 (T@T T@U) T@U)
(declare-fun $generated@@65 (T@T T@U) T@U)
(declare-fun $generated@@71 () T@T)
(declare-fun $generated@@72 (T@U) T@U)
(declare-fun $generated@@88 (T@U T@U) T@U)
(declare-fun $generated@@89 (T@U) T@U)
(declare-fun $generated@@92 (T@U) T@U)
(declare-fun $generated@@99 (T@U) T@U)
(declare-fun $generated@@102 (T@U) T@U)
(declare-fun $generated@@105 (T@U) T@U)
(declare-fun $generated@@108 (T@U) T@U)
(declare-fun $generated@@111 (T@U) T@U)
(declare-fun $generated@@116 () T@T)
(declare-fun $generated@@117 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@118 () T@T)
(declare-fun $generated@@119 (T@U) T@U)
(declare-fun $generated@@120 (T@U) T@U)
(declare-fun $generated@@121 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@138 (T@U) Int)
(declare-fun $generated@@139 (T@U) Int)
(declare-fun $generated@@144 () T@U)
(declare-fun $generated@@152 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@153 () T@T)
(declare-fun $generated@@154 () T@T)
(declare-fun $generated@@155 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@156 (T@T T@T) T@T)
(declare-fun $generated@@157 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@158 (T@T) T@T)
(declare-fun $generated@@159 (T@T) T@T)
(declare-fun $generated@@197 (T@U) T@U)
(declare-fun $generated@@202 (T@U) T@U)
(declare-fun $generated@@205 (T@U) T@U)
(declare-fun $generated@@211 (T@U T@U T@U) T@U)
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
(assert (forall (($generated@@26 T@U) ($generated@@27 T@U) ) (! ($generated@@25 ($generated@@24 $generated@@26 $generated@@27) $generated@@27)
 :pattern ( ($generated@@24 $generated@@26 $generated@@27))
)))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ) (!  (=> ($generated@@25 $generated@@28 $generated@@30) ($generated@@25 ($generated@@24 $generated@@28 $generated@@29) $generated@@30))
 :pattern ( ($generated@@24 $generated@@28 $generated@@29) ($generated@@25 $generated@@28 $generated@@30))
)))
(assert (forall (($generated@@31 T@U) ($generated@@32 T@U) ($generated@@33 T@U) ) (! (= ($generated@@25 ($generated@@24 $generated@@31 $generated@@32) $generated@@33)  (or (= $generated@@33 $generated@@32) ($generated@@25 $generated@@31 $generated@@33)))
 :pattern ( ($generated@@25 ($generated@@24 $generated@@31 $generated@@32) $generated@@33))
)))
(assert (= ($generated@@7 $generated@@36) 3))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ) (!  (=> ($generated@@35 $generated@@36 $generated@@40 ($generated@@37 $generated@@38 $generated@@39)) ($generated@@34 $generated@@40))
 :pattern ( ($generated@@34 $generated@@40) ($generated@@35 $generated@@36 $generated@@40 ($generated@@37 $generated@@38 $generated@@39)))
)))
(assert (forall (($generated@@42 T@U) ) (!  (not ($generated@@25 $generated@@41 $generated@@42))
 :pattern ( ($generated@@25 $generated@@41 $generated@@42))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (! (= ($generated@@35 $generated@@36 ($generated@@43 $generated@@47 $generated@@48) ($generated@@37 $generated@@45 $generated@@46))  (and ($generated@@44 $generated@@47 $generated@@45) ($generated@@44 $generated@@48 $generated@@46)))
 :pattern ( ($generated@@35 $generated@@36 ($generated@@43 $generated@@47 $generated@@48) ($generated@@37 $generated@@45 $generated@@46)))
)))
(assert (forall (($generated@@50 Int) ) (! (= ($generated@@49 $generated@@50) $generated@@50)
 :pattern ( ($generated@@49 $generated@@50))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@T) ) (! (= ($generated@@51 $generated@@53 $generated@@52) $generated@@52)
 :pattern ( ($generated@@51 $generated@@53 $generated@@52))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (!  (=> ($generated@@55 $generated@@61) (= ($generated@@54 $generated@@36 ($generated@@43 $generated@@59 $generated@@60) ($generated@@37 $generated@@57 $generated@@58) $generated@@61)  (and ($generated@@56 $generated@@59 $generated@@57 $generated@@61) ($generated@@56 $generated@@60 $generated@@58 $generated@@61))))
 :pattern ( ($generated@@54 $generated@@36 ($generated@@43 $generated@@59 $generated@@60) ($generated@@37 $generated@@57 $generated@@58) $generated@@61))
)))
(assert (forall (($generated@@63 T@U) ) (! (= ($generated@@34 $generated@@63) (= ($generated@@62 $generated@@63) $generated@@4))
 :pattern ( ($generated@@34 $generated@@63))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@T) ) (! (= ($generated@@65 $generated@@67 ($generated@@64 $generated@@67 $generated@@66)) $generated@@66)
 :pattern ( ($generated@@64 $generated@@67 $generated@@66))
)))
(assert (forall (($generated@@68 T@U) ) (!  (=> ($generated@@34 $generated@@68) (exists (($generated@@69 T@U) ($generated@@70 T@U) ) (= $generated@@68 ($generated@@43 $generated@@69 $generated@@70))))
 :pattern ( ($generated@@34 $generated@@68))
)))
(assert (= ($generated@@7 $generated@@71) 4))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ) (! (= ($generated@@35 $generated@@71 $generated@@73 ($generated@@72 $generated@@74)) (forall (($generated@@75 T@U) ) (!  (=> ($generated@@25 $generated@@73 $generated@@75) ($generated@@44 $generated@@75 $generated@@74))
 :pattern ( ($generated@@25 $generated@@73 $generated@@75))
)))
 :pattern ( ($generated@@35 $generated@@71 $generated@@73 ($generated@@72 $generated@@74)))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@T) ) (! (= ($generated@@56 ($generated@@65 $generated@@79 $generated@@76) $generated@@77 $generated@@78) ($generated@@54 $generated@@79 $generated@@76 $generated@@77 $generated@@78))
 :pattern ( ($generated@@56 ($generated@@65 $generated@@79 $generated@@76) $generated@@77 $generated@@78))
)))
(assert (forall (($generated@@80 T@U) ) (!  (=> ($generated@@44 $generated@@80 $generated) (and (= ($generated@@65 $generated@@9 ($generated@@64 $generated@@9 $generated@@80)) $generated@@80) ($generated@@35 $generated@@9 ($generated@@64 $generated@@9 $generated@@80) $generated)))
 :pattern ( ($generated@@44 $generated@@80 $generated))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@T) ) (! (= ($generated@@44 ($generated@@65 $generated@@83 $generated@@81) $generated@@82) ($generated@@35 $generated@@83 $generated@@81 $generated@@82))
 :pattern ( ($generated@@44 ($generated@@65 $generated@@83 $generated@@81) $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ) (! (= ($generated@@54 $generated@@71 $generated@@84 ($generated@@72 $generated@@85) $generated@@86) (forall (($generated@@87 T@U) ) (!  (=> ($generated@@25 $generated@@84 $generated@@87) ($generated@@56 $generated@@87 $generated@@85 $generated@@86))
 :pattern ( ($generated@@25 $generated@@84 $generated@@87))
)))
 :pattern ( ($generated@@54 $generated@@71 $generated@@84 ($generated@@72 $generated@@85) $generated@@86))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@89 ($generated@@88 $generated@@90 $generated@@91)) $generated@@90)
 :pattern ( ($generated@@88 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@92 ($generated@@88 $generated@@93 $generated@@94)) $generated@@94)
 :pattern ( ($generated@@88 $generated@@93 $generated@@94))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (! (= ($generated@@23 ($generated@@88 $generated@@95 $generated@@96)) $generated@@2)
 :pattern ( ($generated@@88 $generated@@95 $generated@@96))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@62 ($generated@@43 $generated@@97 $generated@@98)) $generated@@4)
 :pattern ( ($generated@@43 $generated@@97 $generated@@98))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@99 ($generated@@37 $generated@@100 $generated@@101)) $generated@@100)
 :pattern ( ($generated@@37 $generated@@100 $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@102 ($generated@@37 $generated@@103 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@37 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ) (! (= ($generated@@105 ($generated@@43 $generated@@106 $generated@@107)) $generated@@106)
 :pattern ( ($generated@@43 $generated@@106 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ) (! (= ($generated@@108 ($generated@@43 $generated@@109 $generated@@110)) $generated@@110)
 :pattern ( ($generated@@43 $generated@@109 $generated@@110))
)))
(assert (forall (($generated@@112 T@U) ) (! (= ($generated@@111 ($generated@@72 $generated@@112)) $generated@@112)
 :pattern ( ($generated@@72 $generated@@112))
)))
(assert (forall (($generated@@113 T@U) ) (! (= ($generated@@23 ($generated@@72 $generated@@113)) $generated@@1)
 :pattern ( ($generated@@72 $generated@@113))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@T) ) (! (= ($generated@@64 $generated@@115 ($generated@@65 $generated@@115 $generated@@114)) $generated@@114)
 :pattern ( ($generated@@65 $generated@@115 $generated@@114))
)))
(assert  (and (and (and (= ($generated@@7 $generated@@116) 5) (forall (($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@117 $generated@@122 $generated@@123 ($generated@@121 $generated@@122 $generated@@123 $generated@@125 $generated@@126 $generated@@124) $generated@@126) $generated@@124)
 :weight 0
))) (forall (($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (!  (or (= $generated@@131 $generated@@132) (= ($generated@@117 $generated@@127 $generated@@128 ($generated@@121 $generated@@127 $generated@@128 $generated@@130 $generated@@131 $generated@@129) $generated@@132) ($generated@@117 $generated@@127 $generated@@128 $generated@@130 $generated@@132)))
 :weight 0
))) (= ($generated@@7 $generated@@118) 6)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@54 $generated@@116 $generated@@133 ($generated@@88 $generated@@134 $generated@@135) $generated@@136) (forall (($generated@@137 T@U) ) (!  (=> ($generated@@25 ($generated@@120 $generated@@133) $generated@@137) (and ($generated@@56 ($generated@@117 $generated@@118 $generated@@118 ($generated@@119 $generated@@133) $generated@@137) $generated@@135 $generated@@136) ($generated@@56 $generated@@137 $generated@@134 $generated@@136)))
 :pattern ( ($generated@@117 $generated@@118 $generated@@118 ($generated@@119 $generated@@133) $generated@@137))
 :pattern ( ($generated@@25 ($generated@@120 $generated@@133) $generated@@137))
)))
 :pattern ( ($generated@@54 $generated@@116 $generated@@133 ($generated@@88 $generated@@134 $generated@@135) $generated@@136))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ) (! (< ($generated@@138 $generated@@140) ($generated@@139 ($generated@@43 $generated@@140 $generated@@141)))
 :pattern ( ($generated@@43 $generated@@140 $generated@@141))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (! (< ($generated@@138 $generated@@143) ($generated@@139 ($generated@@43 $generated@@142 $generated@@143)))
 :pattern ( ($generated@@43 $generated@@142 $generated@@143))
)))
(assert (forall (($generated@@145 T@U) ) (!  (not ($generated@@25 ($generated@@120 $generated@@144) $generated@@145))
 :pattern ( ($generated@@25 ($generated@@120 $generated@@144) $generated@@145))
)))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (!  (=> ($generated@@44 $generated@@146 ($generated@@88 $generated@@147 $generated@@148)) (and (= ($generated@@65 $generated@@116 ($generated@@64 $generated@@116 $generated@@146)) $generated@@146) ($generated@@35 $generated@@116 ($generated@@64 $generated@@116 $generated@@146) ($generated@@88 $generated@@147 $generated@@148))))
 :pattern ( ($generated@@44 $generated@@146 ($generated@@88 $generated@@147 $generated@@148)))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ) (!  (=> ($generated@@44 $generated@@151 ($generated@@37 $generated@@149 $generated@@150)) (and (= ($generated@@65 $generated@@36 ($generated@@64 $generated@@36 $generated@@151)) $generated@@151) ($generated@@35 $generated@@36 ($generated@@64 $generated@@36 $generated@@151) ($generated@@37 $generated@@149 $generated@@150))))
 :pattern ( ($generated@@44 $generated@@151 ($generated@@37 $generated@@149 $generated@@150)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@T) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ) (! (= ($generated@@152 $generated@@160 $generated@@161 $generated@@162 ($generated@@157 $generated@@160 $generated@@161 $generated@@162 $generated@@164 $generated@@165 $generated@@166 $generated@@163) $generated@@165 $generated@@166) $generated@@163)
 :weight 0
)) (and (forall (($generated@@167 T@T) ($generated@@168 T@T) ($generated@@169 T@T) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ) (!  (or (= $generated@@172 $generated@@174) (= ($generated@@152 $generated@@167 $generated@@168 $generated@@169 ($generated@@157 $generated@@167 $generated@@168 $generated@@169 $generated@@171 $generated@@172 $generated@@173 $generated@@170) $generated@@174 $generated@@175) ($generated@@152 $generated@@167 $generated@@168 $generated@@169 $generated@@171 $generated@@174 $generated@@175)))
 :weight 0
)) (forall (($generated@@176 T@T) ($generated@@177 T@T) ($generated@@178 T@T) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ) (!  (or (= $generated@@182 $generated@@184) (= ($generated@@152 $generated@@176 $generated@@177 $generated@@178 ($generated@@157 $generated@@176 $generated@@177 $generated@@178 $generated@@180 $generated@@181 $generated@@182 $generated@@179) $generated@@183 $generated@@184) ($generated@@152 $generated@@176 $generated@@177 $generated@@178 $generated@@180 $generated@@183 $generated@@184)))
 :weight 0
)))) (= ($generated@@7 $generated@@153) 7)) (= ($generated@@7 $generated@@154) 8)) (forall (($generated@@185 T@T) ($generated@@186 T@T) ) (= ($generated@@7 ($generated@@156 $generated@@185 $generated@@186)) 9))) (forall (($generated@@187 T@T) ($generated@@188 T@T) ) (! (= ($generated@@158 ($generated@@156 $generated@@187 $generated@@188)) $generated@@187)
 :pattern ( ($generated@@156 $generated@@187 $generated@@188))
))) (forall (($generated@@189 T@T) ($generated@@190 T@T) ) (! (= ($generated@@159 ($generated@@156 $generated@@189 $generated@@190)) $generated@@190)
 :pattern ( ($generated@@156 $generated@@189 $generated@@190))
))))
(assert (forall (($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 Bool) ($generated@@195 T@U) ($generated@@196 T@U) ) (! (= ($generated@@12 ($generated@@152 $generated@@153 $generated@@154 $generated@@8 ($generated@@155 $generated@@191 $generated@@192 $generated@@193 $generated@@194) $generated@@195 $generated@@196))  (=> (and (or (not (= $generated@@195 $generated@@191)) (not true)) ($generated@@12 ($generated@@64 $generated@@8 ($generated@@117 $generated@@154 $generated@@118 ($generated@@117 $generated@@153 ($generated@@156 $generated@@154 $generated@@118) $generated@@192 $generated@@195) $generated@@193)))) $generated@@194))
 :pattern ( ($generated@@152 $generated@@153 $generated@@154 $generated@@8 ($generated@@155 $generated@@191 $generated@@192 $generated@@193 $generated@@194) $generated@@195 $generated@@196))
)))
(assert (forall (($generated@@198 T@U) ($generated@@199 T@U) ) (!  (and (= ($generated@@23 ($generated@@37 $generated@@198 $generated@@199)) $generated@@5) (= ($generated@@197 ($generated@@37 $generated@@198 $generated@@199)) $generated@@6))
 :pattern ( ($generated@@37 $generated@@198 $generated@@199))
)))
(assert (forall (($generated@@200 T@U) ) (!  (or (= $generated@@200 $generated@@144) (exists (($generated@@201 T@U) ) ($generated@@25 ($generated@@120 $generated@@200) $generated@@201)))
 :pattern ( ($generated@@120 $generated@@200))
)))
(assert (forall (($generated@@203 T@U) ) (!  (or (= $generated@@203 $generated@@144) (exists (($generated@@204 T@U) ) ($generated@@25 ($generated@@202 $generated@@203) $generated@@204)))
 :pattern ( ($generated@@202 $generated@@203))
)))
(assert (forall (($generated@@206 T@U) ($generated@@207 T@U) ) (! (= ($generated@@25 ($generated@@205 $generated@@206) $generated@@207)  (and ($generated@@25 ($generated@@120 $generated@@206) ($generated@@105 ($generated@@64 $generated@@36 $generated@@207))) (= ($generated@@117 $generated@@118 $generated@@118 ($generated@@119 $generated@@206) ($generated@@105 ($generated@@64 $generated@@36 $generated@@207))) ($generated@@108 ($generated@@64 $generated@@36 $generated@@207)))))
 :pattern ( ($generated@@25 ($generated@@205 $generated@@206) $generated@@207))
)))
(assert (forall (($generated@@208 T@U) ($generated@@209 T@U) ) (! (= ($generated@@25 ($generated@@202 $generated@@208) $generated@@209) (exists (($generated@@210 T@U) ) (!  (and ($generated@@25 ($generated@@120 $generated@@208) $generated@@210) (= $generated@@209 ($generated@@117 $generated@@118 $generated@@118 ($generated@@119 $generated@@208) $generated@@210)))
 :pattern ( ($generated@@25 ($generated@@120 $generated@@208) $generated@@210))
 :pattern ( ($generated@@117 $generated@@118 $generated@@118 ($generated@@119 $generated@@208) $generated@@210))
)))
 :pattern ( ($generated@@25 ($generated@@202 $generated@@208) $generated@@209))
)))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 T@U) ) (!  (and (=> (= $generated@@214 $generated@@213) (and ($generated@@25 ($generated@@120 ($generated@@211 $generated@@212 $generated@@213 $generated@@215)) $generated@@214) (= ($generated@@117 $generated@@118 $generated@@118 ($generated@@119 ($generated@@211 $generated@@212 $generated@@213 $generated@@215)) $generated@@214) $generated@@215))) (=> (or (not (= $generated@@214 $generated@@213)) (not true)) (and (= ($generated@@25 ($generated@@120 ($generated@@211 $generated@@212 $generated@@213 $generated@@215)) $generated@@214) ($generated@@25 ($generated@@120 $generated@@212) $generated@@214)) (= ($generated@@117 $generated@@118 $generated@@118 ($generated@@119 ($generated@@211 $generated@@212 $generated@@213 $generated@@215)) $generated@@214) ($generated@@117 $generated@@118 $generated@@118 ($generated@@119 $generated@@212) $generated@@214)))))
 :pattern ( ($generated@@25 ($generated@@120 ($generated@@211 $generated@@212 $generated@@213 $generated@@215)) $generated@@214))
 :pattern ( ($generated@@117 $generated@@118 $generated@@118 ($generated@@119 ($generated@@211 $generated@@212 $generated@@213 $generated@@215)) $generated@@214))
)))
(assert (forall (($generated@@216 T@U) ) (! (= ($generated@@138 ($generated@@65 $generated@@36 $generated@@216)) ($generated@@139 $generated@@216))
 :pattern ( ($generated@@138 ($generated@@65 $generated@@36 $generated@@216)))
)))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ) (!  (=> ($generated@@44 $generated@@217 ($generated@@72 $generated@@218)) (and (= ($generated@@65 $generated@@71 ($generated@@64 $generated@@71 $generated@@217)) $generated@@217) ($generated@@35 $generated@@71 ($generated@@64 $generated@@71 $generated@@217) ($generated@@72 $generated@@218))))
 :pattern ( ($generated@@44 $generated@@217 ($generated@@72 $generated@@218)))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ) (! (= ($generated@@35 $generated@@116 $generated@@219 ($generated@@88 $generated@@220 $generated@@221)) (forall (($generated@@222 T@U) ) (!  (=> ($generated@@25 ($generated@@120 $generated@@219) $generated@@222) (and ($generated@@44 ($generated@@117 $generated@@118 $generated@@118 ($generated@@119 $generated@@219) $generated@@222) $generated@@221) ($generated@@44 $generated@@222 $generated@@220)))
 :pattern ( ($generated@@117 $generated@@118 $generated@@118 ($generated@@119 $generated@@219) $generated@@222))
 :pattern ( ($generated@@25 ($generated@@120 $generated@@219) $generated@@222))
)))
 :pattern ( ($generated@@35 $generated@@116 $generated@@219 ($generated@@88 $generated@@220 $generated@@221)))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 T@U) ($generated@@225 T@U) ) (!  (=> (and ($generated@@55 $generated@@225) (and ($generated@@34 $generated@@223) (exists (($generated@@226 T@U) ) (! ($generated@@54 $generated@@36 $generated@@223 ($generated@@37 $generated@@224 $generated@@226) $generated@@225)
 :pattern ( ($generated@@54 $generated@@36 $generated@@223 ($generated@@37 $generated@@224 $generated@@226) $generated@@225))
)))) ($generated@@56 ($generated@@105 $generated@@223) $generated@@224 $generated@@225))
 :pattern ( ($generated@@56 ($generated@@105 $generated@@223) $generated@@224 $generated@@225))
)))
(assert (forall (($generated@@227 T@U) ($generated@@228 T@U) ($generated@@229 T@U) ) (!  (=> (and ($generated@@55 $generated@@229) (and ($generated@@34 $generated@@227) (exists (($generated@@230 T@U) ) (! ($generated@@54 $generated@@36 $generated@@227 ($generated@@37 $generated@@230 $generated@@228) $generated@@229)
 :pattern ( ($generated@@54 $generated@@36 $generated@@227 ($generated@@37 $generated@@230 $generated@@228) $generated@@229))
)))) ($generated@@56 ($generated@@108 $generated@@227) $generated@@228 $generated@@229))
 :pattern ( ($generated@@56 ($generated@@108 $generated@@227) $generated@@228 $generated@@229))
)))
(assert (forall (($generated@@231 T@U) ($generated@@232 T@U) ) (! (= ($generated@@43 ($generated@@51 $generated@@118 $generated@@231) ($generated@@51 $generated@@118 $generated@@232)) ($generated@@51 $generated@@36 ($generated@@43 $generated@@231 $generated@@232)))
 :pattern ( ($generated@@43 ($generated@@51 $generated@@118 $generated@@231) ($generated@@51 $generated@@118 $generated@@232)))
)))
(assert (forall (($generated@@233 Int) ) (! (= ($generated@@65 $generated@@9 ($generated@@13 ($generated@@49 $generated@@233))) ($generated@@51 $generated@@118 ($generated@@65 $generated@@9 ($generated@@13 $generated@@233))))
 :pattern ( ($generated@@65 $generated@@9 ($generated@@13 ($generated@@49 $generated@@233))))
)))
(assert (forall (($generated@@234 T@U) ($generated@@235 T@T) ) (! (= ($generated@@65 $generated@@235 ($generated@@51 $generated@@235 $generated@@234)) ($generated@@51 $generated@@118 ($generated@@65 $generated@@235 $generated@@234)))
 :pattern ( ($generated@@65 $generated@@235 ($generated@@51 $generated@@235 $generated@@234)))
)))
(assert (forall (($generated@@236 T@U) ($generated@@237 T@U) ) (! ($generated@@54 $generated@@9 $generated@@237 $generated $generated@@236)
 :pattern ( ($generated@@54 $generated@@9 $generated@@237 $generated $generated@@236))
)))
(assert (forall (($generated@@238 T@U) ) (!  (or (= $generated@@238 $generated@@144) (exists (($generated@@239 T@U) ($generated@@240 T@U) ) ($generated@@25 ($generated@@205 $generated@@238) ($generated@@65 $generated@@36 ($generated@@43 $generated@@239 $generated@@240)))))
 :pattern ( ($generated@@205 $generated@@238))
)))
(assert (forall (($generated@@241 T@U) ($generated@@242 T@U) ($generated@@243 T@U) ) (!  (=> ($generated@@35 $generated@@116 $generated@@241 ($generated@@88 $generated@@242 $generated@@243)) (and (and ($generated@@35 $generated@@71 ($generated@@120 $generated@@241) ($generated@@72 $generated@@242)) ($generated@@35 $generated@@71 ($generated@@202 $generated@@241) ($generated@@72 $generated@@243))) ($generated@@35 $generated@@71 ($generated@@205 $generated@@241) ($generated@@72 ($generated@@37 $generated@@242 $generated@@243)))))
 :pattern ( ($generated@@35 $generated@@116 $generated@@241 ($generated@@88 $generated@@242 $generated@@243)))
)))
(assert (forall (($generated@@244 T@U) ) (! ($generated@@35 $generated@@9 $generated@@244 $generated)
 :pattern ( ($generated@@35 $generated@@9 $generated@@244 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@245 () T@U)
(declare-fun $generated@@246 () T@U)
(declare-fun $generated@@247 () T@U)
(declare-fun $generated@@248 () T@U)
(declare-fun $generated@@249 (T@U) Bool)
(declare-fun $generated@@250 () T@U)
(declare-fun $generated@@251 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@252  (=> (= $generated@@245 ($generated@@155 $generated@@246 $generated@@247 $generated@@3 false)) (=> (and (= $generated@@248 ($generated@@51 $generated@@116 ($generated@@211 $generated@@144 ($generated@@65 $generated@@71 ($generated@@51 $generated@@71 ($generated@@24 ($generated@@24 $generated@@41 ($generated@@65 $generated@@9 ($generated@@13 ($generated@@49 10)))) ($generated@@65 $generated@@9 ($generated@@13 ($generated@@49 20)))))) ($generated@@65 $generated@@9 ($generated@@13 ($generated@@49 33)))))) (= (ControlFlow 0 2) (- 0 1))) ($generated@@25 ($generated@@120 $generated@@248) ($generated@@65 $generated@@71 ($generated@@24 ($generated@@24 $generated@@41 ($generated@@65 $generated@@9 ($generated@@13 ($generated@@49 10)))) ($generated@@65 $generated@@9 ($generated@@13 ($generated@@49 20))))))))))
(let (($generated@@253  (=> (and ($generated@@55 $generated@@247) ($generated@@249 $generated@@247)) (=> (and (and (and ($generated@@35 $generated@@116 $generated@@250 ($generated@@88 ($generated@@72 $generated) $generated)) ($generated@@54 $generated@@116 $generated@@250 ($generated@@88 ($generated@@72 $generated) $generated) $generated@@247)) true) (and (= 0 $generated@@251) (= (ControlFlow 0 3) 2))) $generated@@252))))
$generated@@253)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)