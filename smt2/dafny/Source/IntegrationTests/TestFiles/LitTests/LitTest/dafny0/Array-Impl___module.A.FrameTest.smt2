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
(declare-fun $generated@@25 (T@U) Int)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 (T@U) Int)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 (T@T T@U T@U) Bool)
(declare-fun $generated@@34 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@40 (T@U) Int)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@42 () T@U)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@47 (T@T T@U) T@U)
(declare-fun $generated@@48 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@49 () T@T)
(declare-fun $generated@@50 () T@T)
(declare-fun $generated@@51 (T@T T@T) T@T)
(declare-fun $generated@@52 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@53 (T@T) T@T)
(declare-fun $generated@@54 (T@T) T@T)
(declare-fun $generated@@77 (T@U T@U) Bool)
(declare-fun $generated@@81 (Int) T@U)
(declare-fun $generated@@82 (T@U) Bool)
(declare-fun $generated@@83 (T@U T@U T@U) Bool)
(declare-fun $generated@@88 (T@T T@U) T@U)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@109 (T@U T@U) Bool)
(declare-fun $generated@@115 (T@U T@U) T@U)
(declare-fun $generated@@116 (T@U Int) T@U)
(declare-fun $generated@@129 () T@T)
(declare-fun $generated@@130 (T@U) T@U)
(declare-fun $generated@@135 (T@U) T@U)
(declare-fun $generated@@139 (T@U) Int)
(declare-fun $generated@@141 (T@U) T@U)
(declare-fun $generated@@143 (T@U) T@U)
(declare-fun $generated@@154 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@155 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@156 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (= ($generated@@25 $generated@@2) 0))
(assert (= ($generated@@26 $generated) $generated@@0))
(assert (forall (($generated@@32 T@U) ($generated@@33 T@U) ) (!  (=> (and (or (not (= $generated@@33 $generated@@29)) (not true)) (= ($generated@@30 $generated@@33) ($generated@@28 $generated@@32))) ($generated@@31 $generated@@11 ($generated@@15 ($generated@@27 $generated@@33)) $generated))
 :pattern ( ($generated@@27 $generated@@33) ($generated@@28 $generated@@32))
)))
(assert (= ($generated@@9 $generated@@35) 3))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@38 ($generated@@36 $generated@@37) $generated@@39) ($generated@@34 $generated@@35 $generated@@38 ($generated@@28 $generated@@37) $generated@@39))
 :pattern ( ($generated@@34 $generated@@35 $generated@@38 ($generated@@36 $generated@@37) $generated@@39))
 :pattern ( ($generated@@34 $generated@@35 $generated@@38 ($generated@@28 $generated@@37) $generated@@39))
)))
(assert (= ($generated@@40 $generated@@41) 0))
(assert (forall (($generated@@43 T@U) ) (! (= ($generated@@31 $generated@@35 $generated@@43 $generated@@42)  (or (= $generated@@43 $generated@@29) (= ($generated@@30 $generated@@43) $generated@@42)))
 :pattern ( ($generated@@31 $generated@@35 $generated@@43 $generated@@42))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@45 $generated@@44 $generated@@46) ($generated@@34 $generated@@35 $generated@@45 $generated@@42 $generated@@46))
 :pattern ( ($generated@@34 $generated@@35 $generated@@45 $generated@@44 $generated@@46))
 :pattern ( ($generated@@34 $generated@@35 $generated@@45 $generated@@42 $generated@@46))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@55 T@T) ($generated@@56 T@T) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@48 $generated@@55 $generated@@56 ($generated@@52 $generated@@55 $generated@@56 $generated@@58 $generated@@59 $generated@@57) $generated@@59) $generated@@57)
 :weight 0
)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (!  (or (= $generated@@64 $generated@@65) (= ($generated@@48 $generated@@60 $generated@@61 ($generated@@52 $generated@@60 $generated@@61 $generated@@63 $generated@@64 $generated@@62) $generated@@65) ($generated@@48 $generated@@60 $generated@@61 $generated@@63 $generated@@65)))
 :weight 0
))) (= ($generated@@9 $generated@@49) 4)) (= ($generated@@9 $generated@@50) 5)) (forall (($generated@@66 T@T) ($generated@@67 T@T) ) (= ($generated@@9 ($generated@@51 $generated@@66 $generated@@67)) 6))) (forall (($generated@@68 T@T) ($generated@@69 T@T) ) (! (= ($generated@@53 ($generated@@51 $generated@@68 $generated@@69)) $generated@@68)
 :pattern ( ($generated@@51 $generated@@68 $generated@@69))
))) (forall (($generated@@70 T@T) ($generated@@71 T@T) ) (! (= ($generated@@54 ($generated@@51 $generated@@70 $generated@@71)) $generated@@71)
 :pattern ( ($generated@@51 $generated@@70 $generated@@71))
))))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@73 ($generated@@28 $generated@@72) $generated@@74)  (or (= $generated@@73 $generated@@29) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@74 $generated@@73) $generated@@2)))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@73 ($generated@@28 $generated@@72) $generated@@74))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@75 $generated@@42 $generated@@76)  (or (= $generated@@75 $generated@@29) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@76 $generated@@75) $generated@@2)))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@75 $generated@@42 $generated@@76))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (!  (=> ($generated@@77 $generated@@78 $generated@@79) (forall (($generated@@80 T@U) ) (!  (=> ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@78 $generated@@80) $generated@@2))) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@79 $generated@@80) $generated@@2))))
 :pattern ( ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@79 $generated@@80) $generated@@2))
)))
 :pattern ( ($generated@@77 $generated@@78 $generated@@79))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 Int) ) (!  (=> (and (and (and ($generated@@82 $generated@@85) (and (or (not (= $generated@@86 $generated@@29)) (not true)) (= ($generated@@30 $generated@@86) ($generated@@28 $generated@@84)))) (and (<= 0 $generated@@87) (< $generated@@87 ($generated@@27 $generated@@86)))) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@85 $generated@@86) $generated@@2)))) ($generated@@83 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@85 $generated@@86) ($generated@@81 $generated@@87)) $generated@@84 $generated@@85))
 :pattern ( ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@85 $generated@@86) ($generated@@81 $generated@@87)) ($generated@@28 $generated@@84))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@T) ) (! (= ($generated@@88 $generated@@90 ($generated@@47 $generated@@90 $generated@@89)) $generated@@89)
 :pattern ( ($generated@@47 $generated@@90 $generated@@89))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ) (! (= ($generated@@31 $generated@@35 $generated@@92 ($generated@@36 $generated@@91))  (and ($generated@@31 $generated@@35 $generated@@92 ($generated@@28 $generated@@91)) (or (not (= $generated@@92 $generated@@29)) (not true))))
 :pattern ( ($generated@@31 $generated@@35 $generated@@92 ($generated@@36 $generated@@91)))
 :pattern ( ($generated@@31 $generated@@35 $generated@@92 ($generated@@28 $generated@@91)))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@T) ) (! (= ($generated@@83 ($generated@@88 $generated@@96 $generated@@93) $generated@@94 $generated@@95) ($generated@@34 $generated@@96 $generated@@93 $generated@@94 $generated@@95))
 :pattern ( ($generated@@83 ($generated@@88 $generated@@96 $generated@@93) $generated@@94 $generated@@95))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ) (!  (=> ($generated@@77 $generated@@97 $generated@@98) (=> ($generated@@83 $generated@@99 $generated@@100 $generated@@97) ($generated@@83 $generated@@99 $generated@@100 $generated@@98)))
 :pattern ( ($generated@@77 $generated@@97 $generated@@98) ($generated@@83 $generated@@99 $generated@@100 $generated@@97))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@T) ) (!  (=> ($generated@@77 $generated@@101 $generated@@102) (=> ($generated@@34 $generated@@105 $generated@@103 $generated@@104 $generated@@101) ($generated@@34 $generated@@105 $generated@@103 $generated@@104 $generated@@102)))
 :pattern ( ($generated@@77 $generated@@101 $generated@@102) ($generated@@34 $generated@@105 $generated@@103 $generated@@104 $generated@@101))
)))
(assert (forall (($generated@@107 T@U) ) (!  (and (= ($generated@@26 ($generated@@28 $generated@@107)) $generated@@3) (= ($generated@@106 ($generated@@28 $generated@@107)) $generated@@7))
 :pattern ( ($generated@@28 $generated@@107))
)))
(assert (forall (($generated@@108 T@U) ) (!  (and (= ($generated@@26 ($generated@@36 $generated@@108)) $generated@@4) (= ($generated@@106 ($generated@@36 $generated@@108)) $generated@@7))
 :pattern ( ($generated@@36 $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ) (!  (=> ($generated@@109 $generated@@110 $generated@@42) (and (= ($generated@@88 $generated@@35 ($generated@@47 $generated@@35 $generated@@110)) $generated@@110) ($generated@@31 $generated@@35 ($generated@@47 $generated@@35 $generated@@110) $generated@@42)))
 :pattern ( ($generated@@109 $generated@@110 $generated@@42))
)))
(assert (forall (($generated@@111 T@U) ) (!  (=> ($generated@@109 $generated@@111 $generated@@44) (and (= ($generated@@88 $generated@@35 ($generated@@47 $generated@@35 $generated@@111)) $generated@@111) ($generated@@31 $generated@@35 ($generated@@47 $generated@@35 $generated@@111) $generated@@44)))
 :pattern ( ($generated@@109 $generated@@111 $generated@@44))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ) (! (= ($generated@@31 $generated@@35 $generated@@113 ($generated@@28 $generated@@112))  (or (= $generated@@113 $generated@@29) (= ($generated@@30 $generated@@113) ($generated@@28 $generated@@112))))
 :pattern ( ($generated@@31 $generated@@35 $generated@@113 ($generated@@28 $generated@@112)))
)))
(assert (forall (($generated@@114 T@U) ) (! (= ($generated@@31 $generated@@35 $generated@@114 $generated@@44)  (and ($generated@@31 $generated@@35 $generated@@114 $generated@@42) (or (not (= $generated@@114 $generated@@29)) (not true))))
 :pattern ( ($generated@@31 $generated@@35 $generated@@114 $generated@@44))
 :pattern ( ($generated@@31 $generated@@35 $generated@@114 $generated@@42))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ) (! (forall (($generated@@119 Int) ) (!  (=> (and (<= 0 $generated@@119) (< $generated@@119 ($generated@@40 ($generated@@115 $generated@@117 $generated@@118)))) (= ($generated@@116 ($generated@@115 $generated@@117 $generated@@118) $generated@@119) ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@117 $generated@@118) ($generated@@81 $generated@@119))))
 :pattern ( ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@117 $generated@@118) ($generated@@81 $generated@@119)))
 :pattern ( ($generated@@116 ($generated@@115 $generated@@117 $generated@@118) $generated@@119))
))
 :pattern ( ($generated@@115 $generated@@117 $generated@@118))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (!  (=> (or (not (= $generated@@120 $generated@@122)) (not true)) (=> (and ($generated@@77 $generated@@120 $generated@@121) ($generated@@77 $generated@@121 $generated@@122)) ($generated@@77 $generated@@120 $generated@@122)))
 :pattern ( ($generated@@77 $generated@@120 $generated@@121) ($generated@@77 $generated@@121 $generated@@122))
)))
(assert (forall (($generated@@123 T@U) ) (!  (=> ($generated@@109 $generated@@123 $generated) (and (= ($generated@@88 $generated@@11 ($generated@@47 $generated@@11 $generated@@123)) $generated@@123) ($generated@@31 $generated@@11 ($generated@@47 $generated@@11 $generated@@123) $generated)))
 :pattern ( ($generated@@109 $generated@@123 $generated))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@T) ) (! (= ($generated@@109 ($generated@@88 $generated@@126 $generated@@124) $generated@@125) ($generated@@31 $generated@@126 $generated@@124 $generated@@125))
 :pattern ( ($generated@@109 ($generated@@88 $generated@@126 $generated@@124) $generated@@125))
)))
(assert (forall (($generated@@127 T@U) ) (! (<= 0 ($generated@@27 $generated@@127))
 :pattern ( ($generated@@27 $generated@@127))
)))
(assert (forall (($generated@@128 T@U) ) (! (<= 0 ($generated@@40 $generated@@128))
 :pattern ( ($generated@@40 $generated@@128))
)))
(assert (= ($generated@@9 $generated@@129) 7))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@34 $generated@@129 $generated@@131 ($generated@@130 $generated@@132) $generated@@133) (forall (($generated@@134 Int) ) (!  (=> (and (<= 0 $generated@@134) (< $generated@@134 ($generated@@40 $generated@@131))) ($generated@@83 ($generated@@116 $generated@@131 $generated@@134) $generated@@132 $generated@@133))
 :pattern ( ($generated@@116 $generated@@131 $generated@@134))
)))
 :pattern ( ($generated@@34 $generated@@129 $generated@@131 ($generated@@130 $generated@@132) $generated@@133))
)))
(assert (forall (($generated@@136 T@U) ) (! (= ($generated@@135 ($generated@@130 $generated@@136)) $generated@@136)
 :pattern ( ($generated@@130 $generated@@136))
)))
(assert (forall (($generated@@137 T@U) ) (! (= ($generated@@26 ($generated@@130 $generated@@137)) $generated@@1)
 :pattern ( ($generated@@130 $generated@@137))
)))
(assert (forall (($generated@@138 Int) ) (! (= ($generated@@25 ($generated@@81 $generated@@138)) 1)
 :pattern ( ($generated@@81 $generated@@138))
)))
(assert (forall (($generated@@140 Int) ) (! (= ($generated@@139 ($generated@@81 $generated@@140)) $generated@@140)
 :pattern ( ($generated@@81 $generated@@140))
)))
(assert (forall (($generated@@142 T@U) ) (! (= ($generated@@141 ($generated@@28 $generated@@142)) $generated@@142)
 :pattern ( ($generated@@28 $generated@@142))
)))
(assert (forall (($generated@@144 T@U) ) (! (= ($generated@@143 ($generated@@36 $generated@@144)) $generated@@144)
 :pattern ( ($generated@@36 $generated@@144))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@T) ) (! (= ($generated@@47 $generated@@146 ($generated@@88 $generated@@146 $generated@@145)) $generated@@145)
 :pattern ( ($generated@@88 $generated@@146 $generated@@145))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ) (!  (=> (and (and ($generated@@82 $generated@@148) (and (or (not (= $generated@@149 $generated@@29)) (not true)) (= ($generated@@30 $generated@@149) ($generated@@28 $generated@@147)))) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@148 $generated@@149) $generated@@2)))) ($generated@@34 $generated@@11 ($generated@@15 ($generated@@27 $generated@@149)) $generated $generated@@148))
 :pattern ( ($generated@@27 $generated@@149) ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@148 $generated@@149) $generated@@2)) ($generated@@28 $generated@@147))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 Int) ) (!  (=> (and (and ($generated@@82 $generated@@151) (and (or (not (= $generated@@152 $generated@@29)) (not true)) (= ($generated@@30 $generated@@152) ($generated@@28 $generated@@150)))) (and (<= 0 $generated@@153) (< $generated@@153 ($generated@@27 $generated@@152)))) ($generated@@109 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@151 $generated@@152) ($generated@@81 $generated@@153)) $generated@@150))
 :pattern ( ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@151 $generated@@152) ($generated@@81 $generated@@153)) ($generated@@28 $generated@@150))
)))
(assert  (and (forall (($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ) (! (= ($generated@@154 $generated@@157 $generated@@158 $generated@@159 ($generated@@156 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@162 $generated@@163 $generated@@160) $generated@@162 $generated@@163) $generated@@160)
 :weight 0
)) (and (forall (($generated@@164 T@T) ($generated@@165 T@T) ($generated@@166 T@T) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (or (= $generated@@169 $generated@@171) (= ($generated@@154 $generated@@164 $generated@@165 $generated@@166 ($generated@@156 $generated@@164 $generated@@165 $generated@@166 $generated@@168 $generated@@169 $generated@@170 $generated@@167) $generated@@171 $generated@@172) ($generated@@154 $generated@@164 $generated@@165 $generated@@166 $generated@@168 $generated@@171 $generated@@172)))
 :weight 0
)) (forall (($generated@@173 T@T) ($generated@@174 T@T) ($generated@@175 T@T) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (or (= $generated@@179 $generated@@181) (= ($generated@@154 $generated@@173 $generated@@174 $generated@@175 ($generated@@156 $generated@@173 $generated@@174 $generated@@175 $generated@@177 $generated@@178 $generated@@179 $generated@@176) $generated@@180 $generated@@181) ($generated@@154 $generated@@173 $generated@@174 $generated@@175 $generated@@177 $generated@@180 $generated@@181)))
 :weight 0
)))))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 Bool) ($generated@@186 T@U) ($generated@@187 T@U) ) (! (= ($generated@@14 ($generated@@154 $generated@@35 $generated@@49 $generated@@10 ($generated@@155 $generated@@182 $generated@@183 $generated@@184 $generated@@185) $generated@@186 $generated@@187))  (=> (and (or (not (= $generated@@186 $generated@@182)) (not true)) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@183 $generated@@186) $generated@@184)))) $generated@@185))
 :pattern ( ($generated@@154 $generated@@35 $generated@@49 $generated@@10 ($generated@@155 $generated@@182 $generated@@183 $generated@@184 $generated@@185) $generated@@186 $generated@@187))
)))
(assert (forall (($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 T@U) ) (!  (=> (and (and (and ($generated@@82 $generated@@188) ($generated@@82 $generated@@189)) ($generated@@77 $generated@@188 $generated@@189)) (= ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@188 $generated@@190) ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@189 $generated@@190))) (= ($generated@@115 $generated@@188 $generated@@190) ($generated@@115 $generated@@189 $generated@@190)))
 :pattern ( ($generated@@115 $generated@@189 $generated@@190) ($generated@@77 $generated@@188 $generated@@189))
)))
(assert (forall (($generated@@191 T@U) ($generated@@192 T@U) ) (! (= ($generated@@40 ($generated@@115 $generated@@191 $generated@@192)) ($generated@@27 $generated@@192))
 :pattern ( ($generated@@40 ($generated@@115 $generated@@191 $generated@@192)))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ) (!  (=> ($generated@@109 $generated@@193 ($generated@@130 $generated@@194)) (and (= ($generated@@88 $generated@@129 ($generated@@47 $generated@@129 $generated@@193)) $generated@@193) ($generated@@31 $generated@@129 ($generated@@47 $generated@@129 $generated@@193) ($generated@@130 $generated@@194))))
 :pattern ( ($generated@@109 $generated@@193 ($generated@@130 $generated@@194)))
)))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@U) ) (!  (=> ($generated@@109 $generated@@196 ($generated@@28 $generated@@195)) (and (= ($generated@@88 $generated@@35 ($generated@@47 $generated@@35 $generated@@196)) $generated@@196) ($generated@@31 $generated@@35 ($generated@@47 $generated@@35 $generated@@196) ($generated@@28 $generated@@195))))
 :pattern ( ($generated@@109 $generated@@196 ($generated@@28 $generated@@195)))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ) (!  (=> ($generated@@109 $generated@@198 ($generated@@36 $generated@@197)) (and (= ($generated@@88 $generated@@35 ($generated@@47 $generated@@35 $generated@@198)) $generated@@198) ($generated@@31 $generated@@35 ($generated@@47 $generated@@35 $generated@@198) ($generated@@36 $generated@@197))))
 :pattern ( ($generated@@109 $generated@@198 ($generated@@36 $generated@@197)))
)))
(assert (= ($generated@@26 $generated@@42) $generated@@5))
(assert (= ($generated@@106 $generated@@42) $generated@@8))
(assert (= ($generated@@26 $generated@@44) $generated@@6))
(assert (= ($generated@@106 $generated@@44) $generated@@8))
(assert (forall (($generated@@199 T@U) ) (!  (=> (= ($generated@@40 $generated@@199) 0) (= $generated@@199 $generated@@41))
 :pattern ( ($generated@@40 $generated@@199))
)))
(assert (forall (($generated@@200 T@U) ($generated@@201 T@U) ) (! ($generated@@34 $generated@@11 $generated@@201 $generated $generated@@200)
 :pattern ( ($generated@@34 $generated@@11 $generated@@201 $generated $generated@@200))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ) (! (= ($generated@@31 $generated@@129 $generated@@202 ($generated@@130 $generated@@203)) (forall (($generated@@204 Int) ) (!  (=> (and (<= 0 $generated@@204) (< $generated@@204 ($generated@@40 $generated@@202))) ($generated@@109 ($generated@@116 $generated@@202 $generated@@204) $generated@@203))
 :pattern ( ($generated@@116 $generated@@202 $generated@@204))
)))
 :pattern ( ($generated@@31 $generated@@129 $generated@@202 ($generated@@130 $generated@@203)))
)))
(assert (forall (($generated@@205 T@U) ) (! ($generated@@31 $generated@@11 $generated@@205 $generated)
 :pattern ( ($generated@@31 $generated@@11 $generated@@205 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 () T@U)
(declare-fun $generated@@208 () T@U)
(declare-fun $generated@@209 () T@U)
(declare-fun $generated@@210 (T@U) Bool)
(declare-fun $generated@@211 () T@U)
(declare-fun $generated@@212 (T@U T@U) Bool)
(declare-fun $generated@@213 () T@U)
(declare-fun $generated@@214 (T@U T@U) Bool)
(declare-fun $generated@@215 () T@U)
(declare-fun $generated@@216 () T@U)
(declare-fun $generated@@217 (T@U T@U) Bool)
(declare-fun $generated@@218 (T@U T@U) Bool)
(declare-fun $generated@@219 () T@U)
(declare-fun $generated@@220 () T@U)
(declare-fun $generated@@221 () Int)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@222  (=> (= $generated@@206 ($generated@@155 $generated@@29 $generated@@207 $generated@@2 false)) (=> (and (and ($generated@@31 $generated@@35 $generated@@208 ($generated@@36 $generated)) ($generated@@34 $generated@@35 $generated@@208 ($generated@@36 $generated) $generated@@207)) (and ($generated@@82 $generated@@209) ($generated@@210 $generated@@209))) (=> (and (and (and (and ($generated@@31 $generated@@35 $generated@@211 ($generated@@36 $generated)) ($generated@@34 $generated@@35 $generated@@211 ($generated@@36 $generated) $generated@@209)) (=> (and (or (not (= $generated@@211 $generated@@29)) (not true)) (not ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@207 $generated@@211) $generated@@2))))) ($generated@@212 $generated@@213 ($generated@@115 $generated@@209 $generated@@211)))) (and (or (not (= $generated@@211 $generated@@29)) (not true)) (not ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@207 $generated@@211) $generated@@2)))))) (and (and ($generated@@214 $generated@@213 ($generated@@115 $generated@@209 $generated@@211)) (forall (($generated@@223 T@U) ) (!  (=> (and (or (not (= $generated@@223 $generated@@29)) (not true)) ($generated@@14 ($generated@@47 $generated@@10 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@207 $generated@@223) $generated@@2)))) (= ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@209 $generated@@223) ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@207 $generated@@223)))
 :pattern ( ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@209 $generated@@223))
))) (and ($generated@@77 $generated@@207 $generated@@209) ($generated@@83 ($generated@@88 $generated@@35 $generated@@213) $generated@@42 $generated@@209)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= $generated@@215 $generated@@29)) (not true))) (=> (or (not (= $generated@@215 $generated@@29)) (not true)) (=> (and (and (= $generated@@216 ($generated@@115 $generated@@209 $generated@@215)) ($generated@@34 $generated@@129 $generated@@216 ($generated@@130 $generated) $generated@@209)) (and ($generated@@217 $generated@@213 ($generated@@115 $generated@@209 $generated@@215)) ($generated@@217 $generated@@213 ($generated@@115 $generated@@209 $generated@@215)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($generated@@218 $generated@@213 ($generated@@115 $generated@@209 $generated@@215))) (=> ($generated@@218 $generated@@213 ($generated@@115 $generated@@209 $generated@@215)) (=> ($generated@@83 ($generated@@88 $generated@@35 $generated@@213) $generated@@42 $generated@@209) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $generated@@211 $generated@@29)) (not true))) (=> (or (not (= $generated@@211 $generated@@29)) (not true)) (=> (= $generated@@219 ($generated@@115 $generated@@209 $generated@@211)) (=> (and (and ($generated@@34 $generated@@129 $generated@@219 ($generated@@130 $generated) $generated@@209) ($generated@@212 $generated@@213 ($generated@@115 $generated@@209 $generated@@211))) (and ($generated@@212 $generated@@213 ($generated@@115 $generated@@209 $generated@@211)) (= (ControlFlow 0 2) (- 0 1)))) ($generated@@214 $generated@@213 ($generated@@115 $generated@@209 $generated@@211)))))))))))))))))
(let (($generated@@224  (=> (and ($generated@@82 $generated@@207) ($generated@@210 $generated@@207)) (=> (and (and (or (not (= $generated@@213 $generated@@29)) (not true)) (and ($generated@@31 $generated@@35 $generated@@213 $generated@@44) ($generated@@34 $generated@@35 $generated@@213 $generated@@44 $generated@@207))) (and ($generated@@31 $generated@@35 $generated@@215 ($generated@@36 $generated)) ($generated@@34 $generated@@35 $generated@@215 ($generated@@36 $generated) $generated@@207))) (=> (and (and (and ($generated@@31 $generated@@35 $generated@@220 ($generated@@36 $generated)) ($generated@@34 $generated@@35 $generated@@220 ($generated@@36 $generated) $generated@@207)) (= 2 $generated@@221)) (and ($generated@@218 $generated@@213 ($generated@@115 $generated@@207 $generated@@215)) (= (ControlFlow 0 6) 2))) $generated@@222)))))
$generated@@224)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)