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
(declare-fun $generated@@6 (T@T) Int)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 (Bool) T@U)
(declare-fun $generated@@11 (T@U) Bool)
(declare-fun $generated@@12 (Int) T@U)
(declare-fun $generated@@13 (T@U) Int)
(declare-fun $generated@@14 (Real) T@U)
(declare-fun $generated@@15 (T@U) Real)
(declare-fun $generated@@22 (T@U) T@U)
(declare-fun $generated@@23 (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 (Int) T@U)
(declare-fun $generated@@32 (T@U T@U) Bool)
(declare-fun $generated@@36 (T@U T@U) T@U)
(declare-fun $generated@@37 (T@U) Int)
(declare-fun $generated@@41 (T@U) T@U)
(declare-fun $generated@@42 () T@U)
(declare-fun $generated@@49 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@50 () T@T)
(declare-fun $generated@@51 (T@U) T@U)
(declare-fun $generated@@52 (T@U) Bool)
(declare-fun $generated@@55 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@61 (T@T T@U T@U) Bool)
(declare-fun $generated@@63 (T@U T@U) Bool)
(declare-fun $generated@@64 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@65 () T@T)
(declare-fun $generated@@66 () T@T)
(declare-fun $generated@@67 () T@T)
(declare-fun $generated@@68 (T@T T@T) T@T)
(declare-fun $generated@@69 (T@T T@U) T@U)
(declare-fun $generated@@70 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@71 (T@T) T@T)
(declare-fun $generated@@72 (T@T) T@T)
(declare-fun $generated@@93 (Int) Int)
(declare-fun $generated@@95 (T@T T@U) T@U)
(declare-fun $generated@@98 (T@U) Bool)
(declare-fun $generated@@100 (T@U) Bool)
(declare-fun $generated@@102 (T@T T@U) T@U)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@114 (T@U) T@U)
(declare-fun $generated@@116 (T@U) Bool)
(declare-fun $generated@@120 (T@U) Bool)
(declare-fun $generated@@129 (T@U) T@U)
(declare-fun $generated@@140 (T@U) T@U)
(declare-fun $generated@@154 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@155 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@156 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@6 $generated@@7) 0) (= ($generated@@6 $generated@@8) 1)) (= ($generated@@6 $generated@@9) 2)) (forall (($generated@@16 Bool) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Int) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Real) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5)
)
(assert (= ($generated@@22 $generated) $generated@@0))
(assert (forall (($generated@@26 T@U) ($generated@@27 T@U) ($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ($generated@@31 T@U) ) (!  (=> (or (not (= $generated@@28 ($generated@@25 0))) (not true)) (= ($generated@@23 $generated@@26 $generated@@27 $generated@@28 ($generated@@24 $generated@@29) $generated@@30 $generated@@31) ($generated@@23 $generated@@26 $generated@@27 $generated@@28 $generated@@29 $generated@@30 $generated@@31)))
 :pattern ( ($generated@@23 $generated@@26 $generated@@27 $generated@@28 ($generated@@24 $generated@@29) $generated@@30 $generated@@31))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ) (!  (=> (and ($generated@@32 $generated@@33 $generated@@34) ($generated@@32 $generated@@34 $generated@@35)) ($generated@@32 $generated@@33 $generated@@35))
 :pattern ( ($generated@@32 $generated@@33 $generated@@34) ($generated@@32 $generated@@34 $generated@@35))
 :pattern ( ($generated@@32 $generated@@33 $generated@@34) ($generated@@32 $generated@@33 $generated@@35))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 Int) ($generated@@40 Int) ) (!  (=> (and (and (<= 0 $generated@@39) (<= 0 $generated@@40)) (<= (+ $generated@@39 $generated@@40) ($generated@@37 $generated@@38))) (= ($generated@@36 ($generated@@36 $generated@@38 ($generated@@25 $generated@@39)) ($generated@@25 $generated@@40)) ($generated@@36 $generated@@38 ($generated@@25 (+ $generated@@39 $generated@@40)))))
 :pattern ( ($generated@@36 ($generated@@36 $generated@@38 ($generated@@25 $generated@@39)) ($generated@@25 $generated@@40)))
)))
(assert (= ($generated@@41 $generated@@42) $generated@@3))
(assert (forall (($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (!  (=> (= $generated@@47 $generated@@48) ($generated@@23 $generated@@43 $generated@@44 $generated@@45 ($generated@@24 $generated@@46) $generated@@47 $generated@@48))
 :pattern ( ($generated@@23 $generated@@43 $generated@@44 $generated@@45 ($generated@@24 $generated@@46) $generated@@47 $generated@@48))
)))
(assert (= ($generated@@6 $generated@@50) 3))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ) (!  (=> ($generated@@52 $generated@@54) ($generated@@49 $generated@@50 $generated@@42 ($generated@@51 $generated@@53) $generated@@54))
 :pattern ( ($generated@@49 $generated@@50 $generated@@42 ($generated@@51 $generated@@53) $generated@@54))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ) (! (= ($generated@@55 $generated@@56 $generated@@57 ($generated@@24 $generated@@58) $generated@@59 $generated@@60) (= $generated@@59 $generated@@60))
 :pattern ( ($generated@@55 $generated@@56 $generated@@57 ($generated@@24 $generated@@58) $generated@@59 $generated@@60))
)))
(assert (forall (($generated@@62 T@U) ) (! ($generated@@61 $generated@@50 $generated@@42 ($generated@@51 $generated@@62))
 :pattern ( ($generated@@61 $generated@@50 $generated@@42 ($generated@@51 $generated@@62)))
)))
(assert  (and (and (and (and (and (and (and (forall (($generated@@73 T@T) ($generated@@74 T@T) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@64 $generated@@73 $generated@@74 ($generated@@70 $generated@@73 $generated@@74 $generated@@76 $generated@@77 $generated@@75) $generated@@77) $generated@@75)
 :weight 0
)) (forall (($generated@@78 T@T) ($generated@@79 T@T) ($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (!  (or (= $generated@@82 $generated@@83) (= ($generated@@64 $generated@@78 $generated@@79 ($generated@@70 $generated@@78 $generated@@79 $generated@@81 $generated@@82 $generated@@80) $generated@@83) ($generated@@64 $generated@@78 $generated@@79 $generated@@81 $generated@@83)))
 :weight 0
))) (= ($generated@@6 $generated@@65) 4)) (= ($generated@@6 $generated@@66) 5)) (= ($generated@@6 $generated@@67) 6)) (forall (($generated@@84 T@T) ($generated@@85 T@T) ) (= ($generated@@6 ($generated@@68 $generated@@84 $generated@@85)) 7))) (forall (($generated@@86 T@T) ($generated@@87 T@T) ) (! (= ($generated@@71 ($generated@@68 $generated@@86 $generated@@87)) $generated@@86)
 :pattern ( ($generated@@68 $generated@@86 $generated@@87))
))) (forall (($generated@@88 T@T) ($generated@@89 T@T) ) (! (= ($generated@@72 ($generated@@68 $generated@@88 $generated@@89)) $generated@@89)
 :pattern ( ($generated@@68 $generated@@88 $generated@@89))
))))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> ($generated@@63 $generated@@90 $generated@@91) (forall (($generated@@92 T@U) ) (!  (=> ($generated@@11 ($generated@@69 $generated@@7 ($generated@@64 $generated@@65 $generated@@66 ($generated@@64 $generated@@67 ($generated@@68 $generated@@65 $generated@@66) $generated@@90 $generated@@92) $generated@@1))) ($generated@@11 ($generated@@69 $generated@@7 ($generated@@64 $generated@@65 $generated@@66 ($generated@@64 $generated@@67 ($generated@@68 $generated@@65 $generated@@66) $generated@@91 $generated@@92) $generated@@1))))
 :pattern ( ($generated@@64 $generated@@65 $generated@@66 ($generated@@64 $generated@@67 ($generated@@68 $generated@@65 $generated@@66) $generated@@91 $generated@@92) $generated@@1))
)))
 :pattern ( ($generated@@63 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@94 Int) ) (! (= ($generated@@93 $generated@@94) $generated@@94)
 :pattern ( ($generated@@93 $generated@@94))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@T) ) (! (= ($generated@@95 $generated@@97 $generated@@96) $generated@@96)
 :pattern ( ($generated@@95 $generated@@97 $generated@@96))
)))
(assert (forall (($generated@@99 T@U) ) (! (= ($generated@@98 $generated@@99) (= ($generated@@41 $generated@@99) $generated@@3))
 :pattern ( ($generated@@98 $generated@@99))
)))
(assert (forall (($generated@@101 T@U) ) (! (= ($generated@@100 $generated@@101) (= ($generated@@41 $generated@@101) $generated@@4))
 :pattern ( ($generated@@100 $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@T) ) (! (= ($generated@@102 $generated@@104 ($generated@@69 $generated@@104 $generated@@103)) $generated@@103)
 :pattern ( ($generated@@69 $generated@@104 $generated@@103))
)))
(assert (forall (($generated@@105 T@U) ) (!  (=> ($generated@@98 $generated@@105) (= $generated@@105 $generated@@42))
 :pattern ( ($generated@@98 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ) (!  (=> ($generated@@100 $generated@@107) (exists (($generated@@108 T@U) ) (= $generated@@107 ($generated@@106 $generated@@108))))
 :pattern ( ($generated@@100 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@T) ) (!  (=> ($generated@@63 $generated@@109 $generated@@110) (=> ($generated@@49 $generated@@113 $generated@@111 $generated@@112 $generated@@109) ($generated@@49 $generated@@113 $generated@@111 $generated@@112 $generated@@110)))
 :pattern ( ($generated@@63 $generated@@109 $generated@@110) ($generated@@49 $generated@@113 $generated@@111 $generated@@112 $generated@@109))
)))
(assert (forall (($generated@@115 T@U) ) (!  (and (= ($generated@@22 ($generated@@51 $generated@@115)) $generated@@2) (= ($generated@@114 ($generated@@51 $generated@@115)) $generated@@5))
 :pattern ( ($generated@@51 $generated@@115))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ) (!  (=> (and ($generated@@116 $generated@@118) (<= ($generated@@37 $generated@@118) ($generated@@37 $generated@@117))) (and (= ($generated@@116 ($generated@@36 $generated@@117 $generated@@118)) ($generated@@116 $generated@@117)) (= ($generated@@37 ($generated@@36 $generated@@117 $generated@@118)) (- ($generated@@37 $generated@@117) ($generated@@37 $generated@@118)))))
 :pattern ( ($generated@@36 $generated@@117 $generated@@118))
)))
(assert (forall (($generated@@119 Int) ) (!  (=> (<= 0 $generated@@119) (and ($generated@@116 ($generated@@25 $generated@@119)) (= ($generated@@37 ($generated@@25 $generated@@119)) $generated@@119)))
 :pattern ( ($generated@@25 $generated@@119))
)))
(assert (forall (($generated@@121 T@U) ) (!  (=> ($generated@@120 $generated@@121) (or ($generated@@98 $generated@@121) ($generated@@100 $generated@@121)))
 :pattern ( ($generated@@120 $generated@@121))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ) (!  (or (or ($generated@@32 $generated@@122 $generated@@123) (= $generated@@122 $generated@@123)) ($generated@@32 $generated@@123 $generated@@122))
 :pattern ( ($generated@@32 $generated@@122 $generated@@123) ($generated@@32 $generated@@123 $generated@@122))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> ($generated@@52 $generated@@126) (= ($generated@@49 $generated@@50 ($generated@@106 $generated@@125) ($generated@@51 $generated@@124) $generated@@126) ($generated@@49 $generated@@50 $generated@@125 ($generated@@51 $generated@@124) $generated@@126)))
 :pattern ( ($generated@@49 $generated@@50 ($generated@@106 $generated@@125) ($generated@@51 $generated@@124) $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ) (!  (=> ($generated@@61 $generated@@50 $generated@@128 ($generated@@51 $generated@@127)) (or ($generated@@98 $generated@@128) ($generated@@100 $generated@@128)))
 :pattern ( ($generated@@100 $generated@@128) ($generated@@61 $generated@@50 $generated@@128 ($generated@@51 $generated@@127)))
 :pattern ( ($generated@@98 $generated@@128) ($generated@@61 $generated@@50 $generated@@128 ($generated@@51 $generated@@127)))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (!  (=> (and ($generated@@61 $generated@@50 $generated@@134 ($generated@@51 $generated@@130)) ($generated@@61 $generated@@50 $generated@@135 ($generated@@51 $generated@@131))) (= ($generated@@23 $generated@@130 $generated@@131 $generated@@132 ($generated@@24 $generated@@133) $generated@@134 $generated@@135)  (and (=> (< 0 ($generated@@37 $generated@@132)) (or (and ($generated@@98 $generated@@134) ($generated@@98 $generated@@135)) (and (and ($generated@@100 $generated@@134) ($generated@@100 $generated@@135)) (=> (and ($generated@@100 $generated@@134) ($generated@@100 $generated@@135)) ($generated@@23 $generated@@130 $generated@@131 ($generated@@36 $generated@@132 ($generated@@25 1)) $generated@@133 ($generated@@129 $generated@@134) ($generated@@129 $generated@@135)))))) (=> (and (or (not (= $generated@@132 ($generated@@25 0))) (not true)) (= ($generated@@37 $generated@@132) 0)) ($generated@@55 $generated@@130 $generated@@131 $generated@@133 $generated@@134 $generated@@135)))))
 :pattern ( ($generated@@23 $generated@@130 $generated@@131 $generated@@132 ($generated@@24 $generated@@133) $generated@@134 $generated@@135))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ) (!  (=> (or (not (= $generated@@136 $generated@@138)) (not true)) (=> (and ($generated@@63 $generated@@136 $generated@@137) ($generated@@63 $generated@@137 $generated@@138)) ($generated@@63 $generated@@136 $generated@@138)))
 :pattern ( ($generated@@63 $generated@@136 $generated@@137) ($generated@@63 $generated@@137 $generated@@138))
)))
(assert (forall (($generated@@139 T@U) ) (! (<= 0 ($generated@@37 $generated@@139))
 :pattern ( ($generated@@37 $generated@@139))
)))
(assert (forall (($generated@@141 T@U) ) (! (= ($generated@@140 ($generated@@51 $generated@@141)) $generated@@141)
 :pattern ( ($generated@@51 $generated@@141))
)))
(assert (forall (($generated@@142 T@U) ) (! (= ($generated@@41 ($generated@@106 $generated@@142)) $generated@@4)
 :pattern ( ($generated@@106 $generated@@142))
)))
(assert (forall (($generated@@143 T@U) ) (! (= ($generated@@129 ($generated@@106 $generated@@143)) $generated@@143)
 :pattern ( ($generated@@106 $generated@@143))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@T) ) (! (= ($generated@@69 $generated@@145 ($generated@@102 $generated@@145 $generated@@144)) $generated@@144)
 :pattern ( ($generated@@102 $generated@@145 $generated@@144))
)))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ) (!  (and (and (and (=> ($generated@@32 $generated@@146 $generated@@147) (or (not (= $generated@@146 $generated@@147)) (not true))) (=> (and ($generated@@116 $generated@@146) (not ($generated@@116 $generated@@147))) ($generated@@32 $generated@@146 $generated@@147))) (=> (and ($generated@@116 $generated@@146) ($generated@@116 $generated@@147)) (= ($generated@@32 $generated@@146 $generated@@147) (< ($generated@@37 $generated@@146) ($generated@@37 $generated@@147))))) (=> (and ($generated@@32 $generated@@146 $generated@@147) ($generated@@116 $generated@@147)) ($generated@@116 $generated@@146)))
 :pattern ( ($generated@@32 $generated@@146 $generated@@147))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ) (! (= ($generated@@55 $generated@@148 $generated@@149 ($generated@@24 $generated@@150) $generated@@151 $generated@@152) (forall (($generated@@153 T@U) ) (! ($generated@@23 $generated@@148 $generated@@149 $generated@@153 ($generated@@24 $generated@@150) $generated@@151 $generated@@152)
 :pattern ( ($generated@@23 $generated@@148 $generated@@149 $generated@@153 ($generated@@24 $generated@@150) $generated@@151 $generated@@152))
)))
 :pattern ( ($generated@@55 $generated@@148 $generated@@149 ($generated@@24 $generated@@150) $generated@@151 $generated@@152))
)))
(assert  (and (forall (($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ) (! (= ($generated@@154 $generated@@157 $generated@@158 $generated@@159 ($generated@@156 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@162 $generated@@163 $generated@@160) $generated@@162 $generated@@163) $generated@@160)
 :weight 0
)) (and (forall (($generated@@164 T@T) ($generated@@165 T@T) ($generated@@166 T@T) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (or (= $generated@@169 $generated@@171) (= ($generated@@154 $generated@@164 $generated@@165 $generated@@166 ($generated@@156 $generated@@164 $generated@@165 $generated@@166 $generated@@168 $generated@@169 $generated@@170 $generated@@167) $generated@@171 $generated@@172) ($generated@@154 $generated@@164 $generated@@165 $generated@@166 $generated@@168 $generated@@171 $generated@@172)))
 :weight 0
)) (forall (($generated@@173 T@T) ($generated@@174 T@T) ($generated@@175 T@T) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (or (= $generated@@179 $generated@@181) (= ($generated@@154 $generated@@173 $generated@@174 $generated@@175 ($generated@@156 $generated@@173 $generated@@174 $generated@@175 $generated@@177 $generated@@178 $generated@@179 $generated@@176) $generated@@180 $generated@@181) ($generated@@154 $generated@@173 $generated@@174 $generated@@175 $generated@@177 $generated@@180 $generated@@181)))
 :weight 0
)))))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 Bool) ($generated@@186 T@U) ($generated@@187 T@U) ) (! (= ($generated@@11 ($generated@@154 $generated@@67 $generated@@65 $generated@@7 ($generated@@155 $generated@@182 $generated@@183 $generated@@184 $generated@@185) $generated@@186 $generated@@187))  (=> (and (or (not (= $generated@@186 $generated@@182)) (not true)) ($generated@@11 ($generated@@69 $generated@@7 ($generated@@64 $generated@@65 $generated@@66 ($generated@@64 $generated@@67 ($generated@@68 $generated@@65 $generated@@66) $generated@@183 $generated@@186) $generated@@184)))) $generated@@185))
 :pattern ( ($generated@@154 $generated@@67 $generated@@65 $generated@@7 ($generated@@155 $generated@@182 $generated@@183 $generated@@184 $generated@@185) $generated@@186 $generated@@187))
)))
(assert (forall (($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ) (!  (=> (and ($generated@@61 $generated@@50 $generated@@191 ($generated@@51 $generated@@188)) ($generated@@61 $generated@@50 $generated@@192 ($generated@@51 $generated@@189))) (= ($generated@@55 $generated@@188 $generated@@189 ($generated@@24 $generated@@190) $generated@@191 $generated@@192)  (or (and ($generated@@98 $generated@@191) ($generated@@98 $generated@@192)) (and (and ($generated@@100 $generated@@191) ($generated@@100 $generated@@192)) (=> (and ($generated@@100 $generated@@191) ($generated@@100 $generated@@192)) ($generated@@55 $generated@@188 $generated@@189 $generated@@190 ($generated@@129 $generated@@191) ($generated@@129 $generated@@192)))))))
 :pattern ( ($generated@@55 $generated@@188 $generated@@189 ($generated@@24 $generated@@190) $generated@@191 $generated@@192))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ) (! (= ($generated@@61 $generated@@50 ($generated@@106 $generated@@194) ($generated@@51 $generated@@193)) ($generated@@61 $generated@@50 $generated@@194 ($generated@@51 $generated@@193)))
 :pattern ( ($generated@@61 $generated@@50 ($generated@@106 $generated@@194) ($generated@@51 $generated@@193)))
)))
(assert (forall (($generated@@195 T@U) ) (!  (=> ($generated@@116 $generated@@195) (= $generated@@195 ($generated@@25 ($generated@@37 $generated@@195))))
 :pattern ( ($generated@@37 $generated@@195))
 :pattern ( ($generated@@116 $generated@@195))
)))
(assert (forall (($generated@@196 T@U) ($generated@@197 T@U) ($generated@@198 T@U) ) (!  (=> (and ($generated@@52 $generated@@198) (and ($generated@@100 $generated@@196) ($generated@@49 $generated@@50 $generated@@196 ($generated@@51 $generated@@197) $generated@@198))) ($generated@@49 $generated@@50 ($generated@@129 $generated@@196) ($generated@@51 $generated@@197) $generated@@198))
 :pattern ( ($generated@@49 $generated@@50 ($generated@@129 $generated@@196) ($generated@@51 $generated@@197) $generated@@198))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ) (!  (=> (and ($generated@@116 $generated@@200) (<= ($generated@@37 $generated@@200) ($generated@@37 $generated@@199))) (or (and (= $generated@@200 ($generated@@25 0)) (= ($generated@@36 $generated@@199 $generated@@200) $generated@@199)) (and (or (not (= $generated@@200 ($generated@@25 0))) (not true)) ($generated@@32 ($generated@@36 $generated@@199 $generated@@200) $generated@@199))))
 :pattern ( ($generated@@36 $generated@@199 $generated@@200))
)))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ($generated@@206 T@U) ($generated@@207 T@U) ) (!  (=> (and ($generated@@32 $generated@@203 $generated@@207) ($generated@@23 $generated@@201 $generated@@202 $generated@@207 ($generated@@24 $generated@@204) $generated@@205 $generated@@206)) ($generated@@23 $generated@@201 $generated@@202 $generated@@203 ($generated@@24 $generated@@204) $generated@@205 $generated@@206))
 :pattern ( ($generated@@23 $generated@@201 $generated@@202 $generated@@203 ($generated@@24 $generated@@204) $generated@@205 $generated@@206) ($generated@@23 $generated@@201 $generated@@202 $generated@@207 ($generated@@24 $generated@@204) $generated@@205 $generated@@206))
)))
(assert (forall (($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ) (! (= ($generated@@55 $generated@@208 $generated@@209 ($generated@@24 $generated@@210) $generated@@211 $generated@@212) ($generated@@55 $generated@@208 $generated@@209 $generated@@210 $generated@@211 $generated@@212))
 :pattern ( ($generated@@55 $generated@@208 $generated@@209 ($generated@@24 $generated@@210) $generated@@211 $generated@@212))
)))
(assert (forall (($generated@@213 Int) ) (! (= ($generated@@102 $generated@@8 ($generated@@12 ($generated@@93 $generated@@213))) ($generated@@95 $generated@@66 ($generated@@102 $generated@@8 ($generated@@12 $generated@@213))))
 :pattern ( ($generated@@102 $generated@@8 ($generated@@12 ($generated@@93 $generated@@213))))
)))
(assert (forall (($generated@@214 T@U) ($generated@@215 T@T) ) (! (= ($generated@@102 $generated@@215 ($generated@@95 $generated@@215 $generated@@214)) ($generated@@95 $generated@@66 ($generated@@102 $generated@@215 $generated@@214)))
 :pattern ( ($generated@@102 $generated@@215 ($generated@@95 $generated@@215 $generated@@214)))
)))
(assert (forall (($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ($generated@@219 T@U) ($generated@@220 T@U) ) (!  (=> (forall (($generated@@221 Int) ) (!  (=> (<= 0 $generated@@221) ($generated@@23 $generated@@216 $generated@@217 ($generated@@25 $generated@@221) ($generated@@24 $generated@@218) $generated@@219 $generated@@220))
 :pattern ( ($generated@@23 $generated@@216 $generated@@217 ($generated@@25 $generated@@221) ($generated@@24 $generated@@218) $generated@@219 $generated@@220))
)) ($generated@@55 $generated@@216 $generated@@217 ($generated@@24 $generated@@218) $generated@@219 $generated@@220))
 :pattern ( ($generated@@55 $generated@@216 $generated@@217 ($generated@@24 $generated@@218) $generated@@219 $generated@@220))
)))
(assert (forall (($generated@@222 T@U) ($generated@@223 T@U) ) (! ($generated@@49 $generated@@8 $generated@@223 $generated $generated@@222)
 :pattern ( ($generated@@49 $generated@@8 $generated@@223 $generated $generated@@222))
)))
(assert (forall (($generated@@224 T@U) ) (! ($generated@@61 $generated@@8 $generated@@224 $generated)
 :pattern ( ($generated@@61 $generated@@8 $generated@@224 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
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
 (=> (= (ControlFlow 0 0) 5) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)