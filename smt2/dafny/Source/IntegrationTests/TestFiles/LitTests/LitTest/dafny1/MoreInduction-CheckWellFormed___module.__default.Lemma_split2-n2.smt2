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
(declare-fun $generated@@8 (T@T) Int)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 (Bool) T@U)
(declare-fun $generated@@13 (T@U) Bool)
(declare-fun $generated@@14 (Int) T@U)
(declare-fun $generated@@15 (T@U) Int)
(declare-fun $generated@@16 (Real) T@U)
(declare-fun $generated@@17 (T@U) Real)
(declare-fun $generated@@24 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@25 () T@T)
(declare-fun $generated@@26 (T@U T@U) T@U)
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@28 (T@U) Bool)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@34 () Int)
(declare-fun $generated@@35 (T@U T@U T@U) Bool)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@37 (T@T T@U) T@U)
(declare-fun $generated@@38 (T@U T@U) Bool)
(declare-fun $generated@@39 (T@T T@U T@U) Bool)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@41 (T@U) T@U)
(declare-fun $generated@@42 (T@U) T@U)
(declare-fun $generated@@43 (T@U) Bool)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@55 (T@U) T@U)
(declare-fun $generated@@56 () T@U)
(declare-fun $generated@@63 (T@U) Bool)
(declare-fun $generated@@66 (T@U) Bool)
(declare-fun $generated@@68 (T@T T@U) T@U)
(declare-fun $generated@@69 (T@T T@U) T@U)
(declare-fun $generated@@79 (T@U) T@U)
(declare-fun $generated@@82 (T@U) T@U)
(declare-fun $generated@@85 (T@U T@U T@U) Bool)
(declare-fun $generated@@90 (T@U) T@U)
(declare-fun $generated@@91 (T@U) T@U)
(declare-fun $generated@@97 (T@U) Bool)
(declare-fun $generated@@106 (T@U T@U) Bool)
(declare-fun $generated@@116 (T@U) T@U)
(declare-fun $generated@@118 (T@U) T@U)
(declare-fun $generated@@121 (T@U) T@U)
(declare-fun $generated@@124 (T@U) T@U)
(declare-fun $generated@@130 (T@U) Int)
(declare-fun $generated@@135 (T@U) Int)
(declare-fun $generated@@141 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@142 () T@T)
(declare-fun $generated@@143 () T@T)
(declare-fun $generated@@144 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@145 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@146 (T@T T@T) T@T)
(declare-fun $generated@@147 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@148 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@149 (T@T) T@T)
(declare-fun $generated@@150 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@8 $generated@@9) 0) (= ($generated@@8 $generated@@10) 1)) (= ($generated@@8 $generated@@11) 2)) (forall (($generated@@18 Bool) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Int) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Real) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7)
)
(assert (= ($generated@@8 $generated@@25) 3))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 T@U) ($generated@@33 T@U) ) (!  (=> ($generated@@28 $generated@@33) (= ($generated@@24 $generated@@25 ($generated@@26 $generated@@31 $generated@@32) ($generated@@27 $generated@@30) $generated@@33)  (and ($generated@@24 $generated@@25 $generated@@31 ($generated@@29 $generated@@30) $generated@@33) ($generated@@24 $generated@@25 $generated@@32 ($generated@@27 $generated@@30) $generated@@33))))
 :pattern ( ($generated@@24 $generated@@25 ($generated@@26 $generated@@31 $generated@@32) ($generated@@27 $generated@@30) $generated@@33))
)))
(assert (= ($generated@@8 $generated@@44) 4))
(assert  (=> (<= 1 $generated@@34) (forall (($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ) (!  (=> (or ($generated@@38 $generated@@45 ($generated@@37 $generated@@25 $generated@@47)) (and (< 1 $generated@@34) ($generated@@39 $generated@@25 $generated@@47 ($generated@@27 $generated@@45)))) (and (=> (not ($generated@@13 ($generated@@37 $generated@@9 ($generated@@12 ($generated@@40 ($generated@@37 $generated@@25 $generated@@47)))))) (let (($generated@@48 ($generated@@37 $generated@@25 ($generated@@41 ($generated@@37 $generated@@25 $generated@@47)))))
(let (($generated@@49 ($generated@@37 $generated@@25 ($generated@@42 ($generated@@37 $generated@@25 $generated@@47)))))
 (=> ($generated@@43 $generated@@49) ($generated@@38 $generated@@45 $generated@@48))))) (= ($generated@@35 $generated@@45 ($generated@@36 $generated@@46) ($generated@@37 $generated@@25 $generated@@47)) (ite ($generated@@40 ($generated@@37 $generated@@25 $generated@@47)) true (let (($generated@@50 ($generated@@37 $generated@@25 ($generated@@41 ($generated@@37 $generated@@25 $generated@@47)))))
(let (($generated@@51 ($generated@@37 $generated@@25 ($generated@@42 ($generated@@37 $generated@@25 $generated@@47)))))
(ite ($generated@@43 $generated@@51) ($generated@@13 ($generated@@37 $generated@@9 ($generated@@12 ($generated@@35 $generated@@45 ($generated@@36 $generated@@46) $generated@@50)))) ($generated@@13 ($generated@@37 $generated@@9 ($generated@@12 false))))))))))
 :weight 3
 :pattern ( ($generated@@35 $generated@@45 ($generated@@36 $generated@@46) ($generated@@37 $generated@@25 $generated@@47)))
))))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ) (! (= ($generated@@35 $generated@@52 ($generated@@36 $generated@@53) $generated@@54) ($generated@@35 $generated@@52 $generated@@53 $generated@@54))
 :pattern ( ($generated@@35 $generated@@52 ($generated@@36 $generated@@53) $generated@@54))
)))
(assert (= ($generated@@55 $generated@@56) $generated@@2))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@U) ) (!  (=> ($generated@@28 $generated@@58) ($generated@@24 $generated@@25 $generated@@56 ($generated@@27 $generated@@57) $generated@@58))
 :pattern ( ($generated@@24 $generated@@25 $generated@@56 ($generated@@27 $generated@@57) $generated@@58))
)))
(assert (forall (($generated@@59 T@U) ) (! ($generated@@39 $generated@@25 $generated@@56 ($generated@@27 $generated@@59))
 :pattern ( ($generated@@39 $generated@@25 $generated@@56 ($generated@@27 $generated@@59)))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@T) ) (! (= ($generated@@37 $generated@@61 $generated@@60) $generated@@60)
 :pattern ( ($generated@@37 $generated@@61 $generated@@60))
)))
(assert (forall (($generated@@62 T@U) ) (! (= ($generated@@40 $generated@@62) (= ($generated@@55 $generated@@62) $generated@@2))
 :pattern ( ($generated@@40 $generated@@62))
)))
(assert (forall (($generated@@64 T@U) ) (! (= ($generated@@63 $generated@@64) (= ($generated@@55 $generated@@64) $generated@@3))
 :pattern ( ($generated@@63 $generated@@64))
)))
(assert (forall (($generated@@65 T@U) ) (! (= ($generated@@43 $generated@@65) (= ($generated@@55 $generated@@65) $generated@@4))
 :pattern ( ($generated@@43 $generated@@65))
)))
(assert (forall (($generated@@67 T@U) ) (! (= ($generated@@66 $generated@@67) (= ($generated@@55 $generated@@67) $generated@@5))
 :pattern ( ($generated@@66 $generated@@67))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@T) ) (! (= ($generated@@69 $generated@@71 ($generated@@68 $generated@@71 $generated@@70)) $generated@@70)
 :pattern ( ($generated@@68 $generated@@71 $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ) (!  (=> ($generated@@63 $generated@@72) (exists (($generated@@73 T@U) ($generated@@74 T@U) ) (= $generated@@72 ($generated@@26 $generated@@73 $generated@@74))))
 :pattern ( ($generated@@63 $generated@@72))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@39 $generated@@25 ($generated@@26 $generated@@76 $generated@@77) ($generated@@27 $generated@@75))  (and ($generated@@39 $generated@@25 $generated@@76 ($generated@@29 $generated@@75)) ($generated@@39 $generated@@25 $generated@@77 ($generated@@27 $generated@@75))))
 :pattern ( ($generated@@39 $generated@@25 ($generated@@26 $generated@@76 $generated@@77) ($generated@@27 $generated@@75)))
)))
(assert (forall (($generated@@78 T@U) ) (!  (=> ($generated@@40 $generated@@78) (= $generated@@78 $generated@@56))
 :pattern ( ($generated@@40 $generated@@78))
)))
(assert (forall (($generated@@80 T@U) ) (!  (=> ($generated@@43 $generated@@80) (exists (($generated@@81 T@U) ) (= $generated@@80 ($generated@@79 $generated@@81))))
 :pattern ( ($generated@@43 $generated@@80))
)))
(assert (forall (($generated@@83 T@U) ) (!  (=> ($generated@@66 $generated@@83) (exists (($generated@@84 T@U) ) (= $generated@@83 ($generated@@82 $generated@@84))))
 :pattern ( ($generated@@66 $generated@@83))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@85 ($generated@@69 $generated@@89 $generated@@86) $generated@@87 $generated@@88) ($generated@@24 $generated@@89 $generated@@86 $generated@@87 $generated@@88))
 :pattern ( ($generated@@85 ($generated@@69 $generated@@89 $generated@@86) $generated@@87 $generated@@88))
)))
(assert (forall (($generated@@92 T@U) ) (!  (and (= ($generated@@90 ($generated@@27 $generated@@92)) $generated@@0) (= ($generated@@91 ($generated@@27 $generated@@92)) $generated@@6))
 :pattern ( ($generated@@27 $generated@@92))
)))
(assert (forall (($generated@@93 T@U) ) (!  (and (= ($generated@@90 ($generated@@29 $generated@@93)) $generated@@1) (= ($generated@@91 ($generated@@29 $generated@@93)) $generated@@7))
 :pattern ( ($generated@@29 $generated@@93))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> ($generated@@28 $generated@@96) (= ($generated@@24 $generated@@25 ($generated@@79 $generated@@95) ($generated@@29 $generated@@94) $generated@@96) ($generated@@85 $generated@@95 $generated@@94 $generated@@96)))
 :pattern ( ($generated@@24 $generated@@25 ($generated@@79 $generated@@95) ($generated@@29 $generated@@94) $generated@@96))
)))
(assert (forall (($generated@@98 T@U) ) (!  (=> ($generated@@97 $generated@@98) (or ($generated@@40 $generated@@98) ($generated@@63 $generated@@98)))
 :pattern ( ($generated@@97 $generated@@98))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ) (!  (=> ($generated@@28 $generated@@101) (= ($generated@@24 $generated@@25 ($generated@@82 $generated@@100) ($generated@@29 $generated@@99) $generated@@101) ($generated@@24 $generated@@25 $generated@@100 ($generated@@27 $generated@@99) $generated@@101)))
 :pattern ( ($generated@@24 $generated@@25 ($generated@@82 $generated@@100) ($generated@@29 $generated@@99) $generated@@101))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ) (!  (=> ($generated@@39 $generated@@25 $generated@@103 ($generated@@27 $generated@@102)) (or ($generated@@40 $generated@@103) ($generated@@63 $generated@@103)))
 :pattern ( ($generated@@63 $generated@@103) ($generated@@39 $generated@@25 $generated@@103 ($generated@@27 $generated@@102)))
 :pattern ( ($generated@@40 $generated@@103) ($generated@@39 $generated@@25 $generated@@103 ($generated@@27 $generated@@102)))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (!  (=> ($generated@@39 $generated@@25 $generated@@105 ($generated@@29 $generated@@104)) (or ($generated@@43 $generated@@105) ($generated@@66 $generated@@105)))
 :pattern ( ($generated@@66 $generated@@105) ($generated@@39 $generated@@25 $generated@@105 ($generated@@29 $generated@@104)))
 :pattern ( ($generated@@43 $generated@@105) ($generated@@39 $generated@@25 $generated@@105 ($generated@@29 $generated@@104)))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@T) ) (! (= ($generated@@106 ($generated@@69 $generated@@109 $generated@@107) $generated@@108) ($generated@@39 $generated@@109 $generated@@107 $generated@@108))
 :pattern ( ($generated@@106 ($generated@@69 $generated@@109 $generated@@107) $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@55 ($generated@@26 $generated@@110 $generated@@111)) $generated@@3)
 :pattern ( ($generated@@26 $generated@@110 $generated@@111))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ) (! (= ($generated@@42 ($generated@@26 $generated@@112 $generated@@113)) $generated@@112)
 :pattern ( ($generated@@26 $generated@@112 $generated@@113))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@41 ($generated@@26 $generated@@114 $generated@@115)) $generated@@115)
 :pattern ( ($generated@@26 $generated@@114 $generated@@115))
)))
(assert (forall (($generated@@117 T@U) ) (! (= ($generated@@116 ($generated@@27 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@27 $generated@@117))
)))
(assert (forall (($generated@@119 T@U) ) (! (= ($generated@@118 ($generated@@29 $generated@@119)) $generated@@119)
 :pattern ( ($generated@@29 $generated@@119))
)))
(assert (forall (($generated@@120 T@U) ) (! (= ($generated@@55 ($generated@@79 $generated@@120)) $generated@@4)
 :pattern ( ($generated@@79 $generated@@120))
)))
(assert (forall (($generated@@122 T@U) ) (! (= ($generated@@121 ($generated@@79 $generated@@122)) $generated@@122)
 :pattern ( ($generated@@79 $generated@@122))
)))
(assert (forall (($generated@@123 T@U) ) (! (= ($generated@@55 ($generated@@82 $generated@@123)) $generated@@5)
 :pattern ( ($generated@@82 $generated@@123))
)))
(assert (forall (($generated@@125 T@U) ) (! (= ($generated@@124 ($generated@@82 $generated@@125)) $generated@@125)
 :pattern ( ($generated@@82 $generated@@125))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@T) ) (! (= ($generated@@68 $generated@@127 ($generated@@69 $generated@@127 $generated@@126)) $generated@@126)
 :pattern ( ($generated@@69 $generated@@127 $generated@@126))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (! (= ($generated@@39 $generated@@25 ($generated@@79 $generated@@129) ($generated@@29 $generated@@128)) ($generated@@106 $generated@@129 $generated@@128))
 :pattern ( ($generated@@39 $generated@@25 ($generated@@79 $generated@@129) ($generated@@29 $generated@@128)))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ) (! (< ($generated@@130 $generated@@131) ($generated@@130 ($generated@@26 $generated@@131 $generated@@132)))
 :pattern ( ($generated@@26 $generated@@131 $generated@@132))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ) (! (< ($generated@@130 $generated@@134) ($generated@@130 ($generated@@26 $generated@@133 $generated@@134)))
 :pattern ( ($generated@@26 $generated@@133 $generated@@134))
)))
(assert (forall (($generated@@136 T@U) ) (! (< ($generated@@135 $generated@@136) ($generated@@130 ($generated@@79 $generated@@136)))
 :pattern ( ($generated@@79 $generated@@136))
)))
(assert (forall (($generated@@137 T@U) ) (! (< ($generated@@130 $generated@@137) ($generated@@130 ($generated@@82 $generated@@137)))
 :pattern ( ($generated@@82 $generated@@137))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (!  (=> (and ($generated@@28 $generated@@140) (and ($generated@@43 $generated@@138) ($generated@@24 $generated@@25 $generated@@138 ($generated@@29 $generated@@139) $generated@@140))) ($generated@@85 ($generated@@121 $generated@@138) $generated@@139 $generated@@140))
 :pattern ( ($generated@@85 ($generated@@121 $generated@@138) $generated@@139 $generated@@140))
)))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@T) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (! (= ($generated@@141 $generated@@151 $generated@@152 $generated@@153 ($generated@@147 $generated@@151 $generated@@152 $generated@@153 $generated@@155 $generated@@156 $generated@@157 $generated@@154) $generated@@156 $generated@@157) $generated@@154)
 :weight 0
)) (and (forall (($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ) (!  (or (= $generated@@163 $generated@@165) (= ($generated@@141 $generated@@158 $generated@@159 $generated@@160 ($generated@@147 $generated@@158 $generated@@159 $generated@@160 $generated@@162 $generated@@163 $generated@@164 $generated@@161) $generated@@165 $generated@@166) ($generated@@141 $generated@@158 $generated@@159 $generated@@160 $generated@@162 $generated@@165 $generated@@166)))
 :weight 0
)) (forall (($generated@@167 T@T) ($generated@@168 T@T) ($generated@@169 T@T) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ) (!  (or (= $generated@@173 $generated@@175) (= ($generated@@141 $generated@@167 $generated@@168 $generated@@169 ($generated@@147 $generated@@167 $generated@@168 $generated@@169 $generated@@171 $generated@@172 $generated@@173 $generated@@170) $generated@@174 $generated@@175) ($generated@@141 $generated@@167 $generated@@168 $generated@@169 $generated@@171 $generated@@174 $generated@@175)))
 :weight 0
)))) (= ($generated@@8 $generated@@142) 5)) (= ($generated@@8 $generated@@143) 6)) (forall (($generated@@176 T@T) ($generated@@177 T@T) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ) (! (= ($generated@@145 $generated@@176 $generated@@177 ($generated@@148 $generated@@176 $generated@@177 $generated@@179 $generated@@180 $generated@@178) $generated@@180) $generated@@178)
 :weight 0
))) (forall (($generated@@181 T@T) ($generated@@182 T@T) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ) (!  (or (= $generated@@185 $generated@@186) (= ($generated@@145 $generated@@181 $generated@@182 ($generated@@148 $generated@@181 $generated@@182 $generated@@184 $generated@@185 $generated@@183) $generated@@186) ($generated@@145 $generated@@181 $generated@@182 $generated@@184 $generated@@186)))
 :weight 0
))) (forall (($generated@@187 T@T) ($generated@@188 T@T) ) (= ($generated@@8 ($generated@@146 $generated@@187 $generated@@188)) 7))) (forall (($generated@@189 T@T) ($generated@@190 T@T) ) (! (= ($generated@@149 ($generated@@146 $generated@@189 $generated@@190)) $generated@@189)
 :pattern ( ($generated@@146 $generated@@189 $generated@@190))
))) (forall (($generated@@191 T@T) ($generated@@192 T@T) ) (! (= ($generated@@150 ($generated@@146 $generated@@191 $generated@@192)) $generated@@192)
 :pattern ( ($generated@@146 $generated@@191 $generated@@192))
))))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 Bool) ($generated@@197 T@U) ($generated@@198 T@U) ) (! (= ($generated@@13 ($generated@@141 $generated@@142 $generated@@143 $generated@@9 ($generated@@144 $generated@@193 $generated@@194 $generated@@195 $generated@@196) $generated@@197 $generated@@198))  (=> (and (or (not (= $generated@@197 $generated@@193)) (not true)) ($generated@@13 ($generated@@68 $generated@@9 ($generated@@145 $generated@@143 $generated@@44 ($generated@@145 $generated@@142 ($generated@@146 $generated@@143 $generated@@44) $generated@@194 $generated@@197) $generated@@195)))) $generated@@196))
 :pattern ( ($generated@@141 $generated@@142 $generated@@143 $generated@@9 ($generated@@144 $generated@@193 $generated@@194 $generated@@195 $generated@@196) $generated@@197 $generated@@198))
)))
(assert  (=> (<= 1 $generated@@34) (forall (($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ) (!  (=> (or ($generated@@38 $generated@@199 $generated@@201) (and (< 1 $generated@@34) ($generated@@39 $generated@@25 $generated@@201 ($generated@@27 $generated@@199)))) (and (=> (not ($generated@@40 $generated@@201)) (let (($generated@@202 ($generated@@41 $generated@@201)))
(let (($generated@@203 ($generated@@42 $generated@@201)))
 (=> ($generated@@43 $generated@@203) ($generated@@38 $generated@@199 $generated@@202))))) (= ($generated@@35 $generated@@199 ($generated@@36 $generated@@200) $generated@@201) (ite ($generated@@40 $generated@@201) true (let (($generated@@204 ($generated@@41 $generated@@201)))
(let (($generated@@205 ($generated@@42 $generated@@201)))
(ite ($generated@@43 $generated@@205) ($generated@@35 $generated@@199 $generated@@200 $generated@@204) ($generated@@13 ($generated@@37 $generated@@9 ($generated@@12 false))))))))))
 :pattern ( ($generated@@35 $generated@@199 ($generated@@36 $generated@@200) $generated@@201))
))))
(assert (forall (($generated@@206 T@U) ) (! (= ($generated@@135 ($generated@@69 $generated@@25 $generated@@206)) ($generated@@130 $generated@@206))
 :pattern ( ($generated@@135 ($generated@@69 $generated@@25 $generated@@206)))
)))
(assert (forall (($generated@@207 T@U) ($generated@@208 T@U) ) (!  (=> ($generated@@106 $generated@@208 ($generated@@27 $generated@@207)) (and (= ($generated@@69 $generated@@25 ($generated@@68 $generated@@25 $generated@@208)) $generated@@208) ($generated@@39 $generated@@25 ($generated@@68 $generated@@25 $generated@@208) ($generated@@27 $generated@@207))))
 :pattern ( ($generated@@106 $generated@@208 ($generated@@27 $generated@@207)))
)))
(assert (forall (($generated@@209 T@U) ($generated@@210 T@U) ) (!  (=> ($generated@@106 $generated@@210 ($generated@@29 $generated@@209)) (and (= ($generated@@69 $generated@@25 ($generated@@68 $generated@@25 $generated@@210)) $generated@@210) ($generated@@39 $generated@@25 ($generated@@68 $generated@@25 $generated@@210) ($generated@@29 $generated@@209))))
 :pattern ( ($generated@@106 $generated@@210 ($generated@@29 $generated@@209)))
)))
(assert (forall (($generated@@211 T@U) ($generated@@212 T@U) ) (! (= ($generated@@39 $generated@@25 ($generated@@82 $generated@@212) ($generated@@29 $generated@@211)) ($generated@@39 $generated@@25 $generated@@212 ($generated@@27 $generated@@211)))
 :pattern ( ($generated@@39 $generated@@25 ($generated@@82 $generated@@212) ($generated@@29 $generated@@211)))
)))
(assert (forall (($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 T@U) ) (!  (=> (and ($generated@@28 $generated@@215) (and ($generated@@63 $generated@@213) ($generated@@24 $generated@@25 $generated@@213 ($generated@@27 $generated@@214) $generated@@215))) ($generated@@24 $generated@@25 ($generated@@42 $generated@@213) ($generated@@29 $generated@@214) $generated@@215))
 :pattern ( ($generated@@24 $generated@@25 ($generated@@42 $generated@@213) ($generated@@29 $generated@@214) $generated@@215))
)))
(assert (forall (($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ) (!  (=> (and ($generated@@28 $generated@@218) (and ($generated@@63 $generated@@216) ($generated@@24 $generated@@25 $generated@@216 ($generated@@27 $generated@@217) $generated@@218))) ($generated@@24 $generated@@25 ($generated@@41 $generated@@216) ($generated@@27 $generated@@217) $generated@@218))
 :pattern ( ($generated@@24 $generated@@25 ($generated@@41 $generated@@216) ($generated@@27 $generated@@217) $generated@@218))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ) (!  (=> (and ($generated@@28 $generated@@221) (and ($generated@@66 $generated@@219) ($generated@@24 $generated@@25 $generated@@219 ($generated@@29 $generated@@220) $generated@@221))) ($generated@@24 $generated@@25 ($generated@@124 $generated@@219) ($generated@@27 $generated@@220) $generated@@221))
 :pattern ( ($generated@@24 $generated@@25 ($generated@@124 $generated@@219) ($generated@@27 $generated@@220) $generated@@221))
)))
(assert (= $generated@@56 ($generated@@37 $generated@@25 $generated@@56)))
(assert (forall (($generated@@222 T@U) ($generated@@223 T@U) ) (! (= ($generated@@26 ($generated@@37 $generated@@25 $generated@@222) ($generated@@37 $generated@@25 $generated@@223)) ($generated@@37 $generated@@25 ($generated@@26 $generated@@222 $generated@@223)))
 :pattern ( ($generated@@26 ($generated@@37 $generated@@25 $generated@@222) ($generated@@37 $generated@@25 $generated@@223)))
)))
(assert (forall (($generated@@224 T@U) ) (! (= ($generated@@79 ($generated@@37 $generated@@44 $generated@@224)) ($generated@@37 $generated@@25 ($generated@@79 $generated@@224)))
 :pattern ( ($generated@@79 ($generated@@37 $generated@@44 $generated@@224)))
)))
(assert (forall (($generated@@225 T@U) ) (! (= ($generated@@82 ($generated@@37 $generated@@25 $generated@@225)) ($generated@@37 $generated@@25 ($generated@@82 $generated@@225)))
 :pattern ( ($generated@@82 ($generated@@37 $generated@@25 $generated@@225)))
)))
(assert (forall (($generated@@226 T@U) ($generated@@227 T@T) ) (! (= ($generated@@69 $generated@@227 ($generated@@37 $generated@@227 $generated@@226)) ($generated@@37 $generated@@44 ($generated@@69 $generated@@227 $generated@@226)))
 :pattern ( ($generated@@69 $generated@@227 ($generated@@37 $generated@@227 $generated@@226)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@228 () T@U)
(declare-fun $generated@@229 (T@U) Bool)
(declare-fun $generated@@230 () T@U)
(declare-fun $generated@@231 () T@U)
(declare-fun $generated@@232 () T@U)
(declare-fun $generated@@233 () T@U)
(declare-fun $generated@@234 () T@U)
(declare-fun $generated@@235 () T@U)
(declare-fun $generated@@236 () T@U)
(declare-fun $generated@@237 (T@U T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 2) (let (($generated@@238  (=> (and ($generated@@28 $generated@@228) ($generated@@229 $generated@@228)) (=> (and (and ($generated@@39 $generated@@25 $generated@@230 ($generated@@27 $generated@@231)) ($generated@@24 $generated@@25 $generated@@230 ($generated@@27 $generated@@231) $generated@@228)) ($generated@@97 $generated@@230)) (=> (and (and (and ($generated@@39 $generated@@25 $generated@@232 ($generated@@27 $generated@@231)) ($generated@@24 $generated@@25 $generated@@232 ($generated@@27 $generated@@231) $generated@@228)) ($generated@@97 $generated@@232)) (= 3 $generated@@34)) (=> (and (and (and (and (= $generated@@233 ($generated@@144 $generated@@234 $generated@@228 $generated false)) ($generated@@24 $generated@@25 $generated@@232 ($generated@@27 $generated@@231) $generated@@228)) (and ($generated@@38 $generated@@231 $generated@@232) ($generated@@35 $generated@@231 ($generated@@36 $generated@@235) $generated@@232))) (and (and ($generated@@28 $generated@@236) ($generated@@229 $generated@@236)) (and (= $generated@@228 $generated@@236) ($generated@@24 $generated@@25 $generated@@230 ($generated@@27 $generated@@231) $generated@@236)))) (and (and (and ($generated@@237 $generated@@231 $generated@@230) ($generated@@24 $generated@@25 $generated@@232 ($generated@@27 $generated@@231) $generated@@236)) (and ($generated@@237 $generated@@231 $generated@@232) ($generated@@24 $generated@@25 $generated@@230 ($generated@@27 $generated@@231) $generated@@236))) (and (and ($generated@@24 $generated@@25 $generated@@232 ($generated@@27 $generated@@231) $generated@@236) (= (ControlFlow 0 2) (- 0 1))) ($generated@@38 $generated@@231 $generated@@232)))) (or ($generated@@35 $generated@@231 ($generated@@36 $generated@@235) $generated@@232) (=> (not ($generated@@40 $generated@@232)) (let (($generated@@239 ($generated@@42 $generated@@232)))
 (=> (not ($generated@@43 $generated@@239)) ($generated@@13 ($generated@@37 $generated@@9 ($generated@@12 false)))))))))))))
$generated@@238))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)