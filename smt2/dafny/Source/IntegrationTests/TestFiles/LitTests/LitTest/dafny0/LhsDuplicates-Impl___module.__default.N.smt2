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
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 (T@T T@T) T@T)
(declare-fun $generated@@30 () T@U)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U) Bool)
(declare-fun $generated@@33 () T@U)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@35 (T@U T@U) Bool)
(declare-fun $generated@@36 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@37 (T@T) T@T)
(declare-fun $generated@@38 (T@T) T@T)
(declare-fun $generated@@59 (T@T T@U) T@U)
(declare-fun $generated@@60 (T@U T@U T@U) Bool)
(declare-fun $generated@@64 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@65 (T@U) T@U)
(declare-fun $generated@@69 (T@U) Int)
(declare-fun $generated@@70 () T@U)
(declare-fun $generated@@74 (T@U T@U) T@U)
(declare-fun $generated@@75 (T@U) Bool)
(declare-fun $generated@@76 (T@U T@U) Bool)
(declare-fun $generated@@80 (Int) Int)
(declare-fun $generated@@82 (T@T T@U) T@U)
(declare-fun $generated@@85 (T@T T@U T@U) Bool)
(declare-fun $generated@@86 () T@T)
(declare-fun $generated@@87 (T@U T@U) T@U)
(declare-fun $generated@@88 (T@U) T@U)
(declare-fun $generated@@92 (T@T T@U) T@U)
(declare-fun $generated@@112 (T@U) T@U)
(declare-fun $generated@@113 (T@U) T@U)
(declare-fun $generated@@118 (T@U Int) T@U)
(declare-fun $generated@@125 (T@U) T@U)
(declare-fun $generated@@136 (T@U) T@U)
(declare-fun $generated@@139 (T@U) T@U)
(declare-fun $generated@@141 (T@U) T@U)
(declare-fun $generated@@145 (T@U) T@U)
(declare-fun $generated@@146 (T@U) T@U)
(declare-fun $generated@@155 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@156 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@157 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (= ($generated@@23 $generated@@0) 0))
(assert (= ($generated@@24 $generated@@0) $generated@@1))
(assert  (and (and (and (and (and (and (and (forall (($generated@@39 T@T) ($generated@@40 T@T) ($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ) (! (= ($generated@@25 $generated@@39 $generated@@40 ($generated@@36 $generated@@39 $generated@@40 $generated@@42 $generated@@43 $generated@@41) $generated@@43) $generated@@41)
 :weight 0
)) (forall (($generated@@44 T@T) ($generated@@45 T@T) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ) (!  (or (= $generated@@48 $generated@@49) (= ($generated@@25 $generated@@44 $generated@@45 ($generated@@36 $generated@@44 $generated@@45 $generated@@47 $generated@@48 $generated@@46) $generated@@49) ($generated@@25 $generated@@44 $generated@@45 $generated@@47 $generated@@49)))
 :weight 0
))) (= ($generated@@7 $generated@@26) 3)) (= ($generated@@7 $generated@@27) 4)) (= ($generated@@7 $generated@@28) 5)) (forall (($generated@@50 T@T) ($generated@@51 T@T) ) (= ($generated@@7 ($generated@@29 $generated@@50 $generated@@51)) 6))) (forall (($generated@@52 T@T) ($generated@@53 T@T) ) (! (= ($generated@@37 ($generated@@29 $generated@@52 $generated@@53)) $generated@@52)
 :pattern ( ($generated@@29 $generated@@52 $generated@@53))
))) (forall (($generated@@54 T@T) ($generated@@55 T@T) ) (! (= ($generated@@38 ($generated@@29 $generated@@54 $generated@@55)) $generated@@55)
 :pattern ( ($generated@@29 $generated@@54 $generated@@55))
))))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (!  (=> (and ($generated@@32 $generated@@57) (and (or (not (= $generated@@58 $generated@@33)) (not true)) (= ($generated@@34 $generated@@58) ($generated@@31 $generated@@56)))) ($generated@@35 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@57 $generated@@58) $generated@@30) $generated@@56))
 :pattern ( ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@57 $generated@@58) $generated@@30) ($generated@@31 $generated@@56))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ) (!  (=> (and (and ($generated@@32 $generated@@62) (and (or (not (= $generated@@63 $generated@@33)) (not true)) (= ($generated@@34 $generated@@63) ($generated@@31 $generated@@61)))) ($generated@@12 ($generated@@59 $generated@@8 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@62 $generated@@63) $generated@@0)))) ($generated@@60 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@62 $generated@@63) $generated@@30) $generated@@61 $generated@@62))
 :pattern ( ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@62 $generated@@63) $generated@@30) ($generated@@31 $generated@@61))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@64 $generated@@28 $generated@@67 ($generated@@65 $generated@@66) $generated@@68) ($generated@@64 $generated@@28 $generated@@67 ($generated@@31 $generated@@66) $generated@@68))
 :pattern ( ($generated@@64 $generated@@28 $generated@@67 ($generated@@65 $generated@@66) $generated@@68))
 :pattern ( ($generated@@64 $generated@@28 $generated@@67 ($generated@@31 $generated@@66) $generated@@68))
)))
(assert (= ($generated@@69 $generated@@70) 0))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@64 $generated@@28 $generated@@72 ($generated@@31 $generated@@71) $generated@@73)  (or (= $generated@@72 $generated@@33) ($generated@@12 ($generated@@59 $generated@@8 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@73 $generated@@72) $generated@@0)))))
 :pattern ( ($generated@@64 $generated@@28 $generated@@72 ($generated@@31 $generated@@71) $generated@@73))
)))
(assert (= ($generated@@23 $generated@@30) 0))
(assert (= ($generated@@74 $generated@@3 $generated@@6) $generated@@30))
(assert  (not ($generated@@75 $generated@@30)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ) (!  (=> ($generated@@76 $generated@@77 $generated@@78) (forall (($generated@@79 T@U) ) (!  (=> ($generated@@12 ($generated@@59 $generated@@8 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@77 $generated@@79) $generated@@0))) ($generated@@12 ($generated@@59 $generated@@8 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@78 $generated@@79) $generated@@0))))
 :pattern ( ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@78 $generated@@79) $generated@@0))
)))
 :pattern ( ($generated@@76 $generated@@77 $generated@@78))
)))
(assert (forall (($generated@@81 Int) ) (! (= ($generated@@80 $generated@@81) $generated@@81)
 :pattern ( ($generated@@80 $generated@@81))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@T) ) (! (= ($generated@@82 $generated@@84 $generated@@83) $generated@@83)
 :pattern ( ($generated@@82 $generated@@84 $generated@@83))
)))
(assert (= ($generated@@7 $generated@@86) 7))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> (and ($generated@@85 $generated@@86 $generated@@89 ($generated@@88 $generated@@91)) ($generated@@35 $generated@@90 $generated@@91)) ($generated@@85 $generated@@86 ($generated@@87 $generated@@89 $generated@@90) ($generated@@88 $generated@@91)))
 :pattern ( ($generated@@85 $generated@@86 ($generated@@87 $generated@@89 $generated@@90) ($generated@@88 $generated@@91)))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@T) ) (! (= ($generated@@92 $generated@@94 ($generated@@59 $generated@@94 $generated@@93)) $generated@@93)
 :pattern ( ($generated@@59 $generated@@94 $generated@@93))
)))
(assert ($generated@@75 $generated@@0))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (! (= ($generated@@69 ($generated@@87 $generated@@95 $generated@@96)) (+ 1 ($generated@@69 $generated@@95)))
 :pattern ( ($generated@@87 $generated@@95 $generated@@96))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@85 $generated@@28 $generated@@98 ($generated@@65 $generated@@97))  (and ($generated@@85 $generated@@28 $generated@@98 ($generated@@31 $generated@@97)) (or (not (= $generated@@98 $generated@@33)) (not true))))
 :pattern ( ($generated@@85 $generated@@28 $generated@@98 ($generated@@65 $generated@@97)))
 :pattern ( ($generated@@85 $generated@@28 $generated@@98 ($generated@@31 $generated@@97)))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@T) ) (! (= ($generated@@60 ($generated@@92 $generated@@102 $generated@@99) $generated@@100 $generated@@101) ($generated@@64 $generated@@102 $generated@@99 $generated@@100 $generated@@101))
 :pattern ( ($generated@@60 ($generated@@92 $generated@@102 $generated@@99) $generated@@100 $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (!  (=> ($generated@@76 $generated@@103 $generated@@104) (=> ($generated@@60 $generated@@105 $generated@@106 $generated@@103) ($generated@@60 $generated@@105 $generated@@106 $generated@@104)))
 :pattern ( ($generated@@76 $generated@@103 $generated@@104) ($generated@@60 $generated@@105 $generated@@106 $generated@@103))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@T) ) (!  (=> ($generated@@76 $generated@@107 $generated@@108) (=> ($generated@@64 $generated@@111 $generated@@109 $generated@@110 $generated@@107) ($generated@@64 $generated@@111 $generated@@109 $generated@@110 $generated@@108)))
 :pattern ( ($generated@@76 $generated@@107 $generated@@108) ($generated@@64 $generated@@111 $generated@@109 $generated@@110 $generated@@107))
)))
(assert (forall (($generated@@114 T@U) ) (!  (and (= ($generated@@112 ($generated@@65 $generated@@114)) $generated@@2) (= ($generated@@113 ($generated@@65 $generated@@114)) $generated@@5))
 :pattern ( ($generated@@65 $generated@@114))
)))
(assert (forall (($generated@@115 T@U) ) (!  (and (= ($generated@@112 ($generated@@31 $generated@@115)) $generated@@4) (= ($generated@@113 ($generated@@31 $generated@@115)) $generated@@5))
 :pattern ( ($generated@@31 $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@85 $generated@@28 $generated@@117 ($generated@@31 $generated@@116))  (or (= $generated@@117 $generated@@33) (= ($generated@@34 $generated@@117) ($generated@@31 $generated@@116))))
 :pattern ( ($generated@@85 $generated@@28 $generated@@117 ($generated@@31 $generated@@116)))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 Int) ($generated@@121 T@U) ) (!  (and (=> (= $generated@@120 ($generated@@69 $generated@@119)) (= ($generated@@118 ($generated@@87 $generated@@119 $generated@@121) $generated@@120) $generated@@121)) (=> (or (not (= $generated@@120 ($generated@@69 $generated@@119))) (not true)) (= ($generated@@118 ($generated@@87 $generated@@119 $generated@@121) $generated@@120) ($generated@@118 $generated@@119 $generated@@120))))
 :pattern ( ($generated@@118 ($generated@@87 $generated@@119 $generated@@121) $generated@@120))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (!  (=> (or (not (= $generated@@122 $generated@@124)) (not true)) (=> (and ($generated@@76 $generated@@122 $generated@@123) ($generated@@76 $generated@@123 $generated@@124)) ($generated@@76 $generated@@122 $generated@@124)))
 :pattern ( ($generated@@76 $generated@@122 $generated@@123) ($generated@@76 $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (!  (and (= ($generated@@125 ($generated@@74 $generated@@126 $generated@@127)) $generated@@126) (= ($generated@@24 ($generated@@74 $generated@@126 $generated@@127)) $generated@@127))
 :pattern ( ($generated@@74 $generated@@126 $generated@@127))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@T) ) (! (= ($generated@@35 ($generated@@92 $generated@@130 $generated@@128) $generated@@129) ($generated@@85 $generated@@130 $generated@@128 $generated@@129))
 :pattern ( ($generated@@35 ($generated@@92 $generated@@130 $generated@@128) $generated@@129))
)))
(assert (forall (($generated@@131 T@U) ) (! (<= 0 ($generated@@69 $generated@@131))
 :pattern ( ($generated@@69 $generated@@131))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (! (= ($generated@@64 $generated@@86 $generated@@132 ($generated@@88 $generated@@133) $generated@@134) (forall (($generated@@135 Int) ) (!  (=> (and (<= 0 $generated@@135) (< $generated@@135 ($generated@@69 $generated@@132))) ($generated@@60 ($generated@@118 $generated@@132 $generated@@135) $generated@@133 $generated@@134))
 :pattern ( ($generated@@118 $generated@@132 $generated@@135))
)))
 :pattern ( ($generated@@64 $generated@@86 $generated@@132 ($generated@@88 $generated@@133) $generated@@134))
)))
(assert (forall (($generated@@137 T@U) ) (! (= ($generated@@136 ($generated@@88 $generated@@137)) $generated@@137)
 :pattern ( ($generated@@88 $generated@@137))
)))
(assert (forall (($generated@@138 T@U) ) (! (= ($generated@@112 ($generated@@88 $generated@@138)) $generated)
 :pattern ( ($generated@@88 $generated@@138))
)))
(assert (forall (($generated@@140 T@U) ) (! (= ($generated@@139 ($generated@@65 $generated@@140)) $generated@@140)
 :pattern ( ($generated@@65 $generated@@140))
)))
(assert (forall (($generated@@142 T@U) ) (! (= ($generated@@141 ($generated@@31 $generated@@142)) $generated@@142)
 :pattern ( ($generated@@31 $generated@@142))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@T) ) (! (= ($generated@@59 $generated@@144 ($generated@@92 $generated@@144 $generated@@143)) $generated@@143)
 :pattern ( ($generated@@92 $generated@@144 $generated@@143))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ) (!  (and (= ($generated@@145 ($generated@@87 $generated@@147 $generated@@148)) $generated@@147) (= ($generated@@146 ($generated@@87 $generated@@147 $generated@@148)) $generated@@148))
 :pattern ( ($generated@@87 $generated@@147 $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (!  (=> ($generated@@35 $generated@@149 ($generated@@88 $generated@@150)) (and (= ($generated@@92 $generated@@86 ($generated@@59 $generated@@86 $generated@@149)) $generated@@149) ($generated@@85 $generated@@86 ($generated@@59 $generated@@86 $generated@@149) ($generated@@88 $generated@@150))))
 :pattern ( ($generated@@35 $generated@@149 ($generated@@88 $generated@@150)))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ) (!  (=> ($generated@@35 $generated@@152 ($generated@@65 $generated@@151)) (and (= ($generated@@92 $generated@@28 ($generated@@59 $generated@@28 $generated@@152)) $generated@@152) ($generated@@85 $generated@@28 ($generated@@59 $generated@@28 $generated@@152) ($generated@@65 $generated@@151))))
 :pattern ( ($generated@@35 $generated@@152 ($generated@@65 $generated@@151)))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ) (!  (=> ($generated@@35 $generated@@154 ($generated@@31 $generated@@153)) (and (= ($generated@@92 $generated@@28 ($generated@@59 $generated@@28 $generated@@154)) $generated@@154) ($generated@@85 $generated@@28 ($generated@@59 $generated@@28 $generated@@154) ($generated@@31 $generated@@153))))
 :pattern ( ($generated@@35 $generated@@154 ($generated@@31 $generated@@153)))
)))
(assert  (and (forall (($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ) (! (= ($generated@@155 $generated@@158 $generated@@159 $generated@@160 ($generated@@157 $generated@@158 $generated@@159 $generated@@160 $generated@@162 $generated@@163 $generated@@164 $generated@@161) $generated@@163 $generated@@164) $generated@@161)
 :weight 0
)) (and (forall (($generated@@165 T@T) ($generated@@166 T@T) ($generated@@167 T@T) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ) (!  (or (= $generated@@170 $generated@@172) (= ($generated@@155 $generated@@165 $generated@@166 $generated@@167 ($generated@@157 $generated@@165 $generated@@166 $generated@@167 $generated@@169 $generated@@170 $generated@@171 $generated@@168) $generated@@172 $generated@@173) ($generated@@155 $generated@@165 $generated@@166 $generated@@167 $generated@@169 $generated@@172 $generated@@173)))
 :weight 0
)) (forall (($generated@@174 T@T) ($generated@@175 T@T) ($generated@@176 T@T) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ) (!  (or (= $generated@@180 $generated@@182) (= ($generated@@155 $generated@@174 $generated@@175 $generated@@176 ($generated@@157 $generated@@174 $generated@@175 $generated@@176 $generated@@178 $generated@@179 $generated@@180 $generated@@177) $generated@@181 $generated@@182) ($generated@@155 $generated@@174 $generated@@175 $generated@@176 $generated@@178 $generated@@181 $generated@@182)))
 :weight 0
)))))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ) (! (= ($generated@@12 ($generated@@155 $generated@@28 $generated@@26 $generated@@8 ($generated@@156 $generated@@183 $generated@@184 $generated@@185 $generated@@186 $generated@@187) $generated@@188 $generated@@189))  (=> (and (or (not (= $generated@@188 $generated@@183)) (not true)) ($generated@@12 ($generated@@59 $generated@@8 ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@184 $generated@@188) $generated@@185)))) (or (= $generated@@188 $generated@@186) (= $generated@@188 $generated@@187))))
 :pattern ( ($generated@@155 $generated@@28 $generated@@26 $generated@@8 ($generated@@156 $generated@@183 $generated@@184 $generated@@185 $generated@@186 $generated@@187) $generated@@188 $generated@@189))
)))
(assert (forall (($generated@@190 Int) ) (! (= ($generated@@92 $generated@@9 ($generated@@13 ($generated@@80 $generated@@190))) ($generated@@82 $generated@@27 ($generated@@92 $generated@@9 ($generated@@13 $generated@@190))))
 :pattern ( ($generated@@92 $generated@@9 ($generated@@13 ($generated@@80 $generated@@190))))
)))
(assert (forall (($generated@@191 T@U) ($generated@@192 T@T) ) (! (= ($generated@@92 $generated@@192 ($generated@@82 $generated@@192 $generated@@191)) ($generated@@82 $generated@@27 ($generated@@92 $generated@@192 $generated@@191)))
 :pattern ( ($generated@@92 $generated@@192 ($generated@@82 $generated@@192 $generated@@191)))
)))
(assert (forall (($generated@@193 T@U) ) (!  (=> (= ($generated@@69 $generated@@193) 0) (= $generated@@193 $generated@@70))
 :pattern ( ($generated@@69 $generated@@193))
)))
(assert (forall (($generated@@194 T@U) ($generated@@195 T@U) ) (! (= ($generated@@85 $generated@@86 $generated@@194 ($generated@@88 $generated@@195)) (forall (($generated@@196 Int) ) (!  (=> (and (<= 0 $generated@@196) (< $generated@@196 ($generated@@69 $generated@@194))) ($generated@@35 ($generated@@118 $generated@@194 $generated@@196) $generated@@195))
 :pattern ( ($generated@@118 $generated@@194 $generated@@196))
)))
 :pattern ( ($generated@@85 $generated@@86 $generated@@194 ($generated@@88 $generated@@195)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@197 () Int)
(declare-fun $generated@@198 () T@U)
(declare-fun $generated@@199 () T@U)
(declare-fun $generated@@200 () Int)
(declare-fun $generated@@201 () Int)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () Int)
(declare-fun $generated@@204 () Int)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 (T@U) Bool)
(declare-fun $generated@@207 () T@U)
(declare-fun $generated@@208 () T@U)
(declare-fun $generated@@209 () T@U)
(declare-fun $generated@@210 () T@U)
(declare-fun $generated@@211 () T@U)
(declare-fun $generated@@212 () Int)
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
 (=> (= (ControlFlow 0 0) 32) (let (($generated@@213  (=> (and (<= ($generated@@80 0) $generated@@197) (< $generated@@197 2)) (and (=> (= (ControlFlow 0 25) (- 0 27)) (and (<= 0 ($generated@@80 0)) (< ($generated@@80 0) ($generated@@69 $generated@@198)))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (not (= ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))) $generated@@33)) (not true))) (=> (= (ControlFlow 0 25) (- 0 24)) ($generated@@12 ($generated@@155 $generated@@28 $generated@@26 $generated@@8 $generated@@199 ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))) $generated@@30))))))))
(let (($generated@@214  (=> (and (< $generated@@197 ($generated@@80 0)) (= (ControlFlow 0 29) 25)) $generated@@213)))
(let (($generated@@215  (=> (and (<= ($generated@@80 0) $generated@@197) (= (ControlFlow 0 28) 25)) $generated@@213)))
(let (($generated@@216  (and (=> (= (ControlFlow 0 30) 28) $generated@@215) (=> (= (ControlFlow 0 30) 29) $generated@@214))))
(let (($generated@@217  (=> (and (<= ($generated@@80 0) $generated@@200) (< $generated@@200 2)) (and (=> (= (ControlFlow 0 14) (- 0 19)) (and (<= 0 ($generated@@80 0)) (< ($generated@@80 0) ($generated@@69 $generated@@198)))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (or (not (= ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))) $generated@@33)) (not true))) (and (=> (= (ControlFlow 0 14) (- 0 17)) ($generated@@12 ($generated@@155 $generated@@28 $generated@@26 $generated@@8 $generated@@199 ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))) $generated@@30))) (=> ($generated@@12 ($generated@@155 $generated@@28 $generated@@26 $generated@@8 $generated@@199 ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))) $generated@@30)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (and (<= 0 ($generated@@80 0)) (< ($generated@@80 0) ($generated@@69 $generated@@198)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (or (not (= ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))) $generated@@33)) (not true))) (=> (and (and (<= ($generated@@80 0) $generated@@201) (< $generated@@201 2)) (and (or (not (= $generated@@200 $generated@@201)) (not true)) (= (ControlFlow 0 14) (- 0 13)))) (or (or (or (not (= ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))) ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))))) (not true)) (or (not (= $generated@@30 $generated@@30)) (not true))) (= ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@202 ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0)))) $generated@@30) ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@202 ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0)))) $generated@@30)))))))))))))
(let (($generated@@218  (=> (and (< $generated@@200 ($generated@@80 0)) (= (ControlFlow 0 21) 14)) $generated@@217)))
(let (($generated@@219  (=> (and (<= ($generated@@80 0) $generated@@200) (= (ControlFlow 0 20) 14)) $generated@@217)))
(let (($generated@@220  (and (=> (= (ControlFlow 0 22) 20) $generated@@219) (=> (= (ControlFlow 0 22) 21) $generated@@218))))
(let (($generated@@221  (=> (and (<= ($generated@@80 0) $generated@@203) (< $generated@@203 2)) (and (=> (= (ControlFlow 0 3) (- 0 8)) (and (<= 0 ($generated@@80 0)) (< ($generated@@80 0) ($generated@@69 $generated@@198)))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (or (not (= ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))) $generated@@33)) (not true))) (and (=> (= (ControlFlow 0 3) (- 0 6)) ($generated@@12 ($generated@@155 $generated@@28 $generated@@26 $generated@@8 $generated@@199 ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))) $generated@@30))) (=> ($generated@@12 ($generated@@155 $generated@@28 $generated@@26 $generated@@8 $generated@@199 ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))) $generated@@30)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (and (<= 0 $generated@@203) (< $generated@@203 ($generated@@69 $generated@@198)))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (not (= ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 $generated@@203)) $generated@@33)) (not true))) (=> (and (and (<= ($generated@@80 0) $generated@@204) (< $generated@@204 2)) (and (or (not (= $generated@@203 $generated@@204)) (not true)) (= (ControlFlow 0 3) (- 0 2)))) (or (or (or (not (= ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))) ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))))) (not true)) (or (not (= $generated@@30 $generated@@30)) (not true))) (= ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@205 ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 $generated@@203))) $generated@@30) ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@205 ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 $generated@@204))) $generated@@30)))))))))))))
(let (($generated@@222  (=> (and (< $generated@@203 ($generated@@80 0)) (= (ControlFlow 0 10) 3)) $generated@@221)))
(let (($generated@@223  (=> (and (<= ($generated@@80 0) $generated@@203) (= (ControlFlow 0 9) 3)) $generated@@221)))
(let (($generated@@224  (and (=> (= (ControlFlow 0 11) 9) $generated@@223) (=> (= (ControlFlow 0 11) 10) $generated@@222))))
(let (($generated@@225 true))
(let (($generated@@226  (=> (and (and (and ($generated@@32 $generated@@205) ($generated@@206 $generated@@205)) ($generated@@76 $generated@@202 $generated@@205)) (and (forall (($generated@@227 T@U) ($generated@@228 T@U) ) (!  (or (= ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@205 $generated@@227) $generated@@228) ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@202 $generated@@227) $generated@@228)) (exists (($generated@@229 Int) )  (and (and (and (<= ($generated@@80 0) $generated@@229) (< $generated@@229 2)) (= $generated@@227 ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))))) (= $generated@@228 $generated@@30))))
 :pattern ( ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@205 $generated@@227) $generated@@228))
)) (forall (($generated@@230 Int) )  (=> (and (<= ($generated@@80 0) $generated@@230) (< $generated@@230 2)) (= ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@205 ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0)))) $generated@@30) ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@202 ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0)))) $generated@@30)))))) (and (=> (= (ControlFlow 0 12) 11) $generated@@224) (=> (= (ControlFlow 0 12) 1) $generated@@225)))))
(let (($generated@@231  (=> (and (and ($generated@@32 $generated@@202) ($generated@@206 $generated@@202)) (and ($generated@@76 $generated@@207 $generated@@202) (forall (($generated@@232 T@U) ($generated@@233 T@U) ) (!  (or (= ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@202 $generated@@232) $generated@@233) ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@207 $generated@@232) $generated@@233)) (exists (($generated@@234 Int) )  (and (and (and (<= ($generated@@80 0) $generated@@234) (< $generated@@234 2)) (= $generated@@232 ($generated@@59 $generated@@28 ($generated@@118 $generated@@198 ($generated@@80 0))))) (= $generated@@233 $generated@@30))))
 :pattern ( ($generated@@25 $generated@@26 $generated@@27 ($generated@@25 $generated@@28 ($generated@@29 $generated@@26 $generated@@27) $generated@@202 $generated@@232) $generated@@233))
)))) (and (=> (= (ControlFlow 0 23) 22) $generated@@220) (=> (= (ControlFlow 0 23) 12) $generated@@226)))))
(let (($generated@@235  (=> (and (= $generated@@199 ($generated@@156 $generated@@33 $generated@@207 $generated@@0 $generated@@208 $generated@@209)) (= $generated@@198 ($generated@@87 ($generated@@87 $generated@@70 ($generated@@92 $generated@@28 $generated@@208)) ($generated@@92 $generated@@28 $generated@@209)))) (and (=> (= (ControlFlow 0 31) 30) $generated@@216) (=> (= (ControlFlow 0 31) 23) $generated@@231)))))
(let (($generated@@236  (=> (and ($generated@@32 $generated@@207) ($generated@@206 $generated@@207)) (=> (and (and ($generated@@85 $generated@@28 $generated@@208 ($generated@@65 $generated@@210)) ($generated@@64 $generated@@28 $generated@@208 ($generated@@65 $generated@@210) $generated@@207)) (and ($generated@@85 $generated@@28 $generated@@209 ($generated@@65 $generated@@210)) ($generated@@64 $generated@@28 $generated@@209 ($generated@@65 $generated@@210) $generated@@207))) (=> (and (and (and ($generated@@85 $generated@@86 $generated@@211 ($generated@@88 ($generated@@65 $generated@@210))) ($generated@@64 $generated@@86 $generated@@211 ($generated@@88 ($generated@@65 $generated@@210)) $generated@@207)) true) (and (= 1 $generated@@212) (= (ControlFlow 0 32) 31))) $generated@@235)))))
$generated@@236))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)