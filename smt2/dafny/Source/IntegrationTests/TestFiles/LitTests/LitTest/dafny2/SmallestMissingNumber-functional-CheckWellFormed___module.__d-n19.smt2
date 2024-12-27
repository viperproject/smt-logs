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
(declare-fun $generated@@23 (T@U T@U T@U) Bool)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@28 (T@U T@U) T@U)
(declare-fun $generated@@29 (T@U T@U) Bool)
(declare-fun $generated@@35 (T@U T@U) T@U)
(declare-fun $generated@@42 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@49 (T@U T@U) T@U)
(declare-fun $generated@@53 () Int)
(declare-fun $generated@@54 (T@U T@U T@U) Int)
(declare-fun $generated@@55 (T@T T@U) T@U)
(declare-fun $generated@@56 () T@T)
(declare-fun $generated@@57 (T@U T@U) Bool)
(declare-fun $generated@@58 (T@T T@U T@U) Bool)
(declare-fun $generated@@59 (T@U) T@U)
(declare-fun $generated@@60 (T@U) Bool)
(declare-fun $generated@@61 (T@U) T@U)
(declare-fun $generated@@62 (Int) Int)
(declare-fun $generated@@68 () T@U)
(declare-fun $generated@@73 (T@U T@U T@U) T@U)
(declare-fun $generated@@77 (T@U) T@U)
(declare-fun $generated@@78 () T@U)
(declare-fun $generated@@84 (T@U) Bool)
(declare-fun $generated@@88 (T@U T@U) Bool)
(declare-fun $generated@@89 (T@U) T@U)
(declare-fun $generated@@99 (T@U T@U) T@U)
(declare-fun $generated@@100 (T@U T@U) Bool)
(declare-fun $generated@@104 (T@U T@U) Bool)
(declare-fun $generated@@105 () T@U)
(declare-fun $generated@@114 (T@U) Bool)
(declare-fun $generated@@116 (T@T T@U) T@U)
(declare-fun $generated@@117 (T@T T@U) T@U)
(declare-fun $generated@@120 (T@U T@U) Bool)
(declare-fun $generated@@124 () T@T)
(declare-fun $generated@@135 () T@T)
(declare-fun $generated@@136 (T@U) T@U)
(declare-fun $generated@@146 (T@U T@U T@U) Bool)
(declare-fun $generated@@151 (T@U) T@U)
(declare-fun $generated@@152 (T@U) T@U)
(declare-fun $generated@@160 (T@U) Bool)
(declare-fun $generated@@181 (T@U) T@U)
(declare-fun $generated@@184 (T@U) T@U)
(declare-fun $generated@@188 (T@U) Int)
(declare-fun $generated@@189 (T@U) Int)
(declare-fun $generated@@202 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@203 () T@T)
(declare-fun $generated@@204 () T@T)
(declare-fun $generated@@205 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@206 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@207 (T@T T@T) T@T)
(declare-fun $generated@@208 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@209 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@210 (T@T) T@T)
(declare-fun $generated@@211 (T@T) T@T)
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
(assert (forall (($generated@@25 T@U) ($generated@@26 T@U) ($generated@@27 T@U) ) (! (= ($generated@@23 $generated@@25 ($generated@@24 $generated@@26) $generated@@27) ($generated@@23 $generated@@25 $generated@@26 $generated@@27))
 :pattern ( ($generated@@23 $generated@@25 ($generated@@24 $generated@@26) $generated@@27))
)))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ) (! ($generated@@29 ($generated@@28 $generated@@30 $generated@@31) $generated@@31)
 :pattern ( ($generated@@28 $generated@@30 $generated@@31))
)))
(assert (forall (($generated@@32 T@U) ($generated@@33 T@U) ($generated@@34 T@U) ) (!  (=> ($generated@@29 $generated@@32 $generated@@34) ($generated@@29 ($generated@@28 $generated@@32 $generated@@33) $generated@@34))
 :pattern ( ($generated@@28 $generated@@32 $generated@@33) ($generated@@29 $generated@@32 $generated@@34))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (!  (=> ($generated@@29 $generated@@36 $generated@@38) ($generated@@29 ($generated@@35 $generated@@36 $generated@@37) $generated@@38))
 :pattern ( ($generated@@35 $generated@@36 $generated@@37) ($generated@@29 $generated@@36 $generated@@38))
)))
(assert (forall (($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ) (!  (=> ($generated@@29 $generated@@40 $generated@@41) ($generated@@29 ($generated@@35 $generated@@39 $generated@@40) $generated@@41))
 :pattern ( ($generated@@35 $generated@@39 $generated@@40) ($generated@@29 $generated@@40 $generated@@41))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ) (! ($generated@@42 $generated@@9 $generated@@44 $generated@@43 $generated@@45)
 :pattern ( ($generated@@42 $generated@@9 $generated@@44 $generated@@43 $generated@@45))
)))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (! (= ($generated@@29 ($generated@@28 $generated@@46 $generated@@47) $generated@@48)  (or (= $generated@@48 $generated@@47) ($generated@@29 $generated@@46 $generated@@48)))
 :pattern ( ($generated@@29 ($generated@@28 $generated@@46 $generated@@47) $generated@@48))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (!  (=> ($generated@@29 $generated@@51 $generated@@52) (not ($generated@@29 ($generated@@49 $generated@@50 $generated@@51) $generated@@52)))
 :pattern ( ($generated@@49 $generated@@50 $generated@@51) ($generated@@29 $generated@@51 $generated@@52))
)))
(assert (= ($generated@@7 $generated@@56) 3))
(assert  (=> (<= 1 $generated@@53) (forall (($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (!  (=> (or ($generated@@57 $generated@@63 ($generated@@55 $generated@@56 $generated@@65)) (and (< 1 $generated@@53) ($generated@@58 $generated@@56 $generated@@65 ($generated@@59 $generated@@63)))) (and (=> (not ($generated@@12 ($generated@@55 $generated@@8 ($generated@@11 ($generated@@60 ($generated@@55 $generated@@56 $generated@@65)))))) (let (($generated@@66 ($generated@@55 $generated@@56 ($generated@@61 ($generated@@55 $generated@@56 $generated@@65)))))
($generated@@57 $generated@@63 $generated@@66))) (= ($generated@@54 $generated@@63 ($generated@@24 $generated@@64) ($generated@@55 $generated@@56 $generated@@65)) (ite ($generated@@60 ($generated@@55 $generated@@56 $generated@@65)) 0 (let (($generated@@67 ($generated@@55 $generated@@56 ($generated@@61 ($generated@@55 $generated@@56 $generated@@65)))))
($generated@@62 (+ 1 ($generated@@54 $generated@@63 ($generated@@24 $generated@@64) $generated@@67))))))))
 :weight 3
 :pattern ( ($generated@@54 $generated@@63 ($generated@@24 $generated@@64) ($generated@@55 $generated@@56 $generated@@65)))
))))
(assert (forall (($generated@@69 T@U) ) (!  (not ($generated@@29 $generated@@68 $generated@@69))
 :pattern ( ($generated@@29 $generated@@68 $generated@@69))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@54 $generated@@70 ($generated@@24 $generated@@71) $generated@@72) ($generated@@54 $generated@@70 $generated@@71 $generated@@72))
 :pattern ( ($generated@@54 $generated@@70 ($generated@@24 $generated@@71) $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@U) ) (! (= ($generated@@73 $generated@@74 ($generated@@24 $generated@@75) $generated@@76) ($generated@@73 $generated@@74 $generated@@75 $generated@@76))
 :pattern ( ($generated@@73 $generated@@74 ($generated@@24 $generated@@75) $generated@@76))
)))
(assert (= ($generated@@77 $generated@@78) $generated@@3))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@35 ($generated@@35 $generated@@79 $generated@@80) $generated@@80) ($generated@@35 $generated@@79 $generated@@80))
 :pattern ( ($generated@@35 ($generated@@35 $generated@@79 $generated@@80) $generated@@80))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@29 ($generated@@49 $generated@@81 $generated@@82) $generated@@83)  (and ($generated@@29 $generated@@81 $generated@@83) (not ($generated@@29 $generated@@82 $generated@@83))))
 :pattern ( ($generated@@29 ($generated@@49 $generated@@81 $generated@@82) $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (!  (=> ($generated@@84 $generated@@86) ($generated@@42 $generated@@56 $generated@@78 ($generated@@59 $generated@@85) $generated@@86))
 :pattern ( ($generated@@42 $generated@@56 $generated@@78 ($generated@@59 $generated@@85) $generated@@86))
)))
(assert (forall (($generated@@87 T@U) ) (! ($generated@@58 $generated@@56 $generated@@78 ($generated@@59 $generated@@87))
 :pattern ( ($generated@@58 $generated@@56 $generated@@78 ($generated@@59 $generated@@87)))
)))
(assert  (=> (<= 1 $generated@@53) (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ) (!  (=> (or ($generated@@88 $generated@@90 $generated@@92) (and (< 1 $generated@@53) ($generated@@58 $generated@@56 $generated@@92 ($generated@@59 $generated@@90)))) (and (=> (not ($generated@@60 $generated@@92)) (let (($generated@@93 ($generated@@61 $generated@@92)))
($generated@@88 $generated@@90 $generated@@93))) (= ($generated@@73 $generated@@90 ($generated@@24 $generated@@91) $generated@@92) (ite ($generated@@60 $generated@@92) $generated@@68 (let (($generated@@94 ($generated@@61 $generated@@92)))
(let (($generated@@95 ($generated@@89 $generated@@92)))
($generated@@35 ($generated@@28 $generated@@68 $generated@@95) ($generated@@73 $generated@@90 $generated@@91 $generated@@94))))))))
 :pattern ( ($generated@@73 $generated@@90 ($generated@@24 $generated@@91) $generated@@92))
))))
(assert (forall (($generated@@96 Int) ) (! (= ($generated@@62 $generated@@96) $generated@@96)
 :pattern ( ($generated@@62 $generated@@96))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@T) ) (! (= ($generated@@55 $generated@@98 $generated@@97) $generated@@97)
 :pattern ( ($generated@@55 $generated@@98 $generated@@97))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@58 $generated@@56 ($generated@@99 $generated@@102 $generated@@103) ($generated@@59 $generated@@101))  (and ($generated@@100 $generated@@102 $generated@@101) ($generated@@58 $generated@@56 $generated@@103 ($generated@@59 $generated@@101))))
 :pattern ( ($generated@@58 $generated@@56 ($generated@@99 $generated@@102 $generated@@103) ($generated@@59 $generated@@101)))
)))
(assert  (=> (<= 2 $generated@@53) (forall (($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ) (!  (=> (or ($generated@@104 $generated@@106 $generated@@108) (and (< 2 $generated@@53) ($generated@@58 $generated@@56 $generated@@108 ($generated@@59 $generated@@106)))) (and (=> (not ($generated@@60 $generated@@108)) (let (($generated@@109 ($generated@@61 $generated@@108)))
(let (($generated@@110 ($generated@@89 $generated@@108)))
 (and ($generated@@88 $generated@@106 $generated@@109) (=> (not ($generated@@29 ($generated@@73 $generated@@106 ($generated@@24 $generated@@105) $generated@@109) $generated@@110)) ($generated@@104 $generated@@106 $generated@@109)))))) (= ($generated@@23 $generated@@106 ($generated@@24 $generated@@107) $generated@@108) (ite ($generated@@60 $generated@@108) true (let (($generated@@111 ($generated@@61 $generated@@108)))
(let (($generated@@112 ($generated@@89 $generated@@108)))
 (and (not ($generated@@29 ($generated@@73 $generated@@106 ($generated@@24 $generated@@105) $generated@@111) $generated@@112)) ($generated@@23 $generated@@106 $generated@@107 $generated@@111))))))))
 :pattern ( ($generated@@23 $generated@@106 ($generated@@24 $generated@@107) $generated@@108))
))))
(assert (forall (($generated@@113 T@U) ) (! (= ($generated@@60 $generated@@113) (= ($generated@@77 $generated@@113) $generated@@3))
 :pattern ( ($generated@@60 $generated@@113))
)))
(assert (forall (($generated@@115 T@U) ) (! (= ($generated@@114 $generated@@115) (= ($generated@@77 $generated@@115) $generated@@4))
 :pattern ( ($generated@@114 $generated@@115))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@T) ) (! (= ($generated@@117 $generated@@119 ($generated@@116 $generated@@119 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@116 $generated@@119 $generated@@118))
)))
(assert (forall (($generated@@121 T@U) ($generated@@122 T@U) ) (! (= ($generated@@120 $generated@@121 $generated@@122) (forall (($generated@@123 T@U) ) (!  (or (not ($generated@@29 $generated@@121 $generated@@123)) (not ($generated@@29 $generated@@122 $generated@@123)))
 :pattern ( ($generated@@29 $generated@@121 $generated@@123))
 :pattern ( ($generated@@29 $generated@@122 $generated@@123))
)))
 :pattern ( ($generated@@120 $generated@@121 $generated@@122))
)))
(assert (= ($generated@@7 $generated@@124) 4))
(assert  (=> (<= 1 $generated@@53) (forall (($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (!  (=> (or ($generated@@88 $generated@@125 ($generated@@55 $generated@@56 $generated@@127)) (and (< 1 $generated@@53) ($generated@@58 $generated@@56 $generated@@127 ($generated@@59 $generated@@125)))) (and (=> (not ($generated@@12 ($generated@@55 $generated@@8 ($generated@@11 ($generated@@60 ($generated@@55 $generated@@56 $generated@@127)))))) (let (($generated@@128 ($generated@@55 $generated@@56 ($generated@@61 ($generated@@55 $generated@@56 $generated@@127)))))
($generated@@88 $generated@@125 $generated@@128))) (= ($generated@@73 $generated@@125 ($generated@@24 $generated@@126) ($generated@@55 $generated@@56 $generated@@127)) (ite ($generated@@60 ($generated@@55 $generated@@56 $generated@@127)) $generated@@68 (let (($generated@@129 ($generated@@55 $generated@@56 ($generated@@61 ($generated@@55 $generated@@56 $generated@@127)))))
(let (($generated@@130 ($generated@@55 $generated@@124 ($generated@@89 ($generated@@55 $generated@@56 $generated@@127)))))
($generated@@35 ($generated@@28 $generated@@68 $generated@@130) ($generated@@73 $generated@@125 ($generated@@24 $generated@@126) $generated@@129))))))))
 :weight 3
 :pattern ( ($generated@@73 $generated@@125 ($generated@@24 $generated@@126) ($generated@@55 $generated@@56 $generated@@127)))
))))
(assert (forall (($generated@@131 T@U) ) (!  (=> ($generated@@114 $generated@@131) (exists (($generated@@132 T@U) ($generated@@133 T@U) ) (= $generated@@131 ($generated@@99 $generated@@132 $generated@@133))))
 :pattern ( ($generated@@114 $generated@@131))
)))
(assert (forall (($generated@@134 T@U) ) (!  (=> ($generated@@60 $generated@@134) (= $generated@@134 $generated@@78))
 :pattern ( ($generated@@60 $generated@@134))
)))
(assert (= ($generated@@7 $generated@@135) 5))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ) (! (= ($generated@@58 $generated@@135 $generated@@137 ($generated@@136 $generated@@138)) (forall (($generated@@139 T@U) ) (!  (=> ($generated@@29 $generated@@137 $generated@@139) ($generated@@100 $generated@@139 $generated@@138))
 :pattern ( ($generated@@29 $generated@@137 $generated@@139))
)))
 :pattern ( ($generated@@58 $generated@@135 $generated@@137 ($generated@@136 $generated@@138)))
)))
(assert (forall (($generated@@140 T@U) ) (! (= ($generated@@58 $generated@@9 $generated@@140 $generated@@43) (<= ($generated@@62 0) ($generated@@14 $generated@@140)))
 :pattern ( ($generated@@58 $generated@@9 $generated@@140 $generated@@43))
)))
(assert  (=> (<= 1 $generated@@53) (forall (($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (!  (=> (or ($generated@@57 $generated@@141 $generated@@143) (and (< 1 $generated@@53) ($generated@@58 $generated@@56 $generated@@143 ($generated@@59 $generated@@141)))) (and (=> (not ($generated@@60 $generated@@143)) (let (($generated@@144 ($generated@@61 $generated@@143)))
($generated@@57 $generated@@141 $generated@@144))) (= ($generated@@54 $generated@@141 ($generated@@24 $generated@@142) $generated@@143) (ite ($generated@@60 $generated@@143) 0 (let (($generated@@145 ($generated@@61 $generated@@143)))
(+ 1 ($generated@@54 $generated@@141 $generated@@142 $generated@@145)))))))
 :pattern ( ($generated@@54 $generated@@141 ($generated@@24 $generated@@142) $generated@@143))
))))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@T) ) (! (= ($generated@@146 ($generated@@117 $generated@@150 $generated@@147) $generated@@148 $generated@@149) ($generated@@42 $generated@@150 $generated@@147 $generated@@148 $generated@@149))
 :pattern ( ($generated@@146 ($generated@@117 $generated@@150 $generated@@147) $generated@@148 $generated@@149))
)))
(assert (forall (($generated@@153 T@U) ) (!  (and (= ($generated@@151 ($generated@@59 $generated@@153)) $generated@@2) (= ($generated@@152 ($generated@@59 $generated@@153)) $generated@@6))
 :pattern ( ($generated@@59 $generated@@153))
)))
(assert (forall (($generated@@154 T@U) ) (!  (=> ($generated@@100 $generated@@154 $generated@@43) (and (= ($generated@@117 $generated@@9 ($generated@@116 $generated@@9 $generated@@154)) $generated@@154) ($generated@@58 $generated@@9 ($generated@@116 $generated@@9 $generated@@154) $generated@@43)))
 :pattern ( ($generated@@100 $generated@@154 $generated@@43))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (! (= ($generated@@29 ($generated@@35 $generated@@155 $generated@@156) $generated@@157)  (or ($generated@@29 $generated@@155 $generated@@157) ($generated@@29 $generated@@156 $generated@@157)))
 :pattern ( ($generated@@29 ($generated@@35 $generated@@155 $generated@@156) $generated@@157))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ) (!  (=> ($generated@@120 $generated@@158 $generated@@159) (and (= ($generated@@49 ($generated@@35 $generated@@158 $generated@@159) $generated@@158) $generated@@159) (= ($generated@@49 ($generated@@35 $generated@@158 $generated@@159) $generated@@159) $generated@@158)))
 :pattern ( ($generated@@35 $generated@@158 $generated@@159))
)))
(assert (forall (($generated@@161 T@U) ) (!  (=> ($generated@@160 $generated@@161) (or ($generated@@60 $generated@@161) ($generated@@114 $generated@@161)))
 :pattern ( ($generated@@160 $generated@@161))
)))
(assert (forall (($generated@@162 T@U) ($generated@@163 T@U) ) (!  (=> ($generated@@58 $generated@@56 $generated@@163 ($generated@@59 $generated@@162)) (or ($generated@@60 $generated@@163) ($generated@@114 $generated@@163)))
 :pattern ( ($generated@@114 $generated@@163) ($generated@@58 $generated@@56 $generated@@163 ($generated@@59 $generated@@162)))
 :pattern ( ($generated@@60 $generated@@163) ($generated@@58 $generated@@56 $generated@@163 ($generated@@59 $generated@@162)))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@T) ) (! (= ($generated@@100 ($generated@@117 $generated@@166 $generated@@164) $generated@@165) ($generated@@58 $generated@@166 $generated@@164 $generated@@165))
 :pattern ( ($generated@@100 ($generated@@117 $generated@@166 $generated@@164) $generated@@165))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ) (! (= ($generated@@42 $generated@@135 $generated@@167 ($generated@@136 $generated@@168) $generated@@169) (forall (($generated@@170 T@U) ) (!  (=> ($generated@@29 $generated@@167 $generated@@170) ($generated@@146 $generated@@170 $generated@@168 $generated@@169))
 :pattern ( ($generated@@29 $generated@@167 $generated@@170))
)))
 :pattern ( ($generated@@42 $generated@@135 $generated@@167 ($generated@@136 $generated@@168) $generated@@169))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ) (! (= ($generated@@77 ($generated@@99 $generated@@171 $generated@@172)) $generated@@4)
 :pattern ( ($generated@@99 $generated@@171 $generated@@172))
)))
(assert (forall (($generated@@173 T@U) ($generated@@174 T@U) ) (! (= ($generated@@89 ($generated@@99 $generated@@173 $generated@@174)) $generated@@173)
 :pattern ( ($generated@@99 $generated@@173 $generated@@174))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (! (= ($generated@@61 ($generated@@99 $generated@@175 $generated@@176)) $generated@@176)
 :pattern ( ($generated@@99 $generated@@175 $generated@@176))
)))
(assert  (=> (<= 1 $generated@@53) (forall (($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ) (!  (=> (and (or ($generated@@88 $generated@@178 $generated@@180) (and (< 1 $generated@@53) (and ($generated@@58 $generated@@56 $generated@@180 ($generated@@59 $generated@@178)) ($generated@@42 $generated@@56 $generated@@180 ($generated@@59 $generated@@178) $generated@@177)))) ($generated@@84 $generated@@177)) ($generated@@42 $generated@@135 ($generated@@73 $generated@@178 $generated@@179 $generated@@180) ($generated@@136 $generated@@178) $generated@@177))
 :pattern ( ($generated@@42 $generated@@135 ($generated@@73 $generated@@178 $generated@@179 $generated@@180) ($generated@@136 $generated@@178) $generated@@177))
))))
(assert (forall (($generated@@182 T@U) ) (! (= ($generated@@181 ($generated@@136 $generated@@182)) $generated@@182)
 :pattern ( ($generated@@136 $generated@@182))
)))
(assert (forall (($generated@@183 T@U) ) (! (= ($generated@@151 ($generated@@136 $generated@@183)) $generated)
 :pattern ( ($generated@@136 $generated@@183))
)))
(assert (forall (($generated@@185 T@U) ) (! (= ($generated@@184 ($generated@@59 $generated@@185)) $generated@@185)
 :pattern ( ($generated@@59 $generated@@185))
)))
(assert (forall (($generated@@186 T@U) ($generated@@187 T@T) ) (! (= ($generated@@116 $generated@@187 ($generated@@117 $generated@@187 $generated@@186)) $generated@@186)
 :pattern ( ($generated@@117 $generated@@187 $generated@@186))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ) (! (< ($generated@@188 $generated@@190) ($generated@@189 ($generated@@99 $generated@@190 $generated@@191)))
 :pattern ( ($generated@@99 $generated@@190 $generated@@191))
)))
(assert (forall (($generated@@192 T@U) ($generated@@193 T@U) ) (! (< ($generated@@189 $generated@@193) ($generated@@189 ($generated@@99 $generated@@192 $generated@@193)))
 :pattern ( ($generated@@99 $generated@@192 $generated@@193))
)))
(assert  (=> (<= 1 $generated@@53) (forall (($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ) (!  (=> (or ($generated@@88 $generated@@194 $generated@@196) (and (< 1 $generated@@53) ($generated@@58 $generated@@56 $generated@@196 ($generated@@59 $generated@@194)))) ($generated@@58 $generated@@135 ($generated@@73 $generated@@194 $generated@@195 $generated@@196) ($generated@@136 $generated@@194)))
 :pattern ( ($generated@@73 $generated@@194 $generated@@195 $generated@@196))
))))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ) (! (= ($generated@@35 $generated@@197 ($generated@@35 $generated@@197 $generated@@198)) ($generated@@35 $generated@@197 $generated@@198))
 :pattern ( ($generated@@35 $generated@@197 ($generated@@35 $generated@@197 $generated@@198)))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ) (!  (=> (and ($generated@@84 $generated@@201) (and ($generated@@114 $generated@@199) ($generated@@42 $generated@@56 $generated@@199 ($generated@@59 $generated@@200) $generated@@201))) ($generated@@146 ($generated@@89 $generated@@199) $generated@@200 $generated@@201))
 :pattern ( ($generated@@146 ($generated@@89 $generated@@199) $generated@@200 $generated@@201))
)))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@212 T@T) ($generated@@213 T@T) ($generated@@214 T@T) ($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ) (! (= ($generated@@202 $generated@@212 $generated@@213 $generated@@214 ($generated@@208 $generated@@212 $generated@@213 $generated@@214 $generated@@216 $generated@@217 $generated@@218 $generated@@215) $generated@@217 $generated@@218) $generated@@215)
 :weight 0
)) (and (forall (($generated@@219 T@T) ($generated@@220 T@T) ($generated@@221 T@T) ($generated@@222 T@U) ($generated@@223 T@U) ($generated@@224 T@U) ($generated@@225 T@U) ($generated@@226 T@U) ($generated@@227 T@U) ) (!  (or (= $generated@@224 $generated@@226) (= ($generated@@202 $generated@@219 $generated@@220 $generated@@221 ($generated@@208 $generated@@219 $generated@@220 $generated@@221 $generated@@223 $generated@@224 $generated@@225 $generated@@222) $generated@@226 $generated@@227) ($generated@@202 $generated@@219 $generated@@220 $generated@@221 $generated@@223 $generated@@226 $generated@@227)))
 :weight 0
)) (forall (($generated@@228 T@T) ($generated@@229 T@T) ($generated@@230 T@T) ($generated@@231 T@U) ($generated@@232 T@U) ($generated@@233 T@U) ($generated@@234 T@U) ($generated@@235 T@U) ($generated@@236 T@U) ) (!  (or (= $generated@@234 $generated@@236) (= ($generated@@202 $generated@@228 $generated@@229 $generated@@230 ($generated@@208 $generated@@228 $generated@@229 $generated@@230 $generated@@232 $generated@@233 $generated@@234 $generated@@231) $generated@@235 $generated@@236) ($generated@@202 $generated@@228 $generated@@229 $generated@@230 $generated@@232 $generated@@235 $generated@@236)))
 :weight 0
)))) (= ($generated@@7 $generated@@203) 6)) (= ($generated@@7 $generated@@204) 7)) (forall (($generated@@237 T@T) ($generated@@238 T@T) ($generated@@239 T@U) ($generated@@240 T@U) ($generated@@241 T@U) ) (! (= ($generated@@206 $generated@@237 $generated@@238 ($generated@@209 $generated@@237 $generated@@238 $generated@@240 $generated@@241 $generated@@239) $generated@@241) $generated@@239)
 :weight 0
))) (forall (($generated@@242 T@T) ($generated@@243 T@T) ($generated@@244 T@U) ($generated@@245 T@U) ($generated@@246 T@U) ($generated@@247 T@U) ) (!  (or (= $generated@@246 $generated@@247) (= ($generated@@206 $generated@@242 $generated@@243 ($generated@@209 $generated@@242 $generated@@243 $generated@@245 $generated@@246 $generated@@244) $generated@@247) ($generated@@206 $generated@@242 $generated@@243 $generated@@245 $generated@@247)))
 :weight 0
))) (forall (($generated@@248 T@T) ($generated@@249 T@T) ) (= ($generated@@7 ($generated@@207 $generated@@248 $generated@@249)) 8))) (forall (($generated@@250 T@T) ($generated@@251 T@T) ) (! (= ($generated@@210 ($generated@@207 $generated@@250 $generated@@251)) $generated@@250)
 :pattern ( ($generated@@207 $generated@@250 $generated@@251))
))) (forall (($generated@@252 T@T) ($generated@@253 T@T) ) (! (= ($generated@@211 ($generated@@207 $generated@@252 $generated@@253)) $generated@@253)
 :pattern ( ($generated@@207 $generated@@252 $generated@@253))
))))
(assert (forall (($generated@@254 T@U) ($generated@@255 T@U) ($generated@@256 T@U) ($generated@@257 Bool) ($generated@@258 T@U) ($generated@@259 T@U) ) (! (= ($generated@@12 ($generated@@202 $generated@@203 $generated@@204 $generated@@8 ($generated@@205 $generated@@254 $generated@@255 $generated@@256 $generated@@257) $generated@@258 $generated@@259))  (=> (and (or (not (= $generated@@258 $generated@@254)) (not true)) ($generated@@12 ($generated@@116 $generated@@8 ($generated@@206 $generated@@204 $generated@@124 ($generated@@206 $generated@@203 ($generated@@207 $generated@@204 $generated@@124) $generated@@255 $generated@@258) $generated@@256)))) $generated@@257))
 :pattern ( ($generated@@202 $generated@@203 $generated@@204 $generated@@8 ($generated@@205 $generated@@254 $generated@@255 $generated@@256 $generated@@257) $generated@@258 $generated@@259))
)))
(assert (forall (($generated@@260 T@U) ) (! (= ($generated@@188 ($generated@@117 $generated@@56 $generated@@260)) ($generated@@189 $generated@@260))
 :pattern ( ($generated@@188 ($generated@@117 $generated@@56 $generated@@260)))
)))
(assert (forall (($generated@@261 T@U) ($generated@@262 T@U) ) (!  (=> ($generated@@100 $generated@@261 ($generated@@136 $generated@@262)) (and (= ($generated@@117 $generated@@135 ($generated@@116 $generated@@135 $generated@@261)) $generated@@261) ($generated@@58 $generated@@135 ($generated@@116 $generated@@135 $generated@@261) ($generated@@136 $generated@@262))))
 :pattern ( ($generated@@100 $generated@@261 ($generated@@136 $generated@@262)))
)))
(assert (forall (($generated@@263 T@U) ($generated@@264 T@U) ) (!  (=> ($generated@@100 $generated@@264 ($generated@@59 $generated@@263)) (and (= ($generated@@117 $generated@@56 ($generated@@116 $generated@@56 $generated@@264)) $generated@@264) ($generated@@58 $generated@@56 ($generated@@116 $generated@@56 $generated@@264) ($generated@@59 $generated@@263))))
 :pattern ( ($generated@@100 $generated@@264 ($generated@@59 $generated@@263)))
)))
(assert (forall (($generated@@265 T@U) ($generated@@266 T@U) ($generated@@267 T@U) ) (!  (=> (and ($generated@@84 $generated@@267) (and ($generated@@114 $generated@@265) ($generated@@42 $generated@@56 $generated@@265 ($generated@@59 $generated@@266) $generated@@267))) ($generated@@42 $generated@@56 ($generated@@61 $generated@@265) ($generated@@59 $generated@@266) $generated@@267))
 :pattern ( ($generated@@42 $generated@@56 ($generated@@61 $generated@@265) ($generated@@59 $generated@@266) $generated@@267))
)))
(assert (= ($generated@@151 $generated@@43) $generated@@1))
(assert (= ($generated@@152 $generated@@43) $generated@@5))
(assert (= $generated@@78 ($generated@@55 $generated@@56 $generated@@78)))
(assert  (=> (<= 2 $generated@@53) (forall (($generated@@268 T@U) ($generated@@269 T@U) ($generated@@270 T@U) ) (!  (=> (or ($generated@@104 $generated@@268 ($generated@@55 $generated@@56 $generated@@270)) (and (< 2 $generated@@53) ($generated@@58 $generated@@56 $generated@@270 ($generated@@59 $generated@@268)))) (and (=> (not ($generated@@12 ($generated@@55 $generated@@8 ($generated@@11 ($generated@@60 ($generated@@55 $generated@@56 $generated@@270)))))) (let (($generated@@271 ($generated@@55 $generated@@56 ($generated@@61 ($generated@@55 $generated@@56 $generated@@270)))))
(let (($generated@@272 ($generated@@55 $generated@@124 ($generated@@89 ($generated@@55 $generated@@56 $generated@@270)))))
 (and ($generated@@88 $generated@@268 $generated@@271) (=> (not ($generated@@29 ($generated@@73 $generated@@268 ($generated@@24 $generated@@105) $generated@@271) $generated@@272)) ($generated@@104 $generated@@268 $generated@@271)))))) (= ($generated@@23 $generated@@268 ($generated@@24 $generated@@269) ($generated@@55 $generated@@56 $generated@@270)) (ite ($generated@@60 ($generated@@55 $generated@@56 $generated@@270)) true (let (($generated@@273 ($generated@@55 $generated@@56 ($generated@@61 ($generated@@55 $generated@@56 $generated@@270)))))
(let (($generated@@274 ($generated@@55 $generated@@124 ($generated@@89 ($generated@@55 $generated@@56 $generated@@270)))))
 (and (not ($generated@@29 ($generated@@55 $generated@@135 ($generated@@73 $generated@@268 ($generated@@24 $generated@@105) $generated@@273)) $generated@@274)) ($generated@@23 $generated@@268 ($generated@@24 $generated@@269) $generated@@273))))))))
 :weight 3
 :pattern ( ($generated@@23 $generated@@268 ($generated@@24 $generated@@269) ($generated@@55 $generated@@56 $generated@@270)))
))))
(assert (forall (($generated@@275 T@U) ($generated@@276 T@U) ) (! (= ($generated@@99 ($generated@@55 $generated@@124 $generated@@275) ($generated@@55 $generated@@56 $generated@@276)) ($generated@@55 $generated@@56 ($generated@@99 $generated@@275 $generated@@276)))
 :pattern ( ($generated@@99 ($generated@@55 $generated@@124 $generated@@275) ($generated@@55 $generated@@56 $generated@@276)))
)))
(assert (forall (($generated@@277 Int) ) (! (= ($generated@@117 $generated@@9 ($generated@@13 ($generated@@62 $generated@@277))) ($generated@@55 $generated@@124 ($generated@@117 $generated@@9 ($generated@@13 $generated@@277))))
 :pattern ( ($generated@@117 $generated@@9 ($generated@@13 ($generated@@62 $generated@@277))))
)))
(assert (forall (($generated@@278 T@U) ($generated@@279 T@T) ) (! (= ($generated@@117 $generated@@279 ($generated@@55 $generated@@279 $generated@@278)) ($generated@@55 $generated@@124 ($generated@@117 $generated@@279 $generated@@278)))
 :pattern ( ($generated@@117 $generated@@279 ($generated@@55 $generated@@279 $generated@@278)))
)))
(assert  (=> (<= 1 $generated@@53) (forall (($generated@@280 T@U) ($generated@@281 T@U) ($generated@@282 T@U) ) (!  (=> (or ($generated@@57 $generated@@280 $generated@@282) (and (< 1 $generated@@53) ($generated@@58 $generated@@56 $generated@@282 ($generated@@59 $generated@@280)))) (<= ($generated@@62 0) ($generated@@54 $generated@@280 $generated@@281 $generated@@282)))
 :pattern ( ($generated@@54 $generated@@280 $generated@@281 $generated@@282))
))))
(assert (forall (($generated@@283 T@U) ($generated@@284 T@U) ($generated@@285 T@U) ($generated@@286 T@U) ) (!  (=> ($generated@@84 $generated@@286) (= ($generated@@42 $generated@@56 ($generated@@99 $generated@@284 $generated@@285) ($generated@@59 $generated@@283) $generated@@286)  (and ($generated@@146 $generated@@284 $generated@@283 $generated@@286) ($generated@@42 $generated@@56 $generated@@285 ($generated@@59 $generated@@283) $generated@@286))))
 :pattern ( ($generated@@42 $generated@@56 ($generated@@99 $generated@@284 $generated@@285) ($generated@@59 $generated@@283) $generated@@286))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@287 () T@U)
(declare-fun $generated@@288 () Int)
(declare-fun $generated@@289 () T@U)
(declare-fun $generated@@290 () Int)
(declare-fun $generated@@291 () T@U)
(declare-fun $generated@@292 (T@U) Bool)
(declare-fun $generated@@293 () Int)
(declare-fun $generated@@294 () T@U)
(declare-fun $generated@@295 () T@U)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@296  (=> (and (and (forall (($generated@@297 T@U) ) (!  (=> ($generated@@29 ($generated@@73 $generated@@43 ($generated@@24 $generated@@105) $generated@@287) ($generated@@117 $generated@@9 $generated@@297)) (<= $generated@@288 ($generated@@14 $generated@@297)))
 :pattern ( ($generated@@29 ($generated@@73 $generated@@43 ($generated@@24 $generated@@105) $generated@@287) ($generated@@117 $generated@@9 $generated@@297)))
)) ($generated@@42 $generated@@56 $generated@@287 ($generated@@59 $generated@@43) $generated@@289)) (and ($generated@@57 $generated@@43 $generated@@287) (= $generated@@290 ($generated@@54 $generated@@43 ($generated@@24 $generated@@105) $generated@@287)))) (=> (and (and (and ($generated@@84 $generated@@291) ($generated@@292 $generated@@291)) (= $generated@@289 $generated@@291)) (and (and ($generated@@42 $generated@@56 $generated@@287 ($generated@@59 $generated@@43) $generated@@291) ($generated@@42 $generated@@9 ($generated@@13 $generated@@288) $generated@@43 $generated@@291)) (and ($generated@@42 $generated@@9 ($generated@@13 $generated@@290) $generated@@43 $generated@@291) (= (ControlFlow 0 2) (- 0 1))))) (= $generated@@290 ($generated@@54 $generated@@43 ($generated@@24 ($generated@@24 $generated@@105)) $generated@@287))))))
(let (($generated@@298  (=> (and (=> ($generated@@29 ($generated@@73 $generated@@43 ($generated@@24 $generated@@105) $generated@@287) ($generated@@117 $generated@@9 ($generated@@13 $generated@@293))) (<= $generated@@288 $generated@@293)) (= (ControlFlow 0 4) 2)) $generated@@296)))
(let (($generated@@299  (=> ($generated@@42 $generated@@56 $generated@@287 ($generated@@59 $generated@@43) $generated@@289) (=> (and (and ($generated@@88 $generated@@43 $generated@@287) ($generated@@29 ($generated@@73 $generated@@43 ($generated@@24 $generated@@105) $generated@@287) ($generated@@117 $generated@@9 ($generated@@13 $generated@@293)))) (and (<= $generated@@288 $generated@@293) (= (ControlFlow 0 3) 2))) $generated@@296))))
(let (($generated@@300  (=> (and ($generated@@84 $generated@@289) ($generated@@292 $generated@@289)) (=> (and (and (and (and (and ($generated@@58 $generated@@56 $generated@@287 ($generated@@59 $generated@@43)) ($generated@@42 $generated@@56 $generated@@287 ($generated@@59 $generated@@43) $generated@@289)) ($generated@@160 $generated@@287)) (<= ($generated@@62 0) $generated@@288)) (and (<= ($generated@@62 0) $generated@@290) (= 4 $generated@@53))) (and (and (= $generated@@294 ($generated@@205 $generated@@295 $generated@@289 $generated@@0 false)) ($generated@@42 $generated@@56 $generated@@287 ($generated@@59 $generated@@43) $generated@@289)) (and ($generated@@104 $generated@@43 $generated@@287) ($generated@@23 $generated@@43 ($generated@@24 $generated@@105) $generated@@287)))) (and (=> (= (ControlFlow 0 5) 3) $generated@@299) (=> (= (ControlFlow 0 5) 4) $generated@@298))))))
$generated@@300)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)