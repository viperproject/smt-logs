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
(declare-fun $generated@@19 (T@U) T@U)
(declare-fun $generated@@20 (T@U) Int)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@22 (T@U Int) T@U)
(declare-fun $generated@@23 (T@U T@U) T@U)
(declare-fun $generated@@27 (T@U Int) T@U)
(declare-fun $generated@@28 (T@U T@U) T@U)
(declare-fun $generated@@34 (Int) Int)
(declare-fun $generated@@36 (T@T T@U) T@U)
(declare-fun $generated@@39 (T@T T@U T@U) Bool)
(declare-fun $generated@@40 () T@T)
(declare-fun $generated@@41 (T@U) T@U)
(declare-fun $generated@@42 (T@U T@U) Bool)
(declare-fun $generated@@46 () Int)
(declare-fun $generated@@47 (T@U Bool T@U) T@U)
(declare-fun $generated@@48 (T@U) T@U)
(declare-fun $generated@@49 (T@U) Bool)
(declare-fun $generated@@50 (Int) Bool)
(declare-fun $generated@@51 (T@T T@U) T@U)
(declare-fun $generated@@52 (T@U Int) T@U)
(declare-fun $generated@@53 (T@T T@U) T@U)
(declare-fun $generated@@54 (Int) Int)
(declare-fun $generated@@55 () Bool)
(declare-fun $generated@@63 (T@U T@U) Bool)
(declare-fun $generated@@69 (T@U) Int)
(declare-fun $generated@@80 (T@U T@U T@U) Bool)
(declare-fun $generated@@81 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@115 (T@U) T@U)
(declare-fun $generated@@120 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@121 () T@T)
(declare-fun $generated@@122 () T@T)
(declare-fun $generated@@123 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@124 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@125 () T@T)
(declare-fun $generated@@126 (T@T T@T) T@T)
(declare-fun $generated@@127 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@128 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@129 (T@T) T@T)
(declare-fun $generated@@130 (T@T) T@T)
(declare-fun $generated@@179 (T@U) T@U)
(declare-fun $generated@@180 (T@U) T@U)
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
(assert (= ($generated@@19 $generated) $generated@@0))
(assert (= ($generated@@20 $generated@@21) 0))
(assert (forall (($generated@@24 T@U) ($generated@@25 T@U) ($generated@@26 Int) ) (!  (=> (and (<= 0 $generated@@26) (<= $generated@@26 ($generated@@20 $generated@@24))) (= ($generated@@22 ($generated@@23 $generated@@24 $generated@@25) $generated@@26) ($generated@@23 ($generated@@22 $generated@@24 $generated@@26) $generated@@25)))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@24 $generated@@25) $generated@@26))
)))
(assert (forall (($generated@@29 T@U) ($generated@@30 T@U) ($generated@@31 Int) ) (!  (=> (= $generated@@31 ($generated@@20 $generated@@29)) (and (= ($generated@@27 ($generated@@28 $generated@@29 $generated@@30) $generated@@31) $generated@@29) (= ($generated@@22 ($generated@@28 $generated@@29 $generated@@30) $generated@@31) $generated@@30)))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@29 $generated@@30) $generated@@31))
 :pattern ( ($generated@@22 ($generated@@28 $generated@@29 $generated@@30) $generated@@31))
)))
(assert (forall (($generated@@32 T@U) ($generated@@33 Int) ) (!  (=> (= $generated@@33 0) (= ($generated@@22 $generated@@32 $generated@@33) $generated@@32))
 :pattern ( ($generated@@22 $generated@@32 $generated@@33))
)))
(assert (forall (($generated@@35 Int) ) (! (= ($generated@@34 $generated@@35) $generated@@35)
 :pattern ( ($generated@@34 $generated@@35))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@T) ) (! (= ($generated@@36 $generated@@38 $generated@@37) $generated@@37)
 :pattern ( ($generated@@36 $generated@@38 $generated@@37))
)))
(assert (= ($generated@@3 $generated@@40) 3))
(assert (forall (($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ) (!  (=> (and ($generated@@39 $generated@@40 $generated@@43 ($generated@@41 $generated@@45)) ($generated@@42 $generated@@44 $generated@@45)) ($generated@@39 $generated@@40 ($generated@@23 $generated@@43 $generated@@44) ($generated@@41 $generated@@45)))
 :pattern ( ($generated@@39 $generated@@40 ($generated@@23 $generated@@43 $generated@@44) ($generated@@41 $generated@@45)))
)))
(assert  (=> (<= 1 $generated@@46) (forall (($generated@@56 T@U) ($generated@@57 T@U) ) (!  (=> (or ($generated@@49 ($generated@@36 $generated@@40 $generated@@57)) (and (< 1 $generated@@46) ($generated@@39 $generated@@40 $generated@@57 ($generated@@41 $generated)))) (and (=> (or (not (= ($generated@@20 ($generated@@36 $generated@@40 $generated@@57)) ($generated@@34 0))) (not true)) (and ($generated@@50 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 ($generated@@36 $generated@@40 $generated@@57) ($generated@@34 0))))) ($generated@@49 ($generated@@36 $generated@@40 ($generated@@22 ($generated@@36 $generated@@40 $generated@@57) ($generated@@34 1)))))) (= ($generated@@47 ($generated@@48 $generated@@56) true ($generated@@36 $generated@@40 $generated@@57)) (ite (= ($generated@@20 ($generated@@36 $generated@@40 $generated@@57)) ($generated@@34 0)) $generated@@21 ($generated@@28 ($generated@@23 $generated@@21 ($generated@@53 $generated@@5 ($generated@@9 ($generated@@54 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 ($generated@@36 $generated@@40 $generated@@57) ($generated@@34 0)))))))) ($generated@@47 ($generated@@48 $generated@@56) $generated@@55 ($generated@@36 $generated@@40 ($generated@@22 ($generated@@36 $generated@@40 $generated@@57) ($generated@@34 1)))))))))
 :weight 3
 :pattern ( ($generated@@47 ($generated@@48 $generated@@56) true ($generated@@36 $generated@@40 $generated@@57)))
))))
(assert (forall (($generated@@58 T@U) ($generated@@59 Int) ($generated@@60 Int) ) (!  (=> (and (and (<= 0 $generated@@60) (< $generated@@60 $generated@@59)) (< $generated@@60 ($generated@@20 $generated@@58))) (= ($generated@@52 ($generated@@27 $generated@@58 $generated@@59) $generated@@60) ($generated@@52 $generated@@58 $generated@@60)))
 :weight 25
 :pattern ( ($generated@@52 ($generated@@27 $generated@@58 $generated@@59) $generated@@60))
 :pattern ( ($generated@@52 $generated@@58 $generated@@60) ($generated@@27 $generated@@58 $generated@@59))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 Int) ) (!  (=> (and (<= 0 $generated@@62) (<= $generated@@62 ($generated@@20 $generated@@61))) (= ($generated@@20 ($generated@@22 $generated@@61 $generated@@62)) (- ($generated@@20 $generated@@61) $generated@@62)))
 :pattern ( ($generated@@20 ($generated@@22 $generated@@61 $generated@@62)))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ) (! (= ($generated@@63 $generated@@64 $generated@@65)  (and (= ($generated@@20 $generated@@64) ($generated@@20 $generated@@65)) (forall (($generated@@66 Int) ) (!  (=> (and (<= 0 $generated@@66) (< $generated@@66 ($generated@@20 $generated@@64))) (= ($generated@@52 $generated@@64 $generated@@66) ($generated@@52 $generated@@65 $generated@@66)))
 :pattern ( ($generated@@52 $generated@@64 $generated@@66))
 :pattern ( ($generated@@52 $generated@@65 $generated@@66))
))))
 :pattern ( ($generated@@63 $generated@@64 $generated@@65))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@T) ) (! (= ($generated@@53 $generated@@68 ($generated@@51 $generated@@68 $generated@@67)) $generated@@67)
 :pattern ( ($generated@@51 $generated@@68 $generated@@67))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 Int) ) (!  (=> (and (<= 0 $generated@@71) (< $generated@@71 ($generated@@20 $generated@@70))) (< ($generated@@69 ($generated@@27 $generated@@70 $generated@@71)) ($generated@@69 $generated@@70)))
 :pattern ( ($generated@@69 ($generated@@27 $generated@@70 $generated@@71)))
)))
(assert  (=> (<= 1 $generated@@46) (forall (($generated@@72 T@U) ($generated@@73 Bool) ($generated@@74 T@U) ) (!  (=> (or ($generated@@49 $generated@@74) (and (< 1 $generated@@46) ($generated@@39 $generated@@40 $generated@@74 ($generated@@41 $generated)))) (and (and (= ($generated@@20 ($generated@@47 $generated@@72 $generated@@55 $generated@@74)) ($generated@@20 $generated@@74)) (forall (($generated@@75 Int) ) (!  (=> (and (<= ($generated@@34 0) $generated@@75) (< $generated@@75 ($generated@@20 $generated@@74))) (= ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 ($generated@@47 $generated@@72 $generated@@55 $generated@@74) $generated@@75))) ($generated@@54 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 $generated@@74 $generated@@75))))))
 :pattern ( ($generated@@51 $generated@@5 ($generated@@52 $generated@@74 $generated@@75)))
 :pattern ( ($generated@@51 $generated@@5 ($generated@@52 ($generated@@47 $generated@@72 $generated@@55 $generated@@74) $generated@@75)))
))) ($generated@@39 $generated@@40 ($generated@@47 $generated@@72 $generated@@73 $generated@@74) ($generated@@41 $generated))))
 :pattern ( ($generated@@47 $generated@@72 $generated@@73 $generated@@74))
))))
(assert (forall (($generated@@76 T@U) ($generated@@77 Int) ) (!  (=> (and (< 0 $generated@@77) (<= $generated@@77 ($generated@@20 $generated@@76))) (< ($generated@@69 ($generated@@22 $generated@@76 $generated@@77)) ($generated@@69 $generated@@76)))
 :pattern ( ($generated@@69 ($generated@@22 $generated@@76 $generated@@77)))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@20 ($generated@@23 $generated@@78 $generated@@79)) (+ 1 ($generated@@20 $generated@@78)))
 :pattern ( ($generated@@23 $generated@@78 $generated@@79))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@T) ) (! (= ($generated@@80 ($generated@@53 $generated@@85 $generated@@82) $generated@@83 $generated@@84) ($generated@@81 $generated@@85 $generated@@82 $generated@@83 $generated@@84))
 :pattern ( ($generated@@80 ($generated@@53 $generated@@85 $generated@@82) $generated@@83 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 Int) ($generated@@88 Int) ) (!  (=> (and (and (<= 0 $generated@@87) (<= 0 $generated@@88)) (< $generated@@88 (- ($generated@@20 $generated@@86) $generated@@87))) (= ($generated@@52 ($generated@@22 $generated@@86 $generated@@87) $generated@@88) ($generated@@52 $generated@@86 (+ $generated@@88 $generated@@87))))
 :weight 25
 :pattern ( ($generated@@52 ($generated@@22 $generated@@86 $generated@@87) $generated@@88))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@20 ($generated@@28 $generated@@89 $generated@@90)) (+ ($generated@@20 $generated@@89) ($generated@@20 $generated@@90)))
 :pattern ( ($generated@@20 ($generated@@28 $generated@@89 $generated@@90)))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 Int) ($generated@@93 T@U) ) (!  (and (=> (= $generated@@92 ($generated@@20 $generated@@91)) (= ($generated@@52 ($generated@@23 $generated@@91 $generated@@93) $generated@@92) $generated@@93)) (=> (or (not (= $generated@@92 ($generated@@20 $generated@@91))) (not true)) (= ($generated@@52 ($generated@@23 $generated@@91 $generated@@93) $generated@@92) ($generated@@52 $generated@@91 $generated@@92))))
 :pattern ( ($generated@@52 ($generated@@23 $generated@@91 $generated@@93) $generated@@92))
)))
(assert  (=> (<= 1 $generated@@46) (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (!  (=> (or ($generated@@49 $generated@@95) (and (< 1 $generated@@46) ($generated@@39 $generated@@40 $generated@@95 ($generated@@41 $generated)))) (and (=> (or (not (= ($generated@@20 $generated@@95) ($generated@@34 0))) (not true)) (and ($generated@@50 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 $generated@@95 ($generated@@34 0))))) ($generated@@49 ($generated@@22 $generated@@95 ($generated@@34 1))))) (= ($generated@@47 ($generated@@48 $generated@@94) true $generated@@95) (ite (= ($generated@@20 $generated@@95) ($generated@@34 0)) $generated@@21 ($generated@@28 ($generated@@23 $generated@@21 ($generated@@53 $generated@@5 ($generated@@9 ($generated@@54 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 $generated@@95 ($generated@@34 0)))))))) ($generated@@47 $generated@@94 $generated@@55 ($generated@@22 $generated@@95 ($generated@@34 1))))))))
 :pattern ( ($generated@@47 ($generated@@48 $generated@@94) true $generated@@95))
))))
(assert (forall (($generated@@96 T@U) ($generated@@97 Bool) ($generated@@98 T@U) ) (! (= ($generated@@47 ($generated@@48 $generated@@96) $generated@@97 $generated@@98) ($generated@@47 $generated@@96 $generated@@97 $generated@@98))
 :pattern ( ($generated@@47 ($generated@@48 $generated@@96) $generated@@97 $generated@@98))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (!  (=> ($generated@@63 $generated@@99 $generated@@100) (= $generated@@99 $generated@@100))
 :pattern ( ($generated@@63 $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 Int) ) (!  (=> (and (<= 0 $generated@@102) (<= $generated@@102 ($generated@@20 $generated@@101))) (= ($generated@@20 ($generated@@27 $generated@@101 $generated@@102)) $generated@@102))
 :pattern ( ($generated@@20 ($generated@@27 $generated@@101 $generated@@102)))
)))
(assert (forall (($generated@@103 T@U) ) (!  (=> ($generated@@42 $generated@@103 $generated) (and (= ($generated@@53 $generated@@5 ($generated@@51 $generated@@5 $generated@@103)) $generated@@103) ($generated@@39 $generated@@5 ($generated@@51 $generated@@5 $generated@@103) $generated)))
 :pattern ( ($generated@@42 $generated@@103 $generated))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@T) ) (! (= ($generated@@42 ($generated@@53 $generated@@106 $generated@@104) $generated@@105) ($generated@@39 $generated@@106 $generated@@104 $generated@@105))
 :pattern ( ($generated@@42 ($generated@@53 $generated@@106 $generated@@104) $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ) (! (<= 0 ($generated@@20 $generated@@107))
 :pattern ( ($generated@@20 $generated@@107))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 Int) ($generated@@110 Int) ) (!  (=> (and (and (<= 0 $generated@@109) (< $generated@@109 $generated@@110)) (<= $generated@@110 ($generated@@20 $generated@@108))) (< ($generated@@69 ($generated@@28 ($generated@@27 $generated@@108 $generated@@109) ($generated@@22 $generated@@108 $generated@@110))) ($generated@@69 $generated@@108)))
 :pattern ( ($generated@@69 ($generated@@28 ($generated@@27 $generated@@108 $generated@@109) ($generated@@22 $generated@@108 $generated@@110))))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (! (= ($generated@@81 $generated@@40 $generated@@111 ($generated@@41 $generated@@112) $generated@@113) (forall (($generated@@114 Int) ) (!  (=> (and (<= 0 $generated@@114) (< $generated@@114 ($generated@@20 $generated@@111))) ($generated@@80 ($generated@@52 $generated@@111 $generated@@114) $generated@@112 $generated@@113))
 :pattern ( ($generated@@52 $generated@@111 $generated@@114))
)))
 :pattern ( ($generated@@81 $generated@@40 $generated@@111 ($generated@@41 $generated@@112) $generated@@113))
)))
(assert (forall (($generated@@116 T@U) ) (! (= ($generated@@115 ($generated@@41 $generated@@116)) $generated@@116)
 :pattern ( ($generated@@41 $generated@@116))
)))
(assert (forall (($generated@@117 T@U) ) (! (= ($generated@@19 ($generated@@41 $generated@@117)) $generated@@1)
 :pattern ( ($generated@@41 $generated@@117))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@T) ) (! (= ($generated@@51 $generated@@119 ($generated@@53 $generated@@119 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@53 $generated@@119 $generated@@118))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@131 T@T) ($generated@@132 T@T) ($generated@@133 T@T) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (! (= ($generated@@120 $generated@@131 $generated@@132 $generated@@133 ($generated@@127 $generated@@131 $generated@@132 $generated@@133 $generated@@135 $generated@@136 $generated@@137 $generated@@134) $generated@@136 $generated@@137) $generated@@134)
 :weight 0
)) (and (forall (($generated@@138 T@T) ($generated@@139 T@T) ($generated@@140 T@T) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (!  (or (= $generated@@143 $generated@@145) (= ($generated@@120 $generated@@138 $generated@@139 $generated@@140 ($generated@@127 $generated@@138 $generated@@139 $generated@@140 $generated@@142 $generated@@143 $generated@@144 $generated@@141) $generated@@145 $generated@@146) ($generated@@120 $generated@@138 $generated@@139 $generated@@140 $generated@@142 $generated@@145 $generated@@146)))
 :weight 0
)) (forall (($generated@@147 T@T) ($generated@@148 T@T) ($generated@@149 T@T) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ) (!  (or (= $generated@@153 $generated@@155) (= ($generated@@120 $generated@@147 $generated@@148 $generated@@149 ($generated@@127 $generated@@147 $generated@@148 $generated@@149 $generated@@151 $generated@@152 $generated@@153 $generated@@150) $generated@@154 $generated@@155) ($generated@@120 $generated@@147 $generated@@148 $generated@@149 $generated@@151 $generated@@154 $generated@@155)))
 :weight 0
)))) (= ($generated@@3 $generated@@121) 4)) (= ($generated@@3 $generated@@122) 5)) (forall (($generated@@156 T@T) ($generated@@157 T@T) ($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ) (! (= ($generated@@124 $generated@@156 $generated@@157 ($generated@@128 $generated@@156 $generated@@157 $generated@@159 $generated@@160 $generated@@158) $generated@@160) $generated@@158)
 :weight 0
))) (forall (($generated@@161 T@T) ($generated@@162 T@T) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ) (!  (or (= $generated@@165 $generated@@166) (= ($generated@@124 $generated@@161 $generated@@162 ($generated@@128 $generated@@161 $generated@@162 $generated@@164 $generated@@165 $generated@@163) $generated@@166) ($generated@@124 $generated@@161 $generated@@162 $generated@@164 $generated@@166)))
 :weight 0
))) (= ($generated@@3 $generated@@125) 6)) (forall (($generated@@167 T@T) ($generated@@168 T@T) ) (= ($generated@@3 ($generated@@126 $generated@@167 $generated@@168)) 7))) (forall (($generated@@169 T@T) ($generated@@170 T@T) ) (! (= ($generated@@129 ($generated@@126 $generated@@169 $generated@@170)) $generated@@169)
 :pattern ( ($generated@@126 $generated@@169 $generated@@170))
))) (forall (($generated@@171 T@T) ($generated@@172 T@T) ) (! (= ($generated@@130 ($generated@@126 $generated@@171 $generated@@172)) $generated@@172)
 :pattern ( ($generated@@126 $generated@@171 $generated@@172))
))))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 Bool) ($generated@@177 T@U) ($generated@@178 T@U) ) (! (= ($generated@@8 ($generated@@120 $generated@@121 $generated@@122 $generated@@4 ($generated@@123 $generated@@173 $generated@@174 $generated@@175 $generated@@176) $generated@@177 $generated@@178))  (=> (and (or (not (= $generated@@177 $generated@@173)) (not true)) ($generated@@8 ($generated@@51 $generated@@4 ($generated@@124 $generated@@122 $generated@@125 ($generated@@124 $generated@@121 ($generated@@126 $generated@@122 $generated@@125) $generated@@174 $generated@@177) $generated@@175)))) $generated@@176))
 :pattern ( ($generated@@120 $generated@@121 $generated@@122 $generated@@4 ($generated@@123 $generated@@173 $generated@@174 $generated@@175 $generated@@176) $generated@@177 $generated@@178))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@U) ) (!  (and (= ($generated@@179 ($generated@@23 $generated@@181 $generated@@182)) $generated@@181) (= ($generated@@180 ($generated@@23 $generated@@181 $generated@@182)) $generated@@182))
 :pattern ( ($generated@@23 $generated@@181 $generated@@182))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (!  (=> ($generated@@42 $generated@@183 ($generated@@41 $generated@@184)) (and (= ($generated@@53 $generated@@40 ($generated@@51 $generated@@40 $generated@@183)) $generated@@183) ($generated@@39 $generated@@40 ($generated@@51 $generated@@40 $generated@@183) ($generated@@41 $generated@@184))))
 :pattern ( ($generated@@42 $generated@@183 ($generated@@41 $generated@@184)))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 Int) ($generated@@187 Int) ) (!  (=> (and (and (<= 0 $generated@@186) (<= $generated@@186 $generated@@187)) (< $generated@@187 ($generated@@20 $generated@@185))) (= ($generated@@52 ($generated@@22 $generated@@185 $generated@@186) (- $generated@@187 $generated@@186)) ($generated@@52 $generated@@185 $generated@@187)))
 :weight 25
 :pattern ( ($generated@@52 $generated@@185 $generated@@187) ($generated@@22 $generated@@185 $generated@@186))
)))
(assert (forall (($generated@@188 T@U) ($generated@@189 Int) ($generated@@190 Int) ) (!  (=> (and (and (<= 0 $generated@@189) (<= 0 $generated@@190)) (<= (+ $generated@@189 $generated@@190) ($generated@@20 $generated@@188))) (= ($generated@@22 ($generated@@22 $generated@@188 $generated@@189) $generated@@190) ($generated@@22 $generated@@188 (+ $generated@@189 $generated@@190))))
 :pattern ( ($generated@@22 ($generated@@22 $generated@@188 $generated@@189) $generated@@190))
)))
(assert (forall (($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 Int) ) (!  (and (=> (< $generated@@193 ($generated@@20 $generated@@191)) (= ($generated@@52 ($generated@@28 $generated@@191 $generated@@192) $generated@@193) ($generated@@52 $generated@@191 $generated@@193))) (=> (<= ($generated@@20 $generated@@191) $generated@@193) (= ($generated@@52 ($generated@@28 $generated@@191 $generated@@192) $generated@@193) ($generated@@52 $generated@@192 (- $generated@@193 ($generated@@20 $generated@@191))))))
 :pattern ( ($generated@@52 ($generated@@28 $generated@@191 $generated@@192) $generated@@193))
)))
(assert (forall (($generated@@194 Int) ) (! (= ($generated@@53 $generated@@5 ($generated@@9 ($generated@@34 $generated@@194))) ($generated@@36 $generated@@125 ($generated@@53 $generated@@5 ($generated@@9 $generated@@194))))
 :pattern ( ($generated@@53 $generated@@5 ($generated@@9 ($generated@@34 $generated@@194))))
)))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@T) ) (! (= ($generated@@53 $generated@@196 ($generated@@36 $generated@@196 $generated@@195)) ($generated@@36 $generated@@125 ($generated@@53 $generated@@196 $generated@@195)))
 :pattern ( ($generated@@53 $generated@@196 ($generated@@36 $generated@@196 $generated@@195)))
)))
(assert (forall (($generated@@197 T@U) ) (!  (=> (= ($generated@@20 $generated@@197) 0) (= $generated@@197 $generated@@21))
 :pattern ( ($generated@@20 $generated@@197))
)))
(assert (forall (($generated@@198 T@U) ($generated@@199 Int) ) (!  (=> (= $generated@@199 0) (= ($generated@@27 $generated@@198 $generated@@199) $generated@@21))
 :pattern ( ($generated@@27 $generated@@198 $generated@@199))
)))
(assert (forall (($generated@@200 T@U) ($generated@@201 T@U) ) (! ($generated@@81 $generated@@5 $generated@@201 $generated $generated@@200)
 :pattern ( ($generated@@81 $generated@@5 $generated@@201 $generated $generated@@200))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@202 ($generated@@41 $generated@@203)) (forall (($generated@@204 Int) ) (!  (=> (and (<= 0 $generated@@204) (< $generated@@204 ($generated@@20 $generated@@202))) ($generated@@42 ($generated@@52 $generated@@202 $generated@@204) $generated@@203))
 :pattern ( ($generated@@52 $generated@@202 $generated@@204))
)))
 :pattern ( ($generated@@39 $generated@@40 $generated@@202 ($generated@@41 $generated@@203)))
)))
(assert (forall (($generated@@205 T@U) ) (! ($generated@@39 $generated@@5 $generated@@205 $generated)
 :pattern ( ($generated@@39 $generated@@5 $generated@@205 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@206 () Int)
(declare-fun $generated@@207 () T@U)
(declare-fun $generated@@208 () T@U)
(declare-fun $generated@@209 () T@U)
(declare-fun $generated@@210 () Int)
(declare-fun $generated@@211 () Int)
(declare-fun $generated@@212 () T@U)
(declare-fun $generated@@213 () T@U)
(declare-fun $generated@@214 () T@U)
(declare-fun $generated@@215 (T@U) Bool)
(declare-fun $generated@@216 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 20) (let (($generated@@217 true))
(let (($generated@@218  (=> (and (and (<= ($generated@@34 0) $generated@@206) (< $generated@@206 ($generated@@20 $generated@@207))) ($generated@@81 $generated@@40 $generated@@207 ($generated@@41 $generated) $generated@@208)) (and (=> (= (ControlFlow 0 11) (- 0 14)) (or ($generated@@63 $generated@@207 $generated@@207) (< ($generated@@69 $generated@@207) ($generated@@69 $generated@@207)))) (=> (or ($generated@@63 $generated@@207 $generated@@207) (< ($generated@@69 $generated@@207) ($generated@@69 $generated@@207))) (=> (or ($generated@@63 $generated@@207 $generated@@207) ($generated@@49 $generated@@207)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (and (<= 0 $generated@@206) (< $generated@@206 ($generated@@20 ($generated@@47 ($generated@@48 $generated@@209) $generated@@55 $generated@@207))))) (=> (and (<= 0 $generated@@206) (< $generated@@206 ($generated@@20 ($generated@@47 ($generated@@48 $generated@@209) $generated@@55 $generated@@207)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (<= 0 $generated@@206) (< $generated@@206 ($generated@@20 $generated@@207)))) (=> (and (<= 0 $generated@@206) (< $generated@@206 ($generated@@20 $generated@@207))) (=> (= $generated@@210 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 $generated@@207 $generated@@206)))) (=> (and (and ($generated@@81 $generated@@5 ($generated@@9 $generated@@210) $generated $generated@@208) ($generated@@50 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 $generated@@207 $generated@@206))))) (and (= ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 ($generated@@47 ($generated@@48 $generated@@209) $generated@@55 $generated@@207) $generated@@206))) ($generated@@54 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 $generated@@207 $generated@@206))))) (= (ControlFlow 0 11) 9))) $generated@@217))))))))))))
(let (($generated@@219  (=> (and (< $generated@@206 ($generated@@34 0)) (= (ControlFlow 0 16) 11)) $generated@@218)))
(let (($generated@@220  (=> (and (<= ($generated@@34 0) $generated@@206) (= (ControlFlow 0 15) 11)) $generated@@218)))
(let (($generated@@221  (=> (and (=> (and (<= ($generated@@34 0) $generated@@206) (< $generated@@206 ($generated@@20 $generated@@207))) (= ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 ($generated@@47 ($generated@@48 $generated@@209) $generated@@55 $generated@@207) $generated@@206))) ($generated@@54 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 $generated@@207 $generated@@206)))))) (= (ControlFlow 0 10) 9)) $generated@@217)))
(let (($generated@@222  (=> (and ($generated@@39 $generated@@40 ($generated@@47 ($generated@@48 $generated@@209) $generated@@55 $generated@@207) ($generated@@41 $generated)) ($generated@@81 $generated@@40 $generated@@207 ($generated@@41 $generated) $generated@@208)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (or ($generated@@63 $generated@@207 $generated@@207) (< ($generated@@69 $generated@@207) ($generated@@69 $generated@@207)))) (=> (or ($generated@@63 $generated@@207 $generated@@207) (< ($generated@@69 $generated@@207) ($generated@@69 $generated@@207))) (=> (and (or ($generated@@63 $generated@@207 $generated@@207) ($generated@@49 $generated@@207)) (= ($generated@@20 ($generated@@47 ($generated@@48 $generated@@209) $generated@@55 $generated@@207)) ($generated@@20 $generated@@207))) (and (and (=> (= (ControlFlow 0 17) 10) $generated@@221) (=> (= (ControlFlow 0 17) 15) $generated@@220)) (=> (= (ControlFlow 0 17) 16) $generated@@219))))))))
(let (($generated@@223  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= ($generated@@20 ($generated@@47 ($generated@@48 ($generated@@48 $generated@@209)) $generated@@55 $generated@@207)) ($generated@@20 $generated@@207))) (=> (= ($generated@@20 ($generated@@47 ($generated@@48 ($generated@@48 $generated@@209)) $generated@@55 $generated@@207)) ($generated@@20 $generated@@207)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall (($generated@@224 Int) ) (!  (=> (and (<= ($generated@@34 0) $generated@@224) (< $generated@@224 ($generated@@20 $generated@@207))) (= ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 ($generated@@47 ($generated@@48 ($generated@@48 $generated@@209)) $generated@@55 $generated@@207) $generated@@224))) ($generated@@54 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 $generated@@207 $generated@@224))))))
 :pattern ( ($generated@@51 $generated@@5 ($generated@@52 $generated@@207 $generated@@224)))
 :pattern ( ($generated@@51 $generated@@5 ($generated@@52 ($generated@@47 ($generated@@48 ($generated@@48 $generated@@209)) $generated@@55 $generated@@207) $generated@@224)))
)))))))
(let (($generated@@225  (=> (or (not (= ($generated@@20 $generated@@207) ($generated@@34 0))) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 8)) (and (<= 0 ($generated@@34 0)) (< ($generated@@34 0) ($generated@@20 $generated@@207)))) (=> (and (<= 0 ($generated@@34 0)) (< ($generated@@34 0) ($generated@@20 $generated@@207))) (=> (= $generated@@211 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 $generated@@207 ($generated@@34 0))))) (=> (and ($generated@@81 $generated@@5 ($generated@@9 $generated@@211) $generated $generated@@208) ($generated@@50 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 $generated@@207 ($generated@@34 0)))))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (and (<= 0 ($generated@@34 1)) (<= ($generated@@34 1) ($generated@@20 $generated@@207)))) (=> (and (<= 0 ($generated@@34 1)) (<= ($generated@@34 1) ($generated@@20 $generated@@207))) (=> (and (= $generated@@212 ($generated@@22 $generated@@207 ($generated@@34 1))) ($generated@@81 $generated@@40 $generated@@212 ($generated@@41 $generated) $generated@@208)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< ($generated@@69 $generated@@212) ($generated@@69 $generated@@207))) (=> (< ($generated@@69 $generated@@212) ($generated@@69 $generated@@207)) (=> (and ($generated@@49 ($generated@@22 $generated@@207 ($generated@@34 1))) (= ($generated@@47 ($generated@@48 $generated@@209) $generated@@55 $generated@@207) ($generated@@28 ($generated@@23 $generated@@21 ($generated@@53 $generated@@5 ($generated@@9 ($generated@@54 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 $generated@@207 ($generated@@34 0)))))))) ($generated@@47 ($generated@@48 $generated@@209) $generated@@55 ($generated@@22 $generated@@207 ($generated@@34 1)))))) (=> (and (and ($generated@@50 ($generated@@10 ($generated@@51 $generated@@5 ($generated@@52 $generated@@207 ($generated@@34 0))))) ($generated@@49 ($generated@@22 $generated@@207 ($generated@@34 1)))) (and ($generated@@39 $generated@@40 ($generated@@47 ($generated@@48 $generated@@209) $generated@@55 $generated@@207) ($generated@@41 $generated)) (= (ControlFlow 0 5) 2))) $generated@@223))))))))))))))
(let (($generated@@226  (=> (and (and (= ($generated@@20 $generated@@207) ($generated@@34 0)) (= ($generated@@47 ($generated@@48 $generated@@209) $generated@@55 $generated@@207) ($generated@@36 $generated@@40 $generated@@21))) (and ($generated@@39 $generated@@40 ($generated@@47 ($generated@@48 $generated@@209) $generated@@55 $generated@@207) ($generated@@41 $generated)) (= (ControlFlow 0 4) 2))) $generated@@223)))
(let (($generated@@227  (=> (= $generated@@213 ($generated@@123 $generated@@214 $generated@@208 $generated@@2 false)) (and (and (=> (= (ControlFlow 0 19) 17) $generated@@222) (=> (= (ControlFlow 0 19) 4) $generated@@226)) (=> (= (ControlFlow 0 19) 5) $generated@@225)))))
(let (($generated@@228  (=> (and (and (and ($generated@@215 $generated@@208) ($generated@@216 $generated@@208)) ($generated@@39 $generated@@40 $generated@@207 ($generated@@41 $generated))) (and (= 1 $generated@@46) (= (ControlFlow 0 20) 19))) $generated@@227)))
$generated@@228))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)