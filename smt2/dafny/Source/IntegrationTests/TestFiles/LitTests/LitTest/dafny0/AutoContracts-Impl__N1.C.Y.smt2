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
(declare-fun $generated@@10 (T@T) Int)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 (Bool) T@U)
(declare-fun $generated@@15 (T@U) Bool)
(declare-fun $generated@@16 (Int) T@U)
(declare-fun $generated@@17 (T@U) Int)
(declare-fun $generated@@18 (Real) T@U)
(declare-fun $generated@@19 (T@U) Real)
(declare-fun $generated@@26 (T@U) Int)
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@28 () Int)
(declare-fun $generated@@29 (T@U T@U) Bool)
(declare-fun $generated@@30 (T@U) Bool)
(declare-fun $generated@@31 (T@U T@U) Bool)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@33 (T@T T@U T@U) Bool)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 () T@U)
(declare-fun $generated@@36 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@37 (T@U T@U) Bool)
(declare-fun $generated@@38 (T@T T@U) T@U)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@41 () T@T)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 (T@T T@T) T@T)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@45 (T@T T@U) T@U)
(declare-fun $generated@@46 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@48 (T@T) T@T)
(declare-fun $generated@@68 () T@U)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@71 () T@U)
(declare-fun $generated@@72 () T@U)
(declare-fun $generated@@77 (T@U T@U) T@U)
(declare-fun $generated@@78 (T@U) Bool)
(declare-fun $generated@@83 (T@U T@U) Bool)
(declare-fun $generated@@87 (T@T T@U) T@U)
(declare-fun $generated@@92 (T@U) T@U)
(declare-fun $generated@@93 (T@U T@U) Bool)
(declare-fun $generated@@97 (T@U T@U T@U) Bool)
(declare-fun $generated@@124 (T@U) T@U)
(declare-fun $generated@@135 (T@U) T@U)
(declare-fun $generated@@137 (T@U) T@U)
(declare-fun $generated@@141 (T@U) Bool)
(declare-fun $generated@@147 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@148 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@149 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@189 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@10 $generated@@11) 0) (= ($generated@@10 $generated@@12) 1)) (= ($generated@@10 $generated@@13) 2)) (forall (($generated@@20 Bool) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Int) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 Real) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9)
)
(assert (= ($generated@@26 $generated@@0) 0))
(assert (= ($generated@@27 $generated@@0) $generated@@1))
(assert  (and (and (and (and (and (and (and (and (= ($generated@@10 $generated@@34) 3) (= ($generated@@10 $generated@@39) 4)) (forall (($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@40 $generated@@49 $generated@@50 ($generated@@46 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@51) $generated@@53) $generated@@51)
 :weight 0
))) (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (!  (or (= $generated@@58 $generated@@59) (= ($generated@@40 $generated@@54 $generated@@55 ($generated@@46 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@56) $generated@@59) ($generated@@40 $generated@@54 $generated@@55 $generated@@57 $generated@@59)))
 :weight 0
))) (= ($generated@@10 $generated@@41) 5)) (= ($generated@@10 $generated@@42) 6)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ) (= ($generated@@10 ($generated@@43 $generated@@60 $generated@@61)) 7))) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (! (= ($generated@@47 ($generated@@43 $generated@@62 $generated@@63)) $generated@@62)
 :pattern ( ($generated@@43 $generated@@62 $generated@@63))
))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@48 ($generated@@43 $generated@@64 $generated@@65)) $generated@@65)
 :pattern ( ($generated@@43 $generated@@64 $generated@@65))
))))
(assert  (=> (<= 0 $generated@@28) (forall (($generated@@66 T@U) ($generated@@67 T@U) ) (!  (=> (or ($generated@@31 $generated@@66 $generated@@67) (and (< 0 $generated@@28) (and ($generated@@30 $generated@@66) (and (or (not (= $generated@@67 $generated@@32)) (not true)) (and ($generated@@33 $generated@@34 $generated@@67 $generated@@35) ($generated@@36 $generated@@34 $generated@@67 $generated@@35 $generated@@66)))))) (= ($generated@@29 $generated@@66 $generated@@67)  (and (and ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@66 $generated@@67) $generated@@44)) ($generated@@45 $generated@@34 $generated@@67)) (not ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@66 $generated@@67) $generated@@44)) ($generated@@45 $generated@@34 $generated@@32)))) true)))
 :pattern ( ($generated@@29 $generated@@66 $generated@@67) ($generated@@30 $generated@@66))
))))
(assert (forall (($generated@@70 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@70 $generated@@68)  (or (= $generated@@70 $generated@@32) (= ($generated@@69 $generated@@70) $generated@@68)))
 :pattern ( ($generated@@33 $generated@@34 $generated@@70 $generated@@68))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ) (! (= ($generated@@36 $generated@@34 $generated@@73 $generated@@71 $generated@@74) ($generated@@36 $generated@@34 $generated@@73 $generated@@72 $generated@@74))
 :pattern ( ($generated@@36 $generated@@34 $generated@@73 $generated@@71 $generated@@74))
 :pattern ( ($generated@@36 $generated@@34 $generated@@73 $generated@@72 $generated@@74))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ) (! (= ($generated@@36 $generated@@34 $generated@@75 $generated@@35 $generated@@76) ($generated@@36 $generated@@34 $generated@@75 $generated@@68 $generated@@76))
 :pattern ( ($generated@@36 $generated@@34 $generated@@75 $generated@@35 $generated@@76))
 :pattern ( ($generated@@36 $generated@@34 $generated@@75 $generated@@68 $generated@@76))
)))
(assert (= ($generated@@26 $generated@@44) 0))
(assert (= ($generated@@77 $generated@@4 $generated@@9) $generated@@44))
(assert ($generated@@78 $generated@@44))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@36 $generated@@34 $generated@@79 $generated@@72 $generated@@80)  (or (= $generated@@79 $generated@@32) ($generated@@15 ($generated@@38 $generated@@11 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@80 $generated@@79) $generated@@0)))))
 :pattern ( ($generated@@36 $generated@@34 $generated@@79 $generated@@72 $generated@@80))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@36 $generated@@34 $generated@@81 $generated@@68 $generated@@82)  (or (= $generated@@81 $generated@@32) ($generated@@15 ($generated@@38 $generated@@11 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@82 $generated@@81) $generated@@0)))))
 :pattern ( ($generated@@36 $generated@@34 $generated@@81 $generated@@68 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (!  (=> ($generated@@83 $generated@@84 $generated@@85) (forall (($generated@@86 T@U) ) (!  (=> ($generated@@15 ($generated@@38 $generated@@11 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@84 $generated@@86) $generated@@0))) ($generated@@15 ($generated@@38 $generated@@11 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@85 $generated@@86) $generated@@0))))
 :pattern ( ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@85 $generated@@86) $generated@@0))
)))
 :pattern ( ($generated@@83 $generated@@84 $generated@@85))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@87 $generated@@89 $generated@@88) $generated@@88)
 :pattern ( ($generated@@87 $generated@@89 $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@T) ) (! (= ($generated@@45 $generated@@91 ($generated@@38 $generated@@91 $generated@@90)) $generated@@90)
 :pattern ( ($generated@@38 $generated@@91 $generated@@90))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@33 $generated@@39 $generated@@94 ($generated@@92 $generated@@95)) (forall (($generated@@96 T@U) ) (!  (=> ($generated@@37 $generated@@94 $generated@@96) ($generated@@93 $generated@@96 $generated@@95))
 :pattern ( ($generated@@37 $generated@@94 $generated@@96))
)))
 :pattern ( ($generated@@33 $generated@@39 $generated@@94 ($generated@@92 $generated@@95)))
)))
(assert ($generated@@78 $generated@@0))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@T) ) (! (= ($generated@@97 ($generated@@45 $generated@@101 $generated@@98) $generated@@99 $generated@@100) ($generated@@36 $generated@@101 $generated@@98 $generated@@99 $generated@@100))
 :pattern ( ($generated@@97 ($generated@@45 $generated@@101 $generated@@98) $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (!  (=> ($generated@@83 $generated@@102 $generated@@103) (=> ($generated@@97 $generated@@104 $generated@@105 $generated@@102) ($generated@@97 $generated@@104 $generated@@105 $generated@@103)))
 :pattern ( ($generated@@83 $generated@@102 $generated@@103) ($generated@@97 $generated@@104 $generated@@105 $generated@@102))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@T) ) (!  (=> ($generated@@83 $generated@@106 $generated@@107) (=> ($generated@@36 $generated@@110 $generated@@108 $generated@@109 $generated@@106) ($generated@@36 $generated@@110 $generated@@108 $generated@@109 $generated@@107)))
 :pattern ( ($generated@@83 $generated@@106 $generated@@107) ($generated@@36 $generated@@110 $generated@@108 $generated@@109 $generated@@106))
)))
(assert (forall (($generated@@111 T@U) ) (!  (=> ($generated@@93 $generated@@111 $generated@@72) (and (= ($generated@@45 $generated@@34 ($generated@@38 $generated@@34 $generated@@111)) $generated@@111) ($generated@@33 $generated@@34 ($generated@@38 $generated@@34 $generated@@111) $generated@@72)))
 :pattern ( ($generated@@93 $generated@@111 $generated@@72))
)))
(assert (forall (($generated@@112 T@U) ) (!  (=> ($generated@@93 $generated@@112 $generated@@71) (and (= ($generated@@45 $generated@@34 ($generated@@38 $generated@@34 $generated@@112)) $generated@@112) ($generated@@33 $generated@@34 ($generated@@38 $generated@@34 $generated@@112) $generated@@71)))
 :pattern ( ($generated@@93 $generated@@112 $generated@@71))
)))
(assert (forall (($generated@@113 T@U) ) (!  (=> ($generated@@93 $generated@@113 $generated@@68) (and (= ($generated@@45 $generated@@34 ($generated@@38 $generated@@34 $generated@@113)) $generated@@113) ($generated@@33 $generated@@34 ($generated@@38 $generated@@34 $generated@@113) $generated@@68)))
 :pattern ( ($generated@@93 $generated@@113 $generated@@68))
)))
(assert (forall (($generated@@114 T@U) ) (!  (=> ($generated@@93 $generated@@114 $generated@@35) (and (= ($generated@@45 $generated@@34 ($generated@@38 $generated@@34 $generated@@114)) $generated@@114) ($generated@@33 $generated@@34 ($generated@@38 $generated@@34 $generated@@114) $generated@@35)))
 :pattern ( ($generated@@93 $generated@@114 $generated@@35))
)))
(assert (forall (($generated@@115 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@115 $generated@@71)  (and ($generated@@33 $generated@@34 $generated@@115 $generated@@72) (or (not (= $generated@@115 $generated@@32)) (not true))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@115 $generated@@71))
 :pattern ( ($generated@@33 $generated@@34 $generated@@115 $generated@@72))
)))
(assert (forall (($generated@@116 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@116 $generated@@35)  (and ($generated@@33 $generated@@34 $generated@@116 $generated@@68) (or (not (= $generated@@116 $generated@@32)) (not true))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@116 $generated@@35))
 :pattern ( ($generated@@33 $generated@@34 $generated@@116 $generated@@68))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ) (!  (=> (and ($generated@@30 $generated@@117) (and (or (not (= $generated@@118 $generated@@32)) (not true)) (= ($generated@@69 $generated@@118) $generated@@68))) ($generated@@33 $generated@@39 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@117 $generated@@118) $generated@@44)) ($generated@@92 $generated@@72)))
 :pattern ( ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@117 $generated@@118) $generated@@44)))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@U) ) (!  (=> (and (and ($generated@@30 $generated@@119) (and (or (not (= $generated@@120 $generated@@32)) (not true)) (= ($generated@@69 $generated@@120) $generated@@68))) ($generated@@15 ($generated@@38 $generated@@11 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@119 $generated@@120) $generated@@0)))) ($generated@@36 $generated@@39 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@119 $generated@@120) $generated@@44)) ($generated@@92 $generated@@72) $generated@@119))
 :pattern ( ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@119 $generated@@120) $generated@@44)))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (!  (=> (or (not (= $generated@@121 $generated@@123)) (not true)) (=> (and ($generated@@83 $generated@@121 $generated@@122) ($generated@@83 $generated@@122 $generated@@123)) ($generated@@83 $generated@@121 $generated@@123)))
 :pattern ( ($generated@@83 $generated@@121 $generated@@122) ($generated@@83 $generated@@122 $generated@@123))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ) (!  (and (= ($generated@@124 ($generated@@77 $generated@@125 $generated@@126)) $generated@@125) (= ($generated@@27 ($generated@@77 $generated@@125 $generated@@126)) $generated@@126))
 :pattern ( ($generated@@77 $generated@@125 $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@T) ) (! (= ($generated@@93 ($generated@@45 $generated@@129 $generated@@127) $generated@@128) ($generated@@33 $generated@@129 $generated@@127 $generated@@128))
 :pattern ( ($generated@@93 ($generated@@45 $generated@@129 $generated@@127) $generated@@128))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (! (= ($generated@@36 $generated@@39 $generated@@130 ($generated@@92 $generated@@131) $generated@@132) (forall (($generated@@133 T@U) ) (!  (=> ($generated@@37 $generated@@130 $generated@@133) ($generated@@97 $generated@@133 $generated@@131 $generated@@132))
 :pattern ( ($generated@@37 $generated@@130 $generated@@133))
)))
 :pattern ( ($generated@@36 $generated@@39 $generated@@130 ($generated@@92 $generated@@131) $generated@@132))
)))
(assert (forall (($generated@@134 T@U) ) (! ($generated@@33 $generated@@34 $generated@@134 $generated@@72)
 :pattern ( ($generated@@33 $generated@@34 $generated@@134 $generated@@72))
)))
(assert (forall (($generated@@136 T@U) ) (! (= ($generated@@135 ($generated@@92 $generated@@136)) $generated@@136)
 :pattern ( ($generated@@92 $generated@@136))
)))
(assert (forall (($generated@@138 T@U) ) (! (= ($generated@@137 ($generated@@92 $generated@@138)) $generated)
 :pattern ( ($generated@@92 $generated@@138))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@T) ) (! (= ($generated@@38 $generated@@140 ($generated@@45 $generated@@140 $generated@@139)) $generated@@139)
 :pattern ( ($generated@@45 $generated@@140 $generated@@139))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ) (!  (=> (and (and (and ($generated@@30 $generated@@142) ($generated@@30 $generated@@143)) (and (or (not (= $generated@@144 $generated@@32)) (not true)) ($generated@@33 $generated@@34 $generated@@144 $generated@@35))) (and ($generated@@141 $generated@@142) ($generated@@83 $generated@@142 $generated@@143))) (=> (forall (($generated@@145 T@U) ($generated@@146 T@U) )  (=> (and (or (not (= $generated@@145 $generated@@32)) (not true)) (or (= $generated@@145 $generated@@144) ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@142 $generated@@144) $generated@@44)) ($generated@@45 $generated@@34 $generated@@145)))) (= ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@142 $generated@@145) $generated@@146) ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@143 $generated@@145) $generated@@146)))) (= ($generated@@29 $generated@@142 $generated@@144) ($generated@@29 $generated@@143 $generated@@144))))
 :pattern ( ($generated@@141 $generated@@142) ($generated@@83 $generated@@142 $generated@@143) ($generated@@29 $generated@@143 $generated@@144))
)))
(assert  (and (forall (($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@147 $generated@@150 $generated@@151 $generated@@152 ($generated@@149 $generated@@150 $generated@@151 $generated@@152 $generated@@154 $generated@@155 $generated@@156 $generated@@153) $generated@@155 $generated@@156) $generated@@153)
 :weight 0
)) (and (forall (($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ) (!  (or (= $generated@@162 $generated@@164) (= ($generated@@147 $generated@@157 $generated@@158 $generated@@159 ($generated@@149 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@162 $generated@@163 $generated@@160) $generated@@164 $generated@@165) ($generated@@147 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@164 $generated@@165)))
 :weight 0
)) (forall (($generated@@166 T@T) ($generated@@167 T@T) ($generated@@168 T@T) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ) (!  (or (= $generated@@172 $generated@@174) (= ($generated@@147 $generated@@166 $generated@@167 $generated@@168 ($generated@@149 $generated@@166 $generated@@167 $generated@@168 $generated@@170 $generated@@171 $generated@@172 $generated@@169) $generated@@173 $generated@@174) ($generated@@147 $generated@@166 $generated@@167 $generated@@168 $generated@@170 $generated@@173 $generated@@174)))
 :weight 0
)))))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 Bool) ($generated@@179 T@U) ($generated@@180 T@U) ) (! (= ($generated@@15 ($generated@@147 $generated@@34 $generated@@41 $generated@@11 ($generated@@148 $generated@@175 $generated@@176 $generated@@177 $generated@@178) $generated@@179 $generated@@180))  (=> (and (or (not (= $generated@@179 $generated@@175)) (not true)) ($generated@@15 ($generated@@38 $generated@@11 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@176 $generated@@179) $generated@@177)))) $generated@@178))
 :pattern ( ($generated@@147 $generated@@34 $generated@@41 $generated@@11 ($generated@@148 $generated@@175 $generated@@176 $generated@@177 $generated@@178) $generated@@179 $generated@@180))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@U) ) (!  (=> ($generated@@93 $generated@@181 ($generated@@92 $generated@@182)) (and (= ($generated@@45 $generated@@39 ($generated@@38 $generated@@39 $generated@@181)) $generated@@181) ($generated@@33 $generated@@39 ($generated@@38 $generated@@39 $generated@@181) ($generated@@92 $generated@@182))))
 :pattern ( ($generated@@93 $generated@@181 ($generated@@92 $generated@@182)))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ) (!  (=> ($generated@@30 ($generated@@46 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@183 $generated@@184 ($generated@@46 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@183 $generated@@184) $generated@@185 $generated@@186))) ($generated@@83 $generated@@183 ($generated@@46 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@183 $generated@@184 ($generated@@46 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@183 $generated@@184) $generated@@185 $generated@@186))))
 :pattern ( ($generated@@46 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@183 $generated@@184 ($generated@@46 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@183 $generated@@184) $generated@@185 $generated@@186)))
)))
(assert  (=> (<= 0 $generated@@28) (forall (($generated@@187 T@U) ($generated@@188 T@U) ) (!  (=> (or ($generated@@31 $generated@@187 $generated@@188) (and (< 0 $generated@@28) (and ($generated@@30 $generated@@187) (and (or (not (= $generated@@188 $generated@@32)) (not true)) (and ($generated@@33 $generated@@34 $generated@@188 $generated@@35) ($generated@@36 $generated@@34 $generated@@188 $generated@@35 $generated@@187)))))) (=> ($generated@@29 $generated@@187 $generated@@188) ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@187 $generated@@188) $generated@@44)) ($generated@@45 $generated@@34 $generated@@188))))
 :pattern ( ($generated@@29 $generated@@187 $generated@@188))
))))
(assert (= ($generated@@137 $generated@@72) $generated@@2))
(assert (= ($generated@@189 $generated@@72) $generated@@7))
(assert (= ($generated@@137 $generated@@71) $generated@@3))
(assert (= ($generated@@189 $generated@@71) $generated@@7))
(assert (= ($generated@@137 $generated@@68) $generated@@5))
(assert (= ($generated@@189 $generated@@68) $generated@@8))
(assert (= ($generated@@137 $generated@@35) $generated@@6))
(assert (= ($generated@@189 $generated@@35) $generated@@8))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@T) ) (! (= ($generated@@45 $generated@@191 ($generated@@87 $generated@@191 $generated@@190)) ($generated@@87 $generated@@42 ($generated@@45 $generated@@191 $generated@@190)))
 :pattern ( ($generated@@45 $generated@@191 ($generated@@87 $generated@@191 $generated@@190)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@192 () T@U)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () T@U)
(declare-fun $generated@@196 () T@U)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@197  (=> (= $generated@@192 ($generated@@148 $generated@@32 $generated@@193 $generated@@0 false)) (=> (and (and (and (or (not (= $generated@@194 $generated@@32)) (not true)) ($generated@@33 $generated@@34 $generated@@194 $generated@@68)) (not ($generated@@15 ($generated@@38 $generated@@11 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@193 $generated@@194) $generated@@0))))) (and (and (= ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@193 $generated@@194) $generated@@44)) $generated@@195) (= $generated@@196 ($generated@@46 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@193 $generated@@194 ($generated@@46 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@193 $generated@@194) $generated@@0 ($generated@@45 $generated@@11 ($generated@@14 true)))))) (and ($generated@@30 $generated@@196) ($generated@@141 $generated@@196)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> ($generated@@31 $generated@@196 $generated@@194) (or ($generated@@29 $generated@@196 $generated@@194) ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@196 $generated@@194) $generated@@44)) ($generated@@45 $generated@@34 $generated@@194))))) (=> (=> ($generated@@31 $generated@@196 $generated@@194) (or ($generated@@29 $generated@@196 $generated@@194) ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@196 $generated@@194) $generated@@44)) ($generated@@45 $generated@@34 $generated@@194)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> ($generated@@31 $generated@@196 $generated@@194) (or ($generated@@29 $generated@@196 $generated@@194) (not ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@196 $generated@@194) $generated@@44)) ($generated@@45 $generated@@34 $generated@@32)))))) (=> (=> ($generated@@31 $generated@@196 $generated@@194) (or ($generated@@29 $generated@@196 $generated@@194) (not ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@196 $generated@@194) $generated@@44)) ($generated@@45 $generated@@34 $generated@@32))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> ($generated@@31 $generated@@196 $generated@@194) (or ($generated@@29 $generated@@196 $generated@@194) ($generated@@15 ($generated@@87 $generated@@11 ($generated@@14 true)))))) (=> (=> ($generated@@31 $generated@@196 $generated@@194) (or ($generated@@29 $generated@@196 $generated@@194) ($generated@@15 ($generated@@87 $generated@@11 ($generated@@14 true))))) (=> (= (ControlFlow 0 2) (- 0 1)) (and (forall (($generated@@198 T@U) ) (!  (=> ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@196 $generated@@194) $generated@@44)) ($generated@@45 $generated@@34 $generated@@198)) (or (not (= $generated@@198 $generated@@32)) (not true)))
 :pattern (  (or (not (= $generated@@198 $generated@@32)) (not true)))
)) (forall (($generated@@199 T@U) ) (!  (=> ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@196 $generated@@194) $generated@@44)) ($generated@@45 $generated@@34 $generated@@199)) (not ($generated@@15 ($generated@@38 $generated@@11 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@193 $generated@@199) $generated@@0)))))
 :pattern ( ($generated@@37 ($generated@@38 $generated@@39 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@34 ($generated@@43 $generated@@41 $generated@@42) $generated@@196 $generated@@194) $generated@@44)) ($generated@@45 $generated@@34 $generated@@199)))
))))))))))))))
(let (($generated@@200  (=> (and (and ($generated@@30 $generated@@193) ($generated@@141 $generated@@193)) (and (= 1 $generated@@28) (= (ControlFlow 0 6) 2))) $generated@@197)))
$generated@@200)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 4))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)