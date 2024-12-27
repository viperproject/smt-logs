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
(declare-fun $generated@@23 (T@U T@U T@U) T@U)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@40 () T@U)
(declare-fun $generated@@41 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 (T@U) T@U)
(declare-fun $generated@@44 (T@U) Bool)
(declare-fun $generated@@47 (T@T T@U T@U) Bool)
(declare-fun $generated@@49 (T@T T@U) T@U)
(declare-fun $generated@@52 () Int)
(declare-fun $generated@@53 (T@U T@U T@U T@U) Bool)
(declare-fun $generated@@54 (T@U) T@U)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 (T@U T@U T@U) Bool)
(declare-fun $generated@@57 (T@U T@U) Bool)
(declare-fun $generated@@58 (T@U) Bool)
(declare-fun $generated@@70 (T@U) Bool)
(declare-fun $generated@@76 (T@T T@U) T@U)
(declare-fun $generated@@77 (T@T T@U) T@U)
(declare-fun $generated@@85 (T@U T@U T@U) Bool)
(declare-fun $generated@@90 (T@U) T@U)
(declare-fun $generated@@116 (T@U) T@U)
(declare-fun $generated@@130 (T@U) Int)
(declare-fun $generated@@134 (T@U) Int)
(declare-fun $generated@@148 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@149 () T@T)
(declare-fun $generated@@150 () T@T)
(declare-fun $generated@@151 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@152 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@153 (T@T T@T) T@T)
(declare-fun $generated@@154 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@155 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@156 (T@T) T@T)
(declare-fun $generated@@157 (T@T) T@T)
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
(assert (forall (($generated@@25 T@U) ($generated@@26 T@U) ($generated@@27 T@U) ) (! (= ($generated@@24 ($generated@@23 $generated@@25 $generated@@26 $generated@@27)) $generated@@4)
 :pattern ( ($generated@@23 $generated@@25 $generated@@26 $generated@@27))
)))
(assert (forall (($generated@@29 T@U) ($generated@@30 T@U) ($generated@@31 T@U) ) (! (= ($generated@@28 ($generated@@23 $generated@@29 $generated@@30 $generated@@31)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29 $generated@@30 $generated@@31))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ) (! (= ($generated@@32 ($generated@@23 $generated@@33 $generated@@34 $generated@@35)) $generated@@34)
 :pattern ( ($generated@@23 $generated@@33 $generated@@34 $generated@@35))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ) (! (= ($generated@@36 ($generated@@23 $generated@@37 $generated@@38 $generated@@39)) $generated@@39)
 :pattern ( ($generated@@23 $generated@@37 $generated@@38 $generated@@39))
)))
(assert (= ($generated@@24 $generated@@40) $generated@@3))
(assert (= ($generated@@6 $generated@@42) 3))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ) (!  (=> ($generated@@44 $generated@@46) ($generated@@41 $generated@@42 $generated@@40 ($generated@@43 $generated@@45) $generated@@46))
 :pattern ( ($generated@@41 $generated@@42 $generated@@40 ($generated@@43 $generated@@45) $generated@@46))
)))
(assert (forall (($generated@@48 T@U) ) (! ($generated@@47 $generated@@42 $generated@@40 ($generated@@43 $generated@@48))
 :pattern ( ($generated@@47 $generated@@42 $generated@@40 ($generated@@43 $generated@@48)))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@T) ) (! (= ($generated@@49 $generated@@51 $generated@@50) $generated@@50)
 :pattern ( ($generated@@49 $generated@@51 $generated@@50))
)))
(assert (= ($generated@@6 $generated@@55) 4))
(assert  (=> (<= 1 $generated@@52) (forall (($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ) (!  (=> (or ($generated@@56 $generated@@59 ($generated@@49 $generated@@42 $generated@@61) ($generated@@49 $generated@@55 $generated@@62)) (and (< 1 $generated@@52) (and ($generated@@47 $generated@@42 $generated@@61 ($generated@@43 $generated@@59)) ($generated@@57 $generated@@62 $generated@@59)))) (and (=> (not ($generated@@11 ($generated@@49 $generated@@7 ($generated@@10 ($generated@@58 ($generated@@49 $generated@@42 $generated@@61)))))) (let (($generated@@63 ($generated@@49 $generated@@42 ($generated@@36 ($generated@@49 $generated@@42 $generated@@61)))))
(let (($generated@@64 ($generated@@49 $generated@@55 ($generated@@32 ($generated@@49 $generated@@42 $generated@@61)))))
(let (($generated@@65 ($generated@@49 $generated@@42 ($generated@@28 ($generated@@49 $generated@@42 $generated@@61)))))
 (=> (or (not (= $generated@@64 ($generated@@49 $generated@@55 $generated@@62))) (not true)) (and ($generated@@56 $generated@@59 $generated@@65 ($generated@@49 $generated@@55 $generated@@62)) (=> (not ($generated@@53 $generated@@59 ($generated@@54 $generated@@60) $generated@@65 ($generated@@49 $generated@@55 $generated@@62))) ($generated@@56 $generated@@59 $generated@@63 ($generated@@49 $generated@@55 $generated@@62))))))))) (= ($generated@@53 $generated@@59 ($generated@@54 $generated@@60) ($generated@@49 $generated@@42 $generated@@61) ($generated@@49 $generated@@55 $generated@@62)) (ite ($generated@@58 ($generated@@49 $generated@@42 $generated@@61)) false (let (($generated@@66 ($generated@@49 $generated@@42 ($generated@@36 ($generated@@49 $generated@@42 $generated@@61)))))
(let (($generated@@67 ($generated@@49 $generated@@55 ($generated@@32 ($generated@@49 $generated@@42 $generated@@61)))))
(let (($generated@@68 ($generated@@49 $generated@@42 ($generated@@28 ($generated@@49 $generated@@42 $generated@@61)))))
 (or (or (= $generated@@67 ($generated@@49 $generated@@55 $generated@@62)) ($generated@@53 $generated@@59 ($generated@@54 $generated@@60) $generated@@68 ($generated@@49 $generated@@55 $generated@@62))) ($generated@@53 $generated@@59 ($generated@@54 $generated@@60) $generated@@66 ($generated@@49 $generated@@55 $generated@@62))))))))))
 :weight 3
 :pattern ( ($generated@@53 $generated@@59 ($generated@@54 $generated@@60) ($generated@@49 $generated@@42 $generated@@61) ($generated@@49 $generated@@55 $generated@@62)))
))))
(assert (forall (($generated@@69 T@U) ) (! (= ($generated@@58 $generated@@69) (= ($generated@@24 $generated@@69) $generated@@3))
 :pattern ( ($generated@@58 $generated@@69))
)))
(assert (forall (($generated@@71 T@U) ) (! (= ($generated@@70 $generated@@71) (= ($generated@@24 $generated@@71) $generated@@4))
 :pattern ( ($generated@@70 $generated@@71))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ) (! (= ($generated@@47 $generated@@42 ($generated@@23 $generated@@73 $generated@@74 $generated@@75) ($generated@@43 $generated@@72))  (and (and ($generated@@47 $generated@@42 $generated@@73 ($generated@@43 $generated@@72)) ($generated@@57 $generated@@74 $generated@@72)) ($generated@@47 $generated@@42 $generated@@75 ($generated@@43 $generated@@72))))
 :pattern ( ($generated@@47 $generated@@42 ($generated@@23 $generated@@73 $generated@@74 $generated@@75) ($generated@@43 $generated@@72)))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@T) ) (! (= ($generated@@77 $generated@@79 ($generated@@76 $generated@@79 $generated@@78)) $generated@@78)
 :pattern ( ($generated@@76 $generated@@79 $generated@@78))
)))
(assert (forall (($generated@@80 T@U) ) (!  (=> ($generated@@70 $generated@@80) (exists (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (= $generated@@80 ($generated@@23 $generated@@81 $generated@@82 $generated@@83))))
 :pattern ( ($generated@@70 $generated@@80))
)))
(assert (forall (($generated@@84 T@U) ) (!  (=> ($generated@@58 $generated@@84) (= $generated@@84 $generated@@40))
 :pattern ( ($generated@@58 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@T) ) (! (= ($generated@@85 ($generated@@77 $generated@@89 $generated@@86) $generated@@87 $generated@@88) ($generated@@41 $generated@@89 $generated@@86 $generated@@87 $generated@@88))
 :pattern ( ($generated@@85 ($generated@@77 $generated@@89 $generated@@86) $generated@@87 $generated@@88))
)))
(assert (forall (($generated@@91 T@U) ) (!  (and (= ($generated@@22 ($generated@@43 $generated@@91)) $generated@@2) (= ($generated@@90 ($generated@@43 $generated@@91)) $generated@@5))
 :pattern ( ($generated@@43 $generated@@91))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> ($generated@@44 $generated@@96) (= ($generated@@41 $generated@@42 ($generated@@23 $generated@@93 $generated@@94 $generated@@95) ($generated@@43 $generated@@92) $generated@@96)  (and (and ($generated@@41 $generated@@42 $generated@@93 ($generated@@43 $generated@@92) $generated@@96) ($generated@@85 $generated@@94 $generated@@92 $generated@@96)) ($generated@@41 $generated@@42 $generated@@95 ($generated@@43 $generated@@92) $generated@@96))))
 :pattern ( ($generated@@41 $generated@@42 ($generated@@23 $generated@@93 $generated@@94 $generated@@95) ($generated@@43 $generated@@92) $generated@@96))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ) (!  (=> ($generated@@47 $generated@@42 $generated@@98 ($generated@@43 $generated@@97)) (or ($generated@@58 $generated@@98) ($generated@@70 $generated@@98)))
 :pattern ( ($generated@@70 $generated@@98) ($generated@@47 $generated@@42 $generated@@98 ($generated@@43 $generated@@97)))
 :pattern ( ($generated@@58 $generated@@98) ($generated@@47 $generated@@42 $generated@@98 ($generated@@43 $generated@@97)))
)))
(assert (forall (($generated@@99 T@U) ) (!  (=> ($generated@@57 $generated@@99 $generated) (and (= ($generated@@77 $generated@@7 ($generated@@76 $generated@@7 $generated@@99)) $generated@@99) ($generated@@47 $generated@@7 ($generated@@76 $generated@@7 $generated@@99) $generated)))
 :pattern ( ($generated@@57 $generated@@99 $generated))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@T) ) (! (= ($generated@@57 ($generated@@77 $generated@@102 $generated@@100) $generated@@101) ($generated@@47 $generated@@102 $generated@@100 $generated@@101))
 :pattern ( ($generated@@57 ($generated@@77 $generated@@102 $generated@@100) $generated@@101))
)))
(assert  (=> (<= 1 $generated@@52) (forall (($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (!  (=> (or ($generated@@56 $generated@@103 $generated@@105 $generated@@106) (and (< 1 $generated@@52) (and ($generated@@47 $generated@@42 $generated@@105 ($generated@@43 $generated@@103)) ($generated@@57 $generated@@106 $generated@@103)))) (and (=> (not ($generated@@58 $generated@@105)) (let (($generated@@107 ($generated@@36 $generated@@105)))
(let (($generated@@108 ($generated@@32 $generated@@105)))
(let (($generated@@109 ($generated@@28 $generated@@105)))
 (=> (or (not (= $generated@@108 $generated@@106)) (not true)) (and ($generated@@56 $generated@@103 $generated@@109 $generated@@106) (=> (not ($generated@@53 $generated@@103 $generated@@104 $generated@@109 $generated@@106)) ($generated@@56 $generated@@103 $generated@@107 $generated@@106)))))))) (= ($generated@@53 $generated@@103 ($generated@@54 $generated@@104) $generated@@105 $generated@@106) (ite ($generated@@58 $generated@@105) false (let (($generated@@110 ($generated@@36 $generated@@105)))
(let (($generated@@111 ($generated@@32 $generated@@105)))
(let (($generated@@112 ($generated@@28 $generated@@105)))
 (or (or (= $generated@@111 $generated@@106) ($generated@@53 $generated@@103 $generated@@104 $generated@@112 $generated@@106)) ($generated@@53 $generated@@103 $generated@@104 $generated@@110 $generated@@106)))))))))
 :pattern ( ($generated@@53 $generated@@103 ($generated@@54 $generated@@104) $generated@@105 $generated@@106))
))))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@23 ($generated@@49 $generated@@42 $generated@@113) ($generated@@49 $generated@@55 $generated@@114) ($generated@@49 $generated@@42 $generated@@115)) ($generated@@49 $generated@@42 ($generated@@23 $generated@@113 $generated@@114 $generated@@115)))
 :pattern ( ($generated@@23 ($generated@@49 $generated@@42 $generated@@113) ($generated@@49 $generated@@55 $generated@@114) ($generated@@49 $generated@@42 $generated@@115)))
)))
(assert (forall (($generated@@117 T@U) ) (! (= ($generated@@116 ($generated@@43 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@43 $generated@@117))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@T) ) (! (= ($generated@@76 $generated@@119 ($generated@@77 $generated@@119 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@77 $generated@@119 $generated@@118))
)))
(assert  (=> (<= 1 $generated@@52) (forall (($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (!  (=> (or ($generated@@56 $generated@@120 ($generated@@49 $generated@@42 $generated@@122) $generated@@123) (and (< 1 $generated@@52) (and ($generated@@47 $generated@@42 $generated@@122 ($generated@@43 $generated@@120)) ($generated@@57 $generated@@123 $generated@@120)))) (and (=> (not ($generated@@11 ($generated@@49 $generated@@7 ($generated@@10 ($generated@@58 ($generated@@49 $generated@@42 $generated@@122)))))) (let (($generated@@124 ($generated@@49 $generated@@42 ($generated@@36 ($generated@@49 $generated@@42 $generated@@122)))))
(let (($generated@@125 ($generated@@49 $generated@@55 ($generated@@32 ($generated@@49 $generated@@42 $generated@@122)))))
(let (($generated@@126 ($generated@@49 $generated@@42 ($generated@@28 ($generated@@49 $generated@@42 $generated@@122)))))
 (=> (or (not (= $generated@@125 $generated@@123)) (not true)) (and ($generated@@56 $generated@@120 $generated@@126 $generated@@123) (=> (not ($generated@@53 $generated@@120 ($generated@@54 $generated@@121) $generated@@126 $generated@@123)) ($generated@@56 $generated@@120 $generated@@124 $generated@@123)))))))) (= ($generated@@53 $generated@@120 ($generated@@54 $generated@@121) ($generated@@49 $generated@@42 $generated@@122) $generated@@123) (ite ($generated@@58 ($generated@@49 $generated@@42 $generated@@122)) false (let (($generated@@127 ($generated@@49 $generated@@42 ($generated@@36 ($generated@@49 $generated@@42 $generated@@122)))))
(let (($generated@@128 ($generated@@49 $generated@@55 ($generated@@32 ($generated@@49 $generated@@42 $generated@@122)))))
(let (($generated@@129 ($generated@@49 $generated@@42 ($generated@@28 ($generated@@49 $generated@@42 $generated@@122)))))
 (or (or (= $generated@@128 $generated@@123) ($generated@@53 $generated@@120 ($generated@@54 $generated@@121) $generated@@129 $generated@@123)) ($generated@@53 $generated@@120 ($generated@@54 $generated@@121) $generated@@127 $generated@@123)))))))))
 :weight 3
 :pattern ( ($generated@@53 $generated@@120 ($generated@@54 $generated@@121) ($generated@@49 $generated@@42 $generated@@122) $generated@@123))
))))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (! (< ($generated@@130 $generated@@131) ($generated@@130 ($generated@@23 $generated@@131 $generated@@132 $generated@@133)))
 :pattern ( ($generated@@23 $generated@@131 $generated@@132 $generated@@133))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (! (< ($generated@@134 $generated@@136) ($generated@@130 ($generated@@23 $generated@@135 $generated@@136 $generated@@137)))
 :pattern ( ($generated@@23 $generated@@135 $generated@@136 $generated@@137))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (! (< ($generated@@130 $generated@@140) ($generated@@130 ($generated@@23 $generated@@138 $generated@@139 $generated@@140)))
 :pattern ( ($generated@@23 $generated@@138 $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ) (! (= ($generated@@53 $generated@@141 ($generated@@54 $generated@@142) $generated@@143 $generated@@144) ($generated@@53 $generated@@141 $generated@@142 $generated@@143 $generated@@144))
 :pattern ( ($generated@@53 $generated@@141 ($generated@@54 $generated@@142) $generated@@143 $generated@@144))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (!  (=> (and ($generated@@44 $generated@@147) (and ($generated@@70 $generated@@145) ($generated@@41 $generated@@42 $generated@@145 ($generated@@43 $generated@@146) $generated@@147))) ($generated@@85 ($generated@@32 $generated@@145) $generated@@146 $generated@@147))
 :pattern ( ($generated@@85 ($generated@@32 $generated@@145) $generated@@146 $generated@@147))
)))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ) (! (= ($generated@@148 $generated@@158 $generated@@159 $generated@@160 ($generated@@154 $generated@@158 $generated@@159 $generated@@160 $generated@@162 $generated@@163 $generated@@164 $generated@@161) $generated@@163 $generated@@164) $generated@@161)
 :weight 0
)) (and (forall (($generated@@165 T@T) ($generated@@166 T@T) ($generated@@167 T@T) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ) (!  (or (= $generated@@170 $generated@@172) (= ($generated@@148 $generated@@165 $generated@@166 $generated@@167 ($generated@@154 $generated@@165 $generated@@166 $generated@@167 $generated@@169 $generated@@170 $generated@@171 $generated@@168) $generated@@172 $generated@@173) ($generated@@148 $generated@@165 $generated@@166 $generated@@167 $generated@@169 $generated@@172 $generated@@173)))
 :weight 0
)) (forall (($generated@@174 T@T) ($generated@@175 T@T) ($generated@@176 T@T) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ) (!  (or (= $generated@@180 $generated@@182) (= ($generated@@148 $generated@@174 $generated@@175 $generated@@176 ($generated@@154 $generated@@174 $generated@@175 $generated@@176 $generated@@178 $generated@@179 $generated@@180 $generated@@177) $generated@@181 $generated@@182) ($generated@@148 $generated@@174 $generated@@175 $generated@@176 $generated@@178 $generated@@181 $generated@@182)))
 :weight 0
)))) (= ($generated@@6 $generated@@149) 5)) (= ($generated@@6 $generated@@150) 6)) (forall (($generated@@183 T@T) ($generated@@184 T@T) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ) (! (= ($generated@@152 $generated@@183 $generated@@184 ($generated@@155 $generated@@183 $generated@@184 $generated@@186 $generated@@187 $generated@@185) $generated@@187) $generated@@185)
 :weight 0
))) (forall (($generated@@188 T@T) ($generated@@189 T@T) ($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ) (!  (or (= $generated@@192 $generated@@193) (= ($generated@@152 $generated@@188 $generated@@189 ($generated@@155 $generated@@188 $generated@@189 $generated@@191 $generated@@192 $generated@@190) $generated@@193) ($generated@@152 $generated@@188 $generated@@189 $generated@@191 $generated@@193)))
 :weight 0
))) (forall (($generated@@194 T@T) ($generated@@195 T@T) ) (= ($generated@@6 ($generated@@153 $generated@@194 $generated@@195)) 7))) (forall (($generated@@196 T@T) ($generated@@197 T@T) ) (! (= ($generated@@156 ($generated@@153 $generated@@196 $generated@@197)) $generated@@196)
 :pattern ( ($generated@@153 $generated@@196 $generated@@197))
))) (forall (($generated@@198 T@T) ($generated@@199 T@T) ) (! (= ($generated@@157 ($generated@@153 $generated@@198 $generated@@199)) $generated@@199)
 :pattern ( ($generated@@153 $generated@@198 $generated@@199))
))))
(assert (forall (($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 Bool) ($generated@@204 T@U) ($generated@@205 T@U) ) (! (= ($generated@@11 ($generated@@148 $generated@@149 $generated@@150 $generated@@7 ($generated@@151 $generated@@200 $generated@@201 $generated@@202 $generated@@203) $generated@@204 $generated@@205))  (=> (and (or (not (= $generated@@204 $generated@@200)) (not true)) ($generated@@11 ($generated@@76 $generated@@7 ($generated@@152 $generated@@150 $generated@@55 ($generated@@152 $generated@@149 ($generated@@153 $generated@@150 $generated@@55) $generated@@201 $generated@@204) $generated@@202)))) $generated@@203))
 :pattern ( ($generated@@148 $generated@@149 $generated@@150 $generated@@7 ($generated@@151 $generated@@200 $generated@@201 $generated@@202 $generated@@203) $generated@@204 $generated@@205))
)))
(assert (forall (($generated@@206 T@U) ) (! (= ($generated@@134 ($generated@@77 $generated@@42 $generated@@206)) ($generated@@130 $generated@@206))
 :pattern ( ($generated@@134 ($generated@@77 $generated@@42 $generated@@206)))
)))
(assert (forall (($generated@@207 T@U) ($generated@@208 T@U) ) (!  (=> ($generated@@57 $generated@@208 ($generated@@43 $generated@@207)) (and (= ($generated@@77 $generated@@42 ($generated@@76 $generated@@42 $generated@@208)) $generated@@208) ($generated@@47 $generated@@42 ($generated@@76 $generated@@42 $generated@@208) ($generated@@43 $generated@@207))))
 :pattern ( ($generated@@57 $generated@@208 ($generated@@43 $generated@@207)))
)))
(assert (forall (($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ) (!  (=> (and ($generated@@44 $generated@@211) (and ($generated@@70 $generated@@209) ($generated@@41 $generated@@42 $generated@@209 ($generated@@43 $generated@@210) $generated@@211))) ($generated@@41 $generated@@42 ($generated@@28 $generated@@209) ($generated@@43 $generated@@210) $generated@@211))
 :pattern ( ($generated@@41 $generated@@42 ($generated@@28 $generated@@209) ($generated@@43 $generated@@210) $generated@@211))
)))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ) (!  (=> (and ($generated@@44 $generated@@214) (and ($generated@@70 $generated@@212) ($generated@@41 $generated@@42 $generated@@212 ($generated@@43 $generated@@213) $generated@@214))) ($generated@@41 $generated@@42 ($generated@@36 $generated@@212) ($generated@@43 $generated@@213) $generated@@214))
 :pattern ( ($generated@@41 $generated@@42 ($generated@@36 $generated@@212) ($generated@@43 $generated@@213) $generated@@214))
)))
(assert (= $generated@@40 ($generated@@49 $generated@@42 $generated@@40)))
(assert (forall (($generated@@215 T@U) ($generated@@216 T@T) ) (! (= ($generated@@77 $generated@@216 ($generated@@49 $generated@@216 $generated@@215)) ($generated@@49 $generated@@55 ($generated@@77 $generated@@216 $generated@@215)))
 :pattern ( ($generated@@77 $generated@@216 ($generated@@49 $generated@@216 $generated@@215)))
)))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ) (! ($generated@@41 $generated@@7 $generated@@218 $generated $generated@@217)
 :pattern ( ($generated@@41 $generated@@7 $generated@@218 $generated $generated@@217))
)))
(assert (forall (($generated@@219 T@U) ) (! ($generated@@47 $generated@@7 $generated@@219 $generated)
 :pattern ( ($generated@@47 $generated@@7 $generated@@219 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@220 () T@U)
(declare-fun $generated@@221 () T@U)
(declare-fun $generated@@222 () T@U)
(declare-fun $generated@@223 () T@U)
(declare-fun $generated@@224 () T@U)
(declare-fun $generated@@225 () T@U)
(declare-fun $generated@@226 () T@U)
(declare-fun $generated@@227 () T@U)
(declare-fun $generated@@228 () T@U)
(declare-fun $generated@@229 () T@U)
(declare-fun $generated@@230 () T@U)
(declare-fun $generated@@231 () T@U)
(declare-fun $generated@@232 () T@U)
(declare-fun $generated@@233 () T@U)
(declare-fun $generated@@234 () T@U)
(declare-fun $generated@@235 () T@U)
(declare-fun $generated@@236 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 14) (let (($generated@@237 true))
(let (($generated@@238  (=> (and (or (= $generated@@220 $generated@@221) ($generated@@53 $generated@@222 ($generated@@54 $generated@@223) $generated@@224 $generated@@221)) (= (ControlFlow 0 7) 4)) $generated@@237)))
(let (($generated@@239  (=> (not (or (= $generated@@220 $generated@@221) ($generated@@53 $generated@@222 ($generated@@54 $generated@@223) $generated@@224 $generated@@221))) (=> (and ($generated@@41 $generated@@42 $generated@@225 ($generated@@43 $generated@@222) $generated@@226) ($generated@@85 $generated@@221 $generated@@222 $generated@@226)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (< ($generated@@130 $generated@@225) ($generated@@130 $generated@@227))) (=> (< ($generated@@130 $generated@@225) ($generated@@130 $generated@@227)) (=> (and ($generated@@56 $generated@@222 $generated@@225 $generated@@221) (= (ControlFlow 0 5) 4)) $generated@@237)))))))
(let (($generated@@240  (=> (= $generated@@220 $generated@@221) (and (=> (= (ControlFlow 0 10) 5) $generated@@239) (=> (= (ControlFlow 0 10) 7) $generated@@238)))))
(let (($generated@@241  (=> (or (not (= $generated@@220 $generated@@221)) (not true)) (=> (and ($generated@@41 $generated@@42 $generated@@224 ($generated@@43 $generated@@222) $generated@@226) ($generated@@85 $generated@@221 $generated@@222 $generated@@226)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (< ($generated@@130 $generated@@224) ($generated@@130 $generated@@227))) (=> (< ($generated@@130 $generated@@224) ($generated@@130 $generated@@227)) (=> ($generated@@56 $generated@@222 $generated@@224 $generated@@221) (and (=> (= (ControlFlow 0 8) 5) $generated@@239) (=> (= (ControlFlow 0 8) 7) $generated@@238)))))))))
(let (($generated@@242  (=> (= $generated@@227 ($generated@@23 $generated@@228 $generated@@229 $generated@@230)) (=> (and (and ($generated@@47 $generated@@42 $generated@@228 ($generated@@43 $generated@@222)) ($generated@@57 $generated@@229 $generated@@222)) (and ($generated@@47 $generated@@42 $generated@@230 ($generated@@43 $generated@@222)) (= $generated@@231 $generated@@230))) (=> (and (and (and ($generated@@47 $generated@@42 $generated@@231 ($generated@@43 $generated@@222)) (= $generated@@225 $generated@@231)) (and (= $generated@@232 $generated@@229) ($generated@@57 $generated@@232 $generated@@222))) (and (and (= $generated@@220 $generated@@232) (= $generated@@233 $generated@@228)) (and ($generated@@47 $generated@@42 $generated@@233 ($generated@@43 $generated@@222)) (= $generated@@224 $generated@@233)))) (and (=> (= (ControlFlow 0 11) 8) $generated@@241) (=> (= (ControlFlow 0 11) 10) $generated@@240)))))))
(let (($generated@@243 true))
(let (($generated@@244  (=> (or (not (= $generated@@227 $generated@@40)) (not true)) (and (=> (= (ControlFlow 0 12) 11) $generated@@242) (=> (= (ControlFlow 0 12) 3) $generated@@243)))))
(let (($generated@@245 true))
(let (($generated@@246 true))
(let (($generated@@247  (=> (= $generated@@234 ($generated@@151 $generated@@235 $generated@@226 $generated@@1 false)) (and (and (=> (= (ControlFlow 0 13) 1) $generated@@246) (=> (= (ControlFlow 0 13) 2) $generated@@245)) (=> (= (ControlFlow 0 13) 12) $generated@@244)))))
(let (($generated@@248  (=> (and ($generated@@44 $generated@@226) ($generated@@236 $generated@@226)) (=> (and (and ($generated@@47 $generated@@42 $generated@@227 ($generated@@43 $generated@@222)) ($generated@@57 $generated@@221 $generated@@222)) (and (= 1 $generated@@52) (= (ControlFlow 0 14) 13))) $generated@@247))))
$generated@@248)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)