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
(declare-fun $generated@@34 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@37 (T@U T@U) Bool)
(declare-fun $generated@@38 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@53 (T@U) T@U)
(declare-fun $generated@@54 (T@U T@U T@U) T@U)
(declare-fun $generated@@58 (T@U) T@U)
(declare-fun $generated@@62 (T@U) Bool)
(declare-fun $generated@@63 (T@T T@U T@U) Bool)
(declare-fun $generated@@64 () T@T)
(declare-fun $generated@@65 (T@U T@U) T@U)
(declare-fun $generated@@69 () T@U)
(declare-fun $generated@@71 (T@U T@U) T@U)
(declare-fun $generated@@76 (Int) Int)
(declare-fun $generated@@78 (T@T T@U) T@U)
(declare-fun $generated@@81 (T@U T@U) T@U)
(declare-fun $generated@@82 () T@T)
(declare-fun $generated@@88 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@89 (T@U) Bool)
(declare-fun $generated@@90 (T@U T@U T@U) Bool)
(declare-fun $generated@@96 (T@U) T@U)
(declare-fun $generated@@98 (T@T T@U) T@U)
(declare-fun $generated@@99 (T@T T@U) T@U)
(declare-fun $generated@@102 (T@U) T@U)
(declare-fun $generated@@108 () T@T)
(declare-fun $generated@@109 (T@U) T@U)
(declare-fun $generated@@117 () Int)
(declare-fun $generated@@118 (T@U T@U T@U) T@U)
(declare-fun $generated@@119 (T@U T@U T@U) Bool)
(declare-fun $generated@@131 () T@U)
(declare-fun $generated@@133 (T@U T@U) Bool)
(declare-fun $generated@@144 (T@U) T@U)
(declare-fun $generated@@147 (T@U) T@U)
(declare-fun $generated@@154 (T@U) T@U)
(declare-fun $generated@@157 (T@U) T@U)
(declare-fun $generated@@160 (T@U) T@U)
(declare-fun $generated@@163 (T@U) T@U)
(declare-fun $generated@@166 (T@U) T@U)
(declare-fun $generated@@176 (T@U) Int)
(declare-fun $generated@@177 (T@U) Int)
(declare-fun $generated@@182 () T@U)
(declare-fun $generated@@190 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@191 () T@T)
(declare-fun $generated@@192 () T@T)
(declare-fun $generated@@193 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@194 (T@T T@T) T@T)
(declare-fun $generated@@195 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@196 (T@T) T@T)
(declare-fun $generated@@197 (T@T) T@T)
(declare-fun $generated@@235 (T@U) T@U)
(declare-fun $generated@@244 (T@U) T@U)
(declare-fun $generated@@247 (T@U) T@U)
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
(assert  (and (and (forall (($generated@@39 T@T) ($generated@@40 T@T) ($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ) (! (= ($generated@@34 $generated@@39 $generated@@40 ($generated@@38 $generated@@39 $generated@@40 $generated@@42 $generated@@43 $generated@@41) $generated@@43) $generated@@41)
 :weight 0
)) (forall (($generated@@44 T@T) ($generated@@45 T@T) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ) (!  (or (= $generated@@48 $generated@@49) (= ($generated@@34 $generated@@44 $generated@@45 ($generated@@38 $generated@@44 $generated@@45 $generated@@47 $generated@@48 $generated@@46) $generated@@49) ($generated@@34 $generated@@44 $generated@@45 $generated@@47 $generated@@49)))
 :weight 0
))) (= ($generated@@7 $generated@@35) 3)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@12 ($generated@@34 $generated@@35 $generated@@8 ($generated@@36 $generated@@50 $generated@@51) $generated@@52))  (and ($generated@@37 $generated@@52 $generated@@50) ($generated@@25 $generated@@51 $generated@@52)))
 :pattern ( ($generated@@34 $generated@@35 $generated@@8 ($generated@@36 $generated@@50 $generated@@51) $generated@@52))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ) (! (= ($generated@@53 ($generated@@54 $generated@@55 $generated@@56 $generated@@57)) $generated@@55)
 :pattern ( ($generated@@53 ($generated@@54 $generated@@55 $generated@@56 $generated@@57)))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@58 ($generated@@54 $generated@@59 $generated@@60 $generated@@61)) $generated@@60)
 :pattern ( ($generated@@58 ($generated@@54 $generated@@59 $generated@@60 $generated@@61)))
)))
(assert (= ($generated@@7 $generated@@64) 4))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (!  (=> ($generated@@63 $generated@@64 $generated@@68 ($generated@@65 $generated@@66 $generated@@67)) ($generated@@62 $generated@@68))
 :pattern ( ($generated@@62 $generated@@68) ($generated@@63 $generated@@64 $generated@@68 ($generated@@65 $generated@@66 $generated@@67)))
)))
(assert (forall (($generated@@70 T@U) ) (!  (not ($generated@@25 $generated@@69 $generated@@70))
 :pattern ( ($generated@@25 $generated@@69 $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ) (! (= ($generated@@63 $generated@@64 ($generated@@71 $generated@@74 $generated@@75) ($generated@@65 $generated@@72 $generated@@73))  (and ($generated@@37 $generated@@74 $generated@@72) ($generated@@37 $generated@@75 $generated@@73)))
 :pattern ( ($generated@@63 $generated@@64 ($generated@@71 $generated@@74 $generated@@75) ($generated@@65 $generated@@72 $generated@@73)))
)))
(assert (forall (($generated@@77 Int) ) (! (= ($generated@@76 $generated@@77) $generated@@77)
 :pattern ( ($generated@@76 $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@T) ) (! (= ($generated@@78 $generated@@80 $generated@@79) $generated@@79)
 :pattern ( ($generated@@78 $generated@@80 $generated@@79))
)))
(assert (= ($generated@@7 $generated@@82) 5))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ) (!  (=> (forall (($generated@@87 T@U) )  (=> ($generated@@25 $generated@@83 $generated@@87) (and ($generated@@37 $generated@@87 $generated@@85) ($generated@@37 ($generated@@34 $generated@@35 $generated@@35 $generated@@84 $generated@@87) $generated@@86)))) ($generated@@63 $generated@@82 ($generated@@54 $generated@@83 $generated@@84 ($generated@@81 $generated@@85 $generated@@86)) ($generated@@81 $generated@@85 $generated@@86)))
 :pattern ( ($generated@@54 $generated@@83 $generated@@84 ($generated@@81 $generated@@85 $generated@@86)))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ) (!  (=> ($generated@@89 $generated@@95) (= ($generated@@88 $generated@@64 ($generated@@71 $generated@@93 $generated@@94) ($generated@@65 $generated@@91 $generated@@92) $generated@@95)  (and ($generated@@90 $generated@@93 $generated@@91 $generated@@95) ($generated@@90 $generated@@94 $generated@@92 $generated@@95))))
 :pattern ( ($generated@@88 $generated@@64 ($generated@@71 $generated@@93 $generated@@94) ($generated@@65 $generated@@91 $generated@@92) $generated@@95))
)))
(assert (forall (($generated@@97 T@U) ) (! (= ($generated@@62 $generated@@97) (= ($generated@@96 $generated@@97) $generated@@4))
 :pattern ( ($generated@@62 $generated@@97))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@T) ) (! (= ($generated@@99 $generated@@101 ($generated@@98 $generated@@101 $generated@@100)) $generated@@100)
 :pattern ( ($generated@@98 $generated@@101 $generated@@100))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@25 ($generated@@102 $generated@@103) $generated@@104) ($generated@@12 ($generated@@34 $generated@@35 $generated@@8 $generated@@103 $generated@@104)))
 :pattern ( ($generated@@25 ($generated@@102 $generated@@103) $generated@@104))
)))
(assert (forall (($generated@@105 T@U) ) (!  (=> ($generated@@62 $generated@@105) (exists (($generated@@106 T@U) ($generated@@107 T@U) ) (= $generated@@105 ($generated@@71 $generated@@106 $generated@@107))))
 :pattern ( ($generated@@62 $generated@@105))
)))
(assert (= ($generated@@7 $generated@@108) 6))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@63 $generated@@108 $generated@@110 ($generated@@109 $generated@@111)) (forall (($generated@@112 T@U) ) (!  (=> ($generated@@25 $generated@@110 $generated@@112) ($generated@@37 $generated@@112 $generated@@111))
 :pattern ( ($generated@@25 $generated@@110 $generated@@112))
)))
 :pattern ( ($generated@@63 $generated@@108 $generated@@110 ($generated@@109 $generated@@111)))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@T) ) (! (= ($generated@@90 ($generated@@99 $generated@@116 $generated@@113) $generated@@114 $generated@@115) ($generated@@88 $generated@@116 $generated@@113 $generated@@114 $generated@@115))
 :pattern ( ($generated@@90 ($generated@@99 $generated@@116 $generated@@113) $generated@@114 $generated@@115))
)))
(assert  (=> (<= 0 $generated@@117) (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (!  (=> (or ($generated@@119 $generated@@120 $generated@@121 $generated@@122) (and (< 0 $generated@@117) ($generated@@63 $generated@@82 $generated@@122 ($generated@@81 $generated@@120 $generated@@121)))) (= ($generated@@118 $generated@@120 $generated@@121 $generated@@122) ($generated@@102 ($generated@@36 $generated@@120 ($generated@@53 $generated@@122)))))
 :pattern ( ($generated@@118 $generated@@120 $generated@@121 $generated@@122))
))))
(assert  (=> (<= 0 $generated@@117) (forall (($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (!  (=> (or ($generated@@119 $generated@@123 $generated@@124 ($generated@@78 $generated@@82 $generated@@125)) (and (< 0 $generated@@117) ($generated@@63 $generated@@82 $generated@@125 ($generated@@81 $generated@@123 $generated@@124)))) (= ($generated@@118 $generated@@123 $generated@@124 ($generated@@78 $generated@@82 $generated@@125)) ($generated@@102 ($generated@@36 $generated@@123 ($generated@@53 $generated@@125)))))
 :weight 3
 :pattern ( ($generated@@118 $generated@@123 $generated@@124 ($generated@@78 $generated@@82 $generated@@125)))
))))
(assert  (=> (<= 0 $generated@@117) (forall (($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ) (!  (=> (or ($generated@@119 $generated@@126 $generated@@127 $generated@@128) (and (< 0 $generated@@117) ($generated@@63 $generated@@82 $generated@@128 ($generated@@81 $generated@@126 $generated@@127)))) (and (and (forall (($generated@@129 T@U) ) (!  (=> ($generated@@37 $generated@@129 $generated@@126) (=> ($generated@@25 ($generated@@118 $generated@@126 $generated@@127 $generated@@128) $generated@@129) ($generated@@25 ($generated@@53 $generated@@128) $generated@@129)))
 :pattern ( ($generated@@25 ($generated@@53 $generated@@128) $generated@@129))
 :pattern ( ($generated@@25 ($generated@@118 $generated@@126 $generated@@127 $generated@@128) $generated@@129))
)) (forall (($generated@@130 T@U) ) (!  (=> ($generated@@37 $generated@@130 $generated@@126) (=> ($generated@@25 ($generated@@53 $generated@@128) $generated@@130) ($generated@@25 ($generated@@118 $generated@@126 $generated@@127 $generated@@128) $generated@@130)))
 :pattern ( ($generated@@25 ($generated@@118 $generated@@126 $generated@@127 $generated@@128) $generated@@130))
 :pattern ( ($generated@@25 ($generated@@53 $generated@@128) $generated@@130))
))) ($generated@@63 $generated@@108 ($generated@@118 $generated@@126 $generated@@127 $generated@@128) ($generated@@109 $generated@@126))))
 :pattern ( ($generated@@118 $generated@@126 $generated@@127 $generated@@128))
))))
(assert (forall (($generated@@132 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@35 $generated@@131 $generated@@132) $generated@@132)
 :pattern ( ($generated@@34 $generated@@35 $generated@@35 $generated@@131 $generated@@132))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ) (!  (=> ($generated@@133 $generated@@134 $generated@@135) (= $generated@@134 $generated@@135))
 :pattern ( ($generated@@133 $generated@@134 $generated@@135))
)))
(assert (forall (($generated@@136 T@U) ) (!  (=> ($generated@@37 $generated@@136 $generated) (and (= ($generated@@99 $generated@@9 ($generated@@98 $generated@@9 $generated@@136)) $generated@@136) ($generated@@63 $generated@@9 ($generated@@98 $generated@@9 $generated@@136) $generated)))
 :pattern ( ($generated@@37 $generated@@136 $generated))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@T) ) (! (= ($generated@@37 ($generated@@99 $generated@@139 $generated@@137) $generated@@138) ($generated@@63 $generated@@139 $generated@@137 $generated@@138))
 :pattern ( ($generated@@37 ($generated@@99 $generated@@139 $generated@@137) $generated@@138))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ) (! (= ($generated@@88 $generated@@108 $generated@@140 ($generated@@109 $generated@@141) $generated@@142) (forall (($generated@@143 T@U) ) (!  (=> ($generated@@25 $generated@@140 $generated@@143) ($generated@@90 $generated@@143 $generated@@141 $generated@@142))
 :pattern ( ($generated@@25 $generated@@140 $generated@@143))
)))
 :pattern ( ($generated@@88 $generated@@108 $generated@@140 ($generated@@109 $generated@@141) $generated@@142))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ) (! (= ($generated@@144 ($generated@@81 $generated@@145 $generated@@146)) $generated@@145)
 :pattern ( ($generated@@81 $generated@@145 $generated@@146))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ) (! (= ($generated@@147 ($generated@@81 $generated@@148 $generated@@149)) $generated@@149)
 :pattern ( ($generated@@81 $generated@@148 $generated@@149))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ) (! (= ($generated@@23 ($generated@@81 $generated@@150 $generated@@151)) $generated@@2)
 :pattern ( ($generated@@81 $generated@@150 $generated@@151))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (! (= ($generated@@96 ($generated@@71 $generated@@152 $generated@@153)) $generated@@4)
 :pattern ( ($generated@@71 $generated@@152 $generated@@153))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@154 ($generated@@65 $generated@@155 $generated@@156)) $generated@@155)
 :pattern ( ($generated@@65 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ) (! (= ($generated@@157 ($generated@@65 $generated@@158 $generated@@159)) $generated@@159)
 :pattern ( ($generated@@65 $generated@@158 $generated@@159))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ) (! (= ($generated@@160 ($generated@@71 $generated@@161 $generated@@162)) $generated@@161)
 :pattern ( ($generated@@71 $generated@@161 $generated@@162))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ) (! (= ($generated@@163 ($generated@@71 $generated@@164 $generated@@165)) $generated@@165)
 :pattern ( ($generated@@71 $generated@@164 $generated@@165))
)))
(assert (forall (($generated@@167 T@U) ) (! (= ($generated@@166 ($generated@@109 $generated@@167)) $generated@@167)
 :pattern ( ($generated@@109 $generated@@167))
)))
(assert (forall (($generated@@168 T@U) ) (! (= ($generated@@23 ($generated@@109 $generated@@168)) $generated@@1)
 :pattern ( ($generated@@109 $generated@@168))
)))
(assert (forall (($generated@@169 T@U) ($generated@@170 T@T) ) (! (= ($generated@@98 $generated@@170 ($generated@@99 $generated@@170 $generated@@169)) $generated@@169)
 :pattern ( ($generated@@99 $generated@@170 $generated@@169))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ) (! (= ($generated@@88 $generated@@82 $generated@@171 ($generated@@81 $generated@@172 $generated@@173) $generated@@174) (forall (($generated@@175 T@U) ) (!  (=> ($generated@@25 ($generated@@53 $generated@@171) $generated@@175) (and ($generated@@90 ($generated@@34 $generated@@35 $generated@@35 ($generated@@58 $generated@@171) $generated@@175) $generated@@173 $generated@@174) ($generated@@90 $generated@@175 $generated@@172 $generated@@174)))
 :pattern ( ($generated@@34 $generated@@35 $generated@@35 ($generated@@58 $generated@@171) $generated@@175))
 :pattern ( ($generated@@25 ($generated@@53 $generated@@171) $generated@@175))
)))
 :pattern ( ($generated@@88 $generated@@82 $generated@@171 ($generated@@81 $generated@@172 $generated@@173) $generated@@174))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@U) ) (! (< ($generated@@176 $generated@@178) ($generated@@177 ($generated@@71 $generated@@178 $generated@@179)))
 :pattern ( ($generated@@71 $generated@@178 $generated@@179))
)))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@U) ) (! (< ($generated@@176 $generated@@181) ($generated@@177 ($generated@@71 $generated@@180 $generated@@181)))
 :pattern ( ($generated@@71 $generated@@180 $generated@@181))
)))
(assert (forall (($generated@@183 T@U) ) (!  (not ($generated@@25 ($generated@@53 $generated@@182) $generated@@183))
 :pattern ( ($generated@@25 ($generated@@53 $generated@@182) $generated@@183))
)))
(assert (forall (($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ) (!  (=> ($generated@@37 $generated@@184 ($generated@@81 $generated@@185 $generated@@186)) (and (= ($generated@@99 $generated@@82 ($generated@@98 $generated@@82 $generated@@184)) $generated@@184) ($generated@@63 $generated@@82 ($generated@@98 $generated@@82 $generated@@184) ($generated@@81 $generated@@185 $generated@@186))))
 :pattern ( ($generated@@37 $generated@@184 ($generated@@81 $generated@@185 $generated@@186)))
)))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ) (!  (=> ($generated@@37 $generated@@189 ($generated@@65 $generated@@187 $generated@@188)) (and (= ($generated@@99 $generated@@64 ($generated@@98 $generated@@64 $generated@@189)) $generated@@189) ($generated@@63 $generated@@64 ($generated@@98 $generated@@64 $generated@@189) ($generated@@65 $generated@@187 $generated@@188))))
 :pattern ( ($generated@@37 $generated@@189 ($generated@@65 $generated@@187 $generated@@188)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@198 T@T) ($generated@@199 T@T) ($generated@@200 T@T) ($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ) (! (= ($generated@@190 $generated@@198 $generated@@199 $generated@@200 ($generated@@195 $generated@@198 $generated@@199 $generated@@200 $generated@@202 $generated@@203 $generated@@204 $generated@@201) $generated@@203 $generated@@204) $generated@@201)
 :weight 0
)) (and (forall (($generated@@205 T@T) ($generated@@206 T@T) ($generated@@207 T@T) ($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ($generated@@213 T@U) ) (!  (or (= $generated@@210 $generated@@212) (= ($generated@@190 $generated@@205 $generated@@206 $generated@@207 ($generated@@195 $generated@@205 $generated@@206 $generated@@207 $generated@@209 $generated@@210 $generated@@211 $generated@@208) $generated@@212 $generated@@213) ($generated@@190 $generated@@205 $generated@@206 $generated@@207 $generated@@209 $generated@@212 $generated@@213)))
 :weight 0
)) (forall (($generated@@214 T@T) ($generated@@215 T@T) ($generated@@216 T@T) ($generated@@217 T@U) ($generated@@218 T@U) ($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ($generated@@222 T@U) ) (!  (or (= $generated@@220 $generated@@222) (= ($generated@@190 $generated@@214 $generated@@215 $generated@@216 ($generated@@195 $generated@@214 $generated@@215 $generated@@216 $generated@@218 $generated@@219 $generated@@220 $generated@@217) $generated@@221 $generated@@222) ($generated@@190 $generated@@214 $generated@@215 $generated@@216 $generated@@218 $generated@@221 $generated@@222)))
 :weight 0
)))) (= ($generated@@7 $generated@@191) 7)) (= ($generated@@7 $generated@@192) 8)) (forall (($generated@@223 T@T) ($generated@@224 T@T) ) (= ($generated@@7 ($generated@@194 $generated@@223 $generated@@224)) 9))) (forall (($generated@@225 T@T) ($generated@@226 T@T) ) (! (= ($generated@@196 ($generated@@194 $generated@@225 $generated@@226)) $generated@@225)
 :pattern ( ($generated@@194 $generated@@225 $generated@@226))
))) (forall (($generated@@227 T@T) ($generated@@228 T@T) ) (! (= ($generated@@197 ($generated@@194 $generated@@227 $generated@@228)) $generated@@228)
 :pattern ( ($generated@@194 $generated@@227 $generated@@228))
))))
(assert (forall (($generated@@229 T@U) ($generated@@230 T@U) ($generated@@231 T@U) ($generated@@232 Bool) ($generated@@233 T@U) ($generated@@234 T@U) ) (! (= ($generated@@12 ($generated@@190 $generated@@191 $generated@@192 $generated@@8 ($generated@@193 $generated@@229 $generated@@230 $generated@@231 $generated@@232) $generated@@233 $generated@@234))  (=> (and (or (not (= $generated@@233 $generated@@229)) (not true)) ($generated@@12 ($generated@@98 $generated@@8 ($generated@@34 $generated@@192 $generated@@35 ($generated@@34 $generated@@191 ($generated@@194 $generated@@192 $generated@@35) $generated@@230 $generated@@233) $generated@@231)))) $generated@@232))
 :pattern ( ($generated@@190 $generated@@191 $generated@@192 $generated@@8 ($generated@@193 $generated@@229 $generated@@230 $generated@@231 $generated@@232) $generated@@233 $generated@@234))
)))
(assert (forall (($generated@@236 T@U) ($generated@@237 T@U) ) (!  (and (= ($generated@@23 ($generated@@65 $generated@@236 $generated@@237)) $generated@@5) (= ($generated@@235 ($generated@@65 $generated@@236 $generated@@237)) $generated@@6))
 :pattern ( ($generated@@65 $generated@@236 $generated@@237))
)))
(assert  (=> (<= 0 $generated@@117) (forall (($generated@@238 T@U) ($generated@@239 T@U) ($generated@@240 T@U) ($generated@@241 T@U) ) (!  (=> (and (or ($generated@@119 $generated@@239 $generated@@240 $generated@@241) (and (< 0 $generated@@117) (and ($generated@@63 $generated@@82 $generated@@241 ($generated@@81 $generated@@239 $generated@@240)) ($generated@@88 $generated@@82 $generated@@241 ($generated@@81 $generated@@239 $generated@@240) $generated@@238)))) ($generated@@89 $generated@@238)) ($generated@@88 $generated@@108 ($generated@@118 $generated@@239 $generated@@240 $generated@@241) ($generated@@109 $generated@@239) $generated@@238))
 :pattern ( ($generated@@88 $generated@@108 ($generated@@118 $generated@@239 $generated@@240 $generated@@241) ($generated@@109 $generated@@239) $generated@@238))
))))
(assert (forall (($generated@@242 T@U) ) (!  (or (= $generated@@242 $generated@@182) (exists (($generated@@243 T@U) ) ($generated@@25 ($generated@@53 $generated@@242) $generated@@243)))
 :pattern ( ($generated@@53 $generated@@242))
)))
(assert (forall (($generated@@245 T@U) ) (!  (or (= $generated@@245 $generated@@182) (exists (($generated@@246 T@U) ) ($generated@@25 ($generated@@244 $generated@@245) $generated@@246)))
 :pattern ( ($generated@@244 $generated@@245))
)))
(assert (forall (($generated@@248 T@U) ($generated@@249 T@U) ) (! (= ($generated@@25 ($generated@@247 $generated@@248) $generated@@249)  (and ($generated@@25 ($generated@@53 $generated@@248) ($generated@@160 ($generated@@98 $generated@@64 $generated@@249))) (= ($generated@@34 $generated@@35 $generated@@35 ($generated@@58 $generated@@248) ($generated@@160 ($generated@@98 $generated@@64 $generated@@249))) ($generated@@163 ($generated@@98 $generated@@64 $generated@@249)))))
 :pattern ( ($generated@@25 ($generated@@247 $generated@@248) $generated@@249))
)))
(assert (forall (($generated@@250 T@U) ($generated@@251 T@U) ) (! (= ($generated@@25 ($generated@@244 $generated@@250) $generated@@251) (exists (($generated@@252 T@U) ) (!  (and ($generated@@25 ($generated@@53 $generated@@250) $generated@@252) (= $generated@@251 ($generated@@34 $generated@@35 $generated@@35 ($generated@@58 $generated@@250) $generated@@252)))
 :pattern ( ($generated@@25 ($generated@@53 $generated@@250) $generated@@252))
 :pattern ( ($generated@@34 $generated@@35 $generated@@35 ($generated@@58 $generated@@250) $generated@@252))
)))
 :pattern ( ($generated@@25 ($generated@@244 $generated@@250) $generated@@251))
)))
(assert (forall (($generated@@253 T@U) ) (! (= ($generated@@176 ($generated@@99 $generated@@64 $generated@@253)) ($generated@@177 $generated@@253))
 :pattern ( ($generated@@176 ($generated@@99 $generated@@64 $generated@@253)))
)))
(assert (forall (($generated@@254 T@U) ($generated@@255 T@U) ) (!  (=> ($generated@@37 $generated@@254 ($generated@@109 $generated@@255)) (and (= ($generated@@99 $generated@@108 ($generated@@98 $generated@@108 $generated@@254)) $generated@@254) ($generated@@63 $generated@@108 ($generated@@98 $generated@@108 $generated@@254) ($generated@@109 $generated@@255))))
 :pattern ( ($generated@@37 $generated@@254 ($generated@@109 $generated@@255)))
)))
(assert (forall (($generated@@256 T@U) ($generated@@257 T@U) ($generated@@258 T@U) ) (! (= ($generated@@63 $generated@@82 $generated@@256 ($generated@@81 $generated@@257 $generated@@258)) (forall (($generated@@259 T@U) ) (!  (=> ($generated@@25 ($generated@@53 $generated@@256) $generated@@259) (and ($generated@@37 ($generated@@34 $generated@@35 $generated@@35 ($generated@@58 $generated@@256) $generated@@259) $generated@@258) ($generated@@37 $generated@@259 $generated@@257)))
 :pattern ( ($generated@@34 $generated@@35 $generated@@35 ($generated@@58 $generated@@256) $generated@@259))
 :pattern ( ($generated@@25 ($generated@@53 $generated@@256) $generated@@259))
)))
 :pattern ( ($generated@@63 $generated@@82 $generated@@256 ($generated@@81 $generated@@257 $generated@@258)))
)))
(assert (forall (($generated@@260 T@U) ($generated@@261 T@U) ) (! (= ($generated@@133 $generated@@260 $generated@@261) (forall (($generated@@262 T@U) ) (! (= ($generated@@25 $generated@@260 $generated@@262) ($generated@@25 $generated@@261 $generated@@262))
 :pattern ( ($generated@@25 $generated@@260 $generated@@262))
 :pattern ( ($generated@@25 $generated@@261 $generated@@262))
)))
 :pattern ( ($generated@@133 $generated@@260 $generated@@261))
)))
(assert (forall (($generated@@263 T@U) ($generated@@264 T@U) ($generated@@265 T@U) ) (!  (=> (and ($generated@@89 $generated@@265) (and ($generated@@62 $generated@@263) (exists (($generated@@266 T@U) ) (! ($generated@@88 $generated@@64 $generated@@263 ($generated@@65 $generated@@264 $generated@@266) $generated@@265)
 :pattern ( ($generated@@88 $generated@@64 $generated@@263 ($generated@@65 $generated@@264 $generated@@266) $generated@@265))
)))) ($generated@@90 ($generated@@160 $generated@@263) $generated@@264 $generated@@265))
 :pattern ( ($generated@@90 ($generated@@160 $generated@@263) $generated@@264 $generated@@265))
)))
(assert (forall (($generated@@267 T@U) ($generated@@268 T@U) ($generated@@269 T@U) ) (!  (=> (and ($generated@@89 $generated@@269) (and ($generated@@62 $generated@@267) (exists (($generated@@270 T@U) ) (! ($generated@@88 $generated@@64 $generated@@267 ($generated@@65 $generated@@270 $generated@@268) $generated@@269)
 :pattern ( ($generated@@88 $generated@@64 $generated@@267 ($generated@@65 $generated@@270 $generated@@268) $generated@@269))
)))) ($generated@@90 ($generated@@163 $generated@@267) $generated@@268 $generated@@269))
 :pattern ( ($generated@@90 ($generated@@163 $generated@@267) $generated@@268 $generated@@269))
)))
(assert (forall (($generated@@271 T@U) ($generated@@272 T@U) ) (! (= ($generated@@71 ($generated@@78 $generated@@35 $generated@@271) ($generated@@78 $generated@@35 $generated@@272)) ($generated@@78 $generated@@64 ($generated@@71 $generated@@271 $generated@@272)))
 :pattern ( ($generated@@71 ($generated@@78 $generated@@35 $generated@@271) ($generated@@78 $generated@@35 $generated@@272)))
)))
(assert (forall (($generated@@273 Int) ) (! (= ($generated@@99 $generated@@9 ($generated@@13 ($generated@@76 $generated@@273))) ($generated@@78 $generated@@35 ($generated@@99 $generated@@9 ($generated@@13 $generated@@273))))
 :pattern ( ($generated@@99 $generated@@9 ($generated@@13 ($generated@@76 $generated@@273))))
)))
(assert (forall (($generated@@274 T@U) ($generated@@275 T@T) ) (! (= ($generated@@99 $generated@@275 ($generated@@78 $generated@@275 $generated@@274)) ($generated@@78 $generated@@35 ($generated@@99 $generated@@275 $generated@@274)))
 :pattern ( ($generated@@99 $generated@@275 ($generated@@78 $generated@@275 $generated@@274)))
)))
(assert (forall (($generated@@276 T@U) ($generated@@277 T@U) ) (! ($generated@@88 $generated@@9 $generated@@277 $generated $generated@@276)
 :pattern ( ($generated@@88 $generated@@9 $generated@@277 $generated $generated@@276))
)))
(assert (forall (($generated@@278 T@U) ) (!  (or (= $generated@@278 $generated@@182) (exists (($generated@@279 T@U) ($generated@@280 T@U) ) ($generated@@25 ($generated@@247 $generated@@278) ($generated@@99 $generated@@64 ($generated@@71 $generated@@279 $generated@@280)))))
 :pattern ( ($generated@@247 $generated@@278))
)))
(assert (forall (($generated@@281 T@U) ($generated@@282 T@U) ($generated@@283 T@U) ) (!  (=> ($generated@@63 $generated@@82 $generated@@281 ($generated@@81 $generated@@282 $generated@@283)) (and (and ($generated@@63 $generated@@108 ($generated@@53 $generated@@281) ($generated@@109 $generated@@282)) ($generated@@63 $generated@@108 ($generated@@244 $generated@@281) ($generated@@109 $generated@@283))) ($generated@@63 $generated@@108 ($generated@@247 $generated@@281) ($generated@@109 ($generated@@65 $generated@@282 $generated@@283)))))
 :pattern ( ($generated@@63 $generated@@82 $generated@@281 ($generated@@81 $generated@@282 $generated@@283)))
)))
(assert (forall (($generated@@284 T@U) ) (! ($generated@@63 $generated@@9 $generated@@284 $generated)
 :pattern ( ($generated@@63 $generated@@9 $generated@@284 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@285 () T@U)
(declare-fun $generated@@286 () T@U)
(declare-fun $generated@@287 () T@U)
(declare-fun $generated@@288 () Int)
(declare-fun $generated@@289 () Int)
(declare-fun $generated@@290 () T@U)
(declare-fun $generated@@291 () T@U)
(declare-fun $generated@@292 (T@U) Bool)
(declare-fun $generated@@293 () T@U)
(declare-fun $generated@@294 () T@U)
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
 (=> (= (ControlFlow 0 0) 15) (let (($generated@@295  (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall (($generated@@296 Int) ) (!  (=> ($generated@@25 ($generated@@53 $generated@@285) ($generated@@99 $generated@@9 ($generated@@13 $generated@@296))) (= ($generated@@14 ($generated@@98 $generated@@9 ($generated@@34 $generated@@35 $generated@@35 ($generated@@58 $generated@@285) ($generated@@99 $generated@@9 ($generated@@13 $generated@@296))))) $generated@@296))
 :pattern ( ($generated@@98 $generated@@9 ($generated@@34 $generated@@35 $generated@@35 ($generated@@58 $generated@@285) ($generated@@99 $generated@@9 ($generated@@13 $generated@@296)))))
 :pattern ( ($generated@@25 ($generated@@53 $generated@@285) ($generated@@99 $generated@@9 ($generated@@13 $generated@@296))))
))) (=> (forall (($generated@@297 T@U) ) (!  (=> ($generated@@25 ($generated@@53 $generated@@285) ($generated@@99 $generated@@9 $generated@@297)) (= ($generated@@14 ($generated@@98 $generated@@9 ($generated@@34 $generated@@35 $generated@@35 ($generated@@58 $generated@@285) ($generated@@99 $generated@@9 $generated@@297)))) ($generated@@14 $generated@@297)))
 :pattern ( ($generated@@98 $generated@@9 ($generated@@34 $generated@@35 $generated@@35 ($generated@@58 $generated@@285) ($generated@@99 $generated@@9 $generated@@297))))
 :pattern ( ($generated@@25 ($generated@@53 $generated@@285) ($generated@@99 $generated@@9 $generated@@297)))
)) (=> (and (and ($generated@@88 $generated@@82 $generated@@285 ($generated@@81 $generated $generated) $generated@@286) ($generated@@119 $generated $generated $generated@@285)) (and ($generated@@119 $generated $generated $generated@@285) (= (ControlFlow 0 4) (- 0 3)))) ($generated@@133 ($generated@@118 $generated $generated $generated@@285) $generated@@287))))))
(let (($generated@@298  (=> (and (not ($generated@@25 ($generated@@53 $generated@@285) ($generated@@99 $generated@@9 ($generated@@13 $generated@@288)))) (= (ControlFlow 0 8) 4)) $generated@@295)))
(let (($generated@@299  (=> ($generated@@25 ($generated@@53 $generated@@285) ($generated@@99 $generated@@9 ($generated@@13 $generated@@288))) (and (=> (= (ControlFlow 0 6) (- 0 7)) ($generated@@25 ($generated@@53 $generated@@285) ($generated@@99 $generated@@9 ($generated@@13 $generated@@288)))) (=> (= (ControlFlow 0 6) 4) $generated@@295)))))
(let (($generated@@300  (and (=> (= (ControlFlow 0 9) 6) $generated@@299) (=> (= (ControlFlow 0 9) 8) $generated@@298))))
(let (($generated@@301 true))
(let (($generated@@302  (=> (= $generated@@285 ($generated@@54 ($generated@@102 ($generated@@36 $generated $generated@@287)) $generated@@131 ($generated@@81 $generated $generated))) (and (=> (= (ControlFlow 0 10) 9) $generated@@300) (=> (= (ControlFlow 0 10) 2) $generated@@301)))))
(let (($generated@@303  (=> (and (not ($generated@@25 $generated@@287 ($generated@@99 $generated@@9 ($generated@@13 $generated@@289)))) (= (ControlFlow 0 12) 10)) $generated@@302)))
(let (($generated@@304  (=> (and ($generated@@25 $generated@@287 ($generated@@99 $generated@@9 ($generated@@13 $generated@@289))) (= (ControlFlow 0 11) 10)) $generated@@302)))
(let (($generated@@305  (and (=> (= (ControlFlow 0 13) 11) $generated@@304) (=> (= (ControlFlow 0 13) 12) $generated@@303))))
(let (($generated@@306 true))
(let (($generated@@307  (=> (and (= $generated@@290 ($generated@@193 $generated@@291 $generated@@286 $generated@@3 false)) (= $generated@@287 ($generated@@78 $generated@@108 ($generated@@24 ($generated@@24 ($generated@@24 ($generated@@24 $generated@@69 ($generated@@99 $generated@@9 ($generated@@13 ($generated@@76 0)))) ($generated@@99 $generated@@9 ($generated@@13 ($generated@@76 1)))) ($generated@@99 $generated@@9 ($generated@@13 ($generated@@76 3)))) ($generated@@99 $generated@@9 ($generated@@13 ($generated@@76 4))))))) (and (=> (= (ControlFlow 0 14) 13) $generated@@305) (=> (= (ControlFlow 0 14) 1) $generated@@306)))))
(let (($generated@@308  (=> (and ($generated@@89 $generated@@286) ($generated@@292 $generated@@286)) (=> (and (and ($generated@@63 $generated@@108 $generated@@293 ($generated@@109 $generated)) ($generated@@88 $generated@@108 $generated@@293 ($generated@@109 $generated) $generated@@286)) true) (=> (and (and (and ($generated@@63 $generated@@82 $generated@@294 ($generated@@81 $generated $generated)) ($generated@@88 $generated@@82 $generated@@294 ($generated@@81 $generated $generated) $generated@@286)) true) (and (= 1 $generated@@117) (= (ControlFlow 0 15) 14))) $generated@@307)))))
$generated@@308)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)