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
(declare-fun $generated@@14 () T@U)
(declare-fun $generated@@15 () T@U)
(declare-fun $generated@@16 () T@U)
(declare-fun $generated@@17 () T@U)
(declare-fun $generated@@18 () T@U)
(declare-fun $generated@@19 () T@U)
(declare-fun $generated@@20 (T@T) Int)
(declare-fun $generated@@21 () T@T)
(declare-fun $generated@@22 () T@T)
(declare-fun $generated@@23 () T@T)
(declare-fun $generated@@24 (Bool) T@U)
(declare-fun $generated@@25 (T@U) Bool)
(declare-fun $generated@@26 (Int) T@U)
(declare-fun $generated@@27 (T@U) Int)
(declare-fun $generated@@28 (Real) T@U)
(declare-fun $generated@@29 (T@U) Real)
(declare-fun $generated@@36 (T@U T@U T@U) Bool)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@39 (T@U) Int)
(declare-fun $generated@@40 (T@U) T@U)
(declare-fun $generated@@41 (T@U) T@U)
(declare-fun $generated@@42 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@44 (T@U) T@U)
(declare-fun $generated@@48 () T@U)
(declare-fun $generated@@49 () T@U)
(declare-fun $generated@@52 () T@U)
(declare-fun $generated@@53 () T@U)
(declare-fun $generated@@56 () T@U)
(declare-fun $generated@@57 () T@U)
(declare-fun $generated@@60 (T@T T@U T@U) Bool)
(declare-fun $generated@@61 (T@U T@U) T@U)
(declare-fun $generated@@64 () T@U)
(declare-fun $generated@@65 (T@T T@U) T@U)
(declare-fun $generated@@66 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@67 () T@T)
(declare-fun $generated@@68 () T@T)
(declare-fun $generated@@69 (T@T T@T) T@T)
(declare-fun $generated@@70 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@71 (T@T) T@T)
(declare-fun $generated@@72 (T@T) T@T)
(declare-fun $generated@@93 () T@U)
(declare-fun $generated@@94 (T@U T@U) T@U)
(declare-fun $generated@@95 (T@U) Bool)
(declare-fun $generated@@102 (T@U T@U) Bool)
(declare-fun $generated@@106 (T@T T@U) T@U)
(declare-fun $generated@@109 (T@U T@U) T@U)
(declare-fun $generated@@113 (T@U) Bool)
(declare-fun $generated@@114 (T@U) T@U)
(declare-fun $generated@@125 (T@U) T@U)
(declare-fun $generated@@128 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@129 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@130 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@185 (T@U) T@U)
(declare-fun $generated@@188 (T@U) T@U)
(declare-fun $generated@@191 (T@U) T@U)
(declare-fun $generated@@194 (T@U) T@U)
(declare-fun $generated@@197 (T@U) T@U)
(declare-fun $generated@@206 (T@U) T@U)
(declare-fun $generated@@208 (T@U) T@U)
(declare-fun $generated@@221 (T@U) Bool)
(declare-fun $generated@@223 (T@U) Bool)
(declare-fun $generated@@225 (T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@20 $generated@@21) 0) (= ($generated@@20 $generated@@22) 1)) (= ($generated@@20 $generated@@23) 2)) (forall (($generated@@30 Bool) ) (! (= ($generated@@25 ($generated@@24 $generated@@30)) $generated@@30)
 :pattern ( ($generated@@24 $generated@@30))
))) (forall (($generated@@31 T@U) ) (! (= ($generated@@24 ($generated@@25 $generated@@31)) $generated@@31)
 :pattern ( ($generated@@25 $generated@@31))
))) (forall (($generated@@32 Int) ) (! (= ($generated@@27 ($generated@@26 $generated@@32)) $generated@@32)
 :pattern ( ($generated@@26 $generated@@32))
))) (forall (($generated@@33 T@U) ) (! (= ($generated@@26 ($generated@@27 $generated@@33)) $generated@@33)
 :pattern ( ($generated@@27 $generated@@33))
))) (forall (($generated@@34 Real) ) (! (= ($generated@@29 ($generated@@28 $generated@@34)) $generated@@34)
 :pattern ( ($generated@@28 $generated@@34))
))) (forall (($generated@@35 T@U) ) (! (= ($generated@@28 ($generated@@29 $generated@@35)) $generated@@35)
 :pattern ( ($generated@@29 $generated@@35))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13 $generated@@14 $generated@@15 $generated@@16 $generated@@17 $generated@@18 $generated@@19)
)
(assert (forall (($generated@@38 T@U) ) ($generated@@36 ($generated@@37 $generated@@38) $generated $generated@@38)))
(assert (= ($generated@@39 $generated@@1) 0))
(assert (= ($generated@@40 $generated) $generated@@0))
(assert (= ($generated@@41 $generated@@1) $generated@@2))
(assert (= ($generated@@20 $generated@@43) 3))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ) (! (= ($generated@@42 $generated@@43 $generated@@46 ($generated@@44 $generated@@45) $generated@@47) ($generated@@42 $generated@@43 $generated@@46 ($generated@@37 $generated@@45) $generated@@47))
 :pattern ( ($generated@@42 $generated@@43 $generated@@46 ($generated@@44 $generated@@45) $generated@@47))
 :pattern ( ($generated@@42 $generated@@43 $generated@@46 ($generated@@37 $generated@@45) $generated@@47))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@U) ) (! (= ($generated@@42 $generated@@43 $generated@@50 $generated@@48 $generated@@51) ($generated@@42 $generated@@43 $generated@@50 $generated@@49 $generated@@51))
 :pattern ( ($generated@@42 $generated@@43 $generated@@50 $generated@@48 $generated@@51))
 :pattern ( ($generated@@42 $generated@@43 $generated@@50 $generated@@49 $generated@@51))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@42 $generated@@43 $generated@@54 $generated@@52 $generated@@55) ($generated@@42 $generated@@43 $generated@@54 $generated@@53 $generated@@55))
 :pattern ( ($generated@@42 $generated@@43 $generated@@54 $generated@@52 $generated@@55))
 :pattern ( ($generated@@42 $generated@@43 $generated@@54 $generated@@53 $generated@@55))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@42 $generated@@43 $generated@@58 $generated@@56 $generated@@59) ($generated@@42 $generated@@43 $generated@@58 $generated@@57 $generated@@59))
 :pattern ( ($generated@@42 $generated@@43 $generated@@58 $generated@@56 $generated@@59))
 :pattern ( ($generated@@42 $generated@@43 $generated@@58 $generated@@57 $generated@@59))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ) (!  (=> ($generated@@60 $generated@@43 $generated@@63 ($generated@@37 $generated@@62)) ($generated@@60 $generated@@43 $generated@@63 ($generated@@61 $generated $generated@@62)))
 :pattern ( ($generated@@60 $generated@@43 $generated@@63 ($generated@@37 $generated@@62)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@73 T@T) ($generated@@74 T@T) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@66 $generated@@73 $generated@@74 ($generated@@70 $generated@@73 $generated@@74 $generated@@76 $generated@@77 $generated@@75) $generated@@77) $generated@@75)
 :weight 0
)) (forall (($generated@@78 T@T) ($generated@@79 T@T) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (!  (or (= $generated@@82 $generated@@83) (= ($generated@@66 $generated@@78 $generated@@79 ($generated@@70 $generated@@78 $generated@@79 $generated@@81 $generated@@82 $generated@@80) $generated@@83) ($generated@@66 $generated@@78 $generated@@79 $generated@@81 $generated@@83)))
 :weight 0
))) (= ($generated@@20 $generated@@67) 4)) (= ($generated@@20 $generated@@68) 5)) (forall (($generated@@84 T@T) ($generated@@85 T@T) ) (= ($generated@@20 ($generated@@69 $generated@@84 $generated@@85)) 6))) (forall (($generated@@86 T@T) ($generated@@87 T@T) ) (! (= ($generated@@71 ($generated@@69 $generated@@86 $generated@@87)) $generated@@86)
 :pattern ( ($generated@@69 $generated@@86 $generated@@87))
))) (forall (($generated@@88 T@T) ($generated@@89 T@T) ) (! (= ($generated@@72 ($generated@@69 $generated@@88 $generated@@89)) $generated@@89)
 :pattern ( ($generated@@69 $generated@@88 $generated@@89))
))))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ) (! (= ($generated@@42 $generated@@43 $generated@@91 ($generated@@37 $generated@@90) $generated@@92)  (or (= $generated@@91 $generated@@64) ($generated@@25 ($generated@@65 $generated@@21 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@92 $generated@@91) $generated@@1)))))
 :pattern ( ($generated@@42 $generated@@43 $generated@@91 ($generated@@37 $generated@@90) $generated@@92))
)))
(assert (= ($generated@@39 $generated@@93) 0))
(assert (= ($generated@@94 $generated@@9 $generated@@19) $generated@@93))
(assert  (not ($generated@@95 $generated@@93)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ) (! (= ($generated@@42 $generated@@43 $generated@@96 $generated@@49 $generated@@97)  (or (= $generated@@96 $generated@@64) ($generated@@25 ($generated@@65 $generated@@21 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@97 $generated@@96) $generated@@1)))))
 :pattern ( ($generated@@42 $generated@@43 $generated@@96 $generated@@49 $generated@@97))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (! (= ($generated@@42 $generated@@43 $generated@@98 $generated@@53 $generated@@99)  (or (= $generated@@98 $generated@@64) ($generated@@25 ($generated@@65 $generated@@21 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@99 $generated@@98) $generated@@1)))))
 :pattern ( ($generated@@42 $generated@@43 $generated@@98 $generated@@53 $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@42 $generated@@43 $generated@@100 $generated@@57 $generated@@101)  (or (= $generated@@100 $generated@@64) ($generated@@25 ($generated@@65 $generated@@21 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@101 $generated@@100) $generated@@1)))))
 :pattern ( ($generated@@42 $generated@@43 $generated@@100 $generated@@57 $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (!  (=> ($generated@@102 $generated@@103 $generated@@104) (forall (($generated@@105 T@U) ) (!  (=> ($generated@@25 ($generated@@65 $generated@@21 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@103 $generated@@105) $generated@@1))) ($generated@@25 ($generated@@65 $generated@@21 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@104 $generated@@105) $generated@@1))))
 :pattern ( ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@104 $generated@@105) $generated@@1))
)))
 :pattern ( ($generated@@102 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@T) ) (! (= ($generated@@106 $generated@@108 ($generated@@65 $generated@@108 $generated@@107)) $generated@@107)
 :pattern ( ($generated@@65 $generated@@108 $generated@@107))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@60 $generated@@43 $generated@@112 ($generated@@109 $generated@@110 $generated@@111))  (and ($generated@@60 $generated@@43 $generated@@112 ($generated@@61 $generated@@110 $generated@@111)) (or (not (= $generated@@112 $generated@@64)) (not true))))
 :pattern ( ($generated@@60 $generated@@43 $generated@@112 ($generated@@109 $generated@@110 $generated@@111)))
 :pattern ( ($generated@@60 $generated@@43 $generated@@112 ($generated@@61 $generated@@110 $generated@@111)))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (!  (=> (and (and ($generated@@113 $generated@@116) (and (or (not (= $generated@@117 $generated@@64)) (not true)) (= ($generated@@114 $generated@@117) ($generated@@37 $generated@@115)))) ($generated@@25 ($generated@@65 $generated@@21 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@116 $generated@@117) $generated@@1)))) ($generated@@42 $generated@@22 ($generated@@65 $generated@@22 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@116 $generated@@117) $generated@@93)) $generated $generated@@116))
 :pattern ( ($generated@@65 $generated@@22 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@116 $generated@@117) $generated@@93)) ($generated@@37 $generated@@115))
)))
(assert ($generated@@95 $generated@@1))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ) (! (= ($generated@@60 $generated@@43 $generated@@119 ($generated@@44 $generated@@118))  (and ($generated@@60 $generated@@43 $generated@@119 ($generated@@37 $generated@@118)) (or (not (= $generated@@119 $generated@@64)) (not true))))
 :pattern ( ($generated@@60 $generated@@43 $generated@@119 ($generated@@44 $generated@@118)))
 :pattern ( ($generated@@60 $generated@@43 $generated@@119 ($generated@@37 $generated@@118)))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@T) ) (!  (=> ($generated@@102 $generated@@120 $generated@@121) (=> ($generated@@42 $generated@@124 $generated@@122 $generated@@123 $generated@@120) ($generated@@42 $generated@@124 $generated@@122 $generated@@123 $generated@@121)))
 :pattern ( ($generated@@102 $generated@@120 $generated@@121) ($generated@@42 $generated@@124 $generated@@122 $generated@@123 $generated@@120))
)))
(assert (forall (($generated@@126 T@U) ) (!  (and (= ($generated@@40 ($generated@@44 $generated@@126)) $generated@@4) (= ($generated@@125 ($generated@@44 $generated@@126)) $generated@@15))
 :pattern ( ($generated@@44 $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ) (!  (and (= ($generated@@40 ($generated@@37 $generated@@127)) $generated@@6) (= ($generated@@125 ($generated@@37 $generated@@127)) $generated@@15))
 :pattern ( ($generated@@37 $generated@@127))
)))
(assert  (and (forall (($generated@@131 T@T) ($generated@@132 T@T) ($generated@@133 T@T) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (! (= ($generated@@128 $generated@@131 $generated@@132 $generated@@133 ($generated@@130 $generated@@131 $generated@@132 $generated@@133 $generated@@135 $generated@@136 $generated@@137 $generated@@134) $generated@@136 $generated@@137) $generated@@134)
 :weight 0
)) (and (forall (($generated@@138 T@T) ($generated@@139 T@T) ($generated@@140 T@T) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (!  (or (= $generated@@143 $generated@@145) (= ($generated@@128 $generated@@138 $generated@@139 $generated@@140 ($generated@@130 $generated@@138 $generated@@139 $generated@@140 $generated@@142 $generated@@143 $generated@@144 $generated@@141) $generated@@145 $generated@@146) ($generated@@128 $generated@@138 $generated@@139 $generated@@140 $generated@@142 $generated@@145 $generated@@146)))
 :weight 0
)) (forall (($generated@@147 T@T) ($generated@@148 T@T) ($generated@@149 T@T) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ) (!  (or (= $generated@@153 $generated@@155) (= ($generated@@128 $generated@@147 $generated@@148 $generated@@149 ($generated@@130 $generated@@147 $generated@@148 $generated@@149 $generated@@151 $generated@@152 $generated@@153 $generated@@150) $generated@@154 $generated@@155) ($generated@@128 $generated@@147 $generated@@148 $generated@@149 $generated@@151 $generated@@154 $generated@@155)))
 :weight 0
)))))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (! (= ($generated@@25 ($generated@@128 $generated@@43 $generated@@67 $generated@@21 ($generated@@129 $generated@@156 $generated@@157 $generated@@158 $generated@@159) $generated@@160 $generated@@161))  (=> (and (or (not (= $generated@@160 $generated@@156)) (not true)) ($generated@@25 ($generated@@65 $generated@@21 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@157 $generated@@160) $generated@@158)))) (= $generated@@160 $generated@@159)))
 :pattern ( ($generated@@128 $generated@@43 $generated@@67 $generated@@21 ($generated@@129 $generated@@156 $generated@@157 $generated@@158 $generated@@159) $generated@@160 $generated@@161))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ) (! (= ($generated@@42 $generated@@43 $generated@@164 ($generated@@109 $generated@@162 $generated@@163) $generated@@165) ($generated@@42 $generated@@43 $generated@@164 ($generated@@61 $generated@@162 $generated@@163) $generated@@165))
 :pattern ( ($generated@@42 $generated@@43 $generated@@164 ($generated@@109 $generated@@162 $generated@@163) $generated@@165))
 :pattern ( ($generated@@42 $generated@@43 $generated@@164 ($generated@@61 $generated@@162 $generated@@163) $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ) (! (= ($generated@@60 $generated@@43 $generated@@167 ($generated@@37 $generated@@166))  (or (= $generated@@167 $generated@@64) (= ($generated@@114 $generated@@167) ($generated@@37 $generated@@166))))
 :pattern ( ($generated@@60 $generated@@43 $generated@@167 ($generated@@37 $generated@@166)))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ) (!  (=> ($generated@@42 $generated@@43 $generated@@169 ($generated@@37 $generated@@168) $generated@@170) ($generated@@42 $generated@@43 $generated@@169 ($generated@@61 $generated $generated@@168) $generated@@170))
 :pattern ( ($generated@@42 $generated@@43 $generated@@169 ($generated@@37 $generated@@168) $generated@@170))
)))
(assert (forall (($generated@@171 T@U) ) (! (= ($generated@@60 $generated@@43 $generated@@171 $generated@@48)  (and ($generated@@60 $generated@@43 $generated@@171 $generated@@49) (or (not (= $generated@@171 $generated@@64)) (not true))))
 :pattern ( ($generated@@60 $generated@@43 $generated@@171 $generated@@48))
 :pattern ( ($generated@@60 $generated@@43 $generated@@171 $generated@@49))
)))
(assert (forall (($generated@@172 T@U) ) (! (= ($generated@@60 $generated@@43 $generated@@172 $generated@@52)  (and ($generated@@60 $generated@@43 $generated@@172 $generated@@53) (or (not (= $generated@@172 $generated@@64)) (not true))))
 :pattern ( ($generated@@60 $generated@@43 $generated@@172 $generated@@52))
 :pattern ( ($generated@@60 $generated@@43 $generated@@172 $generated@@53))
)))
(assert (forall (($generated@@173 T@U) ) (! (= ($generated@@60 $generated@@43 $generated@@173 $generated@@56)  (and ($generated@@60 $generated@@43 $generated@@173 $generated@@57) (or (not (= $generated@@173 $generated@@64)) (not true))))
 :pattern ( ($generated@@60 $generated@@43 $generated@@173 $generated@@56))
 :pattern ( ($generated@@60 $generated@@43 $generated@@173 $generated@@57))
)))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@U) ) (!  (=> ($generated@@42 $generated@@43 $generated@@174 $generated@@57 $generated@@175) ($generated@@42 $generated@@43 $generated@@174 $generated@@49 $generated@@175))
 :pattern ( ($generated@@42 $generated@@43 $generated@@174 $generated@@57 $generated@@175))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ) (!  (=> ($generated@@42 $generated@@43 $generated@@176 $generated@@57 $generated@@177) ($generated@@42 $generated@@43 $generated@@176 $generated@@53 $generated@@177))
 :pattern ( ($generated@@42 $generated@@43 $generated@@176 $generated@@57 $generated@@177))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (! (= ($generated@@42 $generated@@43 $generated@@180 ($generated@@61 $generated@@178 $generated@@179) $generated@@181)  (or (= $generated@@180 $generated@@64) ($generated@@25 ($generated@@65 $generated@@21 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@181 $generated@@180) $generated@@1)))))
 :pattern ( ($generated@@42 $generated@@43 $generated@@180 ($generated@@61 $generated@@178 $generated@@179) $generated@@181))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ) (!  (=> (or (not (= $generated@@182 $generated@@184)) (not true)) (=> (and ($generated@@102 $generated@@182 $generated@@183) ($generated@@102 $generated@@183 $generated@@184)) ($generated@@102 $generated@@182 $generated@@184)))
 :pattern ( ($generated@@102 $generated@@182 $generated@@183) ($generated@@102 $generated@@183 $generated@@184))
)))
(assert (forall (($generated@@186 T@U) ($generated@@187 T@U) ) (!  (and (= ($generated@@185 ($generated@@94 $generated@@186 $generated@@187)) $generated@@186) (= ($generated@@41 ($generated@@94 $generated@@186 $generated@@187)) $generated@@187))
 :pattern ( ($generated@@94 $generated@@186 $generated@@187))
)))
(assert (forall (($generated@@189 T@U) ($generated@@190 T@U) ) (! (= ($generated@@188 ($generated@@109 $generated@@189 $generated@@190)) $generated@@189)
 :pattern ( ($generated@@109 $generated@@189 $generated@@190))
)))
(assert (forall (($generated@@192 T@U) ($generated@@193 T@U) ) (! (= ($generated@@191 ($generated@@109 $generated@@192 $generated@@193)) $generated@@193)
 :pattern ( ($generated@@109 $generated@@192 $generated@@193))
)))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@U) ) (! (= ($generated@@194 ($generated@@61 $generated@@195 $generated@@196)) $generated@@195)
 :pattern ( ($generated@@61 $generated@@195 $generated@@196))
)))
(assert (forall (($generated@@198 T@U) ($generated@@199 T@U) ) (! (= ($generated@@197 ($generated@@61 $generated@@198 $generated@@199)) $generated@@199)
 :pattern ( ($generated@@61 $generated@@198 $generated@@199))
)))
(assert (forall (($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ) (!  (=> (and ($generated@@113 $generated@@201) (and (or (not (= $generated@@202 $generated@@64)) (not true)) (= ($generated@@114 $generated@@202) ($generated@@37 $generated@@200)))) ($generated@@60 $generated@@22 ($generated@@65 $generated@@22 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@201 $generated@@202) $generated@@93)) $generated))
 :pattern ( ($generated@@65 $generated@@22 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@201 $generated@@202) $generated@@93)) ($generated@@37 $generated@@200))
)))
(assert (forall (($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ) (! (= ($generated@@60 $generated@@43 $generated@@205 ($generated@@61 $generated@@203 $generated@@204))  (or (= $generated@@205 $generated@@64) ($generated@@36 ($generated@@114 $generated@@205) $generated@@203 $generated@@204)))
 :pattern ( ($generated@@60 $generated@@43 $generated@@205 ($generated@@61 $generated@@203 $generated@@204)))
)))
(assert (forall (($generated@@207 T@U) ) (! (= ($generated@@206 ($generated@@44 $generated@@207)) $generated@@207)
 :pattern ( ($generated@@44 $generated@@207))
)))
(assert (forall (($generated@@209 T@U) ) (! (= ($generated@@208 ($generated@@37 $generated@@209)) $generated@@209)
 :pattern ( ($generated@@37 $generated@@209))
)))
(assert (forall (($generated@@210 T@U) ($generated@@211 T@T) ) (! (= ($generated@@65 $generated@@211 ($generated@@106 $generated@@211 $generated@@210)) $generated@@210)
 :pattern ( ($generated@@106 $generated@@211 $generated@@210))
)))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ) (!  (=> ($generated@@60 $generated@@43 $generated@@214 ($generated@@61 $generated@@212 $generated@@213)) ($generated@@60 $generated@@43 $generated@@214 $generated@@57))
 :pattern ( ($generated@@60 $generated@@43 $generated@@214 ($generated@@61 $generated@@212 $generated@@213)))
)))
(assert (forall (($generated@@215 T@U) ($generated@@216 T@U) ) (!  (and (= ($generated@@40 ($generated@@109 $generated@@215 $generated@@216)) $generated@@3) (= ($generated@@125 ($generated@@109 $generated@@215 $generated@@216)) $generated@@14))
 :pattern ( ($generated@@109 $generated@@215 $generated@@216))
)))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ) (!  (and (= ($generated@@40 ($generated@@61 $generated@@217 $generated@@218)) $generated@@13) (= ($generated@@125 ($generated@@61 $generated@@217 $generated@@218)) $generated@@14))
 :pattern ( ($generated@@61 $generated@@217 $generated@@218))
)))
(assert (forall (($generated@@219 T@U) ) (!  (=> ($generated@@60 $generated@@43 $generated@@219 $generated@@57) ($generated@@60 $generated@@43 $generated@@219 $generated@@49))
 :pattern ( ($generated@@60 $generated@@43 $generated@@219 $generated@@57))
)))
(assert (forall (($generated@@220 T@U) ) (!  (=> ($generated@@60 $generated@@43 $generated@@220 $generated@@57) ($generated@@60 $generated@@43 $generated@@220 $generated@@53))
 :pattern ( ($generated@@60 $generated@@43 $generated@@220 $generated@@57))
)))
(assert (= ($generated@@40 $generated@@56) $generated@@5))
(assert (= ($generated@@125 $generated@@56) $generated@@16))
(assert (= ($generated@@40 $generated@@48) $generated@@7))
(assert (= ($generated@@125 $generated@@48) $generated@@17))
(assert (= ($generated@@40 $generated@@52) $generated@@8))
(assert (= ($generated@@125 $generated@@52) $generated@@18))
(assert (= ($generated@@40 $generated@@49) $generated@@10))
(assert (= ($generated@@125 $generated@@49) $generated@@17))
(assert (= ($generated@@40 $generated@@53) $generated@@11))
(assert (= ($generated@@125 $generated@@53) $generated@@18))
(assert (= ($generated@@40 $generated@@57) $generated@@12))
(assert (= ($generated@@125 $generated@@57) $generated@@16))
(assert (forall (($generated@@222 T@U) ) (! (= ($generated@@60 $generated@@43 $generated@@222 $generated@@49)  (or (= $generated@@222 $generated@@64) ($generated@@221 ($generated@@114 $generated@@222))))
 :pattern ( ($generated@@60 $generated@@43 $generated@@222 $generated@@49))
)))
(assert (forall (($generated@@224 T@U) ) (! (= ($generated@@60 $generated@@43 $generated@@224 $generated@@53)  (or (= $generated@@224 $generated@@64) ($generated@@223 ($generated@@114 $generated@@224))))
 :pattern ( ($generated@@60 $generated@@43 $generated@@224 $generated@@53))
)))
(assert (forall (($generated@@226 T@U) ) (! (= ($generated@@60 $generated@@43 $generated@@226 $generated@@57)  (or (= $generated@@226 $generated@@64) ($generated@@225 ($generated@@114 $generated@@226))))
 :pattern ( ($generated@@60 $generated@@43 $generated@@226 $generated@@57))
)))
(assert (forall (($generated@@227 T@U) ($generated@@228 T@U) ($generated@@229 T@U) ($generated@@230 T@U) ) (!  (=> ($generated@@42 $generated@@43 $generated@@229 ($generated@@61 $generated@@227 $generated@@228) $generated@@230) ($generated@@42 $generated@@43 $generated@@229 $generated@@57 $generated@@230))
 :pattern ( ($generated@@42 $generated@@43 $generated@@229 ($generated@@61 $generated@@227 $generated@@228) $generated@@230))
)))
(assert (forall (($generated@@231 T@U) ($generated@@232 T@U) ) (! ($generated@@42 $generated@@22 $generated@@232 $generated $generated@@231)
 :pattern ( ($generated@@42 $generated@@22 $generated@@232 $generated $generated@@231))
)))
(assert (forall (($generated@@233 T@U) ) (! ($generated@@60 $generated@@22 $generated@@233 $generated)
 :pattern ( ($generated@@60 $generated@@22 $generated@@233 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@234 () T@U)
(declare-fun $generated@@235 () T@U)
(declare-fun $generated@@236 () T@U)
(declare-fun $generated@@237 () Int)
(declare-fun $generated@@238 (T@U) Bool)
(declare-fun $generated@@239 () T@U)
(declare-fun $generated@@240 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@241  (=> (= $generated@@234 ($generated@@129 $generated@@64 $generated@@235 $generated@@1 $generated@@236)) (=> (and (= $generated@@237 ($generated@@27 ($generated@@65 $generated@@22 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@235 $generated@@236) $generated@@93)))) (= (ControlFlow 0 2) (- 0 1))) (forall (($generated@@242 T@U) ($generated@@243 T@U) )  (=> (and (and (or (not (= $generated@@242 $generated@@64)) (not true)) ($generated@@25 ($generated@@65 $generated@@21 ($generated@@66 $generated@@67 $generated@@68 ($generated@@66 $generated@@43 ($generated@@69 $generated@@67 $generated@@68) $generated@@235 $generated@@242) $generated@@1)))) (= $generated@@242 $generated@@236)) ($generated@@25 ($generated@@128 $generated@@43 $generated@@67 $generated@@21 $generated@@234 $generated@@242 $generated@@243))))))))
(let (($generated@@244  (=> (and ($generated@@113 $generated@@235) ($generated@@238 $generated@@235)) (=> (and (and (or (not (= $generated@@236 $generated@@64)) (not true)) (and ($generated@@60 $generated@@43 $generated@@236 ($generated@@44 $generated@@239)) ($generated@@42 $generated@@43 $generated@@236 ($generated@@44 $generated@@239) $generated@@235))) (and (= 1 $generated@@240) (= (ControlFlow 0 3) 2))) $generated@@241))))
$generated@@244)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)