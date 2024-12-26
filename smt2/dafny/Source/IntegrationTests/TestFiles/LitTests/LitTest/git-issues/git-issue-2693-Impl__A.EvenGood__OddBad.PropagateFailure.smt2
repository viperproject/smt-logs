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
(declare-fun $generated@@10 () T@U)
(declare-fun $generated@@11 () T@U)
(declare-fun $generated@@12 (T@T) Int)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 (Bool) T@U)
(declare-fun $generated@@17 (T@U) Bool)
(declare-fun $generated@@18 (Int) T@U)
(declare-fun $generated@@19 (T@U) Int)
(declare-fun $generated@@20 (Real) T@U)
(declare-fun $generated@@21 (T@U) Real)
(declare-fun $generated@@28 (T@U) Int)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 (T@T T@U T@U) Bool)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 () T@U)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@37 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@42 (T@U T@U) T@U)
(declare-fun $generated@@43 (T@U) Bool)
(declare-fun $generated@@44 (T@T T@U) T@U)
(declare-fun $generated@@45 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@47 () T@T)
(declare-fun $generated@@48 (T@T T@T) T@T)
(declare-fun $generated@@49 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@50 (T@T) T@T)
(declare-fun $generated@@51 (T@T) T@T)
(declare-fun $generated@@71 (T@U T@U) Bool)
(declare-fun $generated@@75 (Int) Int)
(declare-fun $generated@@77 (T@T T@U) T@U)
(declare-fun $generated@@80 (T@U) Bool)
(declare-fun $generated@@81 (T@U) T@U)
(declare-fun $generated@@83 (T@U) Bool)
(declare-fun $generated@@85 (T@T T@U) T@U)
(declare-fun $generated@@88 (Int) T@U)
(declare-fun $generated@@91 (T@U) T@U)
(declare-fun $generated@@94 (T@U) Bool)
(declare-fun $generated@@102 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@103 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@104 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@136 () T@T)
(declare-fun $generated@@137 () T@U)
(declare-fun $generated@@148 (T@U) T@U)
(declare-fun $generated@@152 (T@U) Int)
(declare-fun $generated@@155 (T@U) T@U)
(declare-fun $generated@@159 (T@U) Bool)
(declare-fun $generated@@160 (T@U T@U) Bool)
(declare-fun $generated@@168 () Int)
(declare-fun $generated@@169 (T@U T@U) Bool)
(declare-fun $generated@@170 (Int Int) Int)
(declare-fun $generated@@182 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@12 $generated@@13) 0) (= ($generated@@12 $generated@@14) 1)) (= ($generated@@12 $generated@@15) 2)) (forall (($generated@@22 Bool) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 Int) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 Real) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11)
)
(assert (= ($generated@@28 $generated@@1) 0))
(assert (= ($generated@@29 $generated) $generated@@0))
(assert (= ($generated@@30 $generated@@1) $generated@@2))
(assert (= ($generated@@12 $generated@@32) 3))
(assert (forall (($generated@@36 T@U) ) (! (= ($generated@@31 $generated@@32 $generated@@36 $generated@@33)  (or (= $generated@@36 $generated@@34) (= ($generated@@35 $generated@@36) $generated@@33)))
 :pattern ( ($generated@@31 $generated@@32 $generated@@36 $generated@@33))
)))
(assert (forall (($generated@@39 T@U) ($generated@@40 T@U) ) (! (= ($generated@@37 $generated@@32 $generated@@39 $generated@@38 $generated@@40) ($generated@@37 $generated@@32 $generated@@39 $generated@@33 $generated@@40))
 :pattern ( ($generated@@37 $generated@@32 $generated@@39 $generated@@38 $generated@@40))
 :pattern ( ($generated@@37 $generated@@32 $generated@@39 $generated@@33 $generated@@40))
)))
(assert (= ($generated@@28 $generated@@41) 0))
(assert (= ($generated@@42 $generated@@6 $generated@@11) $generated@@41))
(assert  (not ($generated@@43 $generated@@41)))
(assert  (and (and (and (and (and (and (forall (($generated@@52 T@T) ($generated@@53 T@T) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ) (! (= ($generated@@45 $generated@@52 $generated@@53 ($generated@@49 $generated@@52 $generated@@53 $generated@@55 $generated@@56 $generated@@54) $generated@@56) $generated@@54)
 :weight 0
)) (forall (($generated@@57 T@T) ($generated@@58 T@T) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ) (!  (or (= $generated@@61 $generated@@62) (= ($generated@@45 $generated@@57 $generated@@58 ($generated@@49 $generated@@57 $generated@@58 $generated@@60 $generated@@61 $generated@@59) $generated@@62) ($generated@@45 $generated@@57 $generated@@58 $generated@@60 $generated@@62)))
 :weight 0
))) (= ($generated@@12 $generated@@46) 4)) (= ($generated@@12 $generated@@47) 5)) (forall (($generated@@63 T@T) ($generated@@64 T@T) ) (= ($generated@@12 ($generated@@48 $generated@@63 $generated@@64)) 6))) (forall (($generated@@65 T@T) ($generated@@66 T@T) ) (! (= ($generated@@50 ($generated@@48 $generated@@65 $generated@@66)) $generated@@65)
 :pattern ( ($generated@@48 $generated@@65 $generated@@66))
))) (forall (($generated@@67 T@T) ($generated@@68 T@T) ) (! (= ($generated@@51 ($generated@@48 $generated@@67 $generated@@68)) $generated@@68)
 :pattern ( ($generated@@48 $generated@@67 $generated@@68))
))))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@37 $generated@@32 $generated@@69 $generated@@33 $generated@@70)  (or (= $generated@@69 $generated@@34) ($generated@@17 ($generated@@44 $generated@@13 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@70 $generated@@69) $generated@@1)))))
 :pattern ( ($generated@@37 $generated@@32 $generated@@69 $generated@@33 $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (!  (=> ($generated@@71 $generated@@72 $generated@@73) (forall (($generated@@74 T@U) ) (!  (=> ($generated@@17 ($generated@@44 $generated@@13 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@72 $generated@@74) $generated@@1))) ($generated@@17 ($generated@@44 $generated@@13 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@73 $generated@@74) $generated@@1))))
 :pattern ( ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@73 $generated@@74) $generated@@1))
)))
 :pattern ( ($generated@@71 $generated@@72 $generated@@73))
)))
(assert (forall (($generated@@76 Int) ) (! (= ($generated@@75 $generated@@76) $generated@@76)
 :pattern ( ($generated@@75 $generated@@76))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@T) ) (! (= ($generated@@77 $generated@@79 $generated@@78) $generated@@78)
 :pattern ( ($generated@@77 $generated@@79 $generated@@78))
)))
(assert (forall (($generated@@82 T@U) ) (! (= ($generated@@80 $generated@@82) (= ($generated@@81 $generated@@82) $generated@@7))
 :pattern ( ($generated@@80 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ) (! (= ($generated@@83 $generated@@84) (= ($generated@@81 $generated@@84) $generated@@8))
 :pattern ( ($generated@@83 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@85 $generated@@87 ($generated@@44 $generated@@87 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@44 $generated@@87 $generated@@86))
)))
(assert (forall (($generated@@89 T@U) ) (!  (=> ($generated@@80 $generated@@89) (exists (($generated@@90 Int) ) (= $generated@@89 ($generated@@88 $generated@@90))))
 :pattern ( ($generated@@80 $generated@@89))
)))
(assert (forall (($generated@@92 T@U) ) (!  (=> ($generated@@83 $generated@@92) (exists (($generated@@93 T@U) ) (= $generated@@92 ($generated@@91 $generated@@93))))
 :pattern ( ($generated@@83 $generated@@92))
)))
(assert ($generated@@43 $generated@@1))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> (and (and ($generated@@94 $generated@@95) (and (or (not (= $generated@@96 $generated@@34)) (not true)) (= ($generated@@35 $generated@@96) $generated@@33))) ($generated@@17 ($generated@@44 $generated@@13 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@95 $generated@@96) $generated@@1)))) ($generated@@37 $generated@@14 ($generated@@44 $generated@@14 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@95 $generated@@96) $generated@@41)) $generated $generated@@95))
 :pattern ( ($generated@@44 $generated@@14 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@95 $generated@@96) $generated@@41)))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@T) ) (!  (=> ($generated@@71 $generated@@97 $generated@@98) (=> ($generated@@37 $generated@@101 $generated@@99 $generated@@100 $generated@@97) ($generated@@37 $generated@@101 $generated@@99 $generated@@100 $generated@@98)))
 :pattern ( ($generated@@71 $generated@@97 $generated@@98) ($generated@@37 $generated@@101 $generated@@99 $generated@@100 $generated@@97))
)))
(assert  (and (forall (($generated@@105 T@T) ($generated@@106 T@T) ($generated@@107 T@T) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@102 $generated@@105 $generated@@106 $generated@@107 ($generated@@104 $generated@@105 $generated@@106 $generated@@107 $generated@@109 $generated@@110 $generated@@111 $generated@@108) $generated@@110 $generated@@111) $generated@@108)
 :weight 0
)) (and (forall (($generated@@112 T@T) ($generated@@113 T@T) ($generated@@114 T@T) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (!  (or (= $generated@@117 $generated@@119) (= ($generated@@102 $generated@@112 $generated@@113 $generated@@114 ($generated@@104 $generated@@112 $generated@@113 $generated@@114 $generated@@116 $generated@@117 $generated@@118 $generated@@115) $generated@@119 $generated@@120) ($generated@@102 $generated@@112 $generated@@113 $generated@@114 $generated@@116 $generated@@119 $generated@@120)))
 :weight 0
)) (forall (($generated@@121 T@T) ($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ) (!  (or (= $generated@@127 $generated@@129) (= ($generated@@102 $generated@@121 $generated@@122 $generated@@123 ($generated@@104 $generated@@121 $generated@@122 $generated@@123 $generated@@125 $generated@@126 $generated@@127 $generated@@124) $generated@@128 $generated@@129) ($generated@@102 $generated@@121 $generated@@122 $generated@@123 $generated@@125 $generated@@128 $generated@@129)))
 :weight 0
)))))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@17 ($generated@@102 $generated@@32 $generated@@46 $generated@@13 ($generated@@103 $generated@@130 $generated@@131 $generated@@132 $generated@@133) $generated@@134 $generated@@135))  (=> (and (or (not (= $generated@@134 $generated@@130)) (not true)) ($generated@@17 ($generated@@44 $generated@@13 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@131 $generated@@134) $generated@@132)))) (= $generated@@134 $generated@@133)))
 :pattern ( ($generated@@102 $generated@@32 $generated@@46 $generated@@13 ($generated@@103 $generated@@130 $generated@@131 $generated@@132 $generated@@133) $generated@@134 $generated@@135))
)))
(assert (= ($generated@@12 $generated@@136) 7))
(assert (forall (($generated@@138 T@U) ) (! (= ($generated@@31 $generated@@136 ($generated@@91 $generated@@138) $generated@@137) ($generated@@31 $generated@@32 $generated@@138 $generated@@38))
 :pattern ( ($generated@@31 $generated@@136 ($generated@@91 $generated@@138) $generated@@137))
)))
(assert (forall (($generated@@139 T@U) ) (! (= ($generated@@31 $generated@@32 $generated@@139 $generated@@38)  (and ($generated@@31 $generated@@32 $generated@@139 $generated@@33) (or (not (= $generated@@139 $generated@@34)) (not true))))
 :pattern ( ($generated@@31 $generated@@32 $generated@@139 $generated@@38))
 :pattern ( ($generated@@31 $generated@@32 $generated@@139 $generated@@33))
)))
(assert (forall (($generated@@140 Int) ($generated@@141 T@U) ) (!  (=> ($generated@@94 $generated@@141) (= ($generated@@37 $generated@@136 ($generated@@88 $generated@@140) $generated@@137 $generated@@141) ($generated@@37 $generated@@14 ($generated@@18 $generated@@140) $generated $generated@@141)))
 :pattern ( ($generated@@37 $generated@@136 ($generated@@88 $generated@@140) $generated@@137 $generated@@141))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (!  (=> ($generated@@94 $generated@@143) (= ($generated@@37 $generated@@136 ($generated@@91 $generated@@142) $generated@@137 $generated@@143) ($generated@@37 $generated@@32 $generated@@142 $generated@@38 $generated@@143)))
 :pattern ( ($generated@@37 $generated@@136 ($generated@@91 $generated@@142) $generated@@137 $generated@@143))
)))
(assert (forall (($generated@@144 T@U) ) (!  (=> ($generated@@31 $generated@@136 $generated@@144 $generated@@137) (or ($generated@@80 $generated@@144) ($generated@@83 $generated@@144)))
 :pattern ( ($generated@@83 $generated@@144) ($generated@@31 $generated@@136 $generated@@144 $generated@@137))
 :pattern ( ($generated@@80 $generated@@144) ($generated@@31 $generated@@136 $generated@@144 $generated@@137))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (!  (=> (or (not (= $generated@@145 $generated@@147)) (not true)) (=> (and ($generated@@71 $generated@@145 $generated@@146) ($generated@@71 $generated@@146 $generated@@147)) ($generated@@71 $generated@@145 $generated@@147)))
 :pattern ( ($generated@@71 $generated@@145 $generated@@146) ($generated@@71 $generated@@146 $generated@@147))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (!  (and (= ($generated@@148 ($generated@@42 $generated@@149 $generated@@150)) $generated@@149) (= ($generated@@30 ($generated@@42 $generated@@149 $generated@@150)) $generated@@150))
 :pattern ( ($generated@@42 $generated@@149 $generated@@150))
)))
(assert (forall (($generated@@151 Int) ) (! (= ($generated@@81 ($generated@@88 $generated@@151)) $generated@@7)
 :pattern ( ($generated@@88 $generated@@151))
)))
(assert (forall (($generated@@153 Int) ) (! (= ($generated@@152 ($generated@@88 $generated@@153)) $generated@@153)
 :pattern ( ($generated@@88 $generated@@153))
)))
(assert (forall (($generated@@154 T@U) ) (! (= ($generated@@81 ($generated@@91 $generated@@154)) $generated@@8)
 :pattern ( ($generated@@91 $generated@@154))
)))
(assert (forall (($generated@@156 T@U) ) (! (= ($generated@@155 ($generated@@91 $generated@@156)) $generated@@156)
 :pattern ( ($generated@@91 $generated@@156))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@T) ) (! (= ($generated@@44 $generated@@158 ($generated@@85 $generated@@158 $generated@@157)) $generated@@157)
 :pattern ( ($generated@@85 $generated@@158 $generated@@157))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ) (!  (=> (and (and (and ($generated@@94 $generated@@161) ($generated@@94 $generated@@162)) (and (or (not (= $generated@@163 $generated@@34)) (not true)) ($generated@@31 $generated@@32 $generated@@163 $generated@@38))) (and ($generated@@159 $generated@@161) ($generated@@71 $generated@@161 $generated@@162))) (=> (forall (($generated@@164 T@U) ($generated@@165 T@U) )  (=> (and (or (not (= $generated@@164 $generated@@34)) (not true)) (= $generated@@164 $generated@@163)) (= ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@161 $generated@@164) $generated@@165) ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@162 $generated@@164) $generated@@165)))) (= ($generated@@160 $generated@@161 $generated@@163) ($generated@@160 $generated@@162 $generated@@163))))
 :pattern ( ($generated@@159 $generated@@161) ($generated@@71 $generated@@161 $generated@@162) ($generated@@160 $generated@@162 $generated@@163))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ) (!  (=> (and ($generated@@94 $generated@@166) (and (or (not (= $generated@@167 $generated@@34)) (not true)) (= ($generated@@35 $generated@@167) $generated@@33))) ($generated@@31 $generated@@14 ($generated@@44 $generated@@14 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@166 $generated@@167) $generated@@41)) $generated))
 :pattern ( ($generated@@44 $generated@@14 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@166 $generated@@167) $generated@@41)))
)))
(assert  (=> (<= 0 $generated@@168) (forall (($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> (or ($generated@@169 $generated@@171 $generated@@172) (and (< 0 $generated@@168) (and ($generated@@94 $generated@@171) (and (or (not (= $generated@@172 $generated@@34)) (not true)) (and ($generated@@31 $generated@@32 $generated@@172 $generated@@38) ($generated@@37 $generated@@32 $generated@@172 $generated@@38 $generated@@171)))))) (= ($generated@@160 $generated@@171 $generated@@172) (= ($generated@@170 ($generated@@19 ($generated@@44 $generated@@14 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@171 $generated@@172) $generated@@41))) ($generated@@75 2)) ($generated@@75 1))))
 :pattern ( ($generated@@160 $generated@@171 $generated@@172) ($generated@@94 $generated@@171))
))))
(assert (forall (($generated@@173 Int) ) (! (= ($generated@@31 $generated@@136 ($generated@@88 $generated@@173) $generated@@137) ($generated@@31 $generated@@14 ($generated@@18 $generated@@173) $generated))
 :pattern ( ($generated@@31 $generated@@136 ($generated@@88 $generated@@173) $generated@@137))
)))
(assert (forall (($generated@@174 Int) ($generated@@175 Int) ) (! (= ($generated@@170 $generated@@174 $generated@@175) (mod $generated@@174 $generated@@175))
 :pattern ( ($generated@@170 $generated@@174 $generated@@175))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ) (!  (=> (and ($generated@@94 $generated@@177) (and ($generated@@80 $generated@@176) ($generated@@37 $generated@@136 $generated@@176 $generated@@137 $generated@@177))) ($generated@@37 $generated@@14 ($generated@@18 ($generated@@152 $generated@@176)) $generated $generated@@177))
 :pattern ( ($generated@@37 $generated@@14 ($generated@@18 ($generated@@152 $generated@@176)) $generated $generated@@177))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (=> ($generated@@94 ($generated@@49 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@178 $generated@@179 ($generated@@49 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@178 $generated@@179) $generated@@180 $generated@@181))) ($generated@@71 $generated@@178 ($generated@@49 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@178 $generated@@179 ($generated@@49 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@178 $generated@@179) $generated@@180 $generated@@181))))
 :pattern ( ($generated@@49 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@178 $generated@@179 ($generated@@49 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@178 $generated@@179) $generated@@180 $generated@@181)))
)))
(assert (= ($generated@@29 $generated@@137) $generated@@3))
(assert (= ($generated@@182 $generated@@137) $generated@@9))
(assert (= ($generated@@29 $generated@@33) $generated@@4))
(assert (= ($generated@@182 $generated@@33) $generated@@10))
(assert (= ($generated@@29 $generated@@38) $generated@@5))
(assert (= ($generated@@182 $generated@@38) $generated@@10))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (!  (=> (and ($generated@@94 $generated@@184) (and ($generated@@83 $generated@@183) ($generated@@37 $generated@@136 $generated@@183 $generated@@137 $generated@@184))) ($generated@@37 $generated@@32 ($generated@@155 $generated@@183) $generated@@38 $generated@@184))
 :pattern ( ($generated@@37 $generated@@32 ($generated@@155 $generated@@183) $generated@@38 $generated@@184))
)))
(assert (forall (($generated@@185 Int) ) (! (= ($generated@@85 $generated@@14 ($generated@@18 ($generated@@75 $generated@@185))) ($generated@@77 $generated@@47 ($generated@@85 $generated@@14 ($generated@@18 $generated@@185))))
 :pattern ( ($generated@@85 $generated@@14 ($generated@@18 ($generated@@75 $generated@@185))))
)))
(assert (forall (($generated@@186 Int) ) (! (= ($generated@@88 ($generated@@75 $generated@@186)) ($generated@@77 $generated@@136 ($generated@@88 $generated@@186)))
 :pattern ( ($generated@@88 ($generated@@75 $generated@@186)))
)))
(assert (forall (($generated@@187 T@U) ) (! (= ($generated@@91 ($generated@@77 $generated@@32 $generated@@187)) ($generated@@77 $generated@@136 ($generated@@91 $generated@@187)))
 :pattern ( ($generated@@91 ($generated@@77 $generated@@32 $generated@@187)))
)))
(assert (forall (($generated@@188 T@U) ($generated@@189 T@T) ) (! (= ($generated@@85 $generated@@189 ($generated@@77 $generated@@189 $generated@@188)) ($generated@@77 $generated@@47 ($generated@@85 $generated@@189 $generated@@188)))
 :pattern ( ($generated@@85 $generated@@189 ($generated@@77 $generated@@189 $generated@@188)))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ) (! ($generated@@37 $generated@@14 $generated@@191 $generated $generated@@190)
 :pattern ( ($generated@@37 $generated@@14 $generated@@191 $generated $generated@@190))
)))
(assert (forall (($generated@@192 T@U) ) (! ($generated@@31 $generated@@14 $generated@@192 $generated)
 :pattern ( ($generated@@31 $generated@@14 $generated@@192 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@197  (=> (and (= $generated@@193 ($generated@@103 $generated@@34 $generated@@194 $generated@@1 $generated@@195)) (= (ControlFlow 0 2) (- 0 1))) ($generated@@17 ($generated@@102 $generated@@32 $generated@@46 $generated@@13 $generated@@193 $generated@@195 $generated@@41)))))
(let (($generated@@198  (=> (and (and ($generated@@94 $generated@@194) ($generated@@159 $generated@@194)) (and (or (not (= $generated@@195 $generated@@34)) (not true)) (and ($generated@@31 $generated@@32 $generated@@195 $generated@@38) ($generated@@37 $generated@@32 $generated@@195 $generated@@38 $generated@@194)))) (=> (and (and (and ($generated@@31 $generated@@136 $generated@@196 $generated@@137) ($generated@@37 $generated@@136 $generated@@196 $generated@@137 $generated@@194)) (= 2 $generated@@168)) (and (and ($generated@@169 $generated@@194 $generated@@195) (and ($generated@@160 $generated@@194 $generated@@195) (= ($generated@@170 ($generated@@19 ($generated@@44 $generated@@14 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@32 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@41))) ($generated@@75 2)) ($generated@@75 1)))) (= (ControlFlow 0 3) 2))) $generated@@197))))
$generated@@198)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)