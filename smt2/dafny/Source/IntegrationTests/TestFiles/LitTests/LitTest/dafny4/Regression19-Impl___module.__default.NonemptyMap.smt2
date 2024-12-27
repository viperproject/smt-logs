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
(declare-fun $generated@@33 (T@U T@U) Bool)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@37 (T@U T@U) Bool)
(declare-fun $generated@@42 (T@U) Int)
(declare-fun $generated@@45 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@46 (T@U) Bool)
(declare-fun $generated@@47 (T@U T@U T@U) Bool)
(declare-fun $generated@@53 (T@U) T@U)
(declare-fun $generated@@55 (T@T T@U) T@U)
(declare-fun $generated@@56 (T@T T@U) T@U)
(declare-fun $generated@@62 () T@T)
(declare-fun $generated@@63 (T@U) T@U)
(declare-fun $generated@@71 (T@U) Int)
(declare-fun $generated@@72 () T@U)
(declare-fun $generated@@85 (T@U T@U) T@U)
(declare-fun $generated@@86 (T@U) T@U)
(declare-fun $generated@@89 (T@U) T@U)
(declare-fun $generated@@96 (T@U) T@U)
(declare-fun $generated@@99 (T@U) T@U)
(declare-fun $generated@@102 (T@U) T@U)
(declare-fun $generated@@105 (T@U) T@U)
(declare-fun $generated@@108 (T@U) T@U)
(declare-fun $generated@@113 () T@T)
(declare-fun $generated@@114 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@115 () T@T)
(declare-fun $generated@@116 (T@U) T@U)
(declare-fun $generated@@117 (T@U) T@U)
(declare-fun $generated@@118 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@135 (T@U) Int)
(declare-fun $generated@@136 (T@U) Int)
(declare-fun $generated@@148 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@149 () T@T)
(declare-fun $generated@@150 () T@T)
(declare-fun $generated@@151 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@152 (T@T T@T) T@T)
(declare-fun $generated@@153 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@154 (T@T) T@T)
(declare-fun $generated@@155 (T@T) T@T)
(declare-fun $generated@@193 (T@U) T@U)
(declare-fun $generated@@198 (T@U) T@U)
(declare-fun $generated@@201 (T@U) T@U)
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
(assert (forall (($generated@@35 T@U) ) (!  (not ($generated@@33 $generated@@34 $generated@@35))
 :pattern ( ($generated@@33 $generated@@34 $generated@@35))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ) (! (= ($generated@@27 $generated@@28 ($generated@@36 $generated@@40 $generated@@41) ($generated@@29 $generated@@38 $generated@@39))  (and ($generated@@37 $generated@@40 $generated@@38) ($generated@@37 $generated@@41 $generated@@39)))
 :pattern ( ($generated@@27 $generated@@28 ($generated@@36 $generated@@40 $generated@@41) ($generated@@29 $generated@@38 $generated@@39)))
)))
(assert (forall (($generated@@43 T@U) ) (!  (and (= (= ($generated@@42 $generated@@43) 0) (= $generated@@43 $generated@@34)) (=> (or (not (= ($generated@@42 $generated@@43) 0)) (not true)) (exists (($generated@@44 T@U) ) (! ($generated@@33 $generated@@43 $generated@@44)
 :pattern ( ($generated@@33 $generated@@43 $generated@@44))
))))
 :pattern ( ($generated@@42 $generated@@43))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (!  (=> ($generated@@46 $generated@@52) (= ($generated@@45 $generated@@28 ($generated@@36 $generated@@50 $generated@@51) ($generated@@29 $generated@@48 $generated@@49) $generated@@52)  (and ($generated@@47 $generated@@50 $generated@@48 $generated@@52) ($generated@@47 $generated@@51 $generated@@49 $generated@@52))))
 :pattern ( ($generated@@45 $generated@@28 ($generated@@36 $generated@@50 $generated@@51) ($generated@@29 $generated@@48 $generated@@49) $generated@@52))
)))
(assert (forall (($generated@@54 T@U) ) (! (= ($generated@@26 $generated@@54) (= ($generated@@53 $generated@@54) $generated@@6))
 :pattern ( ($generated@@26 $generated@@54))
)))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@T) ) (! (= ($generated@@56 $generated@@58 ($generated@@55 $generated@@58 $generated@@57)) $generated@@57)
 :pattern ( ($generated@@55 $generated@@58 $generated@@57))
)))
(assert (forall (($generated@@59 T@U) ) (!  (=> ($generated@@26 $generated@@59) (exists (($generated@@60 T@U) ($generated@@61 T@U) ) (= $generated@@59 ($generated@@36 $generated@@60 $generated@@61))))
 :pattern ( ($generated@@26 $generated@@59))
)))
(assert (= ($generated@@9 $generated@@62) 4))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ) (! (= ($generated@@27 $generated@@62 $generated@@64 ($generated@@63 $generated@@65)) (forall (($generated@@66 T@U) ) (!  (=> ($generated@@33 $generated@@64 $generated@@66) ($generated@@37 $generated@@66 $generated@@65))
 :pattern ( ($generated@@33 $generated@@64 $generated@@66))
)))
 :pattern ( ($generated@@27 $generated@@62 $generated@@64 ($generated@@63 $generated@@65)))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@T) ) (! (= ($generated@@47 ($generated@@56 $generated@@70 $generated@@67) $generated@@68 $generated@@69) ($generated@@45 $generated@@70 $generated@@67 $generated@@68 $generated@@69))
 :pattern ( ($generated@@47 ($generated@@56 $generated@@70 $generated@@67) $generated@@68 $generated@@69))
)))
(assert (forall (($generated@@73 T@U) ) (! (= (= ($generated@@71 $generated@@73) 0) (= $generated@@73 $generated@@72))
 :pattern ( ($generated@@71 $generated@@73))
)))
(assert (forall (($generated@@74 T@U) ) (!  (=> ($generated@@37 $generated@@74 $generated@@0) (and (= ($generated@@56 $generated@@11 ($generated@@55 $generated@@11 $generated@@74)) $generated@@74) ($generated@@27 $generated@@11 ($generated@@55 $generated@@11 $generated@@74) $generated@@0)))
 :pattern ( ($generated@@37 $generated@@74 $generated@@0))
)))
(assert (forall (($generated@@75 T@U) ) (!  (=> ($generated@@37 $generated@@75 $generated) (and (= ($generated@@56 $generated@@10 ($generated@@55 $generated@@10 $generated@@75)) $generated@@75) ($generated@@27 $generated@@10 ($generated@@55 $generated@@10 $generated@@75) $generated)))
 :pattern ( ($generated@@37 $generated@@75 $generated))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@37 ($generated@@56 $generated@@78 $generated@@76) $generated@@77) ($generated@@27 $generated@@78 $generated@@76 $generated@@77))
 :pattern ( ($generated@@37 ($generated@@56 $generated@@78 $generated@@76) $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ) (! (<= 0 ($generated@@42 $generated@@79))
 :pattern ( ($generated@@42 $generated@@79))
)))
(assert (forall (($generated@@80 T@U) ) (! (<= 0 ($generated@@71 $generated@@80))
 :pattern ( ($generated@@71 $generated@@80))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@45 $generated@@62 $generated@@81 ($generated@@63 $generated@@82) $generated@@83) (forall (($generated@@84 T@U) ) (!  (=> ($generated@@33 $generated@@81 $generated@@84) ($generated@@47 $generated@@84 $generated@@82 $generated@@83))
 :pattern ( ($generated@@33 $generated@@81 $generated@@84))
)))
 :pattern ( ($generated@@45 $generated@@62 $generated@@81 ($generated@@63 $generated@@82) $generated@@83))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ) (! (= ($generated@@86 ($generated@@85 $generated@@87 $generated@@88)) $generated@@87)
 :pattern ( ($generated@@85 $generated@@87 $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@89 ($generated@@85 $generated@@90 $generated@@91)) $generated@@91)
 :pattern ( ($generated@@85 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ) (! (= ($generated@@25 ($generated@@85 $generated@@92 $generated@@93)) $generated@@4)
 :pattern ( ($generated@@85 $generated@@92 $generated@@93))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@53 ($generated@@36 $generated@@94 $generated@@95)) $generated@@6)
 :pattern ( ($generated@@36 $generated@@94 $generated@@95))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@96 ($generated@@29 $generated@@97 $generated@@98)) $generated@@97)
 :pattern ( ($generated@@29 $generated@@97 $generated@@98))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@99 ($generated@@29 $generated@@100 $generated@@101)) $generated@@101)
 :pattern ( ($generated@@29 $generated@@100 $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@102 ($generated@@36 $generated@@103 $generated@@104)) $generated@@103)
 :pattern ( ($generated@@36 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ) (! (= ($generated@@105 ($generated@@36 $generated@@106 $generated@@107)) $generated@@107)
 :pattern ( ($generated@@36 $generated@@106 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ) (! (= ($generated@@108 ($generated@@63 $generated@@109)) $generated@@109)
 :pattern ( ($generated@@63 $generated@@109))
)))
(assert (forall (($generated@@110 T@U) ) (! (= ($generated@@25 ($generated@@63 $generated@@110)) $generated@@3)
 :pattern ( ($generated@@63 $generated@@110))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@T) ) (! (= ($generated@@55 $generated@@112 ($generated@@56 $generated@@112 $generated@@111)) $generated@@111)
 :pattern ( ($generated@@56 $generated@@112 $generated@@111))
)))
(assert  (and (and (and (= ($generated@@9 $generated@@113) 5) (forall (($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@114 $generated@@119 $generated@@120 ($generated@@118 $generated@@119 $generated@@120 $generated@@122 $generated@@123 $generated@@121) $generated@@123) $generated@@121)
 :weight 0
))) (forall (($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ) (!  (or (= $generated@@128 $generated@@129) (= ($generated@@114 $generated@@124 $generated@@125 ($generated@@118 $generated@@124 $generated@@125 $generated@@127 $generated@@128 $generated@@126) $generated@@129) ($generated@@114 $generated@@124 $generated@@125 $generated@@127 $generated@@129)))
 :weight 0
))) (= ($generated@@9 $generated@@115) 6)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@45 $generated@@113 $generated@@130 ($generated@@85 $generated@@131 $generated@@132) $generated@@133) (forall (($generated@@134 T@U) ) (!  (=> ($generated@@33 ($generated@@117 $generated@@130) $generated@@134) (and ($generated@@47 ($generated@@114 $generated@@115 $generated@@115 ($generated@@116 $generated@@130) $generated@@134) $generated@@132 $generated@@133) ($generated@@47 $generated@@134 $generated@@131 $generated@@133)))
 :pattern ( ($generated@@114 $generated@@115 $generated@@115 ($generated@@116 $generated@@130) $generated@@134))
 :pattern ( ($generated@@33 ($generated@@117 $generated@@130) $generated@@134))
)))
 :pattern ( ($generated@@45 $generated@@113 $generated@@130 ($generated@@85 $generated@@131 $generated@@132) $generated@@133))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ) (! (< ($generated@@135 $generated@@137) ($generated@@136 ($generated@@36 $generated@@137 $generated@@138)))
 :pattern ( ($generated@@36 $generated@@137 $generated@@138))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (! (< ($generated@@135 $generated@@140) ($generated@@136 ($generated@@36 $generated@@139 $generated@@140)))
 :pattern ( ($generated@@36 $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@141 T@U) ) (!  (not ($generated@@33 ($generated@@117 $generated@@72) $generated@@141))
 :pattern ( ($generated@@33 ($generated@@117 $generated@@72) $generated@@141))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ) (!  (=> ($generated@@37 $generated@@142 ($generated@@85 $generated@@143 $generated@@144)) (and (= ($generated@@56 $generated@@113 ($generated@@55 $generated@@113 $generated@@142)) $generated@@142) ($generated@@27 $generated@@113 ($generated@@55 $generated@@113 $generated@@142) ($generated@@85 $generated@@143 $generated@@144))))
 :pattern ( ($generated@@37 $generated@@142 ($generated@@85 $generated@@143 $generated@@144)))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (!  (=> ($generated@@37 $generated@@147 ($generated@@29 $generated@@145 $generated@@146)) (and (= ($generated@@56 $generated@@28 ($generated@@55 $generated@@28 $generated@@147)) $generated@@147) ($generated@@27 $generated@@28 ($generated@@55 $generated@@28 $generated@@147) ($generated@@29 $generated@@145 $generated@@146))))
 :pattern ( ($generated@@37 $generated@@147 ($generated@@29 $generated@@145 $generated@@146)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@156 T@T) ($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ) (! (= ($generated@@148 $generated@@156 $generated@@157 $generated@@158 ($generated@@153 $generated@@156 $generated@@157 $generated@@158 $generated@@160 $generated@@161 $generated@@162 $generated@@159) $generated@@161 $generated@@162) $generated@@159)
 :weight 0
)) (and (forall (($generated@@163 T@T) ($generated@@164 T@T) ($generated@@165 T@T) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ) (!  (or (= $generated@@168 $generated@@170) (= ($generated@@148 $generated@@163 $generated@@164 $generated@@165 ($generated@@153 $generated@@163 $generated@@164 $generated@@165 $generated@@167 $generated@@168 $generated@@169 $generated@@166) $generated@@170 $generated@@171) ($generated@@148 $generated@@163 $generated@@164 $generated@@165 $generated@@167 $generated@@170 $generated@@171)))
 :weight 0
)) (forall (($generated@@172 T@T) ($generated@@173 T@T) ($generated@@174 T@T) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ) (!  (or (= $generated@@178 $generated@@180) (= ($generated@@148 $generated@@172 $generated@@173 $generated@@174 ($generated@@153 $generated@@172 $generated@@173 $generated@@174 $generated@@176 $generated@@177 $generated@@178 $generated@@175) $generated@@179 $generated@@180) ($generated@@148 $generated@@172 $generated@@173 $generated@@174 $generated@@176 $generated@@179 $generated@@180)))
 :weight 0
)))) (= ($generated@@9 $generated@@149) 7)) (= ($generated@@9 $generated@@150) 8)) (forall (($generated@@181 T@T) ($generated@@182 T@T) ) (= ($generated@@9 ($generated@@152 $generated@@181 $generated@@182)) 9))) (forall (($generated@@183 T@T) ($generated@@184 T@T) ) (! (= ($generated@@154 ($generated@@152 $generated@@183 $generated@@184)) $generated@@183)
 :pattern ( ($generated@@152 $generated@@183 $generated@@184))
))) (forall (($generated@@185 T@T) ($generated@@186 T@T) ) (! (= ($generated@@155 ($generated@@152 $generated@@185 $generated@@186)) $generated@@186)
 :pattern ( ($generated@@152 $generated@@185 $generated@@186))
))))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 Bool) ($generated@@191 T@U) ($generated@@192 T@U) ) (! (= ($generated@@14 ($generated@@148 $generated@@149 $generated@@150 $generated@@10 ($generated@@151 $generated@@187 $generated@@188 $generated@@189 $generated@@190) $generated@@191 $generated@@192))  (=> (and (or (not (= $generated@@191 $generated@@187)) (not true)) ($generated@@14 ($generated@@55 $generated@@10 ($generated@@114 $generated@@150 $generated@@115 ($generated@@114 $generated@@149 ($generated@@152 $generated@@150 $generated@@115) $generated@@188 $generated@@191) $generated@@189)))) $generated@@190))
 :pattern ( ($generated@@148 $generated@@149 $generated@@150 $generated@@10 ($generated@@151 $generated@@187 $generated@@188 $generated@@189 $generated@@190) $generated@@191 $generated@@192))
)))
(assert (forall (($generated@@194 T@U) ($generated@@195 T@U) ) (!  (and (= ($generated@@25 ($generated@@29 $generated@@194 $generated@@195)) $generated@@7) (= ($generated@@193 ($generated@@29 $generated@@194 $generated@@195)) $generated@@8))
 :pattern ( ($generated@@29 $generated@@194 $generated@@195))
)))
(assert (forall (($generated@@196 T@U) ) (!  (or (= $generated@@196 $generated@@72) (exists (($generated@@197 T@U) ) ($generated@@33 ($generated@@117 $generated@@196) $generated@@197)))
 :pattern ( ($generated@@117 $generated@@196))
)))
(assert (forall (($generated@@199 T@U) ) (!  (or (= $generated@@199 $generated@@72) (exists (($generated@@200 T@U) ) ($generated@@33 ($generated@@198 $generated@@199) $generated@@200)))
 :pattern ( ($generated@@198 $generated@@199))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ) (! (= ($generated@@33 ($generated@@201 $generated@@202) $generated@@203)  (and ($generated@@33 ($generated@@117 $generated@@202) ($generated@@102 ($generated@@55 $generated@@28 $generated@@203))) (= ($generated@@114 $generated@@115 $generated@@115 ($generated@@116 $generated@@202) ($generated@@102 ($generated@@55 $generated@@28 $generated@@203))) ($generated@@105 ($generated@@55 $generated@@28 $generated@@203)))))
 :pattern ( ($generated@@33 ($generated@@201 $generated@@202) $generated@@203))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ) (! (= ($generated@@33 ($generated@@198 $generated@@204) $generated@@205) (exists (($generated@@206 T@U) ) (!  (and ($generated@@33 ($generated@@117 $generated@@204) $generated@@206) (= $generated@@205 ($generated@@114 $generated@@115 $generated@@115 ($generated@@116 $generated@@204) $generated@@206)))
 :pattern ( ($generated@@33 ($generated@@117 $generated@@204) $generated@@206))
 :pattern ( ($generated@@114 $generated@@115 $generated@@115 ($generated@@116 $generated@@204) $generated@@206))
)))
 :pattern ( ($generated@@33 ($generated@@198 $generated@@204) $generated@@205))
)))
(assert (forall (($generated@@207 T@U) ) (! (= ($generated@@135 ($generated@@56 $generated@@28 $generated@@207)) ($generated@@136 $generated@@207))
 :pattern ( ($generated@@135 ($generated@@56 $generated@@28 $generated@@207)))
)))
(assert (forall (($generated@@208 T@U) ) (! (= ($generated@@42 ($generated@@117 $generated@@208)) ($generated@@71 $generated@@208))
 :pattern ( ($generated@@42 ($generated@@117 $generated@@208)))
 :pattern ( ($generated@@71 $generated@@208))
)))
(assert (forall (($generated@@209 T@U) ) (! (= ($generated@@42 ($generated@@201 $generated@@209)) ($generated@@71 $generated@@209))
 :pattern ( ($generated@@42 ($generated@@201 $generated@@209)))
 :pattern ( ($generated@@71 $generated@@209))
)))
(assert (forall (($generated@@210 T@U) ) (! (<= ($generated@@42 ($generated@@198 $generated@@210)) ($generated@@71 $generated@@210))
 :pattern ( ($generated@@42 ($generated@@198 $generated@@210)))
 :pattern ( ($generated@@71 $generated@@210))
)))
(assert (forall (($generated@@211 T@U) ($generated@@212 T@U) ) (!  (=> ($generated@@37 $generated@@211 ($generated@@63 $generated@@212)) (and (= ($generated@@56 $generated@@62 ($generated@@55 $generated@@62 $generated@@211)) $generated@@211) ($generated@@27 $generated@@62 ($generated@@55 $generated@@62 $generated@@211) ($generated@@63 $generated@@212))))
 :pattern ( ($generated@@37 $generated@@211 ($generated@@63 $generated@@212)))
)))
(assert (forall (($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 T@U) ) (! (= ($generated@@27 $generated@@113 $generated@@213 ($generated@@85 $generated@@214 $generated@@215)) (forall (($generated@@216 T@U) ) (!  (=> ($generated@@33 ($generated@@117 $generated@@213) $generated@@216) (and ($generated@@37 ($generated@@114 $generated@@115 $generated@@115 ($generated@@116 $generated@@213) $generated@@216) $generated@@215) ($generated@@37 $generated@@216 $generated@@214)))
 :pattern ( ($generated@@114 $generated@@115 $generated@@115 ($generated@@116 $generated@@213) $generated@@216))
 :pattern ( ($generated@@33 ($generated@@117 $generated@@213) $generated@@216))
)))
 :pattern ( ($generated@@27 $generated@@113 $generated@@213 ($generated@@85 $generated@@214 $generated@@215)))
)))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ($generated@@219 T@U) ) (!  (=> (and ($generated@@46 $generated@@219) (and ($generated@@26 $generated@@217) (exists (($generated@@220 T@U) ) (! ($generated@@45 $generated@@28 $generated@@217 ($generated@@29 $generated@@218 $generated@@220) $generated@@219)
 :pattern ( ($generated@@45 $generated@@28 $generated@@217 ($generated@@29 $generated@@218 $generated@@220) $generated@@219))
)))) ($generated@@47 ($generated@@102 $generated@@217) $generated@@218 $generated@@219))
 :pattern ( ($generated@@47 ($generated@@102 $generated@@217) $generated@@218 $generated@@219))
)))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@U) ($generated@@223 T@U) ) (!  (=> (and ($generated@@46 $generated@@223) (and ($generated@@26 $generated@@221) (exists (($generated@@224 T@U) ) (! ($generated@@45 $generated@@28 $generated@@221 ($generated@@29 $generated@@224 $generated@@222) $generated@@223)
 :pattern ( ($generated@@45 $generated@@28 $generated@@221 ($generated@@29 $generated@@224 $generated@@222) $generated@@223))
)))) ($generated@@47 ($generated@@105 $generated@@221) $generated@@222 $generated@@223))
 :pattern ( ($generated@@47 ($generated@@105 $generated@@221) $generated@@222 $generated@@223))
)))
(assert (forall (($generated@@225 T@U) ($generated@@226 T@U) ) (! ($generated@@45 $generated@@11 $generated@@226 $generated@@0 $generated@@225)
 :pattern ( ($generated@@45 $generated@@11 $generated@@226 $generated@@0 $generated@@225))
)))
(assert (forall (($generated@@227 T@U) ($generated@@228 T@U) ) (! ($generated@@45 $generated@@10 $generated@@228 $generated $generated@@227)
 :pattern ( ($generated@@45 $generated@@10 $generated@@228 $generated $generated@@227))
)))
(assert (forall (($generated@@229 T@U) ) (!  (or (= $generated@@229 $generated@@72) (exists (($generated@@230 T@U) ($generated@@231 T@U) ) ($generated@@33 ($generated@@201 $generated@@229) ($generated@@56 $generated@@28 ($generated@@36 $generated@@230 $generated@@231)))))
 :pattern ( ($generated@@201 $generated@@229))
)))
(assert (forall (($generated@@232 T@U) ($generated@@233 T@U) ($generated@@234 T@U) ) (!  (=> ($generated@@27 $generated@@113 $generated@@232 ($generated@@85 $generated@@233 $generated@@234)) (and (and ($generated@@27 $generated@@62 ($generated@@117 $generated@@232) ($generated@@63 $generated@@233)) ($generated@@27 $generated@@62 ($generated@@198 $generated@@232) ($generated@@63 $generated@@234))) ($generated@@27 $generated@@62 ($generated@@201 $generated@@232) ($generated@@63 ($generated@@29 $generated@@233 $generated@@234)))))
 :pattern ( ($generated@@27 $generated@@113 $generated@@232 ($generated@@85 $generated@@233 $generated@@234)))
)))
(assert (forall (($generated@@235 T@U) ) (! ($generated@@27 $generated@@11 $generated@@235 $generated@@0)
 :pattern ( ($generated@@27 $generated@@11 $generated@@235 $generated@@0))
)))
(assert (forall (($generated@@236 T@U) ) (! ($generated@@27 $generated@@10 $generated@@236 $generated)
 :pattern ( ($generated@@27 $generated@@10 $generated@@236 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@237 () T@U)
(declare-fun $generated@@238 () T@U)
(declare-fun $generated@@239 () T@U)
(declare-fun $generated@@240 () T@U)
(declare-fun $generated@@241 (T@U) Bool)
(declare-fun $generated@@242 () Int)
(declare-fun $generated@@243 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@244  (=> (and (= $generated@@237 ($generated@@151 $generated@@238 $generated@@239 $generated@@5 false)) (= (ControlFlow 0 2) (- 0 1))) (or (not (= ($generated@@71 $generated@@240) 0)) (not true)))))
(let (($generated@@245  (=> (and ($generated@@46 $generated@@239) ($generated@@241 $generated@@239)) (=> (and (and (and ($generated@@27 $generated@@113 $generated@@240 ($generated@@85 $generated@@0 $generated)) ($generated@@45 $generated@@113 $generated@@240 ($generated@@85 $generated@@0 $generated) $generated@@239)) (= 0 $generated@@242)) (and ($generated@@33 ($generated@@117 $generated@@240) ($generated@@56 $generated@@11 ($generated@@15 $generated@@243))) (= (ControlFlow 0 3) 2))) $generated@@244))))
$generated@@245)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)