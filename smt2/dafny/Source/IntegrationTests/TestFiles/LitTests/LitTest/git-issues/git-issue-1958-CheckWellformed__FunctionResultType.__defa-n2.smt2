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
(declare-fun $generated@@23 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@27 (T@U) Int)
(declare-fun $generated@@28 () T@U)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 () T@U)
(declare-fun $generated@@31 () T@T)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@U) Bool)
(declare-fun $generated@@36 (T@T T@U T@U) Bool)
(declare-fun $generated@@38 () Int)
(declare-fun $generated@@39 (T@U T@U T@U) T@U)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@41 () T@T)
(declare-fun $generated@@42 (T@U T@U T@U) Bool)
(declare-fun $generated@@43 (T@U) T@U)
(declare-fun $generated@@44 (T@U T@U) Bool)
(declare-fun $generated@@45 (T@U Int) T@U)
(declare-fun $generated@@46 (Int) Int)
(declare-fun $generated@@47 (T@U) T@U)
(declare-fun $generated@@48 (T@T T@U) T@U)
(declare-fun $generated@@55 (T@U) Bool)
(declare-fun $generated@@57 (T@U) Bool)
(declare-fun $generated@@59 (T@U T@U) Bool)
(declare-fun $generated@@63 (T@T T@U) T@U)
(declare-fun $generated@@70 () T@T)
(declare-fun $generated@@74 (T@U T@U T@U) Bool)
(declare-fun $generated@@79 (T@U) T@U)
(declare-fun $generated@@80 (T@U) T@U)
(declare-fun $generated@@89 (T@U) T@U)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@109 (T@U) T@U)
(declare-fun $generated@@117 (T@U) Int)
(declare-fun $generated@@118 (T@U) Int)
(declare-fun $generated@@123 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@124 () T@T)
(declare-fun $generated@@125 () T@T)
(declare-fun $generated@@126 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@127 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@128 (T@T T@T) T@T)
(declare-fun $generated@@129 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@130 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@131 (T@T) T@T)
(declare-fun $generated@@132 (T@T) T@T)
(declare-fun $generated@@194 (T@U) Int)
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
(assert (forall (($generated@@25 T@U) ($generated@@26 T@U) ) (! ($generated@@23 $generated@@9 $generated@@25 $generated@@24 $generated@@26)
 :pattern ( ($generated@@23 $generated@@9 $generated@@25 $generated@@24 $generated@@26))
)))
(assert (= ($generated@@27 $generated@@28) 0))
(assert (= ($generated@@29 $generated@@30) $generated@@3))
(assert (= ($generated@@7 $generated@@31) 3))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ) (!  (=> ($generated@@33 $generated@@35) ($generated@@23 $generated@@31 $generated@@30 ($generated@@32 $generated@@34) $generated@@35))
 :pattern ( ($generated@@23 $generated@@31 $generated@@30 ($generated@@32 $generated@@34) $generated@@35))
)))
(assert (forall (($generated@@37 T@U) ) (! ($generated@@36 $generated@@31 $generated@@30 ($generated@@32 $generated@@37))
 :pattern ( ($generated@@36 $generated@@31 $generated@@30 ($generated@@32 $generated@@37)))
)))
(assert (= ($generated@@7 $generated@@41) 4))
(assert  (=> (<= 1 $generated@@38) (forall (($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ) (!  (=> (or ($generated@@42 $generated@@49 ($generated@@40 $generated@@41 $generated@@50) $generated@@51) (and (< 1 $generated@@38) (and ($generated@@36 $generated@@41 $generated@@50 ($generated@@43 $generated@@49)) ($generated@@44 $generated@@51 $generated@@49)))) (= ($generated@@39 $generated@@49 ($generated@@40 $generated@@41 $generated@@50) $generated@@51) (ite (< ($generated@@27 ($generated@@40 $generated@@41 $generated@@50)) 12) $generated@@30 (ite (= ($generated@@45 ($generated@@40 $generated@@41 $generated@@50) ($generated@@46 9)) $generated@@51) ($generated@@47 ($generated@@48 $generated@@9 ($generated@@13 ($generated@@46 9)))) (ite (= ($generated@@45 ($generated@@40 $generated@@41 $generated@@50) ($generated@@46 2)) $generated@@51) ($generated@@47 ($generated@@48 $generated@@9 ($generated@@13 ($generated@@46 2)))) $generated@@30)))))
 :weight 3
 :pattern ( ($generated@@39 $generated@@49 ($generated@@40 $generated@@41 $generated@@50) $generated@@51))
))))
(assert (forall (($generated@@52 Int) ) (! (= ($generated@@46 $generated@@52) $generated@@52)
 :pattern ( ($generated@@46 $generated@@52))
)))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@T) ) (! (= ($generated@@40 $generated@@54 $generated@@53) $generated@@53)
 :pattern ( ($generated@@40 $generated@@54 $generated@@53))
)))
(assert (forall (($generated@@56 T@U) ) (! (= ($generated@@55 $generated@@56) (= ($generated@@29 $generated@@56) $generated@@3))
 :pattern ( ($generated@@55 $generated@@56))
)))
(assert (forall (($generated@@58 T@U) ) (! (= ($generated@@57 $generated@@58) (= ($generated@@29 $generated@@58) $generated@@4))
 :pattern ( ($generated@@57 $generated@@58))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@59 $generated@@60 $generated@@61)  (and (= ($generated@@27 $generated@@60) ($generated@@27 $generated@@61)) (forall (($generated@@62 Int) ) (!  (=> (and (<= 0 $generated@@62) (< $generated@@62 ($generated@@27 $generated@@60))) (= ($generated@@45 $generated@@60 $generated@@62) ($generated@@45 $generated@@61 $generated@@62)))
 :pattern ( ($generated@@45 $generated@@60 $generated@@62))
 :pattern ( ($generated@@45 $generated@@61 $generated@@62))
))))
 :pattern ( ($generated@@59 $generated@@60 $generated@@61))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@T) ) (! (= ($generated@@48 $generated@@65 ($generated@@63 $generated@@65 $generated@@64)) $generated@@64)
 :pattern ( ($generated@@63 $generated@@65 $generated@@64))
)))
(assert (forall (($generated@@66 T@U) ) (!  (=> ($generated@@55 $generated@@66) (= $generated@@66 $generated@@30))
 :pattern ( ($generated@@55 $generated@@66))
)))
(assert (forall (($generated@@67 T@U) ) (!  (=> ($generated@@57 $generated@@67) (exists (($generated@@68 T@U) ) (= $generated@@67 ($generated@@47 $generated@@68))))
 :pattern ( ($generated@@57 $generated@@67))
)))
(assert (forall (($generated@@69 T@U) ) (! (= ($generated@@36 $generated@@9 $generated@@69 $generated@@24) (<= ($generated@@46 0) ($generated@@14 $generated@@69)))
 :pattern ( ($generated@@36 $generated@@9 $generated@@69 $generated@@24))
)))
(assert (= ($generated@@7 $generated@@70) 5))
(assert  (=> (<= 1 $generated@@38) (forall (($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (!  (=> (or ($generated@@42 $generated@@71 ($generated@@40 $generated@@41 $generated@@72) ($generated@@40 $generated@@70 $generated@@73)) (and (< 1 $generated@@38) (and ($generated@@36 $generated@@41 $generated@@72 ($generated@@43 $generated@@71)) ($generated@@44 $generated@@73 $generated@@71)))) (= ($generated@@39 $generated@@71 ($generated@@40 $generated@@41 $generated@@72) ($generated@@40 $generated@@70 $generated@@73)) (ite (< ($generated@@27 ($generated@@40 $generated@@41 $generated@@72)) 12) $generated@@30 (ite (= ($generated@@45 ($generated@@40 $generated@@41 $generated@@72) ($generated@@46 9)) ($generated@@40 $generated@@70 $generated@@73)) ($generated@@47 ($generated@@48 $generated@@9 ($generated@@13 ($generated@@46 9)))) (ite (= ($generated@@45 ($generated@@40 $generated@@41 $generated@@72) ($generated@@46 2)) ($generated@@40 $generated@@70 $generated@@73)) ($generated@@47 ($generated@@48 $generated@@9 ($generated@@13 ($generated@@46 2)))) $generated@@30)))))
 :weight 3
 :pattern ( ($generated@@39 $generated@@71 ($generated@@40 $generated@@41 $generated@@72) ($generated@@40 $generated@@70 $generated@@73)))
))))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@74 ($generated@@48 $generated@@78 $generated@@75) $generated@@76 $generated@@77) ($generated@@23 $generated@@78 $generated@@75 $generated@@76 $generated@@77))
 :pattern ( ($generated@@74 ($generated@@48 $generated@@78 $generated@@75) $generated@@76 $generated@@77))
)))
(assert (forall (($generated@@81 T@U) ) (!  (and (= ($generated@@79 ($generated@@32 $generated@@81)) $generated@@2) (= ($generated@@80 ($generated@@32 $generated@@81)) $generated@@6))
 :pattern ( ($generated@@32 $generated@@81))
)))
(assert (forall (($generated@@82 T@U) ) (!  (=> ($generated@@44 $generated@@82 $generated@@24) (and (= ($generated@@48 $generated@@9 ($generated@@63 $generated@@9 $generated@@82)) $generated@@82) ($generated@@36 $generated@@9 ($generated@@63 $generated@@9 $generated@@82) $generated@@24)))
 :pattern ( ($generated@@44 $generated@@82 $generated@@24))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ) (!  (=> ($generated@@33 $generated@@85) (= ($generated@@23 $generated@@31 ($generated@@47 $generated@@84) ($generated@@32 $generated@@83) $generated@@85) ($generated@@74 $generated@@84 $generated@@83 $generated@@85)))
 :pattern ( ($generated@@23 $generated@@31 ($generated@@47 $generated@@84) ($generated@@32 $generated@@83) $generated@@85))
)))
(assert  (=> (<= 1 $generated@@38) (forall (($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ) (!  (=> (or ($generated@@42 $generated@@86 $generated@@87 $generated@@88) (and (< 1 $generated@@38) (and ($generated@@36 $generated@@41 $generated@@87 ($generated@@43 $generated@@86)) ($generated@@44 $generated@@88 $generated@@86)))) (= ($generated@@39 $generated@@86 $generated@@87 $generated@@88) (ite (< ($generated@@27 $generated@@87) 12) $generated@@30 (ite (= ($generated@@45 $generated@@87 ($generated@@46 9)) $generated@@88) ($generated@@47 ($generated@@48 $generated@@9 ($generated@@13 ($generated@@46 9)))) (ite (= ($generated@@45 $generated@@87 ($generated@@46 2)) $generated@@88) ($generated@@47 ($generated@@48 $generated@@9 ($generated@@13 ($generated@@46 2)))) $generated@@30)))))
 :pattern ( ($generated@@39 $generated@@86 $generated@@87 $generated@@88))
))))
(assert  (=> (<= 1 $generated@@38) (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ) (!  (=> (or ($generated@@42 $generated@@90 $generated@@91 $generated@@92) (and (< 1 $generated@@38) (and ($generated@@36 $generated@@41 $generated@@91 ($generated@@43 $generated@@90)) ($generated@@44 $generated@@92 $generated@@90)))) (and (let (($generated@@93 ($generated@@39 $generated@@90 $generated@@91 $generated@@92)))
 (=> (and ($generated@@57 $generated@@93) (< ($generated@@14 ($generated@@63 $generated@@9 ($generated@@89 $generated@@93))) ($generated@@27 $generated@@91))) (= ($generated@@45 $generated@@91 ($generated@@14 ($generated@@63 $generated@@9 ($generated@@89 $generated@@93)))) $generated@@92))) ($generated@@36 $generated@@31 ($generated@@39 $generated@@90 $generated@@91 $generated@@92) ($generated@@32 $generated@@24))))
 :pattern ( ($generated@@39 $generated@@90 $generated@@91 $generated@@92))
))))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (!  (=> ($generated@@36 $generated@@31 $generated@@95 ($generated@@32 $generated@@94)) (or ($generated@@55 $generated@@95) ($generated@@57 $generated@@95)))
 :pattern ( ($generated@@57 $generated@@95) ($generated@@36 $generated@@31 $generated@@95 ($generated@@32 $generated@@94)))
 :pattern ( ($generated@@55 $generated@@95) ($generated@@36 $generated@@31 $generated@@95 ($generated@@32 $generated@@94)))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ) (!  (=> ($generated@@59 $generated@@96 $generated@@97) (= $generated@@96 $generated@@97))
 :pattern ( ($generated@@59 $generated@@96 $generated@@97))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@T) ) (! (= ($generated@@44 ($generated@@48 $generated@@100 $generated@@98) $generated@@99) ($generated@@36 $generated@@100 $generated@@98 $generated@@99))
 :pattern ( ($generated@@44 ($generated@@48 $generated@@100 $generated@@98) $generated@@99))
)))
(assert (forall (($generated@@101 T@U) ) (! (<= 0 ($generated@@27 $generated@@101))
 :pattern ( ($generated@@27 $generated@@101))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@23 $generated@@41 $generated@@102 ($generated@@43 $generated@@103) $generated@@104) (forall (($generated@@105 Int) ) (!  (=> (and (<= 0 $generated@@105) (< $generated@@105 ($generated@@27 $generated@@102))) ($generated@@74 ($generated@@45 $generated@@102 $generated@@105) $generated@@103 $generated@@104))
 :pattern ( ($generated@@45 $generated@@102 $generated@@105))
)))
 :pattern ( ($generated@@23 $generated@@41 $generated@@102 ($generated@@43 $generated@@103) $generated@@104))
)))
(assert (forall (($generated@@107 T@U) ) (! (= ($generated@@106 ($generated@@43 $generated@@107)) $generated@@107)
 :pattern ( ($generated@@43 $generated@@107))
)))
(assert (forall (($generated@@108 T@U) ) (! (= ($generated@@79 ($generated@@43 $generated@@108)) $generated)
 :pattern ( ($generated@@43 $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ) (! (= ($generated@@109 ($generated@@32 $generated@@110)) $generated@@110)
 :pattern ( ($generated@@32 $generated@@110))
)))
(assert (forall (($generated@@111 T@U) ) (! (= ($generated@@29 ($generated@@47 $generated@@111)) $generated@@4)
 :pattern ( ($generated@@47 $generated@@111))
)))
(assert (forall (($generated@@112 T@U) ) (! (= ($generated@@89 ($generated@@47 $generated@@112)) $generated@@112)
 :pattern ( ($generated@@47 $generated@@112))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@T) ) (! (= ($generated@@63 $generated@@114 ($generated@@48 $generated@@114 $generated@@113)) $generated@@113)
 :pattern ( ($generated@@48 $generated@@114 $generated@@113))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ) (! (= ($generated@@36 $generated@@31 ($generated@@47 $generated@@116) ($generated@@32 $generated@@115)) ($generated@@44 $generated@@116 $generated@@115))
 :pattern ( ($generated@@36 $generated@@31 ($generated@@47 $generated@@116) ($generated@@32 $generated@@115)))
)))
(assert (forall (($generated@@119 T@U) ) (! (< ($generated@@117 $generated@@119) ($generated@@118 ($generated@@47 $generated@@119)))
 :pattern ( ($generated@@47 $generated@@119))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (!  (=> (and ($generated@@33 $generated@@122) (and ($generated@@57 $generated@@120) ($generated@@23 $generated@@31 $generated@@120 ($generated@@32 $generated@@121) $generated@@122))) ($generated@@74 ($generated@@89 $generated@@120) $generated@@121 $generated@@122))
 :pattern ( ($generated@@74 ($generated@@89 $generated@@120) $generated@@121 $generated@@122))
)))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@T) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@123 $generated@@133 $generated@@134 $generated@@135 ($generated@@129 $generated@@133 $generated@@134 $generated@@135 $generated@@137 $generated@@138 $generated@@139 $generated@@136) $generated@@138 $generated@@139) $generated@@136)
 :weight 0
)) (and (forall (($generated@@140 T@T) ($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (!  (or (= $generated@@145 $generated@@147) (= ($generated@@123 $generated@@140 $generated@@141 $generated@@142 ($generated@@129 $generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@145 $generated@@146 $generated@@143) $generated@@147 $generated@@148) ($generated@@123 $generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@147 $generated@@148)))
 :weight 0
)) (forall (($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (!  (or (= $generated@@155 $generated@@157) (= ($generated@@123 $generated@@149 $generated@@150 $generated@@151 ($generated@@129 $generated@@149 $generated@@150 $generated@@151 $generated@@153 $generated@@154 $generated@@155 $generated@@152) $generated@@156 $generated@@157) ($generated@@123 $generated@@149 $generated@@150 $generated@@151 $generated@@153 $generated@@156 $generated@@157)))
 :weight 0
)))) (= ($generated@@7 $generated@@124) 6)) (= ($generated@@7 $generated@@125) 7)) (forall (($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ) (! (= ($generated@@127 $generated@@158 $generated@@159 ($generated@@130 $generated@@158 $generated@@159 $generated@@161 $generated@@162 $generated@@160) $generated@@162) $generated@@160)
 :weight 0
))) (forall (($generated@@163 T@T) ($generated@@164 T@T) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ) (!  (or (= $generated@@167 $generated@@168) (= ($generated@@127 $generated@@163 $generated@@164 ($generated@@130 $generated@@163 $generated@@164 $generated@@166 $generated@@167 $generated@@165) $generated@@168) ($generated@@127 $generated@@163 $generated@@164 $generated@@166 $generated@@168)))
 :weight 0
))) (forall (($generated@@169 T@T) ($generated@@170 T@T) ) (= ($generated@@7 ($generated@@128 $generated@@169 $generated@@170)) 8))) (forall (($generated@@171 T@T) ($generated@@172 T@T) ) (! (= ($generated@@131 ($generated@@128 $generated@@171 $generated@@172)) $generated@@171)
 :pattern ( ($generated@@128 $generated@@171 $generated@@172))
))) (forall (($generated@@173 T@T) ($generated@@174 T@T) ) (! (= ($generated@@132 ($generated@@128 $generated@@173 $generated@@174)) $generated@@174)
 :pattern ( ($generated@@128 $generated@@173 $generated@@174))
))))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 Bool) ($generated@@179 T@U) ($generated@@180 T@U) ) (! (= ($generated@@12 ($generated@@123 $generated@@124 $generated@@125 $generated@@8 ($generated@@126 $generated@@175 $generated@@176 $generated@@177 $generated@@178) $generated@@179 $generated@@180))  (=> (and (or (not (= $generated@@179 $generated@@175)) (not true)) ($generated@@12 ($generated@@63 $generated@@8 ($generated@@127 $generated@@125 $generated@@70 ($generated@@127 $generated@@124 ($generated@@128 $generated@@125 $generated@@70) $generated@@176 $generated@@179) $generated@@177)))) $generated@@178))
 :pattern ( ($generated@@123 $generated@@124 $generated@@125 $generated@@8 ($generated@@126 $generated@@175 $generated@@176 $generated@@177 $generated@@178) $generated@@179 $generated@@180))
)))
(assert (forall (($generated@@181 T@U) ) (! (= ($generated@@117 ($generated@@48 $generated@@31 $generated@@181)) ($generated@@118 $generated@@181))
 :pattern ( ($generated@@117 ($generated@@48 $generated@@31 $generated@@181)))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ) (!  (=> ($generated@@44 $generated@@182 ($generated@@43 $generated@@183)) (and (= ($generated@@48 $generated@@41 ($generated@@63 $generated@@41 $generated@@182)) $generated@@182) ($generated@@36 $generated@@41 ($generated@@63 $generated@@41 $generated@@182) ($generated@@43 $generated@@183))))
 :pattern ( ($generated@@44 $generated@@182 ($generated@@43 $generated@@183)))
)))
(assert (forall (($generated@@184 T@U) ($generated@@185 T@U) ) (!  (=> ($generated@@44 $generated@@185 ($generated@@32 $generated@@184)) (and (= ($generated@@48 $generated@@31 ($generated@@63 $generated@@31 $generated@@185)) $generated@@185) ($generated@@36 $generated@@31 ($generated@@63 $generated@@31 $generated@@185) ($generated@@32 $generated@@184))))
 :pattern ( ($generated@@44 $generated@@185 ($generated@@32 $generated@@184)))
)))
(assert (= ($generated@@79 $generated@@24) $generated@@1))
(assert (= ($generated@@80 $generated@@24) $generated@@5))
(assert (= $generated@@30 ($generated@@40 $generated@@31 $generated@@30)))
(assert (forall (($generated@@186 Int) ) (! (= ($generated@@48 $generated@@9 ($generated@@13 ($generated@@46 $generated@@186))) ($generated@@40 $generated@@70 ($generated@@48 $generated@@9 ($generated@@13 $generated@@186))))
 :pattern ( ($generated@@48 $generated@@9 ($generated@@13 ($generated@@46 $generated@@186))))
)))
(assert (forall (($generated@@187 T@U) ) (! (= ($generated@@47 ($generated@@40 $generated@@70 $generated@@187)) ($generated@@40 $generated@@31 ($generated@@47 $generated@@187)))
 :pattern ( ($generated@@47 ($generated@@40 $generated@@70 $generated@@187)))
)))
(assert (forall (($generated@@188 T@U) ($generated@@189 T@T) ) (! (= ($generated@@48 $generated@@189 ($generated@@40 $generated@@189 $generated@@188)) ($generated@@40 $generated@@70 ($generated@@48 $generated@@189 $generated@@188)))
 :pattern ( ($generated@@48 $generated@@189 ($generated@@40 $generated@@189 $generated@@188)))
)))
(assert (forall (($generated@@190 T@U) ) (!  (=> (= ($generated@@27 $generated@@190) 0) (= $generated@@190 $generated@@28))
 :pattern ( ($generated@@27 $generated@@190))
)))
(assert (forall (($generated@@191 T@U) ($generated@@192 T@U) ) (! (= ($generated@@36 $generated@@41 $generated@@191 ($generated@@43 $generated@@192)) (forall (($generated@@193 Int) ) (!  (=> (and (<= 0 $generated@@193) (< $generated@@193 ($generated@@27 $generated@@191))) ($generated@@44 ($generated@@45 $generated@@191 $generated@@193) $generated@@192))
 :pattern ( ($generated@@45 $generated@@191 $generated@@193))
)))
 :pattern ( ($generated@@36 $generated@@41 $generated@@191 ($generated@@43 $generated@@192)))
)))
(assert (forall (($generated@@195 T@U) ($generated@@196 Int) ) (!  (=> (and (<= 0 $generated@@196) (< $generated@@196 ($generated@@27 $generated@@195))) (< ($generated@@118 ($generated@@63 $generated@@31 ($generated@@45 $generated@@195 $generated@@196))) ($generated@@194 $generated@@195)))
 :pattern ( ($generated@@118 ($generated@@63 $generated@@31 ($generated@@45 $generated@@195 $generated@@196))))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@197 () T@U)
(declare-fun $generated@@198 () T@U)
(declare-fun $generated@@199 () T@U)
(declare-fun $generated@@200 () T@U)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () T@U)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 24) (let (($generated@@206 true))
(let (($generated@@207  (=> (and (not (and ($generated@@57 $generated@@197) (< ($generated@@14 ($generated@@63 $generated@@9 ($generated@@89 $generated@@197))) ($generated@@27 $generated@@198)))) (= (ControlFlow 0 17) 13)) $generated@@206)))
(let (($generated@@208  (=> (and ($generated@@57 $generated@@197) (< ($generated@@14 ($generated@@63 $generated@@9 ($generated@@89 $generated@@197))) ($generated@@27 $generated@@198))) (and (=> (= (ControlFlow 0 14) (- 0 16)) ($generated@@57 $generated@@197)) (=> ($generated@@57 $generated@@197) (and (=> (= (ControlFlow 0 14) (- 0 15)) (and (<= 0 ($generated@@14 ($generated@@63 $generated@@9 ($generated@@89 $generated@@197)))) (< ($generated@@14 ($generated@@63 $generated@@9 ($generated@@89 $generated@@197))) ($generated@@27 $generated@@198)))) (=> (and (<= 0 ($generated@@14 ($generated@@63 $generated@@9 ($generated@@89 $generated@@197)))) (< ($generated@@14 ($generated@@63 $generated@@9 ($generated@@89 $generated@@197))) ($generated@@27 $generated@@198))) (=> (= (ControlFlow 0 14) 13) $generated@@206))))))))
(let (($generated@@209  (=> (not ($generated@@57 $generated@@197)) (and (=> (= (ControlFlow 0 20) 14) $generated@@208) (=> (= (ControlFlow 0 20) 17) $generated@@207)))))
(let (($generated@@210  (=> ($generated@@57 $generated@@197) (and (=> (= (ControlFlow 0 18) (- 0 19)) ($generated@@57 $generated@@197)) (=> ($generated@@57 $generated@@197) (and (=> (= (ControlFlow 0 18) 14) $generated@@208) (=> (= (ControlFlow 0 18) 17) $generated@@207)))))))
(let (($generated@@211  (=> ($generated@@36 $generated@@31 ($generated@@39 $generated@@199 $generated@@198 $generated@@200) ($generated@@32 $generated@@24)) (=> (and ($generated@@23 $generated@@41 $generated@@198 ($generated@@43 $generated@@199) $generated@@201) ($generated@@74 $generated@@200 $generated@@199 $generated@@201)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (or (and ($generated@@59 $generated@@198 $generated@@198) (= $generated@@200 $generated@@200)) (< ($generated@@194 $generated@@198) ($generated@@194 $generated@@198)))) (=> (or (and ($generated@@59 $generated@@198 $generated@@198) (= $generated@@200 $generated@@200)) (< ($generated@@194 $generated@@198) ($generated@@194 $generated@@198))) (=> (or (and ($generated@@59 $generated@@198 $generated@@198) (= $generated@@200 $generated@@200)) ($generated@@42 $generated@@199 $generated@@198 $generated@@200)) (=> (and (and (= $generated@@202 ($generated@@39 $generated@@199 $generated@@198 $generated@@200)) ($generated@@42 $generated@@199 $generated@@198 $generated@@200)) (and ($generated@@36 $generated@@31 $generated@@202 ($generated@@32 $generated@@24)) (= $generated@@197 $generated@@202))) (and (=> (= (ControlFlow 0 21) 18) $generated@@210) (=> (= (ControlFlow 0 21) 20) $generated@@209))))))))))
(let (($generated@@212  (=> (= (ControlFlow 0 2) (- 0 1)) (let (($generated@@213 ($generated@@39 $generated@@199 $generated@@198 $generated@@200)))
 (=> (and ($generated@@57 $generated@@213) (< ($generated@@14 ($generated@@63 $generated@@9 ($generated@@89 $generated@@213))) ($generated@@27 $generated@@198))) (= ($generated@@45 $generated@@198 ($generated@@14 ($generated@@63 $generated@@9 ($generated@@89 $generated@@213)))) $generated@@200))))))
(let (($generated@@214  (=> (and (and (or (not (= ($generated@@45 $generated@@198 ($generated@@46 2)) $generated@@200)) (not true)) (= ($generated@@39 $generated@@199 $generated@@198 $generated@@200) ($generated@@40 $generated@@31 $generated@@30))) (and ($generated@@36 $generated@@31 ($generated@@39 $generated@@199 $generated@@198 $generated@@200) ($generated@@32 $generated@@24)) (= (ControlFlow 0 8) 2))) $generated@@212)))
(let (($generated@@215  (=> (= ($generated@@45 $generated@@198 ($generated@@46 2)) $generated@@200) (and (=> (= (ControlFlow 0 6) (- 0 7)) ($generated@@36 $generated@@9 ($generated@@13 ($generated@@46 2)) $generated@@24)) (=> ($generated@@36 $generated@@9 ($generated@@13 ($generated@@46 2)) $generated@@24) (=> (= ($generated@@39 $generated@@199 $generated@@198 $generated@@200) ($generated@@40 $generated@@31 ($generated@@47 ($generated@@48 $generated@@9 ($generated@@13 ($generated@@46 2)))))) (=> (and ($generated@@36 $generated@@31 ($generated@@39 $generated@@199 $generated@@198 $generated@@200) ($generated@@32 $generated@@24)) (= (ControlFlow 0 6) 2)) $generated@@212)))))))
(let (($generated@@216  (=> (or (not (= ($generated@@45 $generated@@198 ($generated@@46 9)) $generated@@200)) (not true)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (and (<= 0 ($generated@@46 2)) (< ($generated@@46 2) ($generated@@27 $generated@@198)))) (=> (and (<= 0 ($generated@@46 2)) (< ($generated@@46 2) ($generated@@27 $generated@@198))) (and (=> (= (ControlFlow 0 9) 6) $generated@@215) (=> (= (ControlFlow 0 9) 8) $generated@@214)))))))
(let (($generated@@217  (=> (= ($generated@@45 $generated@@198 ($generated@@46 9)) $generated@@200) (and (=> (= (ControlFlow 0 4) (- 0 5)) ($generated@@36 $generated@@9 ($generated@@13 ($generated@@46 9)) $generated@@24)) (=> ($generated@@36 $generated@@9 ($generated@@13 ($generated@@46 9)) $generated@@24) (=> (= ($generated@@39 $generated@@199 $generated@@198 $generated@@200) ($generated@@40 $generated@@31 ($generated@@47 ($generated@@48 $generated@@9 ($generated@@13 ($generated@@46 9)))))) (=> (and ($generated@@36 $generated@@31 ($generated@@39 $generated@@199 $generated@@198 $generated@@200) ($generated@@32 $generated@@24)) (= (ControlFlow 0 4) 2)) $generated@@212)))))))
(let (($generated@@218  (=> (<= 12 ($generated@@27 $generated@@198)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (<= 0 ($generated@@46 9)) (< ($generated@@46 9) ($generated@@27 $generated@@198)))) (=> (and (<= 0 ($generated@@46 9)) (< ($generated@@46 9) ($generated@@27 $generated@@198))) (and (=> (= (ControlFlow 0 11) 4) $generated@@217) (=> (= (ControlFlow 0 11) 9) $generated@@216)))))))
(let (($generated@@219  (=> (and (and (< ($generated@@27 $generated@@198) 12) (= ($generated@@39 $generated@@199 $generated@@198 $generated@@200) ($generated@@40 $generated@@31 $generated@@30))) (and ($generated@@36 $generated@@31 ($generated@@39 $generated@@199 $generated@@198 $generated@@200) ($generated@@32 $generated@@24)) (= (ControlFlow 0 3) 2))) $generated@@212)))
(let (($generated@@220  (=> (= $generated@@203 ($generated@@126 $generated@@204 $generated@@201 $generated@@0 false)) (and (and (=> (= (ControlFlow 0 23) 21) $generated@@211) (=> (= (ControlFlow 0 23) 3) $generated@@219)) (=> (= (ControlFlow 0 23) 11) $generated@@218)))))
(let (($generated@@221  (=> (and ($generated@@33 $generated@@201) ($generated@@205 $generated@@201)) (=> (and (and ($generated@@36 $generated@@41 $generated@@198 ($generated@@43 $generated@@199)) ($generated@@44 $generated@@200 $generated@@199)) (and (= 1 $generated@@38) (= (ControlFlow 0 24) 23))) $generated@@220))))
$generated@@221))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)