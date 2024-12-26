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
(declare-fun $generated@@3 (T@T) Int)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 (Bool) T@U)
(declare-fun $generated@@8 (T@U) Bool)
(declare-fun $generated@@9 (Int) T@U)
(declare-fun $generated@@10 (T@U) Int)
(declare-fun $generated@@11 (Real) T@U)
(declare-fun $generated@@12 (T@U) Real)
(declare-fun $generated@@19 (T@U T@U) Bool)
(declare-fun $generated@@20 () T@U)
(declare-fun $generated@@22 (T@T T@U T@U) Bool)
(declare-fun $generated@@23 () T@T)
(declare-fun $generated@@24 (T@U T@U) T@U)
(declare-fun $generated@@25 (T@U T@U) Bool)
(declare-fun $generated@@33 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@35 (T@U) Bool)
(declare-fun $generated@@36 (T@U T@U) Bool)
(declare-fun $generated@@42 () Int)
(declare-fun $generated@@43 (T@U T@U T@U) T@U)
(declare-fun $generated@@44 (T@U T@U T@U) Bool)
(declare-fun $generated@@45 () T@T)
(declare-fun $generated@@46 (T@U) T@U)
(declare-fun $generated@@47 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@48 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@55 (T@T T@U) T@U)
(declare-fun $generated@@56 (T@T T@U) T@U)
(declare-fun $generated@@62 (T@U T@U T@U) Bool)
(declare-fun $generated@@67 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@87 (T@U) T@U)
(declare-fun $generated@@90 (T@U) T@U)
(declare-fun $generated@@93 (T@U) T@U)
(declare-fun $generated@@95 (T@U) T@U)
(declare-fun $generated@@105 () T@T)
(declare-fun $generated@@106 () T@U)
(declare-fun $generated@@107 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@108 () T@T)
(declare-fun $generated@@109 () T@T)
(declare-fun $generated@@110 (T@T T@T) T@T)
(declare-fun $generated@@111 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@112 (T@T) T@T)
(declare-fun $generated@@113 (T@T) T@T)
(declare-fun $generated@@140 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@141 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@142 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@174 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@3 $generated@@4) 0) (= ($generated@@3 $generated@@5) 1)) (= ($generated@@3 $generated@@6) 2)) (forall (($generated@@13 Bool) ) (! (= ($generated@@8 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 T@U) ) (! (= ($generated@@7 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 Int) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Real) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2)
)
(assert (forall (($generated@@21 T@U) ) (!  (not ($generated@@19 $generated@@20 $generated@@21))
 :pattern ( ($generated@@19 $generated@@20 $generated@@21))
)))
(assert (= ($generated@@3 $generated@@23) 3))
(assert (forall (($generated@@26 T@U) ($generated@@27 T@U) ($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ) (!  (=> (and (and ($generated@@22 $generated@@23 $generated@@26 ($generated@@24 $generated@@27 $generated@@28)) (forall (($generated@@31 T@U) ) (!  (=> ($generated@@25 $generated@@31 $generated@@29) ($generated@@25 $generated@@31 $generated@@27))
 :pattern ( ($generated@@25 $generated@@31 $generated@@29))
 :pattern ( ($generated@@25 $generated@@31 $generated@@27))
))) (forall (($generated@@32 T@U) ) (!  (=> ($generated@@25 $generated@@32 $generated@@28) ($generated@@25 $generated@@32 $generated@@30))
 :pattern ( ($generated@@25 $generated@@32 $generated@@28))
 :pattern ( ($generated@@25 $generated@@32 $generated@@30))
))) ($generated@@22 $generated@@23 $generated@@26 ($generated@@24 $generated@@29 $generated@@30)))
 :pattern ( ($generated@@22 $generated@@23 $generated@@26 ($generated@@24 $generated@@27 $generated@@28)) ($generated@@22 $generated@@23 $generated@@26 ($generated@@24 $generated@@29 $generated@@30)))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ) (!  (=> (and ($generated@@35 $generated@@39) (and ($generated@@25 $generated@@41 $generated@@37) ($generated@@22 $generated@@23 $generated@@40 ($generated@@24 $generated@@37 $generated@@38)))) (= ($generated@@36 ($generated@@33 $generated@@37 $generated@@38 $generated@@34 $generated@@40 $generated@@41) $generated@@20) ($generated@@36 ($generated@@33 $generated@@37 $generated@@38 $generated@@39 $generated@@40 $generated@@41) $generated@@20)))
 :pattern ( ($generated@@33 $generated@@37 $generated@@38 $generated@@34 $generated@@40 $generated@@41) ($generated@@35 $generated@@39))
 :pattern ( ($generated@@33 $generated@@37 $generated@@38 $generated@@39 $generated@@40 $generated@@41))
)))
(assert (= ($generated@@3 $generated@@45) 4))
(assert  (=> (<= 0 $generated@@42) (forall (($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (!  (=> (or ($generated@@44 $generated@@49 $generated@@51 $generated@@52) (and (< 0 $generated@@42) (and (and (and ($generated@@35 $generated@@50) (and ($generated@@22 $generated@@45 $generated@@51 ($generated@@46 $generated@@49)) ($generated@@47 $generated@@45 $generated@@51 ($generated@@46 $generated@@49) $generated@@50))) (and ($generated@@22 $generated@@23 $generated@@52 ($generated@@24 $generated@@49 $generated@@49)) ($generated@@47 $generated@@23 $generated@@52 ($generated@@24 $generated@@49 $generated@@49) $generated@@50))) (and (forall (($generated@@53 T@U) ) (!  (=> ($generated@@25 $generated@@53 $generated@@49) (=> ($generated@@19 $generated@@51 $generated@@53) ($generated@@48 $generated@@49 $generated@@49 $generated@@50 $generated@@52 $generated@@53)))
 :pattern ( ($generated@@48 $generated@@49 $generated@@49 $generated@@50 $generated@@52 $generated@@53))
 :pattern ( ($generated@@19 $generated@@51 $generated@@53))
)) (forall (($generated@@54 T@U) ) (!  (=> ($generated@@25 $generated@@54 $generated@@49) (=> ($generated@@19 $generated@@51 $generated@@54) ($generated@@36 ($generated@@33 $generated@@49 $generated@@49 $generated@@50 $generated@@52 $generated@@54) $generated@@20)))
 :pattern ( ($generated@@33 $generated@@49 $generated@@49 $generated@@50 $generated@@52 $generated@@54))
 :pattern ( ($generated@@19 $generated@@51 $generated@@54))
)))))) ($generated@@22 $generated@@45 ($generated@@43 $generated@@49 $generated@@51 $generated@@52) ($generated@@46 $generated@@49)))
 :pattern ( ($generated@@43 $generated@@49 $generated@@51 $generated@@52) ($generated@@35 $generated@@50))
))))
(assert (forall (($generated@@57 T@U) ($generated@@58 T@T) ) (! (= ($generated@@56 $generated@@58 ($generated@@55 $generated@@58 $generated@@57)) $generated@@57)
 :pattern ( ($generated@@55 $generated@@58 $generated@@57))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@U) ) (! (= ($generated@@22 $generated@@45 $generated@@59 ($generated@@46 $generated@@60)) (forall (($generated@@61 T@U) ) (!  (=> ($generated@@19 $generated@@59 $generated@@61) ($generated@@25 $generated@@61 $generated@@60))
 :pattern ( ($generated@@19 $generated@@59 $generated@@61))
)))
 :pattern ( ($generated@@22 $generated@@45 $generated@@59 ($generated@@46 $generated@@60)))
)))
(assert ($generated@@35 $generated@@34))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@T) ) (! (= ($generated@@62 ($generated@@56 $generated@@66 $generated@@63) $generated@@64 $generated@@65) ($generated@@47 $generated@@66 $generated@@63 $generated@@64 $generated@@65))
 :pattern ( ($generated@@62 ($generated@@56 $generated@@66 $generated@@63) $generated@@64 $generated@@65))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (!  (=> (and ($generated@@35 $generated@@71) ($generated@@47 $generated@@23 $generated@@68 ($generated@@24 $generated@@69 $generated@@70) $generated@@71)) (forall (($generated@@72 T@U) ) (!  (=> (and ($generated@@62 $generated@@72 $generated@@69 $generated@@71) ($generated@@48 $generated@@69 $generated@@70 $generated@@71 $generated@@68 $generated@@72)) ($generated@@62 ($generated@@67 $generated@@69 $generated@@70 $generated@@71 $generated@@68 $generated@@72) $generated@@70 $generated@@71))
 :pattern ( ($generated@@67 $generated@@69 $generated@@70 $generated@@71 $generated@@68 $generated@@72))
)))
 :pattern ( ($generated@@47 $generated@@23 $generated@@68 ($generated@@24 $generated@@69 $generated@@70) $generated@@71))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ) (!  (=> ($generated@@36 $generated@@73 $generated@@74) (= $generated@@73 $generated@@74))
 :pattern ( ($generated@@36 $generated@@73 $generated@@74))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@22 $generated@@23 $generated@@75 ($generated@@24 $generated@@76 $generated@@77)) (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (!  (=> (and (and ($generated@@35 $generated@@78) ($generated@@25 $generated@@79 $generated@@76)) ($generated@@48 $generated@@76 $generated@@77 $generated@@78 $generated@@75 $generated@@79)) ($generated@@25 ($generated@@67 $generated@@76 $generated@@77 $generated@@78 $generated@@75 $generated@@79) $generated@@77))
 :pattern ( ($generated@@67 $generated@@76 $generated@@77 $generated@@78 $generated@@75 $generated@@79))
)))
 :pattern ( ($generated@@22 $generated@@23 $generated@@75 ($generated@@24 $generated@@76 $generated@@77)))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@T) ) (! (= ($generated@@25 ($generated@@56 $generated@@82 $generated@@80) $generated@@81) ($generated@@22 $generated@@82 $generated@@80 $generated@@81))
 :pattern ( ($generated@@25 ($generated@@56 $generated@@82 $generated@@80) $generated@@81))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@47 $generated@@45 $generated@@83 ($generated@@46 $generated@@84) $generated@@85) (forall (($generated@@86 T@U) ) (!  (=> ($generated@@19 $generated@@83 $generated@@86) ($generated@@62 $generated@@86 $generated@@84 $generated@@85))
 :pattern ( ($generated@@19 $generated@@83 $generated@@86))
)))
 :pattern ( ($generated@@47 $generated@@45 $generated@@83 ($generated@@46 $generated@@84) $generated@@85))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ) (! (= ($generated@@87 ($generated@@24 $generated@@88 $generated@@89)) $generated@@88)
 :pattern ( ($generated@@24 $generated@@88 $generated@@89))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ) (! (= ($generated@@90 ($generated@@24 $generated@@91 $generated@@92)) $generated@@92)
 :pattern ( ($generated@@24 $generated@@91 $generated@@92))
)))
(assert (forall (($generated@@94 T@U) ) (! (= ($generated@@93 ($generated@@46 $generated@@94)) $generated@@94)
 :pattern ( ($generated@@46 $generated@@94))
)))
(assert (forall (($generated@@96 T@U) ) (! (= ($generated@@95 ($generated@@46 $generated@@96)) $generated)
 :pattern ( ($generated@@46 $generated@@96))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@T) ) (! (= ($generated@@55 $generated@@98 ($generated@@56 $generated@@98 $generated@@97)) $generated@@97)
 :pattern ( ($generated@@56 $generated@@98 $generated@@97))
)))
(assert  (=> (<= 0 $generated@@42) (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ) (!  (=> (or ($generated@@44 $generated@@99 $generated@@101 $generated@@102) (and (< 0 $generated@@42) (and (and (and ($generated@@22 $generated@@45 $generated@@101 ($generated@@46 $generated@@99)) ($generated@@47 $generated@@45 $generated@@101 ($generated@@46 $generated@@99) $generated@@100)) (and ($generated@@22 $generated@@23 $generated@@102 ($generated@@24 $generated@@99 $generated@@99)) ($generated@@47 $generated@@23 $generated@@102 ($generated@@24 $generated@@99 $generated@@99) $generated@@100))) (and (forall (($generated@@103 T@U) ) (!  (=> ($generated@@25 $generated@@103 $generated@@99) (=> ($generated@@19 $generated@@101 $generated@@103) ($generated@@48 $generated@@99 $generated@@99 $generated@@100 $generated@@102 $generated@@103)))
 :pattern ( ($generated@@48 $generated@@99 $generated@@99 $generated@@100 $generated@@102 $generated@@103))
 :pattern ( ($generated@@19 $generated@@101 $generated@@103))
)) (forall (($generated@@104 T@U) ) (!  (=> ($generated@@25 $generated@@104 $generated@@99) (=> ($generated@@19 $generated@@101 $generated@@104) ($generated@@36 ($generated@@33 $generated@@99 $generated@@99 $generated@@100 $generated@@102 $generated@@104) $generated@@20)))
 :pattern ( ($generated@@33 $generated@@99 $generated@@99 $generated@@100 $generated@@102 $generated@@104))
 :pattern ( ($generated@@19 $generated@@101 $generated@@104))
)))))) ($generated@@47 $generated@@45 ($generated@@43 $generated@@99 $generated@@101 $generated@@102) ($generated@@46 $generated@@99) $generated@@100))
 :pattern ( ($generated@@47 $generated@@45 ($generated@@43 $generated@@99 $generated@@101 $generated@@102) ($generated@@46 $generated@@99) $generated@@100))
))))
(assert  (and (and (and (and (and (and (and (= ($generated@@3 $generated@@105) 5) (forall (($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (! (= ($generated@@107 $generated@@114 $generated@@115 ($generated@@111 $generated@@114 $generated@@115 $generated@@117 $generated@@118 $generated@@116) $generated@@118) $generated@@116)
 :weight 0
))) (forall (($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (!  (or (= $generated@@123 $generated@@124) (= ($generated@@107 $generated@@119 $generated@@120 ($generated@@111 $generated@@119 $generated@@120 $generated@@122 $generated@@123 $generated@@121) $generated@@124) ($generated@@107 $generated@@119 $generated@@120 $generated@@122 $generated@@124)))
 :weight 0
))) (= ($generated@@3 $generated@@108) 6)) (= ($generated@@3 $generated@@109) 7)) (forall (($generated@@125 T@T) ($generated@@126 T@T) ) (= ($generated@@3 ($generated@@110 $generated@@125 $generated@@126)) 8))) (forall (($generated@@127 T@T) ($generated@@128 T@T) ) (! (= ($generated@@112 ($generated@@110 $generated@@127 $generated@@128)) $generated@@127)
 :pattern ( ($generated@@110 $generated@@127 $generated@@128))
))) (forall (($generated@@129 T@T) ($generated@@130 T@T) ) (! (= ($generated@@113 ($generated@@110 $generated@@129 $generated@@130)) $generated@@130)
 :pattern ( ($generated@@110 $generated@@129 $generated@@130))
))))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (=> ($generated@@35 $generated@@134) (= ($generated@@47 $generated@@23 $generated@@131 ($generated@@24 $generated@@132 $generated@@133) $generated@@134) (forall (($generated@@135 T@U) ) (!  (=> (and (and ($generated@@25 $generated@@135 $generated@@132) ($generated@@62 $generated@@135 $generated@@132 $generated@@134)) ($generated@@48 $generated@@132 $generated@@133 $generated@@134 $generated@@131 $generated@@135)) (forall (($generated@@136 T@U) ) (!  (=> (and (or (not (= $generated@@136 $generated@@106)) (not true)) ($generated@@19 ($generated@@33 $generated@@132 $generated@@133 $generated@@134 $generated@@131 $generated@@135) ($generated@@56 $generated@@105 $generated@@136))) ($generated@@8 ($generated@@55 $generated@@4 ($generated@@107 $generated@@108 $generated@@109 ($generated@@107 $generated@@105 ($generated@@110 $generated@@108 $generated@@109) $generated@@134 $generated@@136) $generated@@0))))
 :pattern ( ($generated@@19 ($generated@@33 $generated@@132 $generated@@133 $generated@@134 $generated@@131 $generated@@135) ($generated@@56 $generated@@105 $generated@@136)))
)))
 :pattern ( ($generated@@67 $generated@@132 $generated@@133 $generated@@134 $generated@@131 $generated@@135))
 :pattern ( ($generated@@33 $generated@@132 $generated@@133 $generated@@134 $generated@@131 $generated@@135))
))))
 :pattern ( ($generated@@47 $generated@@23 $generated@@131 ($generated@@24 $generated@@132 $generated@@133) $generated@@134))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (!  (=> ($generated@@25 $generated@@139 ($generated@@24 $generated@@137 $generated@@138)) (and (= ($generated@@56 $generated@@23 ($generated@@55 $generated@@23 $generated@@139)) $generated@@139) ($generated@@22 $generated@@23 ($generated@@55 $generated@@23 $generated@@139) ($generated@@24 $generated@@137 $generated@@138))))
 :pattern ( ($generated@@25 $generated@@139 ($generated@@24 $generated@@137 $generated@@138)))
)))
(assert  (and (forall (($generated@@143 T@T) ($generated@@144 T@T) ($generated@@145 T@T) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ) (! (= ($generated@@140 $generated@@143 $generated@@144 $generated@@145 ($generated@@142 $generated@@143 $generated@@144 $generated@@145 $generated@@147 $generated@@148 $generated@@149 $generated@@146) $generated@@148 $generated@@149) $generated@@146)
 :weight 0
)) (and (forall (($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (!  (or (= $generated@@155 $generated@@157) (= ($generated@@140 $generated@@150 $generated@@151 $generated@@152 ($generated@@142 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@155 $generated@@156 $generated@@153) $generated@@157 $generated@@158) ($generated@@140 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@157 $generated@@158)))
 :weight 0
)) (forall (($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (!  (or (= $generated@@165 $generated@@167) (= ($generated@@140 $generated@@159 $generated@@160 $generated@@161 ($generated@@142 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@164 $generated@@165 $generated@@162) $generated@@166 $generated@@167) ($generated@@140 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@166 $generated@@167)))
 :weight 0
)))))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 Bool) ($generated@@172 T@U) ($generated@@173 T@U) ) (! (= ($generated@@8 ($generated@@140 $generated@@105 $generated@@108 $generated@@4 ($generated@@141 $generated@@168 $generated@@169 $generated@@170 $generated@@171) $generated@@172 $generated@@173))  (=> (and (or (not (= $generated@@172 $generated@@168)) (not true)) ($generated@@8 ($generated@@55 $generated@@4 ($generated@@107 $generated@@108 $generated@@109 ($generated@@107 $generated@@105 ($generated@@110 $generated@@108 $generated@@109) $generated@@169 $generated@@172) $generated@@170)))) $generated@@171))
 :pattern ( ($generated@@140 $generated@@105 $generated@@108 $generated@@4 ($generated@@141 $generated@@168 $generated@@169 $generated@@170 $generated@@171) $generated@@172 $generated@@173))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (!  (and (= ($generated@@95 ($generated@@24 $generated@@175 $generated@@176)) $generated@@1) (= ($generated@@174 ($generated@@24 $generated@@175 $generated@@176)) $generated@@2))
 :pattern ( ($generated@@24 $generated@@175 $generated@@176))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (=> (and (and ($generated@@35 $generated@@179) (and ($generated@@25 $generated@@181 $generated@@177) ($generated@@22 $generated@@23 $generated@@180 ($generated@@24 $generated@@177 $generated@@178)))) ($generated@@36 ($generated@@33 $generated@@177 $generated@@178 $generated@@34 $generated@@180 $generated@@181) $generated@@20)) (= ($generated@@48 $generated@@177 $generated@@178 $generated@@34 $generated@@180 $generated@@181) ($generated@@48 $generated@@177 $generated@@178 $generated@@179 $generated@@180 $generated@@181)))
 :pattern ( ($generated@@48 $generated@@177 $generated@@178 $generated@@34 $generated@@180 $generated@@181) ($generated@@35 $generated@@179))
 :pattern ( ($generated@@48 $generated@@177 $generated@@178 $generated@@179 $generated@@180 $generated@@181))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ) (!  (=> ($generated@@25 $generated@@182 ($generated@@46 $generated@@183)) (and (= ($generated@@56 $generated@@45 ($generated@@55 $generated@@45 $generated@@182)) $generated@@182) ($generated@@22 $generated@@45 ($generated@@55 $generated@@45 $generated@@182) ($generated@@46 $generated@@183))))
 :pattern ( ($generated@@25 $generated@@182 ($generated@@46 $generated@@183)))
)))
(assert (forall (($generated@@184 T@U) ($generated@@185 T@U) ) (! (= ($generated@@36 $generated@@184 $generated@@185) (forall (($generated@@186 T@U) ) (! (= ($generated@@19 $generated@@184 $generated@@186) ($generated@@19 $generated@@185 $generated@@186))
 :pattern ( ($generated@@19 $generated@@184 $generated@@186))
 :pattern ( ($generated@@19 $generated@@185 $generated@@186))
)))
 :pattern ( ($generated@@36 $generated@@184 $generated@@185))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 () T@U)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () T@U)
(declare-fun $generated@@191 () Bool)
(declare-fun $generated@@192 () Bool)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () Bool)
(declare-fun $generated@@195 () T@U)
(declare-fun $generated@@196 () T@U)
(declare-fun $generated@@197 () Bool)
(declare-fun $generated@@198 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 13) (let (($generated@@199 true))
(let (($generated@@200 true))
(let (($generated@@201  (=> (forall (($generated@@202 T@U) ) (!  (=> ($generated@@25 $generated@@202 $generated@@187) (=> ($generated@@19 $generated@@190 $generated@@202) ($generated@@36 ($generated@@33 $generated@@187 $generated@@187 $generated@@188 $generated@@189 $generated@@202) $generated@@20)))
 :pattern ( ($generated@@33 $generated@@187 $generated@@187 $generated@@188 $generated@@189 $generated@@202))
 :pattern ( ($generated@@19 $generated@@190 $generated@@202))
)) (and (=> (= (ControlFlow 0 3) (- 0 5)) $generated@@191) (=> $generated@@191 (and (=> (= (ControlFlow 0 3) (- 0 4)) $generated@@192) (=> $generated@@192 (and (=> (= (ControlFlow 0 3) 1) $generated@@200) (=> (= (ControlFlow 0 3) 2) $generated@@199)))))))))
(let (($generated@@203  (=> (=> ($generated@@19 $generated@@190 $generated@@193) ($generated@@36 ($generated@@33 $generated@@187 $generated@@187 $generated@@188 $generated@@189 $generated@@193) $generated@@20)) (=> (and (= $generated@@192 true) (= (ControlFlow 0 8) 3)) $generated@@201))))
(let (($generated@@204  (=> ($generated@@19 $generated@@190 $generated@@193) (=> (and ($generated@@62 ($generated@@56 $generated@@23 $generated@@189) ($generated@@24 $generated@@187 $generated@@187) $generated@@188) ($generated@@62 $generated@@193 $generated@@187 $generated@@188)) (and (=> (= (ControlFlow 0 6) (- 0 7)) ($generated@@48 $generated@@187 $generated@@187 $generated@@188 $generated@@189 $generated@@193)) (=> ($generated@@48 $generated@@187 $generated@@187 $generated@@188 $generated@@189 $generated@@193) (=> (and (and (= $generated@@194 (forall (($generated@@205 T@U) ($generated@@206 T@U) )  (=> (and (and (or (not (= $generated@@205 $generated@@106)) (not true)) ($generated@@8 ($generated@@55 $generated@@4 ($generated@@107 $generated@@108 $generated@@109 ($generated@@107 $generated@@105 ($generated@@110 $generated@@108 $generated@@109) $generated@@188 $generated@@205) $generated@@0)))) ($generated@@19 ($generated@@33 $generated@@187 $generated@@187 $generated@@188 $generated@@189 $generated@@193) ($generated@@56 $generated@@105 $generated@@205))) ($generated@@8 ($generated@@140 $generated@@105 $generated@@108 $generated@@4 $generated@@195 $generated@@205 $generated@@206))))) ($generated@@36 ($generated@@33 $generated@@187 $generated@@187 $generated@@188 $generated@@189 $generated@@193) $generated@@20)) (and (= $generated@@192 $generated@@194) (= (ControlFlow 0 6) 3))) $generated@@201)))))))
(let (($generated@@207  (=> (forall (($generated@@208 T@U) ) (!  (=> ($generated@@25 $generated@@208 $generated@@187) (=> ($generated@@19 $generated@@190 $generated@@208) ($generated@@48 $generated@@187 $generated@@187 $generated@@188 $generated@@189 $generated@@208)))
 :pattern ( ($generated@@48 $generated@@187 $generated@@187 $generated@@188 $generated@@189 $generated@@208))
 :pattern ( ($generated@@19 $generated@@190 $generated@@208))
)) (=> (and ($generated@@25 $generated@@193 $generated@@187) ($generated@@62 $generated@@193 $generated@@187 $generated@@188)) (and (=> (= (ControlFlow 0 9) 6) $generated@@204) (=> (= (ControlFlow 0 9) 8) $generated@@203))))))
(let (($generated@@209  (=> (=> ($generated@@19 $generated@@190 $generated@@196) ($generated@@48 $generated@@187 $generated@@187 $generated@@188 $generated@@189 $generated@@196)) (=> (and (= $generated@@191 true) (= (ControlFlow 0 11) 9)) $generated@@207))))
(let (($generated@@210  (=> ($generated@@19 $generated@@190 $generated@@196) (=> (and ($generated@@62 ($generated@@56 $generated@@23 $generated@@189) ($generated@@24 $generated@@187 $generated@@187) $generated@@188) ($generated@@62 $generated@@196 $generated@@187 $generated@@188)) (=> (and (and (= $generated@@197 (forall (($generated@@211 T@U) ($generated@@212 T@U) )  (=> (and (and (or (not (= $generated@@211 $generated@@106)) (not true)) ($generated@@8 ($generated@@55 $generated@@4 ($generated@@107 $generated@@108 $generated@@109 ($generated@@107 $generated@@105 ($generated@@110 $generated@@108 $generated@@109) $generated@@188 $generated@@211) $generated@@0)))) ($generated@@19 ($generated@@33 $generated@@187 $generated@@187 $generated@@188 $generated@@189 $generated@@196) ($generated@@56 $generated@@105 $generated@@211))) ($generated@@8 ($generated@@140 $generated@@105 $generated@@108 $generated@@4 $generated@@195 $generated@@211 $generated@@212))))) ($generated@@48 $generated@@187 $generated@@187 $generated@@188 $generated@@189 $generated@@196)) (and (= $generated@@191 $generated@@197) (= (ControlFlow 0 10) 9))) $generated@@207)))))
(let (($generated@@213  (=> (= $generated@@195 ($generated@@141 $generated@@106 $generated@@188 $generated@@0 false)) (=> (and ($generated@@25 $generated@@196 $generated@@187) ($generated@@62 $generated@@196 $generated@@187 $generated@@188)) (and (=> (= (ControlFlow 0 12) 10) $generated@@210) (=> (= (ControlFlow 0 12) 11) $generated@@209))))))
(let (($generated@@214  (=> (and ($generated@@35 $generated@@188) ($generated@@198 $generated@@188)) (=> (and (and ($generated@@22 $generated@@45 $generated@@190 ($generated@@46 $generated@@187)) ($generated@@22 $generated@@23 $generated@@189 ($generated@@24 $generated@@187 $generated@@187))) (and (= 0 $generated@@42) (= (ControlFlow 0 13) 12))) $generated@@213))))
$generated@@214)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)