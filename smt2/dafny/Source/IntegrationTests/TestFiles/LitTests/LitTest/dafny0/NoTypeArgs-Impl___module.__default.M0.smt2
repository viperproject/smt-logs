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
(declare-fun $generated@@30 (T@U) Int)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 (T@T T@T) T@T)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@42 (T@U) T@U)
(declare-fun $generated@@43 (T@U T@U) Bool)
(declare-fun $generated@@44 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@45 (T@T) T@T)
(declare-fun $generated@@46 (T@T) T@T)
(declare-fun $generated@@67 (T@T T@U) T@U)
(declare-fun $generated@@68 (T@U T@U T@U) Bool)
(declare-fun $generated@@72 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@73 (T@U) T@U)
(declare-fun $generated@@77 (T@U) T@U)
(declare-fun $generated@@78 () T@U)
(declare-fun $generated@@79 () T@T)
(declare-fun $generated@@80 (T@U) T@U)
(declare-fun $generated@@86 (T@U T@U) T@U)
(declare-fun $generated@@87 (T@U) Bool)
(declare-fun $generated@@88 (T@T T@U T@U) Bool)
(declare-fun $generated@@90 (T@U T@U) Bool)
(declare-fun $generated@@94 (Int) Int)
(declare-fun $generated@@96 (T@T T@U) T@U)
(declare-fun $generated@@99 (T@U T@U) T@U)
(declare-fun $generated@@103 (T@U) Bool)
(declare-fun $generated@@105 (T@U) Bool)
(declare-fun $generated@@107 (T@T T@U) T@U)
(declare-fun $generated@@129 (T@U) T@U)
(declare-fun $generated@@140 (T@U) T@U)
(declare-fun $generated@@150 (T@U) T@U)
(declare-fun $generated@@153 (T@U) T@U)
(declare-fun $generated@@156 (T@U) T@U)
(declare-fun $generated@@158 (T@U) T@U)
(declare-fun $generated@@160 (T@U) T@U)
(declare-fun $generated@@164 (T@U) Int)
(declare-fun $generated@@165 (T@U) Int)
(declare-fun $generated@@173 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@174 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@175 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (= ($generated@@30 $generated@@3) 0))
(assert (= ($generated@@31 $generated) $generated@@1))
(assert (= ($generated@@31 $generated@@0) $generated@@2))
(assert (= ($generated@@32 $generated@@3) $generated@@4))
(assert  (and (and (and (and (and (and (and (forall (($generated@@47 T@T) ($generated@@48 T@T) ($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ) (! (= ($generated@@33 $generated@@47 $generated@@48 ($generated@@44 $generated@@47 $generated@@48 $generated@@50 $generated@@51 $generated@@49) $generated@@51) $generated@@49)
 :weight 0
)) (forall (($generated@@52 T@T) ($generated@@53 T@T) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ) (!  (or (= $generated@@56 $generated@@57) (= ($generated@@33 $generated@@52 $generated@@53 ($generated@@44 $generated@@52 $generated@@53 $generated@@55 $generated@@56 $generated@@54) $generated@@57) ($generated@@33 $generated@@52 $generated@@53 $generated@@55 $generated@@57)))
 :weight 0
))) (= ($generated@@14 $generated@@34) 3)) (= ($generated@@14 $generated@@35) 4)) (= ($generated@@14 $generated@@36) 5)) (forall (($generated@@58 T@T) ($generated@@59 T@T) ) (= ($generated@@14 ($generated@@37 $generated@@58 $generated@@59)) 6))) (forall (($generated@@60 T@T) ($generated@@61 T@T) ) (! (= ($generated@@45 ($generated@@37 $generated@@60 $generated@@61)) $generated@@60)
 :pattern ( ($generated@@37 $generated@@60 $generated@@61))
))) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (! (= ($generated@@46 ($generated@@37 $generated@@62 $generated@@63)) $generated@@63)
 :pattern ( ($generated@@37 $generated@@62 $generated@@63))
))))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ) (!  (=> (and ($generated@@40 $generated@@65) (and (or (not (= $generated@@66 $generated@@41)) (not true)) (= ($generated@@42 $generated@@66) ($generated@@39 $generated@@64)))) ($generated@@43 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@65 $generated@@66) $generated@@38) $generated@@64))
 :pattern ( ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@65 $generated@@66) $generated@@38) ($generated@@39 $generated@@64))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (!  (=> (and (and ($generated@@40 $generated@@70) (and (or (not (= $generated@@71 $generated@@41)) (not true)) (= ($generated@@42 $generated@@71) ($generated@@39 $generated@@69)))) ($generated@@19 ($generated@@67 $generated@@15 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@70 $generated@@71) $generated@@3)))) ($generated@@68 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@70 $generated@@71) $generated@@38) $generated@@69 $generated@@70))
 :pattern ( ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@70 $generated@@71) $generated@@38) ($generated@@39 $generated@@69))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ) (! (= ($generated@@72 $generated@@36 $generated@@75 ($generated@@73 $generated@@74) $generated@@76) ($generated@@72 $generated@@36 $generated@@75 ($generated@@39 $generated@@74) $generated@@76))
 :pattern ( ($generated@@72 $generated@@36 $generated@@75 ($generated@@73 $generated@@74) $generated@@76))
 :pattern ( ($generated@@72 $generated@@36 $generated@@75 ($generated@@39 $generated@@74) $generated@@76))
)))
(assert (= ($generated@@77 $generated@@78) $generated@@8))
(assert (= ($generated@@14 $generated@@79) 7))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (!  (=> ($generated@@40 $generated@@82) ($generated@@72 $generated@@79 $generated@@78 ($generated@@80 $generated@@81) $generated@@82))
 :pattern ( ($generated@@72 $generated@@79 $generated@@78 ($generated@@80 $generated@@81) $generated@@82))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@72 $generated@@36 $generated@@84 ($generated@@39 $generated@@83) $generated@@85)  (or (= $generated@@84 $generated@@41) ($generated@@19 ($generated@@67 $generated@@15 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@85 $generated@@84) $generated@@3)))))
 :pattern ( ($generated@@72 $generated@@36 $generated@@84 ($generated@@39 $generated@@83) $generated@@85))
)))
(assert (= ($generated@@30 $generated@@38) 0))
(assert (= ($generated@@86 $generated@@10 $generated@@13) $generated@@38))
(assert  (not ($generated@@87 $generated@@38)))
(assert (forall (($generated@@89 T@U) ) (! ($generated@@88 $generated@@79 $generated@@78 ($generated@@80 $generated@@89))
 :pattern ( ($generated@@88 $generated@@79 $generated@@78 ($generated@@80 $generated@@89)))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ) (!  (=> ($generated@@90 $generated@@91 $generated@@92) (forall (($generated@@93 T@U) ) (!  (=> ($generated@@19 ($generated@@67 $generated@@15 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@91 $generated@@93) $generated@@3))) ($generated@@19 ($generated@@67 $generated@@15 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@92 $generated@@93) $generated@@3))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@92 $generated@@93) $generated@@3))
)))
 :pattern ( ($generated@@90 $generated@@91 $generated@@92))
)))
(assert (forall (($generated@@95 Int) ) (! (= ($generated@@94 $generated@@95) $generated@@95)
 :pattern ( ($generated@@94 $generated@@95))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@T) ) (! (= ($generated@@96 $generated@@98 $generated@@97) $generated@@97)
 :pattern ( ($generated@@96 $generated@@98 $generated@@97))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ) (! (= ($generated@@88 $generated@@79 ($generated@@99 $generated@@101 $generated@@102) ($generated@@80 $generated@@100))  (and ($generated@@43 $generated@@101 $generated@@100) ($generated@@88 $generated@@79 $generated@@102 ($generated@@80 $generated@@100))))
 :pattern ( ($generated@@88 $generated@@79 ($generated@@99 $generated@@101 $generated@@102) ($generated@@80 $generated@@100)))
)))
(assert (forall (($generated@@104 T@U) ) (! (= ($generated@@103 $generated@@104) (= ($generated@@77 $generated@@104) $generated@@8))
 :pattern ( ($generated@@103 $generated@@104))
)))
(assert (forall (($generated@@106 T@U) ) (! (= ($generated@@105 $generated@@106) (= ($generated@@77 $generated@@106) $generated@@9))
 :pattern ( ($generated@@105 $generated@@106))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@T) ) (! (= ($generated@@107 $generated@@109 ($generated@@67 $generated@@109 $generated@@108)) $generated@@108)
 :pattern ( ($generated@@67 $generated@@109 $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ) (!  (=> ($generated@@105 $generated@@110) (exists (($generated@@111 T@U) ($generated@@112 T@U) ) (= $generated@@110 ($generated@@99 $generated@@111 $generated@@112))))
 :pattern ( ($generated@@105 $generated@@110))
)))
(assert (forall (($generated@@113 T@U) ) (!  (=> ($generated@@103 $generated@@113) (= $generated@@113 $generated@@78))
 :pattern ( ($generated@@103 $generated@@113))
)))
(assert ($generated@@87 $generated@@3))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@88 $generated@@36 $generated@@115 ($generated@@73 $generated@@114))  (and ($generated@@88 $generated@@36 $generated@@115 ($generated@@39 $generated@@114)) (or (not (= $generated@@115 $generated@@41)) (not true))))
 :pattern ( ($generated@@88 $generated@@36 $generated@@115 ($generated@@73 $generated@@114)))
 :pattern ( ($generated@@88 $generated@@36 $generated@@115 ($generated@@39 $generated@@114)))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@T) ) (! (= ($generated@@68 ($generated@@107 $generated@@119 $generated@@116) $generated@@117 $generated@@118) ($generated@@72 $generated@@119 $generated@@116 $generated@@117 $generated@@118))
 :pattern ( ($generated@@68 ($generated@@107 $generated@@119 $generated@@116) $generated@@117 $generated@@118))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (!  (=> ($generated@@90 $generated@@120 $generated@@121) (=> ($generated@@68 $generated@@122 $generated@@123 $generated@@120) ($generated@@68 $generated@@122 $generated@@123 $generated@@121)))
 :pattern ( ($generated@@90 $generated@@120 $generated@@121) ($generated@@68 $generated@@122 $generated@@123 $generated@@120))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@T) ) (!  (=> ($generated@@90 $generated@@124 $generated@@125) (=> ($generated@@72 $generated@@128 $generated@@126 $generated@@127 $generated@@124) ($generated@@72 $generated@@128 $generated@@126 $generated@@127 $generated@@125)))
 :pattern ( ($generated@@90 $generated@@124 $generated@@125) ($generated@@72 $generated@@128 $generated@@126 $generated@@127 $generated@@124))
)))
(assert (forall (($generated@@130 T@U) ) (!  (and (= ($generated@@31 ($generated@@80 $generated@@130)) $generated@@5) (= ($generated@@129 ($generated@@80 $generated@@130)) $generated@@11))
 :pattern ( ($generated@@80 $generated@@130))
)))
(assert (forall (($generated@@131 T@U) ) (!  (and (= ($generated@@31 ($generated@@73 $generated@@131)) $generated@@6) (= ($generated@@129 ($generated@@73 $generated@@131)) $generated@@12))
 :pattern ( ($generated@@73 $generated@@131))
)))
(assert (forall (($generated@@132 T@U) ) (!  (and (= ($generated@@31 ($generated@@39 $generated@@132)) $generated@@7) (= ($generated@@129 ($generated@@39 $generated@@132)) $generated@@12))
 :pattern ( ($generated@@39 $generated@@132))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ) (! (= ($generated@@88 $generated@@36 $generated@@134 ($generated@@39 $generated@@133))  (or (= $generated@@134 $generated@@41) (= ($generated@@42 $generated@@134) ($generated@@39 $generated@@133))))
 :pattern ( ($generated@@88 $generated@@36 $generated@@134 ($generated@@39 $generated@@133)))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (!  (=> ($generated@@88 $generated@@79 $generated@@136 ($generated@@80 $generated@@135)) (or ($generated@@103 $generated@@136) ($generated@@105 $generated@@136)))
 :pattern ( ($generated@@105 $generated@@136) ($generated@@88 $generated@@79 $generated@@136 ($generated@@80 $generated@@135)))
 :pattern ( ($generated@@103 $generated@@136) ($generated@@88 $generated@@79 $generated@@136 ($generated@@80 $generated@@135)))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (!  (=> (or (not (= $generated@@137 $generated@@139)) (not true)) (=> (and ($generated@@90 $generated@@137 $generated@@138) ($generated@@90 $generated@@138 $generated@@139)) ($generated@@90 $generated@@137 $generated@@139)))
 :pattern ( ($generated@@90 $generated@@137 $generated@@138) ($generated@@90 $generated@@138 $generated@@139))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ) (!  (and (= ($generated@@140 ($generated@@86 $generated@@141 $generated@@142)) $generated@@141) (= ($generated@@32 ($generated@@86 $generated@@141 $generated@@142)) $generated@@142))
 :pattern ( ($generated@@86 $generated@@141 $generated@@142))
)))
(assert (forall (($generated@@143 T@U) ) (!  (=> ($generated@@43 $generated@@143 $generated@@0) (and (= ($generated@@107 $generated@@16 ($generated@@67 $generated@@16 $generated@@143)) $generated@@143) ($generated@@88 $generated@@16 ($generated@@67 $generated@@16 $generated@@143) $generated@@0)))
 :pattern ( ($generated@@43 $generated@@143 $generated@@0))
)))
(assert (forall (($generated@@144 T@U) ) (!  (=> ($generated@@43 $generated@@144 $generated) (and (= ($generated@@107 $generated@@15 ($generated@@67 $generated@@15 $generated@@144)) $generated@@144) ($generated@@88 $generated@@15 ($generated@@67 $generated@@15 $generated@@144) $generated)))
 :pattern ( ($generated@@43 $generated@@144 $generated))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@T) ) (! (= ($generated@@43 ($generated@@107 $generated@@147 $generated@@145) $generated@@146) ($generated@@88 $generated@@147 $generated@@145 $generated@@146))
 :pattern ( ($generated@@43 ($generated@@107 $generated@@147 $generated@@145) $generated@@146))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ) (! (= ($generated@@77 ($generated@@99 $generated@@148 $generated@@149)) $generated@@9)
 :pattern ( ($generated@@99 $generated@@148 $generated@@149))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ) (! (= ($generated@@150 ($generated@@99 $generated@@151 $generated@@152)) $generated@@151)
 :pattern ( ($generated@@99 $generated@@151 $generated@@152))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ) (! (= ($generated@@153 ($generated@@99 $generated@@154 $generated@@155)) $generated@@155)
 :pattern ( ($generated@@99 $generated@@154 $generated@@155))
)))
(assert (forall (($generated@@157 T@U) ) (! (= ($generated@@156 ($generated@@80 $generated@@157)) $generated@@157)
 :pattern ( ($generated@@80 $generated@@157))
)))
(assert (forall (($generated@@159 T@U) ) (! (= ($generated@@158 ($generated@@73 $generated@@159)) $generated@@159)
 :pattern ( ($generated@@73 $generated@@159))
)))
(assert (forall (($generated@@161 T@U) ) (! (= ($generated@@160 ($generated@@39 $generated@@161)) $generated@@161)
 :pattern ( ($generated@@39 $generated@@161))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@T) ) (! (= ($generated@@67 $generated@@163 ($generated@@107 $generated@@163 $generated@@162)) $generated@@162)
 :pattern ( ($generated@@107 $generated@@163 $generated@@162))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ) (! (< ($generated@@164 $generated@@166) ($generated@@165 ($generated@@99 $generated@@166 $generated@@167)))
 :pattern ( ($generated@@99 $generated@@166 $generated@@167))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (! (< ($generated@@165 $generated@@169) ($generated@@165 ($generated@@99 $generated@@168 $generated@@169)))
 :pattern ( ($generated@@99 $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> (and ($generated@@40 $generated@@172) (and ($generated@@105 $generated@@170) ($generated@@72 $generated@@79 $generated@@170 ($generated@@80 $generated@@171) $generated@@172))) ($generated@@68 ($generated@@150 $generated@@170) $generated@@171 $generated@@172))
 :pattern ( ($generated@@68 ($generated@@150 $generated@@170) $generated@@171 $generated@@172))
)))
(assert  (and (forall (($generated@@176 T@T) ($generated@@177 T@T) ($generated@@178 T@T) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ) (! (= ($generated@@173 $generated@@176 $generated@@177 $generated@@178 ($generated@@175 $generated@@176 $generated@@177 $generated@@178 $generated@@180 $generated@@181 $generated@@182 $generated@@179) $generated@@181 $generated@@182) $generated@@179)
 :weight 0
)) (and (forall (($generated@@183 T@T) ($generated@@184 T@T) ($generated@@185 T@T) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ) (!  (or (= $generated@@188 $generated@@190) (= ($generated@@173 $generated@@183 $generated@@184 $generated@@185 ($generated@@175 $generated@@183 $generated@@184 $generated@@185 $generated@@187 $generated@@188 $generated@@189 $generated@@186) $generated@@190 $generated@@191) ($generated@@173 $generated@@183 $generated@@184 $generated@@185 $generated@@187 $generated@@190 $generated@@191)))
 :weight 0
)) (forall (($generated@@192 T@T) ($generated@@193 T@T) ($generated@@194 T@T) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ) (!  (or (= $generated@@198 $generated@@200) (= ($generated@@173 $generated@@192 $generated@@193 $generated@@194 ($generated@@175 $generated@@192 $generated@@193 $generated@@194 $generated@@196 $generated@@197 $generated@@198 $generated@@195) $generated@@199 $generated@@200) ($generated@@173 $generated@@192 $generated@@193 $generated@@194 $generated@@196 $generated@@199 $generated@@200)))
 :weight 0
)))))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 Bool) ($generated@@205 T@U) ($generated@@206 T@U) ) (! (= ($generated@@19 ($generated@@173 $generated@@36 $generated@@34 $generated@@15 ($generated@@174 $generated@@201 $generated@@202 $generated@@203 $generated@@204) $generated@@205 $generated@@206))  (=> (and (or (not (= $generated@@205 $generated@@201)) (not true)) ($generated@@19 ($generated@@67 $generated@@15 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@202 $generated@@205) $generated@@203)))) $generated@@204))
 :pattern ( ($generated@@173 $generated@@36 $generated@@34 $generated@@15 ($generated@@174 $generated@@201 $generated@@202 $generated@@203 $generated@@204) $generated@@205 $generated@@206))
)))
(assert (forall (($generated@@207 T@U) ) (! (= ($generated@@164 ($generated@@107 $generated@@79 $generated@@207)) ($generated@@165 $generated@@207))
 :pattern ( ($generated@@164 ($generated@@107 $generated@@79 $generated@@207)))
)))
(assert (forall (($generated@@208 T@U) ($generated@@209 T@U) ) (!  (=> ($generated@@43 $generated@@209 ($generated@@80 $generated@@208)) (and (= ($generated@@107 $generated@@79 ($generated@@67 $generated@@79 $generated@@209)) $generated@@209) ($generated@@88 $generated@@79 ($generated@@67 $generated@@79 $generated@@209) ($generated@@80 $generated@@208))))
 :pattern ( ($generated@@43 $generated@@209 ($generated@@80 $generated@@208)))
)))
(assert (forall (($generated@@210 T@U) ($generated@@211 T@U) ) (!  (=> ($generated@@43 $generated@@211 ($generated@@73 $generated@@210)) (and (= ($generated@@107 $generated@@36 ($generated@@67 $generated@@36 $generated@@211)) $generated@@211) ($generated@@88 $generated@@36 ($generated@@67 $generated@@36 $generated@@211) ($generated@@73 $generated@@210))))
 :pattern ( ($generated@@43 $generated@@211 ($generated@@73 $generated@@210)))
)))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ) (!  (=> ($generated@@43 $generated@@213 ($generated@@39 $generated@@212)) (and (= ($generated@@107 $generated@@36 ($generated@@67 $generated@@36 $generated@@213)) $generated@@213) ($generated@@88 $generated@@36 ($generated@@67 $generated@@36 $generated@@213) ($generated@@39 $generated@@212))))
 :pattern ( ($generated@@43 $generated@@213 ($generated@@39 $generated@@212)))
)))
(assert (forall (($generated@@214 T@U) ($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 T@U) ) (!  (=> ($generated@@40 ($generated@@44 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@214 $generated@@215 ($generated@@44 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@214 $generated@@215) $generated@@216 $generated@@217))) ($generated@@90 $generated@@214 ($generated@@44 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@214 $generated@@215 ($generated@@44 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@214 $generated@@215) $generated@@216 $generated@@217))))
 :pattern ( ($generated@@44 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@214 $generated@@215 ($generated@@44 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@214 $generated@@215) $generated@@216 $generated@@217)))
)))
(assert (forall (($generated@@218 T@U) ($generated@@219 T@U) ($generated@@220 T@U) ) (!  (=> (and ($generated@@40 $generated@@220) (and ($generated@@105 $generated@@218) ($generated@@72 $generated@@79 $generated@@218 ($generated@@80 $generated@@219) $generated@@220))) ($generated@@72 $generated@@79 ($generated@@153 $generated@@218) ($generated@@80 $generated@@219) $generated@@220))
 :pattern ( ($generated@@72 $generated@@79 ($generated@@153 $generated@@218) ($generated@@80 $generated@@219) $generated@@220))
)))
(assert (= $generated@@78 ($generated@@96 $generated@@79 $generated@@78)))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@U) ) (! (= ($generated@@99 ($generated@@96 $generated@@35 $generated@@221) ($generated@@96 $generated@@79 $generated@@222)) ($generated@@96 $generated@@79 ($generated@@99 $generated@@221 $generated@@222)))
 :pattern ( ($generated@@99 ($generated@@96 $generated@@35 $generated@@221) ($generated@@96 $generated@@79 $generated@@222)))
)))
(assert (forall (($generated@@223 Int) ) (! (= ($generated@@107 $generated@@16 ($generated@@20 ($generated@@94 $generated@@223))) ($generated@@96 $generated@@35 ($generated@@107 $generated@@16 ($generated@@20 $generated@@223))))
 :pattern ( ($generated@@107 $generated@@16 ($generated@@20 ($generated@@94 $generated@@223))))
)))
(assert (forall (($generated@@224 T@U) ($generated@@225 T@T) ) (! (= ($generated@@107 $generated@@225 ($generated@@96 $generated@@225 $generated@@224)) ($generated@@96 $generated@@35 ($generated@@107 $generated@@225 $generated@@224)))
 :pattern ( ($generated@@107 $generated@@225 ($generated@@96 $generated@@225 $generated@@224)))
)))
(assert (forall (($generated@@226 T@U) ($generated@@227 T@U) ) (! ($generated@@72 $generated@@16 $generated@@227 $generated@@0 $generated@@226)
 :pattern ( ($generated@@72 $generated@@16 $generated@@227 $generated@@0 $generated@@226))
)))
(assert (forall (($generated@@228 T@U) ($generated@@229 T@U) ) (! ($generated@@72 $generated@@15 $generated@@229 $generated $generated@@228)
 :pattern ( ($generated@@72 $generated@@15 $generated@@229 $generated $generated@@228))
)))
(assert (forall (($generated@@230 T@U) ($generated@@231 T@U) ($generated@@232 T@U) ($generated@@233 T@U) ) (!  (=> ($generated@@40 $generated@@233) (= ($generated@@72 $generated@@79 ($generated@@99 $generated@@231 $generated@@232) ($generated@@80 $generated@@230) $generated@@233)  (and ($generated@@68 $generated@@231 $generated@@230 $generated@@233) ($generated@@72 $generated@@79 $generated@@232 ($generated@@80 $generated@@230) $generated@@233))))
 :pattern ( ($generated@@72 $generated@@79 ($generated@@99 $generated@@231 $generated@@232) ($generated@@80 $generated@@230) $generated@@233))
)))
(assert (forall (($generated@@234 T@U) ) (! ($generated@@88 $generated@@16 $generated@@234 $generated@@0)
 :pattern ( ($generated@@88 $generated@@16 $generated@@234 $generated@@0))
)))
(assert (forall (($generated@@235 T@U) ) (! ($generated@@88 $generated@@15 $generated@@235 $generated)
 :pattern ( ($generated@@88 $generated@@15 $generated@@235 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@236 () T@U)
(declare-fun $generated@@237 () T@U)
(declare-fun $generated@@238 () T@U)
(declare-fun $generated@@239 () T@U)
(declare-fun $generated@@240 () Bool)
(declare-fun $generated@@241 () T@U)
(declare-fun $generated@@242 () T@U)
(declare-fun $generated@@243 () T@U)
(declare-fun $generated@@244 (T@U) Bool)
(declare-fun $generated@@245 () Bool)
(declare-fun $generated@@246 () T@U)
(declare-fun $generated@@247 () T@U)
(declare-fun $generated@@248 () T@U)
(declare-fun $generated@@249 () Bool)
(declare-fun $generated@@250 () T@U)
(declare-fun $generated@@251 () T@U)
(declare-fun $generated@@252 () T@U)
(declare-fun $generated@@253 () Int)
(declare-fun $generated@@254 () T@U)
(declare-fun $generated@@255 () T@U)
(declare-fun $generated@@256 () T@U)
(declare-fun $generated@@257 () T@U)
(declare-fun $generated@@258 () Bool)
(declare-fun $generated@@259 () T@U)
(declare-fun $generated@@260 () Bool)
(declare-fun $generated@@261 () T@U)
(declare-fun $generated@@262 () Int)
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
 (=> (= (ControlFlow 0 0) 13) (let (($generated@@263  (=> (= $generated@@236 ($generated@@174 $generated@@41 $generated@@237 $generated@@3 false)) (=> (and (and ($generated@@88 $generated@@79 $generated@@238 ($generated@@80 $generated@@0)) ($generated@@72 $generated@@79 $generated@@238 ($generated@@80 $generated@@0) $generated@@237)) (= $generated@@239 ($generated@@96 $generated@@79 ($generated@@99 ($generated@@107 $generated@@16 ($generated@@20 ($generated@@94 5))) ($generated@@96 $generated@@79 $generated@@78))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) ($generated@@105 $generated@@239)) (=> ($generated@@105 $generated@@239) (and (=> (= (ControlFlow 0 2) (- 0 11)) (= ($generated@@21 ($generated@@67 $generated@@16 ($generated@@150 $generated@@239))) ($generated@@94 5))) (=> (= ($generated@@21 ($generated@@67 $generated@@16 ($generated@@150 $generated@@239))) ($generated@@94 5)) (=> (=> $generated@@240 (and ($generated@@88 $generated@@36 $generated@@241 ($generated@@73 $generated)) ($generated@@72 $generated@@36 $generated@@241 ($generated@@73 $generated) $generated@@237))) (=> (and (or (not (= $generated@@242 $generated@@41)) (not true)) ($generated@@88 $generated@@36 $generated@@242 ($generated@@39 $generated))) (=> (and (and (not ($generated@@19 ($generated@@67 $generated@@15 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@237 $generated@@242) $generated@@3)))) (= $generated@@243 ($generated@@44 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@237 $generated@@242 ($generated@@44 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@237 $generated@@242) $generated@@3 ($generated@@107 $generated@@15 ($generated@@18 true)))))) (and ($generated@@40 $generated@@243) ($generated@@244 $generated@@243))) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= $generated@@242 $generated@@41)) (not true))) (=> (or (not (= $generated@@242 $generated@@41)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 8)) ($generated@@19 ($generated@@173 $generated@@36 $generated@@34 $generated@@15 $generated@@236 $generated@@242 $generated@@38))) (=> ($generated@@19 ($generated@@173 $generated@@36 $generated@@34 $generated@@15 $generated@@236 $generated@@242 $generated@@38)) (=> (= $generated@@245 ($generated@@19 ($generated@@96 $generated@@15 ($generated@@18 false)))) (=> (and (and (and (= $generated@@246 ($generated@@44 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@243 $generated@@242 ($generated@@44 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@243 $generated@@242) $generated@@38 ($generated@@107 $generated@@15 ($generated@@18 $generated@@245))))) ($generated@@40 $generated@@246)) (and (or (not (= $generated@@247 $generated@@41)) (not true)) ($generated@@88 $generated@@36 $generated@@247 ($generated@@39 $generated)))) (and (and (not ($generated@@19 ($generated@@67 $generated@@15 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@246 $generated@@247) $generated@@3)))) (= $generated@@248 ($generated@@44 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@246 $generated@@247 ($generated@@44 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@246 $generated@@247) $generated@@3 ($generated@@107 $generated@@15 ($generated@@18 true)))))) (and ($generated@@40 $generated@@248) ($generated@@244 $generated@@248)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= $generated@@247 $generated@@41)) (not true))) (=> (or (not (= $generated@@247 $generated@@41)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($generated@@19 ($generated@@173 $generated@@36 $generated@@34 $generated@@15 $generated@@236 $generated@@247 $generated@@38))) (=> ($generated@@19 ($generated@@173 $generated@@36 $generated@@34 $generated@@15 $generated@@236 $generated@@247 $generated@@38)) (=> (= $generated@@249 ($generated@@19 ($generated@@96 $generated@@15 ($generated@@18 false)))) (=> (and (= $generated@@250 ($generated@@44 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@248 $generated@@247 ($generated@@44 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@248 $generated@@247) $generated@@38 ($generated@@107 $generated@@15 ($generated@@18 $generated@@249))))) ($generated@@40 $generated@@250)) (=> (and (and (and (or (not (= $generated@@251 $generated@@41)) (not true)) ($generated@@88 $generated@@36 $generated@@251 ($generated@@39 $generated@@0))) (not ($generated@@19 ($generated@@67 $generated@@15 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@250 $generated@@251) $generated@@3))))) (and (and (= $generated@@252 ($generated@@44 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@250 $generated@@251 ($generated@@44 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@250 $generated@@251) $generated@@3 ($generated@@107 $generated@@15 ($generated@@18 true))))) ($generated@@40 $generated@@252)) (and ($generated@@244 $generated@@252) (= $generated@@253 ($generated@@94 120))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall (($generated@@264 T@U) ($generated@@265 T@U) )  (=> (and (and (or (not (= $generated@@264 $generated@@41)) (not true)) ($generated@@19 ($generated@@67 $generated@@15 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@252 $generated@@264) $generated@@3)))) (= $generated@@264 $generated@@251)) ($generated@@19 ($generated@@173 $generated@@36 $generated@@34 $generated@@15 $generated@@236 $generated@@264 $generated@@265))))) (=> (forall (($generated@@266 T@U) ($generated@@267 T@U) )  (=> (and (and (or (not (= $generated@@266 $generated@@41)) (not true)) ($generated@@19 ($generated@@67 $generated@@15 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@252 $generated@@266) $generated@@3)))) (= $generated@@266 $generated@@251)) ($generated@@19 ($generated@@173 $generated@@36 $generated@@34 $generated@@15 $generated@@236 $generated@@266 $generated@@267)))) (=> (= $generated@@254 ($generated@@107 $generated@@16 ($generated@@20 $generated@@253))) (=> (and (and ($generated@@40 $generated@@255) ($generated@@244 $generated@@255)) (and (forall (($generated@@268 T@U) ) (!  (=> (and (or (not (= $generated@@268 $generated@@41)) (not true)) ($generated@@19 ($generated@@67 $generated@@15 ($generated@@33 $generated@@34 $generated@@35 ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@252 $generated@@268) $generated@@3)))) (or (= ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@255 $generated@@268) ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@252 $generated@@268)) (= $generated@@268 $generated@@251)))
 :pattern ( ($generated@@33 $generated@@36 ($generated@@37 $generated@@34 $generated@@35) $generated@@255 $generated@@268))
)) ($generated@@90 $generated@@252 $generated@@255))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= $generated@@251 $generated@@41)) (not true))))))))))))))))))))))))))))))))))
(let (($generated@@269  (=> (and ($generated@@40 $generated@@237) ($generated@@244 $generated@@237)) (=> (and (and ($generated@@88 $generated@@79 $generated@@256 ($generated@@80 $generated@@0)) ($generated@@72 $generated@@79 $generated@@256 ($generated@@80 $generated@@0) $generated@@237)) true) (=> (and (and (and (=> $generated@@240 (and ($generated@@88 $generated@@36 $generated@@257 ($generated@@73 $generated)) ($generated@@72 $generated@@36 $generated@@257 ($generated@@73 $generated) $generated@@237))) true) (and (=> $generated@@258 (and ($generated@@88 $generated@@36 $generated@@259 ($generated@@73 $generated)) ($generated@@72 $generated@@36 $generated@@259 ($generated@@73 $generated) $generated@@237))) true)) (and (and (=> $generated@@260 (and ($generated@@88 $generated@@36 $generated@@261 ($generated@@73 $generated@@0)) ($generated@@72 $generated@@36 $generated@@261 ($generated@@73 $generated@@0) $generated@@237))) true) (and (= 1 $generated@@262) (= (ControlFlow 0 13) 2)))) $generated@@263)))))
$generated@@269)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)