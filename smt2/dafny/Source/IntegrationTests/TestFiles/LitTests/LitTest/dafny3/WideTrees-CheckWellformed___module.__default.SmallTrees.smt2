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
(declare-fun $generated@@25 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@26 () T@U)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 () T@U)
(declare-fun $generated@@31 () Int)
(declare-fun $generated@@32 (T@U Int) T@U)
(declare-fun $generated@@33 (Int) Bool)
(declare-fun $generated@@34 (Int) Int)
(declare-fun $generated@@35 (T@T T@U T@U) Bool)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@42 (T@U) T@U)
(declare-fun $generated@@43 (T@U) Bool)
(declare-fun $generated@@47 (T@U Int) T@U)
(declare-fun $generated@@48 (Int) Bool)
(declare-fun $generated@@51 (T@U) T@U)
(declare-fun $generated@@52 (T@U T@U) T@U)
(declare-fun $generated@@53 (T@T T@U) T@U)
(declare-fun $generated@@57 (T@T T@U) T@U)
(declare-fun $generated@@60 (T@U T@U) Bool)
(declare-fun $generated@@64 (T@U) Bool)
(declare-fun $generated@@66 (T@U) Bool)
(declare-fun $generated@@69 (T@U) T@U)
(declare-fun $generated@@72 (T@T T@U) T@U)
(declare-fun $generated@@82 (T@U T@U T@U) Bool)
(declare-fun $generated@@87 (T@U) T@U)
(declare-fun $generated@@88 (T@U) T@U)
(declare-fun $generated@@100 (T@U) T@U)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@109 (T@U) T@U)
(declare-fun $generated@@117 (T@U) Int)
(declare-fun $generated@@122 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@123 () T@T)
(declare-fun $generated@@124 () T@T)
(declare-fun $generated@@125 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@126 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@127 () T@T)
(declare-fun $generated@@128 (T@T T@T) T@T)
(declare-fun $generated@@129 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@130 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@131 (T@T) T@T)
(declare-fun $generated@@132 (T@T) T@T)
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
(assert (forall (($generated@@27 T@U) ($generated@@28 T@U) ) (! ($generated@@25 $generated@@11 $generated@@27 $generated@@26 $generated@@28)
 :pattern ( ($generated@@25 $generated@@11 $generated@@27 $generated@@26 $generated@@28))
)))
(assert (= ($generated@@29 $generated@@30) $generated@@3))
(assert (= ($generated@@9 $generated@@36) 3))
(assert  (=> (<= 2 $generated@@31) (forall (($generated@@38 T@U) ($generated@@39 Int) ) (!  (=> (or ($generated@@33 $generated@@39) (and (< 2 $generated@@31) (<= ($generated@@34 0) $generated@@39))) ($generated@@35 $generated@@36 ($generated@@32 $generated@@38 $generated@@39) $generated@@37))
 :pattern ( ($generated@@32 $generated@@38 $generated@@39))
))))
(assert (forall (($generated@@41 T@U) ) (!  (=> ($generated@@35 $generated@@36 $generated@@41 $generated@@37) ($generated@@40 $generated@@41))
 :pattern ( ($generated@@40 $generated@@41) ($generated@@35 $generated@@36 $generated@@41 $generated@@37))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@U) ) (!  (=> ($generated@@43 $generated@@45) ($generated@@25 $generated@@36 $generated@@30 ($generated@@42 $generated@@44) $generated@@45))
 :pattern ( ($generated@@25 $generated@@36 $generated@@30 ($generated@@42 $generated@@44) $generated@@45))
)))
(assert (forall (($generated@@46 T@U) ) (! ($generated@@35 $generated@@36 $generated@@30 ($generated@@42 $generated@@46))
 :pattern ( ($generated@@35 $generated@@36 $generated@@30 ($generated@@42 $generated@@46)))
)))
(assert  (=> (<= 2 $generated@@31) (forall (($generated@@49 T@U) ($generated@@50 Int) ) (!  (=> (or ($generated@@48 $generated@@50) (and (< 2 $generated@@31) (<= ($generated@@34 0) $generated@@50))) ($generated@@35 $generated@@36 ($generated@@47 $generated@@49 $generated@@50) ($generated@@42 $generated@@37)))
 :pattern ( ($generated@@47 $generated@@49 $generated@@50))
))))
(assert  (=> (<= 2 $generated@@31) (forall (($generated@@54 T@U) ($generated@@55 Int) ) (!  (=> (or ($generated@@48 $generated@@55) (and (< 2 $generated@@31) (<= ($generated@@34 0) $generated@@55))) (and (=> (or (not (= $generated@@55 ($generated@@34 0))) (not true)) (and ($generated@@33 (- $generated@@55 1)) ($generated@@48 $generated@@55))) (= ($generated@@47 ($generated@@51 $generated@@54) $generated@@55) (ite (= $generated@@55 ($generated@@34 0)) $generated@@30 ($generated@@52 ($generated@@53 $generated@@36 ($generated@@32 $generated@@54 (- $generated@@55 1))) ($generated@@47 $generated@@54 $generated@@55))))))
 :pattern ( ($generated@@47 ($generated@@51 $generated@@54) $generated@@55))
))))
(assert (forall (($generated@@56 Int) ) (! (= ($generated@@34 $generated@@56) $generated@@56)
 :pattern ( ($generated@@34 $generated@@56))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@T) ) (! (= ($generated@@57 $generated@@59 $generated@@58) $generated@@58)
 :pattern ( ($generated@@57 $generated@@59 $generated@@58))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ) (! (= ($generated@@35 $generated@@36 ($generated@@52 $generated@@62 $generated@@63) ($generated@@42 $generated@@61))  (and ($generated@@60 $generated@@62 $generated@@61) ($generated@@35 $generated@@36 $generated@@63 ($generated@@42 $generated@@61))))
 :pattern ( ($generated@@35 $generated@@36 ($generated@@52 $generated@@62 $generated@@63) ($generated@@42 $generated@@61)))
)))
(assert (forall (($generated@@65 T@U) ) (! (= ($generated@@64 $generated@@65) (= ($generated@@29 $generated@@65) $generated@@3))
 :pattern ( ($generated@@64 $generated@@65))
)))
(assert (forall (($generated@@67 T@U) ) (! (= ($generated@@66 $generated@@67) (= ($generated@@29 $generated@@67) $generated@@4))
 :pattern ( ($generated@@66 $generated@@67))
)))
(assert (forall (($generated@@68 T@U) ) (! (= ($generated@@40 $generated@@68) (= ($generated@@29 $generated@@68) $generated@@5))
 :pattern ( ($generated@@40 $generated@@68))
)))
(assert  (=> (<= 2 $generated@@31) (forall (($generated@@70 T@U) ($generated@@71 Int) ) (!  (=> (or ($generated@@33 $generated@@71) (and (< 2 $generated@@31) (<= ($generated@@34 0) $generated@@71))) (and ($generated@@48 $generated@@71) (= ($generated@@32 ($generated@@51 $generated@@70) $generated@@71) ($generated@@69 ($generated@@47 $generated@@70 $generated@@71)))))
 :pattern ( ($generated@@32 ($generated@@51 $generated@@70) $generated@@71))
))))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@T) ) (! (= ($generated@@53 $generated@@74 ($generated@@72 $generated@@74 $generated@@73)) $generated@@73)
 :pattern ( ($generated@@72 $generated@@74 $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ) (!  (=> ($generated@@66 $generated@@75) (exists (($generated@@76 T@U) ($generated@@77 T@U) ) (= $generated@@75 ($generated@@52 $generated@@76 $generated@@77))))
 :pattern ( ($generated@@66 $generated@@75))
)))
(assert (forall (($generated@@78 T@U) ) (!  (=> ($generated@@64 $generated@@78) (= $generated@@78 $generated@@30))
 :pattern ( ($generated@@64 $generated@@78))
)))
(assert (forall (($generated@@79 T@U) ) (!  (=> ($generated@@40 $generated@@79) (exists (($generated@@80 T@U) ) (= $generated@@79 ($generated@@69 $generated@@80))))
 :pattern ( ($generated@@40 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ) (! (= ($generated@@35 $generated@@11 $generated@@81 $generated@@26) (<= ($generated@@34 0) ($generated@@16 $generated@@81)))
 :pattern ( ($generated@@35 $generated@@11 $generated@@81 $generated@@26))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@T) ) (! (= ($generated@@82 ($generated@@53 $generated@@86 $generated@@83) $generated@@84 $generated@@85) ($generated@@25 $generated@@86 $generated@@83 $generated@@84 $generated@@85))
 :pattern ( ($generated@@82 ($generated@@53 $generated@@86 $generated@@83) $generated@@84 $generated@@85))
)))
(assert (forall (($generated@@89 T@U) ) (!  (and (= ($generated@@87 ($generated@@42 $generated@@89)) $generated@@2) (= ($generated@@88 ($generated@@42 $generated@@89)) $generated@@8))
 :pattern ( ($generated@@42 $generated@@89))
)))
(assert (forall (($generated@@90 T@U) ) (!  (=> ($generated@@60 $generated@@90 $generated@@26) (and (= ($generated@@53 $generated@@11 ($generated@@72 $generated@@11 $generated@@90)) $generated@@90) ($generated@@35 $generated@@11 ($generated@@72 $generated@@11 $generated@@90) $generated@@26)))
 :pattern ( ($generated@@60 $generated@@90 $generated@@26))
)))
(assert (forall (($generated@@91 T@U) ) (!  (=> ($generated@@60 $generated@@91 $generated@@37) (and (= ($generated@@53 $generated@@36 ($generated@@72 $generated@@36 $generated@@91)) $generated@@91) ($generated@@35 $generated@@36 ($generated@@72 $generated@@36 $generated@@91) $generated@@37)))
 :pattern ( ($generated@@60 $generated@@91 $generated@@37))
)))
(assert (forall (($generated@@92 T@U) ) (! (= ($generated@@35 $generated@@36 ($generated@@69 $generated@@92) $generated@@37) ($generated@@35 $generated@@36 $generated@@92 ($generated@@42 $generated@@37)))
 :pattern ( ($generated@@35 $generated@@36 ($generated@@69 $generated@@92) $generated@@37))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (!  (=> ($generated@@35 $generated@@36 $generated@@94 ($generated@@42 $generated@@93)) (or ($generated@@64 $generated@@94) ($generated@@66 $generated@@94)))
 :pattern ( ($generated@@66 $generated@@94) ($generated@@35 $generated@@36 $generated@@94 ($generated@@42 $generated@@93)))
 :pattern ( ($generated@@64 $generated@@94) ($generated@@35 $generated@@36 $generated@@94 ($generated@@42 $generated@@93)))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@T) ) (! (= ($generated@@60 ($generated@@53 $generated@@97 $generated@@95) $generated@@96) ($generated@@35 $generated@@97 $generated@@95 $generated@@96))
 :pattern ( ($generated@@60 ($generated@@53 $generated@@97 $generated@@95) $generated@@96))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (! (= ($generated@@29 ($generated@@52 $generated@@98 $generated@@99)) $generated@@4)
 :pattern ( ($generated@@52 $generated@@98 $generated@@99))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ) (! (= ($generated@@100 ($generated@@52 $generated@@101 $generated@@102)) $generated@@101)
 :pattern ( ($generated@@52 $generated@@101 $generated@@102))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@103 ($generated@@52 $generated@@104 $generated@@105)) $generated@@105)
 :pattern ( ($generated@@52 $generated@@104 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ) (! (= ($generated@@106 ($generated@@42 $generated@@107)) $generated@@107)
 :pattern ( ($generated@@42 $generated@@107))
)))
(assert (forall (($generated@@108 T@U) ) (! (= ($generated@@29 ($generated@@69 $generated@@108)) $generated@@5)
 :pattern ( ($generated@@69 $generated@@108))
)))
(assert (forall (($generated@@110 T@U) ) (! (= ($generated@@109 ($generated@@69 $generated@@110)) $generated@@110)
 :pattern ( ($generated@@69 $generated@@110))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@T) ) (! (= ($generated@@72 $generated@@112 ($generated@@53 $generated@@112 $generated@@111)) $generated@@111)
 :pattern ( ($generated@@53 $generated@@112 $generated@@111))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 Int) ) (! (= ($generated@@32 ($generated@@51 $generated@@113) $generated@@114) ($generated@@32 $generated@@113 $generated@@114))
 :pattern ( ($generated@@32 ($generated@@51 $generated@@113) $generated@@114))
)))
(assert (forall (($generated@@115 T@U) ($generated@@116 Int) ) (! (= ($generated@@47 ($generated@@51 $generated@@115) $generated@@116) ($generated@@47 $generated@@115 $generated@@116))
 :pattern ( ($generated@@47 ($generated@@51 $generated@@115) $generated@@116))
)))
(assert (forall (($generated@@118 T@U) ) (! (< ($generated@@117 $generated@@118) ($generated@@117 ($generated@@69 $generated@@118)))
 :pattern ( ($generated@@69 $generated@@118))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (!  (=> (and ($generated@@43 $generated@@121) (and ($generated@@66 $generated@@119) ($generated@@25 $generated@@36 $generated@@119 ($generated@@42 $generated@@120) $generated@@121))) ($generated@@82 ($generated@@100 $generated@@119) $generated@@120 $generated@@121))
 :pattern ( ($generated@@82 ($generated@@100 $generated@@119) $generated@@120 $generated@@121))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@T) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@122 $generated@@133 $generated@@134 $generated@@135 ($generated@@129 $generated@@133 $generated@@134 $generated@@135 $generated@@137 $generated@@138 $generated@@139 $generated@@136) $generated@@138 $generated@@139) $generated@@136)
 :weight 0
)) (and (forall (($generated@@140 T@T) ($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (!  (or (= $generated@@145 $generated@@147) (= ($generated@@122 $generated@@140 $generated@@141 $generated@@142 ($generated@@129 $generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@145 $generated@@146 $generated@@143) $generated@@147 $generated@@148) ($generated@@122 $generated@@140 $generated@@141 $generated@@142 $generated@@144 $generated@@147 $generated@@148)))
 :weight 0
)) (forall (($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (!  (or (= $generated@@155 $generated@@157) (= ($generated@@122 $generated@@149 $generated@@150 $generated@@151 ($generated@@129 $generated@@149 $generated@@150 $generated@@151 $generated@@153 $generated@@154 $generated@@155 $generated@@152) $generated@@156 $generated@@157) ($generated@@122 $generated@@149 $generated@@150 $generated@@151 $generated@@153 $generated@@156 $generated@@157)))
 :weight 0
)))) (= ($generated@@9 $generated@@123) 4)) (= ($generated@@9 $generated@@124) 5)) (forall (($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ) (! (= ($generated@@126 $generated@@158 $generated@@159 ($generated@@130 $generated@@158 $generated@@159 $generated@@161 $generated@@162 $generated@@160) $generated@@162) $generated@@160)
 :weight 0
))) (forall (($generated@@163 T@T) ($generated@@164 T@T) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ) (!  (or (= $generated@@167 $generated@@168) (= ($generated@@126 $generated@@163 $generated@@164 ($generated@@130 $generated@@163 $generated@@164 $generated@@166 $generated@@167 $generated@@165) $generated@@168) ($generated@@126 $generated@@163 $generated@@164 $generated@@166 $generated@@168)))
 :weight 0
))) (= ($generated@@9 $generated@@127) 6)) (forall (($generated@@169 T@T) ($generated@@170 T@T) ) (= ($generated@@9 ($generated@@128 $generated@@169 $generated@@170)) 7))) (forall (($generated@@171 T@T) ($generated@@172 T@T) ) (! (= ($generated@@131 ($generated@@128 $generated@@171 $generated@@172)) $generated@@171)
 :pattern ( ($generated@@128 $generated@@171 $generated@@172))
))) (forall (($generated@@173 T@T) ($generated@@174 T@T) ) (! (= ($generated@@132 ($generated@@128 $generated@@173 $generated@@174)) $generated@@174)
 :pattern ( ($generated@@128 $generated@@173 $generated@@174))
))))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 Bool) ($generated@@179 T@U) ($generated@@180 T@U) ) (! (= ($generated@@14 ($generated@@122 $generated@@123 $generated@@124 $generated@@10 ($generated@@125 $generated@@175 $generated@@176 $generated@@177 $generated@@178) $generated@@179 $generated@@180))  (=> (and (or (not (= $generated@@179 $generated@@175)) (not true)) ($generated@@14 ($generated@@72 $generated@@10 ($generated@@126 $generated@@124 $generated@@127 ($generated@@126 $generated@@123 ($generated@@128 $generated@@124 $generated@@127) $generated@@176 $generated@@179) $generated@@177)))) $generated@@178))
 :pattern ( ($generated@@122 $generated@@123 $generated@@124 $generated@@10 ($generated@@125 $generated@@175 $generated@@176 $generated@@177 $generated@@178) $generated@@179 $generated@@180))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@U) ) (!  (=> ($generated@@60 $generated@@182 ($generated@@42 $generated@@181)) (and (= ($generated@@53 $generated@@36 ($generated@@72 $generated@@36 $generated@@182)) $generated@@182) ($generated@@35 $generated@@36 ($generated@@72 $generated@@36 $generated@@182) ($generated@@42 $generated@@181))))
 :pattern ( ($generated@@60 $generated@@182 ($generated@@42 $generated@@181)))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ) (!  (=> (and ($generated@@43 $generated@@185) (and ($generated@@66 $generated@@183) ($generated@@25 $generated@@36 $generated@@183 ($generated@@42 $generated@@184) $generated@@185))) ($generated@@25 $generated@@36 ($generated@@103 $generated@@183) ($generated@@42 $generated@@184) $generated@@185))
 :pattern ( ($generated@@25 $generated@@36 ($generated@@103 $generated@@183) ($generated@@42 $generated@@184) $generated@@185))
)))
(assert (forall (($generated@@186 T@U) ($generated@@187 T@U) ) (!  (=> (and ($generated@@43 $generated@@187) ($generated@@35 $generated@@36 $generated@@186 $generated@@37)) ($generated@@25 $generated@@36 $generated@@186 $generated@@37 $generated@@187))
 :pattern ( ($generated@@25 $generated@@36 $generated@@186 $generated@@37 $generated@@187))
)))
(assert (= ($generated@@87 $generated@@26) $generated@@0))
(assert (= ($generated@@88 $generated@@26) $generated@@6))
(assert (= ($generated@@87 $generated@@37) $generated@@1))
(assert (= ($generated@@88 $generated@@37) $generated@@7))
(assert (forall (($generated@@188 Int) ) (! (= ($generated@@53 $generated@@11 ($generated@@15 ($generated@@34 $generated@@188))) ($generated@@57 $generated@@127 ($generated@@53 $generated@@11 ($generated@@15 $generated@@188))))
 :pattern ( ($generated@@53 $generated@@11 ($generated@@15 ($generated@@34 $generated@@188))))
)))
(assert (forall (($generated@@189 T@U) ) (! (= ($generated@@69 ($generated@@57 $generated@@36 $generated@@189)) ($generated@@57 $generated@@36 ($generated@@69 $generated@@189)))
 :pattern ( ($generated@@69 ($generated@@57 $generated@@36 $generated@@189)))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@T) ) (! (= ($generated@@53 $generated@@191 ($generated@@57 $generated@@191 $generated@@190)) ($generated@@57 $generated@@127 ($generated@@53 $generated@@191 $generated@@190)))
 :pattern ( ($generated@@53 $generated@@191 ($generated@@57 $generated@@191 $generated@@190)))
)))
(assert (forall (($generated@@192 T@U) ($generated@@193 T@U) ) (!  (=> (and ($generated@@43 $generated@@193) (and ($generated@@40 $generated@@192) ($generated@@25 $generated@@36 $generated@@192 $generated@@37 $generated@@193))) ($generated@@25 $generated@@36 ($generated@@109 $generated@@192) ($generated@@42 $generated@@37) $generated@@193))
 :pattern ( ($generated@@25 $generated@@36 ($generated@@109 $generated@@192) ($generated@@42 $generated@@37) $generated@@193))
)))
(assert (forall (($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ) (!  (=> ($generated@@43 $generated@@197) (= ($generated@@25 $generated@@36 ($generated@@52 $generated@@195 $generated@@196) ($generated@@42 $generated@@194) $generated@@197)  (and ($generated@@82 $generated@@195 $generated@@194 $generated@@197) ($generated@@25 $generated@@36 $generated@@196 ($generated@@42 $generated@@194) $generated@@197))))
 :pattern ( ($generated@@25 $generated@@36 ($generated@@52 $generated@@195 $generated@@196) ($generated@@42 $generated@@194) $generated@@197))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@198 () Int)
(declare-fun $generated@@199 () T@U)
(declare-fun $generated@@200 () T@U)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@203  (=> (and (or (not (= $generated@@198 ($generated@@34 0))) (not true)) (= (ControlFlow 0 4) (- 0 3))) ($generated@@35 $generated@@11 ($generated@@15 (- $generated@@198 1)) $generated@@26))))
(let (($generated@@204 true))
(let (($generated@@205 true))
(let (($generated@@206  (=> (= $generated@@199 ($generated@@125 $generated@@200 $generated@@201 $generated false)) (and (and (=> (= (ControlFlow 0 5) 1) $generated@@205) (=> (= (ControlFlow 0 5) 2) $generated@@204)) (=> (= (ControlFlow 0 5) 4) $generated@@203)))))
(let (($generated@@207  (=> (and (and (and ($generated@@43 $generated@@201) ($generated@@202 $generated@@201)) (<= ($generated@@34 0) $generated@@198)) (and (= 2 $generated@@31) (= (ControlFlow 0 6) 5))) $generated@@206)))
$generated@@207))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)