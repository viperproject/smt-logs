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
(declare-fun $generated@@24 (T@U) Bool)
(declare-fun $generated@@25 (T@T T@U T@U) Bool)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 (T@U T@U) T@U)
(declare-fun $generated@@31 () Int)
(declare-fun $generated@@32 (T@U T@U) Bool)
(declare-fun $generated@@33 (T@T T@U) T@U)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 (T@U T@U) Bool)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@37 (T@T T@U) T@U)
(declare-fun $generated@@38 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 (T@U) T@U)
(declare-fun $generated@@41 (T@U T@U) Bool)
(declare-fun $generated@@42 (T@U) T@U)
(declare-fun $generated@@43 (T@U T@U) Bool)
(declare-fun $generated@@44 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@59 (T@U T@U) T@U)
(declare-fun $generated@@66 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@67 (T@U) Bool)
(declare-fun $generated@@68 (T@U T@U T@U) Bool)
(declare-fun $generated@@74 (T@U) T@U)
(declare-fun $generated@@76 (T@T T@U) T@U)
(declare-fun $generated@@82 () T@T)
(declare-fun $generated@@83 (T@U) T@U)
(declare-fun $generated@@99 (T@U) T@U)
(declare-fun $generated@@102 (T@U) T@U)
(declare-fun $generated@@109 (T@U) T@U)
(declare-fun $generated@@112 (T@U) T@U)
(declare-fun $generated@@115 (T@U) T@U)
(declare-fun $generated@@118 (T@U) T@U)
(declare-fun $generated@@121 (T@U) T@U)
(declare-fun $generated@@131 (T@U) Int)
(declare-fun $generated@@132 (T@U) Int)
(declare-fun $generated@@137 () T@U)
(declare-fun $generated@@145 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@146 () T@T)
(declare-fun $generated@@147 () T@T)
(declare-fun $generated@@148 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@149 (T@T T@T) T@T)
(declare-fun $generated@@150 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@151 (T@T) T@T)
(declare-fun $generated@@152 (T@T) T@T)
(declare-fun $generated@@190 (T@U) T@U)
(declare-fun $generated@@195 (T@U) T@U)
(declare-fun $generated@@198 (T@U) T@U)
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
(assert (= ($generated@@7 $generated@@26) 3))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ) (!  (=> ($generated@@25 $generated@@26 $generated@@30 ($generated@@27 $generated@@28 $generated@@29)) ($generated@@24 $generated@@30))
 :pattern ( ($generated@@24 $generated@@30) ($generated@@25 $generated@@26 $generated@@30 ($generated@@27 $generated@@28 $generated@@29)))
)))
(assert  (and (and (and (= ($generated@@7 $generated@@34) 4) (forall (($generated@@45 T@T) ($generated@@46 T@T) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ) (! (= ($generated@@38 $generated@@45 $generated@@46 ($generated@@44 $generated@@45 $generated@@46 $generated@@48 $generated@@49 $generated@@47) $generated@@49) $generated@@47)
 :weight 0
))) (forall (($generated@@50 T@T) ($generated@@51 T@T) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (!  (or (= $generated@@54 $generated@@55) (= ($generated@@38 $generated@@50 $generated@@51 ($generated@@44 $generated@@50 $generated@@51 $generated@@53 $generated@@54 $generated@@52) $generated@@55) ($generated@@38 $generated@@50 $generated@@51 $generated@@53 $generated@@55)))
 :weight 0
))) (= ($generated@@7 $generated@@39) 5)))
(assert  (=> (<= 0 $generated@@31) (forall (($generated@@56 T@U) ($generated@@57 T@U) ) (!  (=> (or ($generated@@35 $generated@@56 ($generated@@33 $generated@@34 $generated@@57)) (and (< 0 $generated@@31) (and ($generated@@25 $generated@@34 $generated@@57 ($generated@@36 $generated@@56 $generated)) (forall (($generated@@58 T@U) ) (!  (=> ($generated@@43 $generated@@58 $generated@@56) (=> ($generated@@41 ($generated@@42 $generated@@57) $generated@@58) ($generated@@12 ($generated@@37 $generated@@8 ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 ($generated@@33 $generated@@34 $generated@@57)) $generated@@58)))))
 :pattern ( ($generated@@37 $generated@@8 ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@57) $generated@@58)))
 :pattern ( ($generated@@41 ($generated@@42 $generated@@57) $generated@@58))
))))) (= ($generated@@32 $generated@@56 ($generated@@33 $generated@@34 $generated@@57)) ($generated@@12 ($generated@@33 $generated@@8 ($generated@@11 true)))))
 :weight 3
 :pattern ( ($generated@@32 $generated@@56 ($generated@@33 $generated@@34 $generated@@57)))
))))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ) (! (= ($generated@@25 $generated@@26 ($generated@@59 $generated@@62 $generated@@63) ($generated@@27 $generated@@60 $generated@@61))  (and ($generated@@43 $generated@@62 $generated@@60) ($generated@@43 $generated@@63 $generated@@61)))
 :pattern ( ($generated@@25 $generated@@26 ($generated@@59 $generated@@62 $generated@@63) ($generated@@27 $generated@@60 $generated@@61)))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@T) ) (! (= ($generated@@33 $generated@@65 $generated@@64) $generated@@64)
 :pattern ( ($generated@@33 $generated@@65 $generated@@64))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (!  (=> ($generated@@67 $generated@@73) (= ($generated@@66 $generated@@26 ($generated@@59 $generated@@71 $generated@@72) ($generated@@27 $generated@@69 $generated@@70) $generated@@73)  (and ($generated@@68 $generated@@71 $generated@@69 $generated@@73) ($generated@@68 $generated@@72 $generated@@70 $generated@@73))))
 :pattern ( ($generated@@66 $generated@@26 ($generated@@59 $generated@@71 $generated@@72) ($generated@@27 $generated@@69 $generated@@70) $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ) (! (= ($generated@@24 $generated@@75) (= ($generated@@74 $generated@@75) $generated@@4))
 :pattern ( ($generated@@24 $generated@@75))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@76 $generated@@78 ($generated@@37 $generated@@78 $generated@@77)) $generated@@77)
 :pattern ( ($generated@@37 $generated@@78 $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ) (!  (=> ($generated@@24 $generated@@79) (exists (($generated@@80 T@U) ($generated@@81 T@U) ) (= $generated@@79 ($generated@@59 $generated@@80 $generated@@81))))
 :pattern ( ($generated@@24 $generated@@79))
)))
(assert (= ($generated@@7 $generated@@82) 6))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@25 $generated@@82 $generated@@84 ($generated@@83 $generated@@85)) (forall (($generated@@86 T@U) ) (!  (=> ($generated@@41 $generated@@84 $generated@@86) ($generated@@43 $generated@@86 $generated@@85))
 :pattern ( ($generated@@41 $generated@@84 $generated@@86))
)))
 :pattern ( ($generated@@25 $generated@@82 $generated@@84 ($generated@@83 $generated@@85)))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@T) ) (! (= ($generated@@68 ($generated@@76 $generated@@90 $generated@@87) $generated@@88 $generated@@89) ($generated@@66 $generated@@90 $generated@@87 $generated@@88 $generated@@89))
 :pattern ( ($generated@@68 ($generated@@76 $generated@@90 $generated@@87) $generated@@88 $generated@@89))
)))
(assert (forall (($generated@@91 T@U) ) (!  (=> ($generated@@43 $generated@@91 $generated) (and (= ($generated@@76 $generated@@8 ($generated@@37 $generated@@8 $generated@@91)) $generated@@91) ($generated@@25 $generated@@8 ($generated@@37 $generated@@8 $generated@@91) $generated)))
 :pattern ( ($generated@@43 $generated@@91 $generated))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@T) ) (! (= ($generated@@43 ($generated@@76 $generated@@94 $generated@@92) $generated@@93) ($generated@@25 $generated@@94 $generated@@92 $generated@@93))
 :pattern ( ($generated@@43 ($generated@@76 $generated@@94 $generated@@92) $generated@@93))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (! (= ($generated@@66 $generated@@82 $generated@@95 ($generated@@83 $generated@@96) $generated@@97) (forall (($generated@@98 T@U) ) (!  (=> ($generated@@41 $generated@@95 $generated@@98) ($generated@@68 $generated@@98 $generated@@96 $generated@@97))
 :pattern ( ($generated@@41 $generated@@95 $generated@@98))
)))
 :pattern ( ($generated@@66 $generated@@82 $generated@@95 ($generated@@83 $generated@@96) $generated@@97))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@99 ($generated@@36 $generated@@100 $generated@@101)) $generated@@100)
 :pattern ( ($generated@@36 $generated@@100 $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@102 ($generated@@36 $generated@@103 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@36 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ) (! (= ($generated@@23 ($generated@@36 $generated@@105 $generated@@106)) $generated@@2)
 :pattern ( ($generated@@36 $generated@@105 $generated@@106))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ) (! (= ($generated@@74 ($generated@@59 $generated@@107 $generated@@108)) $generated@@4)
 :pattern ( ($generated@@59 $generated@@107 $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@109 ($generated@@27 $generated@@110 $generated@@111)) $generated@@110)
 :pattern ( ($generated@@27 $generated@@110 $generated@@111))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ) (! (= ($generated@@112 ($generated@@27 $generated@@113 $generated@@114)) $generated@@114)
 :pattern ( ($generated@@27 $generated@@113 $generated@@114))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@115 ($generated@@59 $generated@@116 $generated@@117)) $generated@@116)
 :pattern ( ($generated@@59 $generated@@116 $generated@@117))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@118 ($generated@@59 $generated@@119 $generated@@120)) $generated@@120)
 :pattern ( ($generated@@59 $generated@@119 $generated@@120))
)))
(assert (forall (($generated@@122 T@U) ) (! (= ($generated@@121 ($generated@@83 $generated@@122)) $generated@@122)
 :pattern ( ($generated@@83 $generated@@122))
)))
(assert (forall (($generated@@123 T@U) ) (! (= ($generated@@23 ($generated@@83 $generated@@123)) $generated@@1)
 :pattern ( ($generated@@83 $generated@@123))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@T) ) (! (= ($generated@@37 $generated@@125 ($generated@@76 $generated@@125 $generated@@124)) $generated@@124)
 :pattern ( ($generated@@76 $generated@@125 $generated@@124))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ) (! (= ($generated@@66 $generated@@34 $generated@@126 ($generated@@36 $generated@@127 $generated@@128) $generated@@129) (forall (($generated@@130 T@U) ) (!  (=> ($generated@@41 ($generated@@42 $generated@@126) $generated@@130) (and ($generated@@68 ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@126) $generated@@130) $generated@@128 $generated@@129) ($generated@@68 $generated@@130 $generated@@127 $generated@@129)))
 :pattern ( ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@126) $generated@@130))
 :pattern ( ($generated@@41 ($generated@@42 $generated@@126) $generated@@130))
)))
 :pattern ( ($generated@@66 $generated@@34 $generated@@126 ($generated@@36 $generated@@127 $generated@@128) $generated@@129))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ) (! (< ($generated@@131 $generated@@133) ($generated@@132 ($generated@@59 $generated@@133 $generated@@134)))
 :pattern ( ($generated@@59 $generated@@133 $generated@@134))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (! (< ($generated@@131 $generated@@136) ($generated@@132 ($generated@@59 $generated@@135 $generated@@136)))
 :pattern ( ($generated@@59 $generated@@135 $generated@@136))
)))
(assert (forall (($generated@@138 T@U) ) (!  (not ($generated@@41 ($generated@@42 $generated@@137) $generated@@138))
 :pattern ( ($generated@@41 ($generated@@42 $generated@@137) $generated@@138))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (!  (=> ($generated@@43 $generated@@139 ($generated@@36 $generated@@140 $generated@@141)) (and (= ($generated@@76 $generated@@34 ($generated@@37 $generated@@34 $generated@@139)) $generated@@139) ($generated@@25 $generated@@34 ($generated@@37 $generated@@34 $generated@@139) ($generated@@36 $generated@@140 $generated@@141))))
 :pattern ( ($generated@@43 $generated@@139 ($generated@@36 $generated@@140 $generated@@141)))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ) (!  (=> ($generated@@43 $generated@@144 ($generated@@27 $generated@@142 $generated@@143)) (and (= ($generated@@76 $generated@@26 ($generated@@37 $generated@@26 $generated@@144)) $generated@@144) ($generated@@25 $generated@@26 ($generated@@37 $generated@@26 $generated@@144) ($generated@@27 $generated@@142 $generated@@143))))
 :pattern ( ($generated@@43 $generated@@144 ($generated@@27 $generated@@142 $generated@@143)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@153 T@T) ($generated@@154 T@T) ($generated@@155 T@T) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ) (! (= ($generated@@145 $generated@@153 $generated@@154 $generated@@155 ($generated@@150 $generated@@153 $generated@@154 $generated@@155 $generated@@157 $generated@@158 $generated@@159 $generated@@156) $generated@@158 $generated@@159) $generated@@156)
 :weight 0
)) (and (forall (($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@T) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ) (!  (or (= $generated@@165 $generated@@167) (= ($generated@@145 $generated@@160 $generated@@161 $generated@@162 ($generated@@150 $generated@@160 $generated@@161 $generated@@162 $generated@@164 $generated@@165 $generated@@166 $generated@@163) $generated@@167 $generated@@168) ($generated@@145 $generated@@160 $generated@@161 $generated@@162 $generated@@164 $generated@@167 $generated@@168)))
 :weight 0
)) (forall (($generated@@169 T@T) ($generated@@170 T@T) ($generated@@171 T@T) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ) (!  (or (= $generated@@175 $generated@@177) (= ($generated@@145 $generated@@169 $generated@@170 $generated@@171 ($generated@@150 $generated@@169 $generated@@170 $generated@@171 $generated@@173 $generated@@174 $generated@@175 $generated@@172) $generated@@176 $generated@@177) ($generated@@145 $generated@@169 $generated@@170 $generated@@171 $generated@@173 $generated@@176 $generated@@177)))
 :weight 0
)))) (= ($generated@@7 $generated@@146) 7)) (= ($generated@@7 $generated@@147) 8)) (forall (($generated@@178 T@T) ($generated@@179 T@T) ) (= ($generated@@7 ($generated@@149 $generated@@178 $generated@@179)) 9))) (forall (($generated@@180 T@T) ($generated@@181 T@T) ) (! (= ($generated@@151 ($generated@@149 $generated@@180 $generated@@181)) $generated@@180)
 :pattern ( ($generated@@149 $generated@@180 $generated@@181))
))) (forall (($generated@@182 T@T) ($generated@@183 T@T) ) (! (= ($generated@@152 ($generated@@149 $generated@@182 $generated@@183)) $generated@@183)
 :pattern ( ($generated@@149 $generated@@182 $generated@@183))
))))
(assert (forall (($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 Bool) ($generated@@188 T@U) ($generated@@189 T@U) ) (! (= ($generated@@12 ($generated@@145 $generated@@146 $generated@@147 $generated@@8 ($generated@@148 $generated@@184 $generated@@185 $generated@@186 $generated@@187) $generated@@188 $generated@@189))  (=> (and (or (not (= $generated@@188 $generated@@184)) (not true)) ($generated@@12 ($generated@@37 $generated@@8 ($generated@@38 $generated@@147 $generated@@39 ($generated@@38 $generated@@146 ($generated@@149 $generated@@147 $generated@@39) $generated@@185 $generated@@188) $generated@@186)))) $generated@@187))
 :pattern ( ($generated@@145 $generated@@146 $generated@@147 $generated@@8 ($generated@@148 $generated@@184 $generated@@185 $generated@@186 $generated@@187) $generated@@188 $generated@@189))
)))
(assert (forall (($generated@@191 T@U) ($generated@@192 T@U) ) (!  (and (= ($generated@@23 ($generated@@27 $generated@@191 $generated@@192)) $generated@@5) (= ($generated@@190 ($generated@@27 $generated@@191 $generated@@192)) $generated@@6))
 :pattern ( ($generated@@27 $generated@@191 $generated@@192))
)))
(assert (forall (($generated@@193 T@U) ) (!  (or (= $generated@@193 $generated@@137) (exists (($generated@@194 T@U) ) ($generated@@41 ($generated@@42 $generated@@193) $generated@@194)))
 :pattern ( ($generated@@42 $generated@@193))
)))
(assert (forall (($generated@@196 T@U) ) (!  (or (= $generated@@196 $generated@@137) (exists (($generated@@197 T@U) ) ($generated@@41 ($generated@@195 $generated@@196) $generated@@197)))
 :pattern ( ($generated@@195 $generated@@196))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ) (! (= ($generated@@41 ($generated@@198 $generated@@199) $generated@@200)  (and ($generated@@41 ($generated@@42 $generated@@199) ($generated@@115 ($generated@@37 $generated@@26 $generated@@200))) (= ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@199) ($generated@@115 ($generated@@37 $generated@@26 $generated@@200))) ($generated@@118 ($generated@@37 $generated@@26 $generated@@200)))))
 :pattern ( ($generated@@41 ($generated@@198 $generated@@199) $generated@@200))
)))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@U) ) (! (= ($generated@@41 ($generated@@195 $generated@@201) $generated@@202) (exists (($generated@@203 T@U) ) (!  (and ($generated@@41 ($generated@@42 $generated@@201) $generated@@203) (= $generated@@202 ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@201) $generated@@203)))
 :pattern ( ($generated@@41 ($generated@@42 $generated@@201) $generated@@203))
 :pattern ( ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@201) $generated@@203))
)))
 :pattern ( ($generated@@41 ($generated@@195 $generated@@201) $generated@@202))
)))
(assert (forall (($generated@@204 T@U) ) (! (= ($generated@@131 ($generated@@76 $generated@@26 $generated@@204)) ($generated@@132 $generated@@204))
 :pattern ( ($generated@@131 ($generated@@76 $generated@@26 $generated@@204)))
)))
(assert (forall (($generated@@205 T@U) ($generated@@206 T@U) ) (!  (=> ($generated@@43 $generated@@205 ($generated@@83 $generated@@206)) (and (= ($generated@@76 $generated@@82 ($generated@@37 $generated@@82 $generated@@205)) $generated@@205) ($generated@@25 $generated@@82 ($generated@@37 $generated@@82 $generated@@205) ($generated@@83 $generated@@206))))
 :pattern ( ($generated@@43 $generated@@205 ($generated@@83 $generated@@206)))
)))
(assert (forall (($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ) (! (= ($generated@@25 $generated@@34 $generated@@207 ($generated@@36 $generated@@208 $generated@@209)) (forall (($generated@@210 T@U) ) (!  (=> ($generated@@41 ($generated@@42 $generated@@207) $generated@@210) (and ($generated@@43 ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@207) $generated@@210) $generated@@209) ($generated@@43 $generated@@210 $generated@@208)))
 :pattern ( ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@207) $generated@@210))
 :pattern ( ($generated@@41 ($generated@@42 $generated@@207) $generated@@210))
)))
 :pattern ( ($generated@@25 $generated@@34 $generated@@207 ($generated@@36 $generated@@208 $generated@@209)))
)))
(assert (forall (($generated@@211 T@U) ($generated@@212 T@U) ($generated@@213 T@U) ) (!  (=> (and ($generated@@67 $generated@@213) (and ($generated@@24 $generated@@211) (exists (($generated@@214 T@U) ) (! ($generated@@66 $generated@@26 $generated@@211 ($generated@@27 $generated@@212 $generated@@214) $generated@@213)
 :pattern ( ($generated@@66 $generated@@26 $generated@@211 ($generated@@27 $generated@@212 $generated@@214) $generated@@213))
)))) ($generated@@68 ($generated@@115 $generated@@211) $generated@@212 $generated@@213))
 :pattern ( ($generated@@68 ($generated@@115 $generated@@211) $generated@@212 $generated@@213))
)))
(assert (forall (($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 T@U) ) (!  (=> (and ($generated@@67 $generated@@217) (and ($generated@@24 $generated@@215) (exists (($generated@@218 T@U) ) (! ($generated@@66 $generated@@26 $generated@@215 ($generated@@27 $generated@@218 $generated@@216) $generated@@217)
 :pattern ( ($generated@@66 $generated@@26 $generated@@215 ($generated@@27 $generated@@218 $generated@@216) $generated@@217))
)))) ($generated@@68 ($generated@@118 $generated@@215) $generated@@216 $generated@@217))
 :pattern ( ($generated@@68 ($generated@@118 $generated@@215) $generated@@216 $generated@@217))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ) (! (= ($generated@@59 ($generated@@33 $generated@@39 $generated@@219) ($generated@@33 $generated@@39 $generated@@220)) ($generated@@33 $generated@@26 ($generated@@59 $generated@@219 $generated@@220)))
 :pattern ( ($generated@@59 ($generated@@33 $generated@@39 $generated@@219) ($generated@@33 $generated@@39 $generated@@220)))
)))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@T) ) (! (= ($generated@@76 $generated@@222 ($generated@@33 $generated@@222 $generated@@221)) ($generated@@33 $generated@@39 ($generated@@76 $generated@@222 $generated@@221)))
 :pattern ( ($generated@@76 $generated@@222 ($generated@@33 $generated@@222 $generated@@221)))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 T@U) ) (! ($generated@@66 $generated@@8 $generated@@224 $generated $generated@@223)
 :pattern ( ($generated@@66 $generated@@8 $generated@@224 $generated $generated@@223))
)))
(assert  (=> (<= 0 $generated@@31) (forall (($generated@@225 T@U) ($generated@@226 T@U) ) (!  (=> (or ($generated@@35 $generated@@225 $generated@@226) (and (< 0 $generated@@31) (and ($generated@@25 $generated@@34 $generated@@226 ($generated@@36 $generated@@225 $generated)) (forall (($generated@@227 T@U) ) (!  (=> ($generated@@43 $generated@@227 $generated@@225) (=> ($generated@@41 ($generated@@42 $generated@@226) $generated@@227) ($generated@@12 ($generated@@37 $generated@@8 ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@226) $generated@@227)))))
 :pattern ( ($generated@@37 $generated@@8 ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@226) $generated@@227)))
 :pattern ( ($generated@@41 ($generated@@42 $generated@@226) $generated@@227))
))))) (= ($generated@@32 $generated@@225 $generated@@226) ($generated@@12 ($generated@@33 $generated@@8 ($generated@@11 true)))))
 :pattern ( ($generated@@32 $generated@@225 $generated@@226))
))))
(assert (forall (($generated@@228 T@U) ) (!  (or (= $generated@@228 $generated@@137) (exists (($generated@@229 T@U) ($generated@@230 T@U) ) ($generated@@41 ($generated@@198 $generated@@228) ($generated@@76 $generated@@26 ($generated@@59 $generated@@229 $generated@@230)))))
 :pattern ( ($generated@@198 $generated@@228))
)))
(assert (forall (($generated@@231 T@U) ($generated@@232 T@U) ($generated@@233 T@U) ) (!  (=> ($generated@@25 $generated@@34 $generated@@231 ($generated@@36 $generated@@232 $generated@@233)) (and (and ($generated@@25 $generated@@82 ($generated@@42 $generated@@231) ($generated@@83 $generated@@232)) ($generated@@25 $generated@@82 ($generated@@195 $generated@@231) ($generated@@83 $generated@@233))) ($generated@@25 $generated@@82 ($generated@@198 $generated@@231) ($generated@@83 ($generated@@27 $generated@@232 $generated@@233)))))
 :pattern ( ($generated@@25 $generated@@34 $generated@@231 ($generated@@36 $generated@@232 $generated@@233)))
)))
(assert (forall (($generated@@234 T@U) ) (! ($generated@@25 $generated@@8 $generated@@234 $generated)
 :pattern ( ($generated@@25 $generated@@8 $generated@@234 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@235 () T@U)
(declare-fun $generated@@236 () T@U)
(declare-fun $generated@@237 () T@U)
(declare-fun $generated@@238 () T@U)
(declare-fun $generated@@239 () T@U)
(declare-fun $generated@@240 () T@U)
(declare-fun $generated@@241 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@242 true))
(let (($generated@@243 true))
(let (($generated@@244  (=> (forall (($generated@@245 T@U) ) (!  (=> ($generated@@43 $generated@@245 $generated@@236) (=> ($generated@@41 ($generated@@42 $generated@@235) $generated@@245) ($generated@@12 ($generated@@37 $generated@@8 ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@235) $generated@@245)))))
 :pattern ( ($generated@@37 $generated@@8 ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@235) $generated@@245)))
 :pattern ( ($generated@@41 ($generated@@42 $generated@@235) $generated@@245))
)) (and (=> (= (ControlFlow 0 3) 1) $generated@@243) (=> (= (ControlFlow 0 3) 2) $generated@@242)))))
(let (($generated@@246  (=> (and (=> ($generated@@41 ($generated@@42 $generated@@235) $generated@@237) ($generated@@12 ($generated@@37 $generated@@8 ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@235) $generated@@237)))) (= (ControlFlow 0 6) 3)) $generated@@244)))
(let (($generated@@247  (=> ($generated@@41 ($generated@@42 $generated@@235) $generated@@237) (and (=> (= (ControlFlow 0 4) (- 0 5)) ($generated@@41 ($generated@@42 $generated@@235) $generated@@237)) (=> ($generated@@41 ($generated@@42 $generated@@235) $generated@@237) (=> (and ($generated@@12 ($generated@@37 $generated@@8 ($generated@@38 $generated@@39 $generated@@39 ($generated@@40 $generated@@235) $generated@@237))) (= (ControlFlow 0 4) 3)) $generated@@244))))))
(let (($generated@@248  (=> (= $generated@@238 ($generated@@148 $generated@@239 $generated@@240 $generated@@3 false)) (=> (and ($generated@@43 $generated@@237 $generated@@236) ($generated@@68 $generated@@237 $generated@@236 $generated@@240)) (and (=> (= (ControlFlow 0 7) 4) $generated@@247) (=> (= (ControlFlow 0 7) 6) $generated@@246))))))
(let (($generated@@249  (=> (and (and (and ($generated@@67 $generated@@240) ($generated@@241 $generated@@240)) ($generated@@25 $generated@@34 $generated@@235 ($generated@@36 $generated@@236 $generated))) (and (= 0 $generated@@31) (= (ControlFlow 0 8) 7))) $generated@@248)))
$generated@@249))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)