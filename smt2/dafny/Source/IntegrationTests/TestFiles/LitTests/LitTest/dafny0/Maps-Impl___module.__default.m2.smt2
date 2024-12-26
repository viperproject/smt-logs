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
(declare-fun $generated@@9 (T@T) Int)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 (Bool) T@U)
(declare-fun $generated@@14 (T@U) Bool)
(declare-fun $generated@@15 (Int) T@U)
(declare-fun $generated@@16 (T@U) Int)
(declare-fun $generated@@17 (Real) T@U)
(declare-fun $generated@@18 (T@U) Real)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 (T@U) Bool)
(declare-fun $generated@@27 (T@T T@U T@U) Bool)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 (T@U T@U) T@U)
(declare-fun $generated@@33 (T@U T@U) T@U)
(declare-fun $generated@@34 (T@U T@U) Bool)
(declare-fun $generated@@39 (Int) Int)
(declare-fun $generated@@41 (T@T T@U) T@U)
(declare-fun $generated@@44 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@45 (T@U) Bool)
(declare-fun $generated@@46 (T@U T@U T@U) Bool)
(declare-fun $generated@@52 (T@U) T@U)
(declare-fun $generated@@54 (T@T T@U) T@U)
(declare-fun $generated@@55 (T@T T@U) T@U)
(declare-fun $generated@@61 () T@T)
(declare-fun $generated@@62 (T@U) T@U)
(declare-fun $generated@@63 (T@U T@U) Bool)
(declare-fun $generated@@80 (T@U T@U) T@U)
(declare-fun $generated@@81 (T@U) T@U)
(declare-fun $generated@@84 (T@U) T@U)
(declare-fun $generated@@91 (T@U) T@U)
(declare-fun $generated@@94 (T@U) T@U)
(declare-fun $generated@@97 (T@U) T@U)
(declare-fun $generated@@100 (T@U) T@U)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@108 () T@T)
(declare-fun $generated@@109 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@110 () T@T)
(declare-fun $generated@@111 (T@U) T@U)
(declare-fun $generated@@112 (T@U) T@U)
(declare-fun $generated@@113 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@130 (T@U) Int)
(declare-fun $generated@@131 (T@U) Int)
(declare-fun $generated@@136 () T@U)
(declare-fun $generated@@144 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@145 () T@T)
(declare-fun $generated@@146 () T@T)
(declare-fun $generated@@147 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@148 (T@T T@T) T@T)
(declare-fun $generated@@149 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@150 (T@T) T@T)
(declare-fun $generated@@151 (T@T) T@T)
(declare-fun $generated@@189 (T@U) T@U)
(declare-fun $generated@@194 (T@U) T@U)
(declare-fun $generated@@197 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@9 $generated@@10) 0) (= ($generated@@9 $generated@@11) 1)) (= ($generated@@9 $generated@@12) 2)) (forall (($generated@@19 Bool) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 Int) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 Real) ) (! (= ($generated@@18 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 T@U) ) (! (= ($generated@@17 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8)
)
(assert (= ($generated@@25 $generated) $generated@@1))
(assert (= ($generated@@25 $generated@@0) $generated@@2))
(assert (= ($generated@@9 $generated@@28) 3))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 T@U) ) (!  (=> ($generated@@27 $generated@@28 $generated@@32 ($generated@@29 $generated@@30 $generated@@31)) ($generated@@26 $generated@@32))
 :pattern ( ($generated@@26 $generated@@32) ($generated@@27 $generated@@28 $generated@@32 ($generated@@29 $generated@@30 $generated@@31)))
)))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@27 $generated@@28 ($generated@@33 $generated@@37 $generated@@38) ($generated@@29 $generated@@35 $generated@@36))  (and ($generated@@34 $generated@@37 $generated@@35) ($generated@@34 $generated@@38 $generated@@36)))
 :pattern ( ($generated@@27 $generated@@28 ($generated@@33 $generated@@37 $generated@@38) ($generated@@29 $generated@@35 $generated@@36)))
)))
(assert (forall (($generated@@40 Int) ) (! (= ($generated@@39 $generated@@40) $generated@@40)
 :pattern ( ($generated@@39 $generated@@40))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@T) ) (! (= ($generated@@41 $generated@@43 $generated@@42) $generated@@42)
 :pattern ( ($generated@@41 $generated@@43 $generated@@42))
)))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ) (!  (=> ($generated@@45 $generated@@51) (= ($generated@@44 $generated@@28 ($generated@@33 $generated@@49 $generated@@50) ($generated@@29 $generated@@47 $generated@@48) $generated@@51)  (and ($generated@@46 $generated@@49 $generated@@47 $generated@@51) ($generated@@46 $generated@@50 $generated@@48 $generated@@51))))
 :pattern ( ($generated@@44 $generated@@28 ($generated@@33 $generated@@49 $generated@@50) ($generated@@29 $generated@@47 $generated@@48) $generated@@51))
)))
(assert (forall (($generated@@53 T@U) ) (! (= ($generated@@26 $generated@@53) (= ($generated@@52 $generated@@53) $generated@@6))
 :pattern ( ($generated@@26 $generated@@53))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@T) ) (! (= ($generated@@55 $generated@@57 ($generated@@54 $generated@@57 $generated@@56)) $generated@@56)
 :pattern ( ($generated@@54 $generated@@57 $generated@@56))
)))
(assert (forall (($generated@@58 T@U) ) (!  (=> ($generated@@26 $generated@@58) (exists (($generated@@59 T@U) ($generated@@60 T@U) ) (= $generated@@58 ($generated@@33 $generated@@59 $generated@@60))))
 :pattern ( ($generated@@26 $generated@@58))
)))
(assert (= ($generated@@9 $generated@@61) 4))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ) (! (= ($generated@@27 $generated@@61 $generated@@64 ($generated@@62 $generated@@65)) (forall (($generated@@66 T@U) ) (!  (=> ($generated@@63 $generated@@64 $generated@@66) ($generated@@34 $generated@@66 $generated@@65))
 :pattern ( ($generated@@63 $generated@@64 $generated@@66))
)))
 :pattern ( ($generated@@27 $generated@@61 $generated@@64 ($generated@@62 $generated@@65)))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@T) ) (! (= ($generated@@46 ($generated@@55 $generated@@70 $generated@@67) $generated@@68 $generated@@69) ($generated@@44 $generated@@70 $generated@@67 $generated@@68 $generated@@69))
 :pattern ( ($generated@@46 ($generated@@55 $generated@@70 $generated@@67) $generated@@68 $generated@@69))
)))
(assert (forall (($generated@@71 T@U) ) (!  (=> ($generated@@34 $generated@@71 $generated@@0) (and (= ($generated@@55 $generated@@11 ($generated@@54 $generated@@11 $generated@@71)) $generated@@71) ($generated@@27 $generated@@11 ($generated@@54 $generated@@11 $generated@@71) $generated@@0)))
 :pattern ( ($generated@@34 $generated@@71 $generated@@0))
)))
(assert (forall (($generated@@72 T@U) ) (!  (=> ($generated@@34 $generated@@72 $generated) (and (= ($generated@@55 $generated@@10 ($generated@@54 $generated@@10 $generated@@72)) $generated@@72) ($generated@@27 $generated@@10 ($generated@@54 $generated@@10 $generated@@72) $generated)))
 :pattern ( ($generated@@34 $generated@@72 $generated))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@T) ) (! (= ($generated@@34 ($generated@@55 $generated@@75 $generated@@73) $generated@@74) ($generated@@27 $generated@@75 $generated@@73 $generated@@74))
 :pattern ( ($generated@@34 ($generated@@55 $generated@@75 $generated@@73) $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ) (! (= ($generated@@44 $generated@@61 $generated@@76 ($generated@@62 $generated@@77) $generated@@78) (forall (($generated@@79 T@U) ) (!  (=> ($generated@@63 $generated@@76 $generated@@79) ($generated@@46 $generated@@79 $generated@@77 $generated@@78))
 :pattern ( ($generated@@63 $generated@@76 $generated@@79))
)))
 :pattern ( ($generated@@44 $generated@@61 $generated@@76 ($generated@@62 $generated@@77) $generated@@78))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@81 ($generated@@80 $generated@@82 $generated@@83)) $generated@@82)
 :pattern ( ($generated@@80 $generated@@82 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (! (= ($generated@@84 ($generated@@80 $generated@@85 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@80 $generated@@85 $generated@@86))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ) (! (= ($generated@@25 ($generated@@80 $generated@@87 $generated@@88)) $generated@@4)
 :pattern ( ($generated@@80 $generated@@87 $generated@@88))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@52 ($generated@@33 $generated@@89 $generated@@90)) $generated@@6)
 :pattern ( ($generated@@33 $generated@@89 $generated@@90))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ) (! (= ($generated@@91 ($generated@@29 $generated@@92 $generated@@93)) $generated@@92)
 :pattern ( ($generated@@29 $generated@@92 $generated@@93))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (! (= ($generated@@94 ($generated@@29 $generated@@95 $generated@@96)) $generated@@96)
 :pattern ( ($generated@@29 $generated@@95 $generated@@96))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (! (= ($generated@@97 ($generated@@33 $generated@@98 $generated@@99)) $generated@@98)
 :pattern ( ($generated@@33 $generated@@98 $generated@@99))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ) (! (= ($generated@@100 ($generated@@33 $generated@@101 $generated@@102)) $generated@@102)
 :pattern ( ($generated@@33 $generated@@101 $generated@@102))
)))
(assert (forall (($generated@@104 T@U) ) (! (= ($generated@@103 ($generated@@62 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@62 $generated@@104))
)))
(assert (forall (($generated@@105 T@U) ) (! (= ($generated@@25 ($generated@@62 $generated@@105)) $generated@@3)
 :pattern ( ($generated@@62 $generated@@105))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@T) ) (! (= ($generated@@54 $generated@@107 ($generated@@55 $generated@@107 $generated@@106)) $generated@@106)
 :pattern ( ($generated@@55 $generated@@107 $generated@@106))
)))
(assert  (and (and (and (= ($generated@@9 $generated@@108) 5) (forall (($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (! (= ($generated@@109 $generated@@114 $generated@@115 ($generated@@113 $generated@@114 $generated@@115 $generated@@117 $generated@@118 $generated@@116) $generated@@118) $generated@@116)
 :weight 0
))) (forall (($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (!  (or (= $generated@@123 $generated@@124) (= ($generated@@109 $generated@@119 $generated@@120 ($generated@@113 $generated@@119 $generated@@120 $generated@@122 $generated@@123 $generated@@121) $generated@@124) ($generated@@109 $generated@@119 $generated@@120 $generated@@122 $generated@@124)))
 :weight 0
))) (= ($generated@@9 $generated@@110) 6)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ) (! (= ($generated@@44 $generated@@108 $generated@@125 ($generated@@80 $generated@@126 $generated@@127) $generated@@128) (forall (($generated@@129 T@U) ) (!  (=> ($generated@@63 ($generated@@112 $generated@@125) $generated@@129) (and ($generated@@46 ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@125) $generated@@129) $generated@@127 $generated@@128) ($generated@@46 $generated@@129 $generated@@126 $generated@@128)))
 :pattern ( ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@125) $generated@@129))
 :pattern ( ($generated@@63 ($generated@@112 $generated@@125) $generated@@129))
)))
 :pattern ( ($generated@@44 $generated@@108 $generated@@125 ($generated@@80 $generated@@126 $generated@@127) $generated@@128))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ) (! (< ($generated@@130 $generated@@132) ($generated@@131 ($generated@@33 $generated@@132 $generated@@133)))
 :pattern ( ($generated@@33 $generated@@132 $generated@@133))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ) (! (< ($generated@@130 $generated@@135) ($generated@@131 ($generated@@33 $generated@@134 $generated@@135)))
 :pattern ( ($generated@@33 $generated@@134 $generated@@135))
)))
(assert (forall (($generated@@137 T@U) ) (!  (not ($generated@@63 ($generated@@112 $generated@@136) $generated@@137))
 :pattern ( ($generated@@63 ($generated@@112 $generated@@136) $generated@@137))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (!  (=> ($generated@@34 $generated@@138 ($generated@@80 $generated@@139 $generated@@140)) (and (= ($generated@@55 $generated@@108 ($generated@@54 $generated@@108 $generated@@138)) $generated@@138) ($generated@@27 $generated@@108 ($generated@@54 $generated@@108 $generated@@138) ($generated@@80 $generated@@139 $generated@@140))))
 :pattern ( ($generated@@34 $generated@@138 ($generated@@80 $generated@@139 $generated@@140)))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (!  (=> ($generated@@34 $generated@@143 ($generated@@29 $generated@@141 $generated@@142)) (and (= ($generated@@55 $generated@@28 ($generated@@54 $generated@@28 $generated@@143)) $generated@@143) ($generated@@27 $generated@@28 ($generated@@54 $generated@@28 $generated@@143) ($generated@@29 $generated@@141 $generated@@142))))
 :pattern ( ($generated@@34 $generated@@143 ($generated@@29 $generated@@141 $generated@@142)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@152 T@T) ($generated@@153 T@T) ($generated@@154 T@T) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (! (= ($generated@@144 $generated@@152 $generated@@153 $generated@@154 ($generated@@149 $generated@@152 $generated@@153 $generated@@154 $generated@@156 $generated@@157 $generated@@158 $generated@@155) $generated@@157 $generated@@158) $generated@@155)
 :weight 0
)) (and (forall (($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (!  (or (= $generated@@164 $generated@@166) (= ($generated@@144 $generated@@159 $generated@@160 $generated@@161 ($generated@@149 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@164 $generated@@165 $generated@@162) $generated@@166 $generated@@167) ($generated@@144 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@166 $generated@@167)))
 :weight 0
)) (forall (($generated@@168 T@T) ($generated@@169 T@T) ($generated@@170 T@T) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (!  (or (= $generated@@174 $generated@@176) (= ($generated@@144 $generated@@168 $generated@@169 $generated@@170 ($generated@@149 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@173 $generated@@174 $generated@@171) $generated@@175 $generated@@176) ($generated@@144 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@175 $generated@@176)))
 :weight 0
)))) (= ($generated@@9 $generated@@145) 7)) (= ($generated@@9 $generated@@146) 8)) (forall (($generated@@177 T@T) ($generated@@178 T@T) ) (= ($generated@@9 ($generated@@148 $generated@@177 $generated@@178)) 9))) (forall (($generated@@179 T@T) ($generated@@180 T@T) ) (! (= ($generated@@150 ($generated@@148 $generated@@179 $generated@@180)) $generated@@179)
 :pattern ( ($generated@@148 $generated@@179 $generated@@180))
))) (forall (($generated@@181 T@T) ($generated@@182 T@T) ) (! (= ($generated@@151 ($generated@@148 $generated@@181 $generated@@182)) $generated@@182)
 :pattern ( ($generated@@148 $generated@@181 $generated@@182))
))))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 Bool) ($generated@@187 T@U) ($generated@@188 T@U) ) (! (= ($generated@@14 ($generated@@144 $generated@@145 $generated@@146 $generated@@10 ($generated@@147 $generated@@183 $generated@@184 $generated@@185 $generated@@186) $generated@@187 $generated@@188))  (=> (and (or (not (= $generated@@187 $generated@@183)) (not true)) ($generated@@14 ($generated@@54 $generated@@10 ($generated@@109 $generated@@146 $generated@@110 ($generated@@109 $generated@@145 ($generated@@148 $generated@@146 $generated@@110) $generated@@184 $generated@@187) $generated@@185)))) $generated@@186))
 :pattern ( ($generated@@144 $generated@@145 $generated@@146 $generated@@10 ($generated@@147 $generated@@183 $generated@@184 $generated@@185 $generated@@186) $generated@@187 $generated@@188))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ) (!  (and (= ($generated@@25 ($generated@@29 $generated@@190 $generated@@191)) $generated@@7) (= ($generated@@189 ($generated@@29 $generated@@190 $generated@@191)) $generated@@8))
 :pattern ( ($generated@@29 $generated@@190 $generated@@191))
)))
(assert (forall (($generated@@192 T@U) ) (!  (or (= $generated@@192 $generated@@136) (exists (($generated@@193 T@U) ) ($generated@@63 ($generated@@112 $generated@@192) $generated@@193)))
 :pattern ( ($generated@@112 $generated@@192))
)))
(assert (forall (($generated@@195 T@U) ) (!  (or (= $generated@@195 $generated@@136) (exists (($generated@@196 T@U) ) ($generated@@63 ($generated@@194 $generated@@195) $generated@@196)))
 :pattern ( ($generated@@194 $generated@@195))
)))
(assert (forall (($generated@@198 T@U) ($generated@@199 T@U) ) (! (= ($generated@@63 ($generated@@197 $generated@@198) $generated@@199)  (and ($generated@@63 ($generated@@112 $generated@@198) ($generated@@97 ($generated@@54 $generated@@28 $generated@@199))) (= ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@198) ($generated@@97 ($generated@@54 $generated@@28 $generated@@199))) ($generated@@100 ($generated@@54 $generated@@28 $generated@@199)))))
 :pattern ( ($generated@@63 ($generated@@197 $generated@@198) $generated@@199))
)))
(assert (forall (($generated@@200 T@U) ($generated@@201 T@U) ) (! (= ($generated@@63 ($generated@@194 $generated@@200) $generated@@201) (exists (($generated@@202 T@U) ) (!  (and ($generated@@63 ($generated@@112 $generated@@200) $generated@@202) (= $generated@@201 ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@200) $generated@@202)))
 :pattern ( ($generated@@63 ($generated@@112 $generated@@200) $generated@@202))
 :pattern ( ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@200) $generated@@202))
)))
 :pattern ( ($generated@@63 ($generated@@194 $generated@@200) $generated@@201))
)))
(assert (forall (($generated@@203 T@U) ) (! (= ($generated@@130 ($generated@@55 $generated@@28 $generated@@203)) ($generated@@131 $generated@@203))
 :pattern ( ($generated@@130 ($generated@@55 $generated@@28 $generated@@203)))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ) (!  (=> ($generated@@34 $generated@@204 ($generated@@62 $generated@@205)) (and (= ($generated@@55 $generated@@61 ($generated@@54 $generated@@61 $generated@@204)) $generated@@204) ($generated@@27 $generated@@61 ($generated@@54 $generated@@61 $generated@@204) ($generated@@62 $generated@@205))))
 :pattern ( ($generated@@34 $generated@@204 ($generated@@62 $generated@@205)))
)))
(assert (forall (($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ) (! (= ($generated@@27 $generated@@108 $generated@@206 ($generated@@80 $generated@@207 $generated@@208)) (forall (($generated@@209 T@U) ) (!  (=> ($generated@@63 ($generated@@112 $generated@@206) $generated@@209) (and ($generated@@34 ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@206) $generated@@209) $generated@@208) ($generated@@34 $generated@@209 $generated@@207)))
 :pattern ( ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@206) $generated@@209))
 :pattern ( ($generated@@63 ($generated@@112 $generated@@206) $generated@@209))
)))
 :pattern ( ($generated@@27 $generated@@108 $generated@@206 ($generated@@80 $generated@@207 $generated@@208)))
)))
(assert (forall (($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ) (!  (=> (and ($generated@@45 $generated@@212) (and ($generated@@26 $generated@@210) (exists (($generated@@213 T@U) ) (! ($generated@@44 $generated@@28 $generated@@210 ($generated@@29 $generated@@211 $generated@@213) $generated@@212)
 :pattern ( ($generated@@44 $generated@@28 $generated@@210 ($generated@@29 $generated@@211 $generated@@213) $generated@@212))
)))) ($generated@@46 ($generated@@97 $generated@@210) $generated@@211 $generated@@212))
 :pattern ( ($generated@@46 ($generated@@97 $generated@@210) $generated@@211 $generated@@212))
)))
(assert (forall (($generated@@214 T@U) ($generated@@215 T@U) ($generated@@216 T@U) ) (!  (=> (and ($generated@@45 $generated@@216) (and ($generated@@26 $generated@@214) (exists (($generated@@217 T@U) ) (! ($generated@@44 $generated@@28 $generated@@214 ($generated@@29 $generated@@217 $generated@@215) $generated@@216)
 :pattern ( ($generated@@44 $generated@@28 $generated@@214 ($generated@@29 $generated@@217 $generated@@215) $generated@@216))
)))) ($generated@@46 ($generated@@100 $generated@@214) $generated@@215 $generated@@216))
 :pattern ( ($generated@@46 ($generated@@100 $generated@@214) $generated@@215 $generated@@216))
)))
(assert (forall (($generated@@218 T@U) ($generated@@219 T@U) ) (! (= ($generated@@33 ($generated@@41 $generated@@110 $generated@@218) ($generated@@41 $generated@@110 $generated@@219)) ($generated@@41 $generated@@28 ($generated@@33 $generated@@218 $generated@@219)))
 :pattern ( ($generated@@33 ($generated@@41 $generated@@110 $generated@@218) ($generated@@41 $generated@@110 $generated@@219)))
)))
(assert (forall (($generated@@220 Int) ) (! (= ($generated@@55 $generated@@11 ($generated@@15 ($generated@@39 $generated@@220))) ($generated@@41 $generated@@110 ($generated@@55 $generated@@11 ($generated@@15 $generated@@220))))
 :pattern ( ($generated@@55 $generated@@11 ($generated@@15 ($generated@@39 $generated@@220))))
)))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@T) ) (! (= ($generated@@55 $generated@@222 ($generated@@41 $generated@@222 $generated@@221)) ($generated@@41 $generated@@110 ($generated@@55 $generated@@222 $generated@@221)))
 :pattern ( ($generated@@55 $generated@@222 ($generated@@41 $generated@@222 $generated@@221)))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 T@U) ) (! ($generated@@44 $generated@@11 $generated@@224 $generated@@0 $generated@@223)
 :pattern ( ($generated@@44 $generated@@11 $generated@@224 $generated@@0 $generated@@223))
)))
(assert (forall (($generated@@225 T@U) ($generated@@226 T@U) ) (! ($generated@@44 $generated@@10 $generated@@226 $generated $generated@@225)
 :pattern ( ($generated@@44 $generated@@10 $generated@@226 $generated $generated@@225))
)))
(assert (forall (($generated@@227 T@U) ) (!  (or (= $generated@@227 $generated@@136) (exists (($generated@@228 T@U) ($generated@@229 T@U) ) ($generated@@63 ($generated@@197 $generated@@227) ($generated@@55 $generated@@28 ($generated@@33 $generated@@228 $generated@@229)))))
 :pattern ( ($generated@@197 $generated@@227))
)))
(assert (forall (($generated@@230 T@U) ($generated@@231 T@U) ($generated@@232 T@U) ) (!  (=> ($generated@@27 $generated@@108 $generated@@230 ($generated@@80 $generated@@231 $generated@@232)) (and (and ($generated@@27 $generated@@61 ($generated@@112 $generated@@230) ($generated@@62 $generated@@231)) ($generated@@27 $generated@@61 ($generated@@194 $generated@@230) ($generated@@62 $generated@@232))) ($generated@@27 $generated@@61 ($generated@@197 $generated@@230) ($generated@@62 ($generated@@29 $generated@@231 $generated@@232)))))
 :pattern ( ($generated@@27 $generated@@108 $generated@@230 ($generated@@80 $generated@@231 $generated@@232)))
)))
(assert (forall (($generated@@233 T@U) ) (! ($generated@@27 $generated@@11 $generated@@233 $generated@@0)
 :pattern ( ($generated@@27 $generated@@11 $generated@@233 $generated@@0))
)))
(assert (forall (($generated@@234 T@U) ) (! ($generated@@27 $generated@@10 $generated@@234 $generated)
 :pattern ( ($generated@@27 $generated@@10 $generated@@234 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@235 () T@U)
(declare-fun $generated@@236 () T@U)
(declare-fun $generated@@237 () Int)
(declare-fun $generated@@238 () T@U)
(declare-fun $generated@@239 () T@U)
(declare-fun $generated@@240 () T@U)
(declare-fun $generated@@241 (T@U) Bool)
(declare-fun $generated@@242 () Int)
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
 (=> (= (ControlFlow 0 0) 14) (let (($generated@@243  (=> (= (ControlFlow 0 3) (- 0 2)) (forall (($generated@@244 Int) ) (!  (=> (and (<= ($generated@@39 0) $generated@@244) (< $generated@@244 100)) (or ($generated@@14 ($generated@@54 $generated@@10 ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@236) ($generated@@55 $generated@@11 ($generated@@15 $generated@@244))))) ($generated@@14 ($generated@@54 $generated@@10 ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@235) ($generated@@55 $generated@@11 ($generated@@15 $generated@@244)))))))
 :pattern ( ($generated@@54 $generated@@10 ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@235) ($generated@@55 $generated@@11 ($generated@@15 $generated@@244)))))
 :pattern ( ($generated@@54 $generated@@10 ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@236) ($generated@@55 $generated@@11 ($generated@@15 $generated@@244)))))
)))))
(let (($generated@@245  (=> (and ($generated@@14 ($generated@@54 $generated@@10 ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@236) ($generated@@55 $generated@@11 ($generated@@15 $generated@@237))))) (= (ControlFlow 0 7) 3)) $generated@@243)))
(let (($generated@@246  (=> (not ($generated@@14 ($generated@@54 $generated@@10 ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@236) ($generated@@55 $generated@@11 ($generated@@15 $generated@@237)))))) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($generated@@63 ($generated@@112 $generated@@235) ($generated@@55 $generated@@11 ($generated@@15 $generated@@237)))) (=> (= (ControlFlow 0 5) 3) $generated@@243)))))
(let (($generated@@247  (=> (and (<= ($generated@@39 0) $generated@@237) (< $generated@@237 100)) (and (=> (= (ControlFlow 0 8) (- 0 9)) ($generated@@63 ($generated@@112 $generated@@236) ($generated@@55 $generated@@11 ($generated@@15 $generated@@237)))) (and (=> (= (ControlFlow 0 8) 5) $generated@@246) (=> (= (ControlFlow 0 8) 7) $generated@@245))))))
(let (($generated@@248  (=> (and (not (and (<= ($generated@@39 0) $generated@@237) (< $generated@@237 100))) (= (ControlFlow 0 4) 3)) $generated@@243)))
(let (($generated@@249  (=> (< $generated@@237 ($generated@@39 0)) (and (=> (= (ControlFlow 0 11) 8) $generated@@247) (=> (= (ControlFlow 0 11) 4) $generated@@248)))))
(let (($generated@@250  (=> (<= ($generated@@39 0) $generated@@237) (and (=> (= (ControlFlow 0 10) 8) $generated@@247) (=> (= (ControlFlow 0 10) 4) $generated@@248)))))
(let (($generated@@251  (and (=> (= (ControlFlow 0 12) 10) $generated@@250) (=> (= (ControlFlow 0 12) 11) $generated@@249))))
(let (($generated@@252 true))
(let (($generated@@253  (=> (= $generated@@238 ($generated@@147 $generated@@239 $generated@@240 $generated@@5 false)) (and (=> (= (ControlFlow 0 13) 12) $generated@@251) (=> (= (ControlFlow 0 13) 1) $generated@@252)))))
(let (($generated@@254  (=> (and (and ($generated@@45 $generated@@240) ($generated@@241 $generated@@240)) (and ($generated@@27 $generated@@108 $generated@@236 ($generated@@80 $generated@@0 $generated)) ($generated@@44 $generated@@108 $generated@@236 ($generated@@80 $generated@@0 $generated) $generated@@240))) (=> (and (and (and ($generated@@27 $generated@@108 $generated@@235 ($generated@@80 $generated@@0 $generated)) ($generated@@44 $generated@@108 $generated@@235 ($generated@@80 $generated@@0 $generated) $generated@@240)) (= 0 $generated@@242)) (and (forall (($generated@@255 T@U) ) (!  (=> (and (<= ($generated@@39 0) ($generated@@16 $generated@@255)) (< ($generated@@16 $generated@@255) 100)) (and (and ($generated@@63 ($generated@@112 $generated@@236) ($generated@@55 $generated@@11 $generated@@255)) ($generated@@63 ($generated@@112 $generated@@235) ($generated@@55 $generated@@11 $generated@@255))) (= ($generated@@14 ($generated@@54 $generated@@10 ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@236) ($generated@@55 $generated@@11 $generated@@255))))  (not ($generated@@14 ($generated@@54 $generated@@10 ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@235) ($generated@@55 $generated@@11 $generated@@255))))))))
 :pattern ( ($generated@@54 $generated@@10 ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@235) ($generated@@55 $generated@@11 $generated@@255))))
 :pattern ( ($generated@@54 $generated@@10 ($generated@@109 $generated@@110 $generated@@110 ($generated@@111 $generated@@236) ($generated@@55 $generated@@11 $generated@@255))))
 :pattern ( ($generated@@63 ($generated@@112 $generated@@235) ($generated@@55 $generated@@11 $generated@@255)))
 :pattern ( ($generated@@63 ($generated@@112 $generated@@236) ($generated@@55 $generated@@11 $generated@@255)))
)) (= (ControlFlow 0 14) 13))) $generated@@253))))
$generated@@254))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)