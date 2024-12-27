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
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@25 (T@T T@U T@U) Bool)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 () T@U)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@33 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@41 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@44 (T@T T@T) T@T)
(declare-fun $generated@@45 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@46 (T@T) T@T)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@69 (T@U T@U) Bool)
(declare-fun $generated@@73 (Int) Int)
(declare-fun $generated@@75 (T@T T@U) T@U)
(declare-fun $generated@@78 () T@T)
(declare-fun $generated@@79 (T@U T@U) T@U)
(declare-fun $generated@@80 (T@U) T@U)
(declare-fun $generated@@81 (T@U T@U) Bool)
(declare-fun $generated@@85 (T@T T@U) T@U)
(declare-fun $generated@@90 (T@U T@U T@U) Bool)
(declare-fun $generated@@110 (T@U Int) T@U)
(declare-fun $generated@@125 (T@U) T@U)
(declare-fun $generated@@127 (T@U) T@U)
(declare-fun $generated@@131 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@132 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@133 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@165 (T@U) T@U)
(declare-fun $generated@@166 (T@U) T@U)
(declare-fun $generated@@171 (T@U) Bool)
(declare-fun $generated@@176 (T@U) T@U)
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
(assert (= ($generated@@23 $generated@@24) 0))
(assert (= ($generated@@7 $generated@@26) 3))
(assert (forall (($generated@@30 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@30 $generated@@27)  (or (= $generated@@30 $generated@@28) (= ($generated@@29 $generated@@30) $generated@@27)))
 :pattern ( ($generated@@25 $generated@@26 $generated@@30 $generated@@27))
)))
(assert (forall (($generated@@32 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@32 $generated@@31)  (or (= $generated@@32 $generated@@28) (= ($generated@@29 $generated@@32) $generated@@31)))
 :pattern ( ($generated@@25 $generated@@26 $generated@@32 $generated@@31))
)))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@U) ) (! (= ($generated@@33 $generated@@26 $generated@@35 $generated@@34 $generated@@36) ($generated@@33 $generated@@26 $generated@@35 $generated@@27 $generated@@36))
 :pattern ( ($generated@@33 $generated@@26 $generated@@35 $generated@@34 $generated@@36))
 :pattern ( ($generated@@33 $generated@@26 $generated@@35 $generated@@27 $generated@@36))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ) (! (= ($generated@@33 $generated@@26 $generated@@38 $generated@@37 $generated@@39) ($generated@@33 $generated@@26 $generated@@38 $generated@@31 $generated@@39))
 :pattern ( ($generated@@33 $generated@@26 $generated@@38 $generated@@37 $generated@@39))
 :pattern ( ($generated@@33 $generated@@26 $generated@@38 $generated@@31 $generated@@39))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@48 T@T) ($generated@@49 T@T) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@41 $generated@@48 $generated@@49 ($generated@@45 $generated@@48 $generated@@49 $generated@@51 $generated@@52 $generated@@50) $generated@@52) $generated@@50)
 :weight 0
)) (forall (($generated@@53 T@T) ($generated@@54 T@T) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (!  (or (= $generated@@57 $generated@@58) (= ($generated@@41 $generated@@53 $generated@@54 ($generated@@45 $generated@@53 $generated@@54 $generated@@56 $generated@@57 $generated@@55) $generated@@58) ($generated@@41 $generated@@53 $generated@@54 $generated@@56 $generated@@58)))
 :weight 0
))) (= ($generated@@7 $generated@@42) 4)) (= ($generated@@7 $generated@@43) 5)) (forall (($generated@@59 T@T) ($generated@@60 T@T) ) (= ($generated@@7 ($generated@@44 $generated@@59 $generated@@60)) 6))) (forall (($generated@@61 T@T) ($generated@@62 T@T) ) (! (= ($generated@@46 ($generated@@44 $generated@@61 $generated@@62)) $generated@@61)
 :pattern ( ($generated@@44 $generated@@61 $generated@@62))
))) (forall (($generated@@63 T@T) ($generated@@64 T@T) ) (! (= ($generated@@47 ($generated@@44 $generated@@63 $generated@@64)) $generated@@64)
 :pattern ( ($generated@@44 $generated@@63 $generated@@64))
))))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ) (! (= ($generated@@33 $generated@@26 $generated@@65 $generated@@27 $generated@@66)  (or (= $generated@@65 $generated@@28) ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@66 $generated@@65) $generated@@0)))))
 :pattern ( ($generated@@33 $generated@@26 $generated@@65 $generated@@27 $generated@@66))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@33 $generated@@26 $generated@@67 $generated@@31 $generated@@68)  (or (= $generated@@67 $generated@@28) ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@68 $generated@@67) $generated@@0)))))
 :pattern ( ($generated@@33 $generated@@26 $generated@@67 $generated@@31 $generated@@68))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ) (!  (=> ($generated@@69 $generated@@70 $generated@@71) (forall (($generated@@72 T@U) ) (!  (=> ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@70 $generated@@72) $generated@@0))) ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@71 $generated@@72) $generated@@0))))
 :pattern ( ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@71 $generated@@72) $generated@@0))
)))
 :pattern ( ($generated@@69 $generated@@70 $generated@@71))
)))
(assert (forall (($generated@@74 Int) ) (! (= ($generated@@73 $generated@@74) $generated@@74)
 :pattern ( ($generated@@73 $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@T) ) (! (= ($generated@@75 $generated@@77 $generated@@76) $generated@@76)
 :pattern ( ($generated@@75 $generated@@77 $generated@@76))
)))
(assert (= ($generated@@7 $generated@@78) 7))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ) (!  (=> (and ($generated@@25 $generated@@78 $generated@@82 ($generated@@80 $generated@@84)) ($generated@@81 $generated@@83 $generated@@84)) ($generated@@25 $generated@@78 ($generated@@79 $generated@@82 $generated@@83) ($generated@@80 $generated@@84)))
 :pattern ( ($generated@@25 $generated@@78 ($generated@@79 $generated@@82 $generated@@83) ($generated@@80 $generated@@84)))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@85 $generated@@87 ($generated@@40 $generated@@87 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@40 $generated@@87 $generated@@86))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ) (! (= ($generated@@23 ($generated@@79 $generated@@88 $generated@@89)) (+ 1 ($generated@@23 $generated@@88)))
 :pattern ( ($generated@@79 $generated@@88 $generated@@89))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@T) ) (! (= ($generated@@90 ($generated@@85 $generated@@94 $generated@@91) $generated@@92 $generated@@93) ($generated@@33 $generated@@94 $generated@@91 $generated@@92 $generated@@93))
 :pattern ( ($generated@@90 ($generated@@85 $generated@@94 $generated@@91) $generated@@92 $generated@@93))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ) (!  (=> ($generated@@69 $generated@@95 $generated@@96) (=> ($generated@@90 $generated@@97 $generated@@98 $generated@@95) ($generated@@90 $generated@@97 $generated@@98 $generated@@96)))
 :pattern ( ($generated@@69 $generated@@95 $generated@@96) ($generated@@90 $generated@@97 $generated@@98 $generated@@95))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@T) ) (!  (=> ($generated@@69 $generated@@99 $generated@@100) (=> ($generated@@33 $generated@@103 $generated@@101 $generated@@102 $generated@@99) ($generated@@33 $generated@@103 $generated@@101 $generated@@102 $generated@@100)))
 :pattern ( ($generated@@69 $generated@@99 $generated@@100) ($generated@@33 $generated@@103 $generated@@101 $generated@@102 $generated@@99))
)))
(assert (forall (($generated@@104 T@U) ) (!  (=> ($generated@@81 $generated@@104 $generated@@34) (and (= ($generated@@85 $generated@@26 ($generated@@40 $generated@@26 $generated@@104)) $generated@@104) ($generated@@25 $generated@@26 ($generated@@40 $generated@@26 $generated@@104) $generated@@34)))
 :pattern ( ($generated@@81 $generated@@104 $generated@@34))
)))
(assert (forall (($generated@@105 T@U) ) (!  (=> ($generated@@81 $generated@@105 $generated@@27) (and (= ($generated@@85 $generated@@26 ($generated@@40 $generated@@26 $generated@@105)) $generated@@105) ($generated@@25 $generated@@26 ($generated@@40 $generated@@26 $generated@@105) $generated@@27)))
 :pattern ( ($generated@@81 $generated@@105 $generated@@27))
)))
(assert (forall (($generated@@106 T@U) ) (!  (=> ($generated@@81 $generated@@106 $generated@@31) (and (= ($generated@@85 $generated@@26 ($generated@@40 $generated@@26 $generated@@106)) $generated@@106) ($generated@@25 $generated@@26 ($generated@@40 $generated@@26 $generated@@106) $generated@@31)))
 :pattern ( ($generated@@81 $generated@@106 $generated@@31))
)))
(assert (forall (($generated@@107 T@U) ) (!  (=> ($generated@@81 $generated@@107 $generated@@37) (and (= ($generated@@85 $generated@@26 ($generated@@40 $generated@@26 $generated@@107)) $generated@@107) ($generated@@25 $generated@@26 ($generated@@40 $generated@@26 $generated@@107) $generated@@37)))
 :pattern ( ($generated@@81 $generated@@107 $generated@@37))
)))
(assert (forall (($generated@@108 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@108 $generated@@34)  (and ($generated@@25 $generated@@26 $generated@@108 $generated@@27) (or (not (= $generated@@108 $generated@@28)) (not true))))
 :pattern ( ($generated@@25 $generated@@26 $generated@@108 $generated@@34))
 :pattern ( ($generated@@25 $generated@@26 $generated@@108 $generated@@27))
)))
(assert (forall (($generated@@109 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@109 $generated@@37)  (and ($generated@@25 $generated@@26 $generated@@109 $generated@@31) (or (not (= $generated@@109 $generated@@28)) (not true))))
 :pattern ( ($generated@@25 $generated@@26 $generated@@109 $generated@@37))
 :pattern ( ($generated@@25 $generated@@26 $generated@@109 $generated@@31))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 Int) ($generated@@113 T@U) ) (!  (and (=> (= $generated@@112 ($generated@@23 $generated@@111)) (= ($generated@@110 ($generated@@79 $generated@@111 $generated@@113) $generated@@112) $generated@@113)) (=> (or (not (= $generated@@112 ($generated@@23 $generated@@111))) (not true)) (= ($generated@@110 ($generated@@79 $generated@@111 $generated@@113) $generated@@112) ($generated@@110 $generated@@111 $generated@@112))))
 :pattern ( ($generated@@110 ($generated@@79 $generated@@111 $generated@@113) $generated@@112))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (!  (=> (or (not (= $generated@@114 $generated@@116)) (not true)) (=> (and ($generated@@69 $generated@@114 $generated@@115) ($generated@@69 $generated@@115 $generated@@116)) ($generated@@69 $generated@@114 $generated@@116)))
 :pattern ( ($generated@@69 $generated@@114 $generated@@115) ($generated@@69 $generated@@115 $generated@@116))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@T) ) (! (= ($generated@@81 ($generated@@85 $generated@@119 $generated@@117) $generated@@118) ($generated@@25 $generated@@119 $generated@@117 $generated@@118))
 :pattern ( ($generated@@81 ($generated@@85 $generated@@119 $generated@@117) $generated@@118))
)))
(assert (forall (($generated@@120 T@U) ) (! (<= 0 ($generated@@23 $generated@@120))
 :pattern ( ($generated@@23 $generated@@120))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@33 $generated@@78 $generated@@121 ($generated@@80 $generated@@122) $generated@@123) (forall (($generated@@124 Int) ) (!  (=> (and (<= 0 $generated@@124) (< $generated@@124 ($generated@@23 $generated@@121))) ($generated@@90 ($generated@@110 $generated@@121 $generated@@124) $generated@@122 $generated@@123))
 :pattern ( ($generated@@110 $generated@@121 $generated@@124))
)))
 :pattern ( ($generated@@33 $generated@@78 $generated@@121 ($generated@@80 $generated@@122) $generated@@123))
)))
(assert (forall (($generated@@126 T@U) ) (! (= ($generated@@125 ($generated@@80 $generated@@126)) $generated@@126)
 :pattern ( ($generated@@80 $generated@@126))
)))
(assert (forall (($generated@@128 T@U) ) (! (= ($generated@@127 ($generated@@80 $generated@@128)) $generated)
 :pattern ( ($generated@@80 $generated@@128))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@T) ) (! (= ($generated@@40 $generated@@130 ($generated@@85 $generated@@130 $generated@@129)) $generated@@129)
 :pattern ( ($generated@@85 $generated@@130 $generated@@129))
)))
(assert  (and (forall (($generated@@134 T@T) ($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@131 $generated@@134 $generated@@135 $generated@@136 ($generated@@133 $generated@@134 $generated@@135 $generated@@136 $generated@@138 $generated@@139 $generated@@140 $generated@@137) $generated@@139 $generated@@140) $generated@@137)
 :weight 0
)) (and (forall (($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ) (!  (or (= $generated@@146 $generated@@148) (= ($generated@@131 $generated@@141 $generated@@142 $generated@@143 ($generated@@133 $generated@@141 $generated@@142 $generated@@143 $generated@@145 $generated@@146 $generated@@147 $generated@@144) $generated@@148 $generated@@149) ($generated@@131 $generated@@141 $generated@@142 $generated@@143 $generated@@145 $generated@@148 $generated@@149)))
 :weight 0
)) (forall (($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (!  (or (= $generated@@156 $generated@@158) (= ($generated@@131 $generated@@150 $generated@@151 $generated@@152 ($generated@@133 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@155 $generated@@156 $generated@@153) $generated@@157 $generated@@158) ($generated@@131 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@157 $generated@@158)))
 :weight 0
)))))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 Bool) ($generated@@163 T@U) ($generated@@164 T@U) ) (! (= ($generated@@12 ($generated@@131 $generated@@26 $generated@@42 $generated@@8 ($generated@@132 $generated@@159 $generated@@160 $generated@@161 $generated@@162) $generated@@163 $generated@@164))  (=> (and (or (not (= $generated@@163 $generated@@159)) (not true)) ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@160 $generated@@163) $generated@@161)))) $generated@@162))
 :pattern ( ($generated@@131 $generated@@26 $generated@@42 $generated@@8 ($generated@@132 $generated@@159 $generated@@160 $generated@@161 $generated@@162) $generated@@163 $generated@@164))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ) (!  (and (= ($generated@@165 ($generated@@79 $generated@@167 $generated@@168)) $generated@@167) (= ($generated@@166 ($generated@@79 $generated@@167 $generated@@168)) $generated@@168))
 :pattern ( ($generated@@79 $generated@@167 $generated@@168))
)))
(assert (forall (($generated@@169 T@U) ($generated@@170 T@U) ) (!  (=> ($generated@@81 $generated@@169 ($generated@@80 $generated@@170)) (and (= ($generated@@85 $generated@@78 ($generated@@40 $generated@@78 $generated@@169)) $generated@@169) ($generated@@25 $generated@@78 ($generated@@40 $generated@@78 $generated@@169) ($generated@@80 $generated@@170))))
 :pattern ( ($generated@@81 $generated@@169 ($generated@@80 $generated@@170)))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ) (!  (=> ($generated@@171 ($generated@@45 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@172 $generated@@173 ($generated@@45 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@172 $generated@@173) $generated@@174 $generated@@175))) ($generated@@69 $generated@@172 ($generated@@45 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@172 $generated@@173 ($generated@@45 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@172 $generated@@173) $generated@@174 $generated@@175))))
 :pattern ( ($generated@@45 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@172 $generated@@173 ($generated@@45 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@172 $generated@@173) $generated@@174 $generated@@175)))
)))
(assert (= ($generated@@127 $generated@@34) $generated@@1))
(assert (= ($generated@@176 $generated@@34) $generated@@5))
(assert (= ($generated@@127 $generated@@27) $generated@@2))
(assert (= ($generated@@176 $generated@@27) $generated@@5))
(assert (= ($generated@@127 $generated@@31) $generated@@3))
(assert (= ($generated@@176 $generated@@31) $generated@@6))
(assert (= ($generated@@127 $generated@@37) $generated@@4))
(assert (= ($generated@@176 $generated@@37) $generated@@6))
(assert (forall (($generated@@177 Int) ) (! (= ($generated@@85 $generated@@9 ($generated@@13 ($generated@@73 $generated@@177))) ($generated@@75 $generated@@43 ($generated@@85 $generated@@9 ($generated@@13 $generated@@177))))
 :pattern ( ($generated@@85 $generated@@9 ($generated@@13 ($generated@@73 $generated@@177))))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@T) ) (! (= ($generated@@85 $generated@@179 ($generated@@75 $generated@@179 $generated@@178)) ($generated@@75 $generated@@43 ($generated@@85 $generated@@179 $generated@@178)))
 :pattern ( ($generated@@85 $generated@@179 ($generated@@75 $generated@@179 $generated@@178)))
)))
(assert (forall (($generated@@180 T@U) ) (!  (=> (= ($generated@@23 $generated@@180) 0) (= $generated@@180 $generated@@24))
 :pattern ( ($generated@@23 $generated@@180))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@U) ) (! (= ($generated@@25 $generated@@78 $generated@@181 ($generated@@80 $generated@@182)) (forall (($generated@@183 Int) ) (!  (=> (and (<= 0 $generated@@183) (< $generated@@183 ($generated@@23 $generated@@181))) ($generated@@81 ($generated@@110 $generated@@181 $generated@@183) $generated@@182))
 :pattern ( ($generated@@110 $generated@@181 $generated@@183))
)))
 :pattern ( ($generated@@25 $generated@@78 $generated@@181 ($generated@@80 $generated@@182)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@184 () T@U)
(declare-fun $generated@@185 () T@U)
(declare-fun $generated@@186 () T@U)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 () T@U)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 (T@U) Bool)
(declare-fun $generated@@191 () T@U)
(declare-fun $generated@@192 () Bool)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () Int)
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
 (=> (= (ControlFlow 0 0) 27) (let (($generated@@196  (=> (and (and (and (and (and (and (and (and (not ($generated@@12 ($generated@@75 $generated@@8 ($generated@@11 true)))) (not ($generated@@12 ($generated@@75 $generated@@8 ($generated@@11 true))))) (not ($generated@@12 ($generated@@75 $generated@@8 ($generated@@11 true))))) (not ($generated@@12 ($generated@@75 $generated@@8 ($generated@@11 true))))) (or (not (= $generated@@184 $generated@@28)) (not true))) (or (not (= $generated@@184 $generated@@28)) (not true))) (= $generated@@184 $generated@@28)) (= $generated@@184 $generated@@28)) (= (ControlFlow 0 24) (- 0 23))) false)))
(let (($generated@@197  (=> (or (not (= $generated@@184 $generated@@28)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (and (<= 0 ($generated@@73 0)) (< ($generated@@73 0) ($generated@@23 $generated@@185)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (not (and (or (not (= ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 ($generated@@73 0))) $generated@@28)) (not true)) (not ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@186 ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 ($generated@@73 0)))) $generated@@0))))))) (=> (not (and (or (not (= ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 ($generated@@73 0))) $generated@@28)) (not true)) (not ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@186 ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 ($generated@@73 0)))) $generated@@0)))))) (=> (= (ControlFlow 0 20) (- 0 19)) (not (forall (($generated@@198 Int) )  (=> (and (<= 0 $generated@@198) (< $generated@@198 ($generated@@23 $generated@@185))) (and (or (not (= ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 $generated@@198)) $generated@@28)) (not true)) (not ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@186 ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 $generated@@198))) $generated@@0)))))))))))))))
(let (($generated@@199  (=> (and (or (not (= $generated@@184 $generated@@28)) (not true)) (= (ControlFlow 0 18) (- 0 17))) (forall (($generated@@200 Int) )  (=> (and (<= 0 $generated@@200) (< $generated@@200 ($generated@@23 $generated@@185))) (and (or (not (= ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 $generated@@200)) $generated@@28)) (not true)) (not ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@186 ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 $generated@@200))) $generated@@0))))))))))
(let (($generated@@201  (=> (= $generated@@184 $generated@@28) (and (=> (= (ControlFlow 0 14) (- 0 16)) (and (<= 0 ($generated@@73 0)) (< ($generated@@73 0) ($generated@@23 $generated@@185)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (not (and (or (not (= ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 ($generated@@73 0))) $generated@@28)) (not true)) (not ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@186 ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 ($generated@@73 0)))) $generated@@0))))))) (=> (not (and (or (not (= ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 ($generated@@73 0))) $generated@@28)) (not true)) (not ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@186 ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 ($generated@@73 0)))) $generated@@0)))))) (=> (= (ControlFlow 0 14) (- 0 13)) (not (forall (($generated@@202 Int) )  (=> (and (<= 0 $generated@@202) (< $generated@@202 ($generated@@23 $generated@@185))) (and (or (not (= ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 $generated@@202)) $generated@@28)) (not true)) (not ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@186 ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 $generated@@202))) $generated@@0)))))))))))))))
(let (($generated@@203  (=> (and (= $generated@@184 $generated@@28) (= (ControlFlow 0 12) (- 0 11))) (forall (($generated@@204 Int) )  (=> (and (<= 0 $generated@@204) (< $generated@@204 ($generated@@23 $generated@@185))) (and (or (not (= ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 $generated@@204)) $generated@@28)) (not true)) (not ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@186 ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 $generated@@204))) $generated@@0))))))))))
(let (($generated@@205  (=> (= (ControlFlow 0 10) (- 0 9)) (forall (($generated@@206 Int) )  (=> (and (<= 0 $generated@@206) (< $generated@@206 ($generated@@23 $generated@@185))) (and (or (not (= ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 $generated@@206)) $generated@@28)) (not true)) (not ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@186 ($generated@@40 $generated@@26 ($generated@@110 $generated@@185 $generated@@206))) $generated@@0))))))))))
(let (($generated@@207  (and (=> (= (ControlFlow 0 6) (- 0 8)) (and (<= 0 ($generated@@73 1)) (< ($generated@@73 1) ($generated@@23 $generated@@185)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (not ($generated@@90 ($generated@@110 $generated@@185 ($generated@@73 1)) $generated@@27 $generated@@186))) (=> (not ($generated@@90 ($generated@@110 $generated@@185 ($generated@@73 1)) $generated@@27 $generated@@186)) (=> (= (ControlFlow 0 6) (- 0 5)) (not ($generated@@90 ($generated@@85 $generated@@78 $generated@@185) ($generated@@80 $generated@@27) $generated@@186))))))))
(let (($generated@@208  (=> (= (ControlFlow 0 4) (- 0 3)) ($generated@@90 ($generated@@85 $generated@@78 $generated@@185) ($generated@@80 $generated@@27) $generated@@186))))
(let (($generated@@209  (=> (= (ControlFlow 0 2) (- 0 1)) ($generated@@90 ($generated@@85 $generated@@78 $generated@@185) ($generated@@80 $generated@@27) $generated@@187))))
(let (($generated@@210  (=> (= $generated@@188 ($generated@@132 $generated@@28 $generated@@186 $generated@@0 false)) (=> (and (or (not (= $generated@@189 $generated@@28)) (not true)) ($generated@@25 $generated@@26 $generated@@189 $generated@@27)) (=> (and (and (not ($generated@@12 ($generated@@40 $generated@@8 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@186 $generated@@189) $generated@@0)))) (= $generated@@187 ($generated@@45 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@186 $generated@@189 ($generated@@45 $generated@@42 $generated@@43 ($generated@@41 $generated@@26 ($generated@@44 $generated@@42 $generated@@43) $generated@@186 $generated@@189) $generated@@0 ($generated@@85 $generated@@8 ($generated@@11 true)))))) (and ($generated@@171 $generated@@187) ($generated@@190 $generated@@187))) (and (=> (= (ControlFlow 0 25) (- 0 26)) true) (=> (= $generated@@185 ($generated@@79 ($generated@@79 $generated@@24 ($generated@@85 $generated@@26 $generated@@184)) ($generated@@85 $generated@@26 $generated@@189))) (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 25) 2) $generated@@209) (=> (= (ControlFlow 0 25) 4) $generated@@208)) (=> (= (ControlFlow 0 25) 6) $generated@@207)) (=> (= (ControlFlow 0 25) 10) $generated@@205)) (=> (= (ControlFlow 0 25) 12) $generated@@203)) (=> (= (ControlFlow 0 25) 14) $generated@@201)) (=> (= (ControlFlow 0 25) 18) $generated@@199)) (=> (= (ControlFlow 0 25) 20) $generated@@197)) (=> (= (ControlFlow 0 25) 24) $generated@@196)))))))))
(let (($generated@@211  (=> (and (and (and (and ($generated@@171 $generated@@186) ($generated@@190 $generated@@186)) (and (or (not (= $generated@@191 $generated@@28)) (not true)) (and ($generated@@25 $generated@@26 $generated@@191 $generated@@37) ($generated@@33 $generated@@26 $generated@@191 $generated@@37 $generated@@186)))) (and (and ($generated@@25 $generated@@26 $generated@@184 $generated@@27) ($generated@@33 $generated@@26 $generated@@184 $generated@@27 $generated@@186)) (and (=> $generated@@192 (and ($generated@@25 $generated@@26 $generated@@193 $generated@@34) ($generated@@33 $generated@@26 $generated@@193 $generated@@34 $generated@@186))) true))) (and (and (and ($generated@@25 $generated@@78 $generated@@194 ($generated@@80 $generated@@27)) ($generated@@33 $generated@@78 $generated@@194 ($generated@@80 $generated@@27) $generated@@186)) true) (and (= 1 $generated@@195) (= (ControlFlow 0 27) 25)))) $generated@@210)))
$generated@@211))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 10) (- 9))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 12) (- 11))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 18) (- 17))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)