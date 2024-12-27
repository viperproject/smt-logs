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
(declare-fun $generated@@5 (T@T) Int)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 (Bool) T@U)
(declare-fun $generated@@10 (T@U) Bool)
(declare-fun $generated@@11 (Int) T@U)
(declare-fun $generated@@12 (T@U) Int)
(declare-fun $generated@@13 (Real) T@U)
(declare-fun $generated@@14 (T@U) Real)
(declare-fun $generated@@21 (T@U) Bool)
(declare-fun $generated@@22 (T@T T@U T@U) Bool)
(declare-fun $generated@@23 () T@T)
(declare-fun $generated@@24 (T@U T@U) T@U)
(declare-fun $generated@@28 (T@U T@U) T@U)
(declare-fun $generated@@29 (T@U T@U) Bool)
(declare-fun $generated@@34 (T@T T@T) T@T)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@37 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@38 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@39 (T@T) T@T)
(declare-fun $generated@@40 (T@T) T@T)
(declare-fun $generated@@61 (T@T T@U) T@U)
(declare-fun $generated@@64 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@65 (T@U) Bool)
(declare-fun $generated@@66 (T@U T@U T@U) Bool)
(declare-fun $generated@@72 (T@U) T@U)
(declare-fun $generated@@74 (T@T T@U) T@U)
(declare-fun $generated@@75 (T@T T@U) T@U)
(declare-fun $generated@@78 () Int)
(declare-fun $generated@@79 (T@U T@U T@U) T@U)
(declare-fun $generated@@80 (T@U T@U T@U) Bool)
(declare-fun $generated@@81 () T@T)
(declare-fun $generated@@82 (T@U T@U) T@U)
(declare-fun $generated@@83 (T@U T@U) T@U)
(declare-fun $generated@@84 (T@U) T@U)
(declare-fun $generated@@95 () T@U)
(declare-fun $generated@@102 (T@U) T@U)
(declare-fun $generated@@109 (T@U) T@U)
(declare-fun $generated@@110 (T@U) T@U)
(declare-fun $generated@@111 (T@U) T@U)
(declare-fun $generated@@112 (T@U) T@U)
(declare-fun $generated@@123 (T@U T@U) Bool)
(declare-fun $generated@@126 () T@U)
(declare-fun $generated@@136 (T@U) T@U)
(declare-fun $generated@@139 (T@U) T@U)
(declare-fun $generated@@142 (T@U) T@U)
(declare-fun $generated@@147 (T@U) T@U)
(declare-fun $generated@@150 (T@U) T@U)
(declare-fun $generated@@157 (T@U) T@U)
(declare-fun $generated@@166 (T@U) Int)
(declare-fun $generated@@167 (T@U) Int)
(declare-fun $generated@@182 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@183 () T@T)
(declare-fun $generated@@184 () T@T)
(declare-fun $generated@@185 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@186 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@218 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@5 $generated@@6) 0) (= ($generated@@5 $generated@@7) 1)) (= ($generated@@5 $generated@@8) 2)) (forall (($generated@@15 Bool) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Int) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Real) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4)
)
(assert (= ($generated@@5 $generated@@23) 3))
(assert (forall (($generated@@25 T@U) ($generated@@26 T@U) ($generated@@27 T@U) ) (!  (=> ($generated@@22 $generated@@23 $generated@@27 ($generated@@24 $generated@@25 $generated@@26)) ($generated@@21 $generated@@27))
 :pattern ( ($generated@@21 $generated@@27) ($generated@@22 $generated@@23 $generated@@27 ($generated@@24 $generated@@25 $generated@@26)))
)))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 T@U) ($generated@@33 T@U) ) (! (= ($generated@@22 $generated@@23 ($generated@@28 $generated@@32 $generated@@33) ($generated@@24 $generated@@30 $generated@@31))  (and ($generated@@29 $generated@@32 $generated@@30) ($generated@@29 $generated@@33 $generated@@31)))
 :pattern ( ($generated@@22 $generated@@23 ($generated@@28 $generated@@32 $generated@@33) ($generated@@24 $generated@@30 $generated@@31)))
)))
(assert  (and (and (and (and (and (forall (($generated@@41 T@T) ($generated@@42 T@T) ($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ) (! (= ($generated@@37 $generated@@41 $generated@@42 ($generated@@38 $generated@@41 $generated@@42 $generated@@44 $generated@@45 $generated@@43) $generated@@45) $generated@@43)
 :weight 0
)) (forall (($generated@@46 T@T) ($generated@@47 T@T) ($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ) (!  (or (= $generated@@50 $generated@@51) (= ($generated@@37 $generated@@46 $generated@@47 ($generated@@38 $generated@@46 $generated@@47 $generated@@49 $generated@@50 $generated@@48) $generated@@51) ($generated@@37 $generated@@46 $generated@@47 $generated@@49 $generated@@51)))
 :weight 0
))) (forall (($generated@@52 T@T) ($generated@@53 T@T) ) (= ($generated@@5 ($generated@@34 $generated@@52 $generated@@53)) 4))) (forall (($generated@@54 T@T) ($generated@@55 T@T) ) (! (= ($generated@@39 ($generated@@34 $generated@@54 $generated@@55)) $generated@@54)
 :pattern ( ($generated@@34 $generated@@54 $generated@@55))
))) (forall (($generated@@56 T@T) ($generated@@57 T@T) ) (! (= ($generated@@40 ($generated@@34 $generated@@56 $generated@@57)) $generated@@57)
 :pattern ( ($generated@@34 $generated@@56 $generated@@57))
))) (= ($generated@@5 $generated@@35) 5)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@22 ($generated@@34 $generated@@35 $generated@@6) $generated@@58 ($generated@@36 $generated@@59)) (forall (($generated@@60 T@U) ) (!  (=> ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 $generated@@58 $generated@@60)) ($generated@@29 $generated@@60 $generated@@59))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 $generated@@58 $generated@@60))
)))
 :pattern ( ($generated@@22 ($generated@@34 $generated@@35 $generated@@6) $generated@@58 ($generated@@36 $generated@@59)))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@T) ) (! (= ($generated@@61 $generated@@63 $generated@@62) $generated@@62)
 :pattern ( ($generated@@61 $generated@@63 $generated@@62))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (!  (=> ($generated@@65 $generated@@71) (= ($generated@@64 $generated@@23 ($generated@@28 $generated@@69 $generated@@70) ($generated@@24 $generated@@67 $generated@@68) $generated@@71)  (and ($generated@@66 $generated@@69 $generated@@67 $generated@@71) ($generated@@66 $generated@@70 $generated@@68 $generated@@71))))
 :pattern ( ($generated@@64 $generated@@23 ($generated@@28 $generated@@69 $generated@@70) ($generated@@24 $generated@@67 $generated@@68) $generated@@71))
)))
(assert (forall (($generated@@73 T@U) ) (! (= ($generated@@21 $generated@@73) (= ($generated@@72 $generated@@73) $generated@@2))
 :pattern ( ($generated@@21 $generated@@73))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@T) ) (! (= ($generated@@75 $generated@@77 ($generated@@74 $generated@@77 $generated@@76)) $generated@@76)
 :pattern ( ($generated@@74 $generated@@77 $generated@@76))
)))
(assert (= ($generated@@5 $generated@@81) 6))
(assert  (=> (<= 0 $generated@@78) (forall (($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ) (!  (=> (or ($generated@@80 $generated@@85 $generated@@86 $generated@@87) (and (< 0 $generated@@78) ($generated@@22 $generated@@81 $generated@@87 ($generated@@82 $generated@@85 $generated@@86)))) (= ($generated@@79 $generated@@85 $generated@@86 $generated@@87) ($generated@@83 $generated@@85 ($generated@@84 $generated@@87))))
 :pattern ( ($generated@@79 $generated@@85 $generated@@86 $generated@@87))
))))
(assert (forall (($generated@@88 T@U) ) (!  (=> ($generated@@21 $generated@@88) (exists (($generated@@89 T@U) ($generated@@90 T@U) ) (= $generated@@88 ($generated@@28 $generated@@89 $generated@@90))))
 :pattern ( ($generated@@21 $generated@@88))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@T) ) (! (= ($generated@@66 ($generated@@75 $generated@@94 $generated@@91) $generated@@92 $generated@@93) ($generated@@64 $generated@@94 $generated@@91 $generated@@92 $generated@@93))
 :pattern ( ($generated@@66 ($generated@@75 $generated@@94 $generated@@91) $generated@@92 $generated@@93))
)))
(assert (forall (($generated@@96 T@U) ) (!  (not ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@95) $generated@@96)))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@95) $generated@@96))
)))
(assert  (=> (<= 0 $generated@@78) (forall (($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ) (!  (=> (or ($generated@@80 $generated@@97 $generated@@98 ($generated@@61 $generated@@81 $generated@@99)) (and (< 0 $generated@@78) ($generated@@22 $generated@@81 $generated@@99 ($generated@@82 $generated@@97 $generated@@98)))) (= ($generated@@79 $generated@@97 $generated@@98 ($generated@@61 $generated@@81 $generated@@99)) ($generated@@83 $generated@@97 ($generated@@84 $generated@@99))))
 :weight 3
 :pattern ( ($generated@@79 $generated@@97 $generated@@98 ($generated@@61 $generated@@81 $generated@@99)))
))))
(assert (forall (($generated@@100 T@U) ) (!  (or (= $generated@@100 $generated@@95) (exists (($generated@@101 T@U) ) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@100) $generated@@101))))
 :pattern ( ($generated@@84 $generated@@100))
)))
(assert (forall (($generated@@103 T@U) ) (!  (or (= $generated@@103 $generated@@95) (exists (($generated@@104 T@U) ) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@102 $generated@@103) $generated@@104))))
 :pattern ( ($generated@@102 $generated@@103))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ) (! (= ($generated@@64 ($generated@@34 $generated@@35 $generated@@6) $generated@@105 ($generated@@36 $generated@@106) $generated@@107) (forall (($generated@@108 T@U) ) (!  (=> ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 $generated@@105 $generated@@108)) ($generated@@66 $generated@@108 $generated@@106 $generated@@107))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 $generated@@105 $generated@@108))
)))
 :pattern ( ($generated@@64 ($generated@@34 $generated@@35 $generated@@6) $generated@@105 ($generated@@36 $generated@@106) $generated@@107))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ) (! (= ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@109 $generated@@113) $generated@@114))  (and ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@113) ($generated@@110 ($generated@@74 $generated@@23 $generated@@114)))) (= ($generated@@37 $generated@@35 $generated@@35 ($generated@@111 $generated@@113) ($generated@@110 ($generated@@74 $generated@@23 $generated@@114))) ($generated@@112 ($generated@@74 $generated@@23 $generated@@114)))))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@109 $generated@@113) $generated@@114))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ) (! (= ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@102 $generated@@115) $generated@@116)) (exists (($generated@@117 T@U) ) (!  (and ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@115) $generated@@117)) (= $generated@@116 ($generated@@37 $generated@@35 $generated@@35 ($generated@@111 $generated@@115) $generated@@117)))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@115) $generated@@117))
 :pattern ( ($generated@@37 $generated@@35 $generated@@35 ($generated@@111 $generated@@115) $generated@@117))
)))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@102 $generated@@115) $generated@@116))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@64 $generated@@81 $generated@@118 ($generated@@82 $generated@@119 $generated@@120) $generated@@121) (forall (($generated@@122 T@U) ) (!  (=> ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@118) $generated@@122)) (and ($generated@@66 ($generated@@37 $generated@@35 $generated@@35 ($generated@@111 $generated@@118) $generated@@122) $generated@@120 $generated@@121) ($generated@@66 $generated@@122 $generated@@119 $generated@@121)))
 :pattern ( ($generated@@37 $generated@@35 $generated@@35 ($generated@@111 $generated@@118) $generated@@122))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@118) $generated@@122))
)))
 :pattern ( ($generated@@64 $generated@@81 $generated@@118 ($generated@@82 $generated@@119 $generated@@120) $generated@@121))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ) (!  (=> ($generated@@123 $generated@@124 $generated@@125) (= $generated@@124 $generated@@125))
 :pattern ( ($generated@@123 $generated@@124 $generated@@125))
)))
(assert (forall (($generated@@127 T@U) ) (! (= (= $generated@@127 $generated@@95) (= ($generated@@84 $generated@@127) $generated@@126))
 :pattern ( ($generated@@84 $generated@@127))
)))
(assert (forall (($generated@@128 T@U) ) (! (= (= $generated@@128 $generated@@95) (= ($generated@@102 $generated@@128) $generated@@126))
 :pattern ( ($generated@@102 $generated@@128))
)))
(assert (forall (($generated@@129 T@U) ) (! (= (= $generated@@129 $generated@@95) (= ($generated@@109 $generated@@129) $generated@@126))
 :pattern ( ($generated@@109 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ) (!  (or (= $generated@@130 $generated@@95) (exists (($generated@@131 T@U) ($generated@@132 T@U) ) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@109 $generated@@130) ($generated@@75 $generated@@23 ($generated@@28 $generated@@131 $generated@@132))))))
 :pattern ( ($generated@@109 $generated@@130))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@T) ) (! (= ($generated@@29 ($generated@@75 $generated@@135 $generated@@133) $generated@@134) ($generated@@22 $generated@@135 $generated@@133 $generated@@134))
 :pattern ( ($generated@@29 ($generated@@75 $generated@@135 $generated@@133) $generated@@134))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ) (! (= ($generated@@136 ($generated@@82 $generated@@137 $generated@@138)) $generated@@137)
 :pattern ( ($generated@@82 $generated@@137 $generated@@138))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@U) ) (! (= ($generated@@139 ($generated@@82 $generated@@140 $generated@@141)) $generated@@141)
 :pattern ( ($generated@@82 $generated@@140 $generated@@141))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ) (! (= ($generated@@142 ($generated@@82 $generated@@143 $generated@@144)) $generated@@0)
 :pattern ( ($generated@@82 $generated@@143 $generated@@144))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ) (! (= ($generated@@72 ($generated@@28 $generated@@145 $generated@@146)) $generated@@2)
 :pattern ( ($generated@@28 $generated@@145 $generated@@146))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ) (! (= ($generated@@147 ($generated@@24 $generated@@148 $generated@@149)) $generated@@148)
 :pattern ( ($generated@@24 $generated@@148 $generated@@149))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ) (! (= ($generated@@150 ($generated@@24 $generated@@151 $generated@@152)) $generated@@152)
 :pattern ( ($generated@@24 $generated@@151 $generated@@152))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ) (! (= ($generated@@110 ($generated@@28 $generated@@153 $generated@@154)) $generated@@153)
 :pattern ( ($generated@@28 $generated@@153 $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@112 ($generated@@28 $generated@@155 $generated@@156)) $generated@@156)
 :pattern ( ($generated@@28 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ) (! (= ($generated@@157 ($generated@@36 $generated@@158)) $generated@@158)
 :pattern ( ($generated@@36 $generated@@158))
)))
(assert (forall (($generated@@159 T@U) ) (! (= ($generated@@142 ($generated@@36 $generated@@159)) $generated)
 :pattern ( ($generated@@36 $generated@@159))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@T) ) (! (= ($generated@@74 $generated@@161 ($generated@@75 $generated@@161 $generated@@160)) $generated@@160)
 :pattern ( ($generated@@75 $generated@@161 $generated@@160))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ) (! (= ($generated@@22 $generated@@81 $generated@@162 ($generated@@82 $generated@@163 $generated@@164)) (forall (($generated@@165 T@U) ) (!  (=> ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@162) $generated@@165)) (and ($generated@@29 ($generated@@37 $generated@@35 $generated@@35 ($generated@@111 $generated@@162) $generated@@165) $generated@@164) ($generated@@29 $generated@@165 $generated@@163)))
 :pattern ( ($generated@@37 $generated@@35 $generated@@35 ($generated@@111 $generated@@162) $generated@@165))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@162) $generated@@165))
)))
 :pattern ( ($generated@@22 $generated@@81 $generated@@162 ($generated@@82 $generated@@163 $generated@@164)))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (! (< ($generated@@166 $generated@@168) ($generated@@167 ($generated@@28 $generated@@168 $generated@@169)))
 :pattern ( ($generated@@28 $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ) (! (< ($generated@@166 $generated@@171) ($generated@@167 ($generated@@28 $generated@@170 $generated@@171)))
 :pattern ( ($generated@@28 $generated@@170 $generated@@171))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ) (! (= ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@83 $generated@@172 $generated@@173) $generated@@174))  (and ($generated@@29 $generated@@174 $generated@@172) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 $generated@@173 $generated@@174))))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@83 $generated@@172 $generated@@173) $generated@@174))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ) (!  (=> ($generated@@29 $generated@@175 ($generated@@82 $generated@@176 $generated@@177)) (and (= ($generated@@75 $generated@@81 ($generated@@74 $generated@@81 $generated@@175)) $generated@@175) ($generated@@22 $generated@@81 ($generated@@74 $generated@@81 $generated@@175) ($generated@@82 $generated@@176 $generated@@177))))
 :pattern ( ($generated@@29 $generated@@175 ($generated@@82 $generated@@176 $generated@@177)))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ) (!  (=> ($generated@@29 $generated@@180 ($generated@@24 $generated@@178 $generated@@179)) (and (= ($generated@@75 $generated@@23 ($generated@@74 $generated@@23 $generated@@180)) $generated@@180) ($generated@@22 $generated@@23 ($generated@@74 $generated@@23 $generated@@180) ($generated@@24 $generated@@178 $generated@@179))))
 :pattern ( ($generated@@29 $generated@@180 ($generated@@24 $generated@@178 $generated@@179)))
)))
(assert (forall (($generated@@181 T@U) ) (!  (not ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 $generated@@126 $generated@@181)))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 $generated@@126 $generated@@181))
)))
(assert  (and (and (and (forall (($generated@@187 T@T) ($generated@@188 T@T) ($generated@@189 T@T) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ) (! (= ($generated@@182 $generated@@187 $generated@@188 $generated@@189 ($generated@@186 $generated@@187 $generated@@188 $generated@@189 $generated@@191 $generated@@192 $generated@@193 $generated@@190) $generated@@192 $generated@@193) $generated@@190)
 :weight 0
)) (and (forall (($generated@@194 T@T) ($generated@@195 T@T) ($generated@@196 T@T) ($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ) (!  (or (= $generated@@199 $generated@@201) (= ($generated@@182 $generated@@194 $generated@@195 $generated@@196 ($generated@@186 $generated@@194 $generated@@195 $generated@@196 $generated@@198 $generated@@199 $generated@@200 $generated@@197) $generated@@201 $generated@@202) ($generated@@182 $generated@@194 $generated@@195 $generated@@196 $generated@@198 $generated@@201 $generated@@202)))
 :weight 0
)) (forall (($generated@@203 T@T) ($generated@@204 T@T) ($generated@@205 T@T) ($generated@@206 T@U) ($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ) (!  (or (= $generated@@209 $generated@@211) (= ($generated@@182 $generated@@203 $generated@@204 $generated@@205 ($generated@@186 $generated@@203 $generated@@204 $generated@@205 $generated@@207 $generated@@208 $generated@@209 $generated@@206) $generated@@210 $generated@@211) ($generated@@182 $generated@@203 $generated@@204 $generated@@205 $generated@@207 $generated@@210 $generated@@211)))
 :weight 0
)))) (= ($generated@@5 $generated@@183) 7)) (= ($generated@@5 $generated@@184) 8)))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 Bool) ($generated@@216 T@U) ($generated@@217 T@U) ) (! (= ($generated@@10 ($generated@@182 $generated@@183 $generated@@184 $generated@@6 ($generated@@185 $generated@@212 $generated@@213 $generated@@214 $generated@@215) $generated@@216 $generated@@217))  (=> (and (or (not (= $generated@@216 $generated@@212)) (not true)) ($generated@@10 ($generated@@74 $generated@@6 ($generated@@37 $generated@@184 $generated@@35 ($generated@@37 $generated@@183 ($generated@@34 $generated@@184 $generated@@35) $generated@@213 $generated@@216) $generated@@214)))) $generated@@215))
 :pattern ( ($generated@@182 $generated@@183 $generated@@184 $generated@@6 ($generated@@185 $generated@@212 $generated@@213 $generated@@214 $generated@@215) $generated@@216 $generated@@217))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ) (!  (and (= ($generated@@142 ($generated@@24 $generated@@219 $generated@@220)) $generated@@3) (= ($generated@@218 ($generated@@24 $generated@@219 $generated@@220)) $generated@@4))
 :pattern ( ($generated@@24 $generated@@219 $generated@@220))
)))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@U) ) (! (= ($generated@@123 $generated@@221 $generated@@222)  (and (forall (($generated@@223 T@U) ) (= ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@221) $generated@@223)) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@222) $generated@@223)))) (forall (($generated@@224 T@U) )  (=> ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@221) $generated@@224)) (= ($generated@@37 $generated@@35 $generated@@35 ($generated@@111 $generated@@221) $generated@@224) ($generated@@37 $generated@@35 $generated@@35 ($generated@@111 $generated@@222) $generated@@224))))))
 :pattern ( ($generated@@123 $generated@@221 $generated@@222))
)))
(assert  (=> (<= 0 $generated@@78) (forall (($generated@@225 T@U) ($generated@@226 T@U) ($generated@@227 T@U) ($generated@@228 T@U) ) (!  (=> (and (or ($generated@@80 $generated@@226 $generated@@227 $generated@@228) (and (< 0 $generated@@78) (and ($generated@@22 $generated@@81 $generated@@228 ($generated@@82 $generated@@226 $generated@@227)) ($generated@@64 $generated@@81 $generated@@228 ($generated@@82 $generated@@226 $generated@@227) $generated@@225)))) ($generated@@65 $generated@@225)) ($generated@@64 ($generated@@34 $generated@@35 $generated@@6) ($generated@@79 $generated@@226 $generated@@227 $generated@@228) ($generated@@36 $generated@@226) $generated@@225))
 :pattern ( ($generated@@64 ($generated@@34 $generated@@35 $generated@@6) ($generated@@79 $generated@@226 $generated@@227 $generated@@228) ($generated@@36 $generated@@226) $generated@@225))
))))
(assert (forall (($generated@@229 T@U) ) (! (= ($generated@@166 ($generated@@75 $generated@@23 $generated@@229)) ($generated@@167 $generated@@229))
 :pattern ( ($generated@@166 ($generated@@75 $generated@@23 $generated@@229)))
)))
(assert (forall (($generated@@230 T@U) ($generated@@231 T@U) ) (!  (=> ($generated@@29 $generated@@230 ($generated@@36 $generated@@231)) (and (= ($generated@@75 ($generated@@34 $generated@@35 $generated@@6) ($generated@@74 ($generated@@34 $generated@@35 $generated@@6) $generated@@230)) $generated@@230) ($generated@@22 ($generated@@34 $generated@@35 $generated@@6) ($generated@@74 ($generated@@34 $generated@@35 $generated@@6) $generated@@230) ($generated@@36 $generated@@231))))
 :pattern ( ($generated@@29 $generated@@230 ($generated@@36 $generated@@231)))
)))
(assert (forall (($generated@@232 T@U) ($generated@@233 T@U) ($generated@@234 T@U) ) (!  (=> (and ($generated@@65 $generated@@234) (and ($generated@@21 $generated@@232) (exists (($generated@@235 T@U) ) (! ($generated@@64 $generated@@23 $generated@@232 ($generated@@24 $generated@@233 $generated@@235) $generated@@234)
 :pattern ( ($generated@@64 $generated@@23 $generated@@232 ($generated@@24 $generated@@233 $generated@@235) $generated@@234))
)))) ($generated@@66 ($generated@@110 $generated@@232) $generated@@233 $generated@@234))
 :pattern ( ($generated@@66 ($generated@@110 $generated@@232) $generated@@233 $generated@@234))
)))
(assert (forall (($generated@@236 T@U) ($generated@@237 T@U) ($generated@@238 T@U) ) (!  (=> (and ($generated@@65 $generated@@238) (and ($generated@@21 $generated@@236) (exists (($generated@@239 T@U) ) (! ($generated@@64 $generated@@23 $generated@@236 ($generated@@24 $generated@@239 $generated@@237) $generated@@238)
 :pattern ( ($generated@@64 $generated@@23 $generated@@236 ($generated@@24 $generated@@239 $generated@@237) $generated@@238))
)))) ($generated@@66 ($generated@@112 $generated@@236) $generated@@237 $generated@@238))
 :pattern ( ($generated@@66 ($generated@@112 $generated@@236) $generated@@237 $generated@@238))
)))
(assert (forall (($generated@@240 T@U) ($generated@@241 T@U) ) (! (= ($generated@@28 ($generated@@61 $generated@@35 $generated@@240) ($generated@@61 $generated@@35 $generated@@241)) ($generated@@61 $generated@@23 ($generated@@28 $generated@@240 $generated@@241)))
 :pattern ( ($generated@@28 ($generated@@61 $generated@@35 $generated@@240) ($generated@@61 $generated@@35 $generated@@241)))
)))
(assert (forall (($generated@@242 T@U) ($generated@@243 T@T) ) (! (= ($generated@@75 $generated@@243 ($generated@@61 $generated@@243 $generated@@242)) ($generated@@61 $generated@@35 ($generated@@75 $generated@@243 $generated@@242)))
 :pattern ( ($generated@@75 $generated@@243 ($generated@@61 $generated@@243 $generated@@242)))
)))
(assert  (=> (<= 0 $generated@@78) (forall (($generated@@244 T@U) ($generated@@245 T@U) ($generated@@246 T@U) ) (!  (=> (or ($generated@@80 $generated@@244 $generated@@245 $generated@@246) (and (< 0 $generated@@78) ($generated@@22 $generated@@81 $generated@@246 ($generated@@82 $generated@@244 $generated@@245)))) (and (and (forall (($generated@@247 T@U) ) (!  (=> ($generated@@29 $generated@@247 $generated@@244) (=> ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@244 $generated@@245 $generated@@246) $generated@@247)) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@246) $generated@@247))))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@246) $generated@@247))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@244 $generated@@245 $generated@@246) $generated@@247))
)) (forall (($generated@@248 T@U) ) (!  (=> ($generated@@29 $generated@@248 $generated@@244) (=> ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@246) $generated@@248)) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@244 $generated@@245 $generated@@246) $generated@@248))))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@244 $generated@@245 $generated@@246) $generated@@248))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@246) $generated@@248))
))) ($generated@@22 ($generated@@34 $generated@@35 $generated@@6) ($generated@@79 $generated@@244 $generated@@245 $generated@@246) ($generated@@36 $generated@@244))))
 :pattern ( ($generated@@79 $generated@@244 $generated@@245 $generated@@246))
))))
(assert (forall (($generated@@249 T@U) ($generated@@250 T@U) ($generated@@251 T@U) ) (!  (=> ($generated@@22 $generated@@81 $generated@@249 ($generated@@82 $generated@@250 $generated@@251)) (and (and ($generated@@22 ($generated@@34 $generated@@35 $generated@@6) ($generated@@84 $generated@@249) ($generated@@36 $generated@@250)) ($generated@@22 ($generated@@34 $generated@@35 $generated@@6) ($generated@@102 $generated@@249) ($generated@@36 $generated@@251))) ($generated@@22 ($generated@@34 $generated@@35 $generated@@6) ($generated@@109 $generated@@249) ($generated@@36 ($generated@@24 $generated@@250 $generated@@251)))))
 :pattern ( ($generated@@22 $generated@@81 $generated@@249 ($generated@@82 $generated@@250 $generated@@251)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@252 () T@U)
(declare-fun $generated@@253 () T@U)
(declare-fun $generated@@254 () T@U)
(declare-fun $generated@@255 () T@U)
(declare-fun $generated@@256 () T@U)
(declare-fun $generated@@257 () T@U)
(declare-fun $generated@@258 () T@U)
(declare-fun $generated@@259 () T@U)
(declare-fun $generated@@260 () T@U)
(declare-fun $generated@@261 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 19) (let (($generated@@262 true))
(let (($generated@@263  (=> (and (=> ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@253)) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@254 $generated@@255 $generated@@252) $generated@@253))) (= (ControlFlow 0 12) 9)) $generated@@262)))
(let (($generated@@264  (=> (and ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@253)) ($generated@@64 $generated@@81 $generated@@252 ($generated@@82 $generated@@254 $generated@@255) $generated@@256)) (and (=> (= (ControlFlow 0 10) (- 0 11)) ($generated@@123 $generated@@252 $generated@@252)) (=> ($generated@@123 $generated@@252 $generated@@252) (=> (or ($generated@@123 $generated@@252 $generated@@252) ($generated@@80 $generated@@254 $generated@@255 $generated@@252)) (=> (and ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@254 $generated@@255 $generated@@252) $generated@@253)) (= (ControlFlow 0 10) 9)) $generated@@262)))))))
(let (($generated@@265  (=> (forall (($generated@@266 T@U) ) (!  (=> ($generated@@29 $generated@@266 $generated@@254) (=> ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@254 $generated@@255 $generated@@252) $generated@@266)) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@266))))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@266))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@254 $generated@@255 $generated@@252) $generated@@266))
)) (=> (and ($generated@@29 $generated@@253 $generated@@254) ($generated@@66 $generated@@253 $generated@@254 $generated@@256)) (and (=> (= (ControlFlow 0 13) 10) $generated@@264) (=> (= (ControlFlow 0 13) 12) $generated@@263))))))
(let (($generated@@267  (=> (and (=> ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@254 $generated@@255 $generated@@252) $generated@@257)) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@257))) (= (ControlFlow 0 16) 13)) $generated@@265)))
(let (($generated@@268  (=> ($generated@@64 $generated@@81 $generated@@252 ($generated@@82 $generated@@254 $generated@@255) $generated@@256) (and (=> (= (ControlFlow 0 14) (- 0 15)) ($generated@@123 $generated@@252 $generated@@252)) (=> ($generated@@123 $generated@@252 $generated@@252) (=> (and (and (or ($generated@@123 $generated@@252 $generated@@252) ($generated@@80 $generated@@254 $generated@@255 $generated@@252)) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@254 $generated@@255 $generated@@252) $generated@@257))) (and ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@257)) (= (ControlFlow 0 14) 13))) $generated@@265))))))
(let (($generated@@269  (=> ($generated@@22 ($generated@@34 $generated@@35 $generated@@6) ($generated@@79 $generated@@254 $generated@@255 $generated@@252) ($generated@@36 $generated@@254)) (=> (and ($generated@@29 $generated@@257 $generated@@254) ($generated@@66 $generated@@257 $generated@@254 $generated@@256)) (and (=> (= (ControlFlow 0 17) 14) $generated@@268) (=> (= (ControlFlow 0 17) 16) $generated@@267))))))
(let (($generated@@270  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($generated@@271 T@U) ) (!  (=> ($generated@@29 $generated@@271 $generated@@254) (=> ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@254 $generated@@255 $generated@@252) $generated@@271)) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@271))))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@271))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@254 $generated@@255 $generated@@252) $generated@@271))
))) (=> (forall (($generated@@272 T@U) ) (!  (=> ($generated@@29 $generated@@272 $generated@@254) (=> ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@254 $generated@@255 $generated@@252) $generated@@272)) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@272))))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@272))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@254 $generated@@255 $generated@@252) $generated@@272))
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall (($generated@@273 T@U) ) (!  (=> ($generated@@29 $generated@@273 $generated@@254) (=> ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@273)) ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@254 $generated@@255 $generated@@252) $generated@@273))))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@79 $generated@@254 $generated@@255 $generated@@252) $generated@@273))
 :pattern ( ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@273))
)))))))
(let (($generated@@274  (=> (= ($generated@@79 $generated@@254 $generated@@255 $generated@@252) ($generated@@83 $generated@@254 ($generated@@84 $generated@@252))) (=> (and ($generated@@22 ($generated@@34 $generated@@35 $generated@@6) ($generated@@79 $generated@@254 $generated@@255 $generated@@252) ($generated@@36 $generated@@254)) (= (ControlFlow 0 4) 2)) $generated@@270))))
(let (($generated@@275  (=> (and (not ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@258))) (= (ControlFlow 0 7) 4)) $generated@@274)))
(let (($generated@@276  (=> (and ($generated@@10 ($generated@@37 $generated@@35 $generated@@6 ($generated@@84 $generated@@252) $generated@@258)) (= (ControlFlow 0 6) 4)) $generated@@274)))
(let (($generated@@277  (=> (and ($generated@@29 $generated@@258 $generated@@254) ($generated@@66 $generated@@258 $generated@@254 $generated@@256)) (and (=> (= (ControlFlow 0 8) 6) $generated@@276) (=> (= (ControlFlow 0 8) 7) $generated@@275)))))
(let (($generated@@278  (=> (and (not (and ($generated@@29 $generated@@258 $generated@@254) ($generated@@66 $generated@@258 $generated@@254 $generated@@256))) (= (ControlFlow 0 5) 4)) $generated@@274)))
(let (($generated@@279  (=> (= $generated@@259 ($generated@@185 $generated@@260 $generated@@256 $generated@@1 false)) (and (and (=> (= (ControlFlow 0 18) 17) $generated@@269) (=> (= (ControlFlow 0 18) 8) $generated@@277)) (=> (= (ControlFlow 0 18) 5) $generated@@278)))))
(let (($generated@@280  (=> (and (and (and ($generated@@65 $generated@@256) ($generated@@261 $generated@@256)) ($generated@@22 $generated@@81 $generated@@252 ($generated@@82 $generated@@254 $generated@@255))) (and (= 0 $generated@@78) (= (ControlFlow 0 19) 18))) $generated@@279)))
$generated@@280))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)