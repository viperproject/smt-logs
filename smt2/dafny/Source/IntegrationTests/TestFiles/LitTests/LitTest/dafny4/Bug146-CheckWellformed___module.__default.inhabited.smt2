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
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 (T@U) Int)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@T T@U T@U) Bool)
(declare-fun $generated@@32 (T@U) Int)
(declare-fun $generated@@35 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@36 () T@T)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@41 (T@T T@U) T@U)
(declare-fun $generated@@42 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 (T@T T@T) T@T)
(declare-fun $generated@@46 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@48 (T@T) T@T)
(declare-fun $generated@@69 (Int) Int)
(declare-fun $generated@@71 (T@T T@U) T@U)
(declare-fun $generated@@74 (T@T T@U) T@U)
(declare-fun $generated@@77 () Int)
(declare-fun $generated@@78 (T@U) Bool)
(declare-fun $generated@@79 (T@U) Bool)
(declare-fun $generated@@80 (T@U) Bool)
(declare-fun $generated@@81 (T@U Int) T@U)
(declare-fun $generated@@82 (Int) T@U)
(declare-fun $generated@@91 (T@U T@U T@U) Bool)
(declare-fun $generated@@101 (T@U) T@U)
(declare-fun $generated@@110 (T@U T@U) Bool)
(declare-fun $generated@@124 (T@U) Int)
(declare-fun $generated@@126 (T@U) T@U)
(declare-fun $generated@@128 (T@U) T@U)
(declare-fun $generated@@138 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@139 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@140 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@172 (T@U) T@U)
(declare-fun $generated@@173 (T@U) Int)
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
(assert (= ($generated@@23 $generated@@3) 0))
(assert (= ($generated@@24 $generated) $generated@@1))
(assert (= ($generated@@24 $generated@@0) $generated@@2))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ) (!  (=> (and (or (not (= $generated@@31 $generated@@27)) (not true)) (= ($generated@@28 $generated@@31) ($generated@@26 $generated@@30))) ($generated@@29 $generated@@9 ($generated@@13 ($generated@@25 $generated@@31)) $generated@@0))
 :pattern ( ($generated@@25 $generated@@31) ($generated@@26 $generated@@30))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ) (!  (=> (and (or (not (= $generated@@34 $generated@@27)) (not true)) (= ($generated@@28 $generated@@34) ($generated@@26 $generated@@33))) ($generated@@29 $generated@@9 ($generated@@13 ($generated@@32 $generated@@34)) $generated@@0))
 :pattern ( ($generated@@32 $generated@@34) ($generated@@26 $generated@@33))
)))
(assert (= ($generated@@7 $generated@@36) 3))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ) (! (= ($generated@@35 $generated@@36 $generated@@39 ($generated@@37 $generated@@38) $generated@@40) ($generated@@35 $generated@@36 $generated@@39 ($generated@@26 $generated@@38) $generated@@40))
 :pattern ( ($generated@@35 $generated@@36 $generated@@39 ($generated@@37 $generated@@38) $generated@@40))
 :pattern ( ($generated@@35 $generated@@36 $generated@@39 ($generated@@26 $generated@@38) $generated@@40))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@42 $generated@@49 $generated@@50 ($generated@@46 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@51) $generated@@53) $generated@@51)
 :weight 0
)) (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (!  (or (= $generated@@58 $generated@@59) (= ($generated@@42 $generated@@54 $generated@@55 ($generated@@46 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@56) $generated@@59) ($generated@@42 $generated@@54 $generated@@55 $generated@@57 $generated@@59)))
 :weight 0
))) (= ($generated@@7 $generated@@43) 4)) (= ($generated@@7 $generated@@44) 5)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ) (= ($generated@@7 ($generated@@45 $generated@@60 $generated@@61)) 6))) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (! (= ($generated@@47 ($generated@@45 $generated@@62 $generated@@63)) $generated@@62)
 :pattern ( ($generated@@45 $generated@@62 $generated@@63))
))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@48 ($generated@@45 $generated@@64 $generated@@65)) $generated@@65)
 :pattern ( ($generated@@45 $generated@@64 $generated@@65))
))))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (! (= ($generated@@35 $generated@@36 $generated@@67 ($generated@@26 $generated@@66) $generated@@68)  (or (= $generated@@67 $generated@@27) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@68 $generated@@67) $generated@@3)))))
 :pattern ( ($generated@@35 $generated@@36 $generated@@67 ($generated@@26 $generated@@66) $generated@@68))
)))
(assert (forall (($generated@@70 Int) ) (! (= ($generated@@69 $generated@@70) $generated@@70)
 :pattern ( ($generated@@69 $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@T) ) (! (= ($generated@@71 $generated@@73 $generated@@72) $generated@@72)
 :pattern ( ($generated@@71 $generated@@73 $generated@@72))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@T) ) (! (= ($generated@@74 $generated@@76 ($generated@@41 $generated@@76 $generated@@75)) $generated@@75)
 :pattern ( ($generated@@41 $generated@@76 $generated@@75))
)))
(assert  (=> (<= 0 $generated@@77) (forall (($generated@@83 T@U) ($generated@@84 T@U) ) (!  (=> (or ($generated@@80 $generated@@84) (and (< 0 $generated@@77) (and ($generated@@79 $generated@@83) ($generated@@29 $generated@@36 $generated@@84 ($generated@@37 $generated))))) (= ($generated@@78 $generated@@84) (exists (($generated@@85 Int) ($generated@@86 Int) ) (!  (and (and (and (<= ($generated@@69 0) $generated@@85) (< $generated@@85 ($generated@@25 $generated@@84))) (and (<= ($generated@@69 0) $generated@@86) (< $generated@@86 ($generated@@32 $generated@@84)))) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@83 $generated@@84) ($generated@@81 ($generated@@82 $generated@@85) $generated@@86)))))
 :pattern ( ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@83 $generated@@84) ($generated@@81 ($generated@@82 $generated@@85) $generated@@86))))
))))
 :pattern ( ($generated@@78 $generated@@84) ($generated@@79 $generated@@83))
))))
(assert (forall (($generated@@87 T@U) ($generated@@88 Int) ) (! (= ($generated@@23 ($generated@@81 $generated@@87 $generated@@88)) (+ ($generated@@23 $generated@@87) 1))
 :pattern ( ($generated@@81 $generated@@87 $generated@@88))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@29 $generated@@36 $generated@@90 ($generated@@37 $generated@@89))  (and ($generated@@29 $generated@@36 $generated@@90 ($generated@@26 $generated@@89)) (or (not (= $generated@@90 $generated@@27)) (not true))))
 :pattern ( ($generated@@29 $generated@@36 $generated@@90 ($generated@@37 $generated@@89)))
 :pattern ( ($generated@@29 $generated@@36 $generated@@90 ($generated@@26 $generated@@89)))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@T) ) (! (= ($generated@@91 ($generated@@74 $generated@@95 $generated@@92) $generated@@93 $generated@@94) ($generated@@35 $generated@@95 $generated@@92 $generated@@93 $generated@@94))
 :pattern ( ($generated@@91 ($generated@@74 $generated@@95 $generated@@92) $generated@@93 $generated@@94))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 Int) ($generated@@100 Int) ) (!  (=> (and (and (and ($generated@@79 $generated@@97) (and (or (not (= $generated@@98 $generated@@27)) (not true)) (= ($generated@@28 $generated@@98) ($generated@@26 $generated@@96)))) (and (and (<= 0 $generated@@99) (< $generated@@99 ($generated@@25 $generated@@98))) (and (<= 0 $generated@@100) (< $generated@@100 ($generated@@32 $generated@@98))))) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@97 $generated@@98) $generated@@3)))) ($generated@@91 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@97 $generated@@98) ($generated@@81 ($generated@@82 $generated@@99) $generated@@100)) $generated@@96 $generated@@97))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@97 $generated@@98) ($generated@@81 ($generated@@82 $generated@@99) $generated@@100)) ($generated@@26 $generated@@96))
)))
(assert (forall (($generated@@102 T@U) ) (!  (and (= ($generated@@24 ($generated@@26 $generated@@102)) $generated@@4) (= ($generated@@101 ($generated@@26 $generated@@102)) $generated@@6))
 :pattern ( ($generated@@26 $generated@@102))
)))
(assert (forall (($generated@@103 T@U) ) (!  (and (= ($generated@@24 ($generated@@37 $generated@@103)) $generated@@5) (= ($generated@@101 ($generated@@37 $generated@@103)) $generated@@6))
 :pattern ( ($generated@@37 $generated@@103))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@29 $generated@@36 $generated@@105 ($generated@@26 $generated@@104))  (or (= $generated@@105 $generated@@27) (= ($generated@@28 $generated@@105) ($generated@@26 $generated@@104))))
 :pattern ( ($generated@@29 $generated@@36 $generated@@105 ($generated@@26 $generated@@104)))
)))
(assert  (=> (<= 0 $generated@@77) (forall (($generated@@106 T@U) ($generated@@107 T@U) ) (!  (=> (or ($generated@@80 ($generated@@71 $generated@@36 $generated@@107)) (and (< 0 $generated@@77) (and ($generated@@79 $generated@@106) ($generated@@29 $generated@@36 $generated@@107 ($generated@@37 $generated))))) (= ($generated@@78 ($generated@@71 $generated@@36 $generated@@107)) (exists (($generated@@108 Int) ($generated@@109 Int) ) (!  (and (and (and (<= ($generated@@69 0) $generated@@108) (< $generated@@108 ($generated@@25 ($generated@@71 $generated@@36 $generated@@107)))) (and (<= ($generated@@69 0) $generated@@109) (< $generated@@109 ($generated@@32 ($generated@@71 $generated@@36 $generated@@107))))) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@106 ($generated@@71 $generated@@36 $generated@@107)) ($generated@@81 ($generated@@82 $generated@@108) $generated@@109)))))
 :pattern ( ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@106 $generated@@107) ($generated@@81 ($generated@@82 $generated@@108) $generated@@109))))
))))
 :weight 3
 :pattern ( ($generated@@78 ($generated@@71 $generated@@36 $generated@@107)) ($generated@@79 $generated@@106))
))))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 Int) ($generated@@115 Int) ) (!  (=> (and (and ($generated@@79 $generated@@112) (and (or (not (= $generated@@113 $generated@@27)) (not true)) (= ($generated@@28 $generated@@113) ($generated@@26 $generated@@111)))) (and (and (<= 0 $generated@@114) (< $generated@@114 ($generated@@25 $generated@@113))) (and (<= 0 $generated@@115) (< $generated@@115 ($generated@@32 $generated@@113))))) ($generated@@110 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@112 $generated@@113) ($generated@@81 ($generated@@82 $generated@@114) $generated@@115)) $generated@@111))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@112 $generated@@113) ($generated@@81 ($generated@@82 $generated@@114) $generated@@115)) ($generated@@26 $generated@@111))
)))
(assert (forall (($generated@@116 T@U) ) (!  (=> ($generated@@110 $generated@@116 $generated@@0) (and (= ($generated@@74 $generated@@9 ($generated@@41 $generated@@9 $generated@@116)) $generated@@116) ($generated@@29 $generated@@9 ($generated@@41 $generated@@9 $generated@@116) $generated@@0)))
 :pattern ( ($generated@@110 $generated@@116 $generated@@0))
)))
(assert (forall (($generated@@117 T@U) ) (!  (=> ($generated@@110 $generated@@117 $generated) (and (= ($generated@@74 $generated@@8 ($generated@@41 $generated@@8 $generated@@117)) $generated@@117) ($generated@@29 $generated@@8 ($generated@@41 $generated@@8 $generated@@117) $generated)))
 :pattern ( ($generated@@110 $generated@@117 $generated))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@T) ) (! (= ($generated@@110 ($generated@@74 $generated@@120 $generated@@118) $generated@@119) ($generated@@29 $generated@@120 $generated@@118 $generated@@119))
 :pattern ( ($generated@@110 ($generated@@74 $generated@@120 $generated@@118) $generated@@119))
)))
(assert (forall (($generated@@121 T@U) ) (! (<= 0 ($generated@@25 $generated@@121))
 :pattern ( ($generated@@25 $generated@@121))
)))
(assert (forall (($generated@@122 T@U) ) (! (<= 0 ($generated@@32 $generated@@122))
 :pattern ( ($generated@@32 $generated@@122))
)))
(assert (forall (($generated@@123 Int) ) (! (= ($generated@@23 ($generated@@82 $generated@@123)) 1)
 :pattern ( ($generated@@82 $generated@@123))
)))
(assert (forall (($generated@@125 Int) ) (! (= ($generated@@124 ($generated@@82 $generated@@125)) $generated@@125)
 :pattern ( ($generated@@82 $generated@@125))
)))
(assert (forall (($generated@@127 T@U) ) (! (= ($generated@@126 ($generated@@26 $generated@@127)) $generated@@127)
 :pattern ( ($generated@@26 $generated@@127))
)))
(assert (forall (($generated@@129 T@U) ) (! (= ($generated@@128 ($generated@@37 $generated@@129)) $generated@@129)
 :pattern ( ($generated@@37 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@T) ) (! (= ($generated@@41 $generated@@131 ($generated@@74 $generated@@131 $generated@@130)) $generated@@130)
 :pattern ( ($generated@@74 $generated@@131 $generated@@130))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (=> (and (and ($generated@@79 $generated@@133) (and (or (not (= $generated@@134 $generated@@27)) (not true)) (= ($generated@@28 $generated@@134) ($generated@@26 $generated@@132)))) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@133 $generated@@134) $generated@@3)))) ($generated@@35 $generated@@9 ($generated@@13 ($generated@@25 $generated@@134)) $generated@@0 $generated@@133))
 :pattern ( ($generated@@25 $generated@@134) ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@133 $generated@@134) $generated@@3)) ($generated@@26 $generated@@132))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (!  (=> (and (and ($generated@@79 $generated@@136) (and (or (not (= $generated@@137 $generated@@27)) (not true)) (= ($generated@@28 $generated@@137) ($generated@@26 $generated@@135)))) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@136 $generated@@137) $generated@@3)))) ($generated@@35 $generated@@9 ($generated@@13 ($generated@@32 $generated@@137)) $generated@@0 $generated@@136))
 :pattern ( ($generated@@32 $generated@@137) ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@136 $generated@@137) $generated@@3)) ($generated@@26 $generated@@135))
)))
(assert  (and (forall (($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (! (= ($generated@@138 $generated@@141 $generated@@142 $generated@@143 ($generated@@140 $generated@@141 $generated@@142 $generated@@143 $generated@@145 $generated@@146 $generated@@147 $generated@@144) $generated@@146 $generated@@147) $generated@@144)
 :weight 0
)) (and (forall (($generated@@148 T@T) ($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (!  (or (= $generated@@153 $generated@@155) (= ($generated@@138 $generated@@148 $generated@@149 $generated@@150 ($generated@@140 $generated@@148 $generated@@149 $generated@@150 $generated@@152 $generated@@153 $generated@@154 $generated@@151) $generated@@155 $generated@@156) ($generated@@138 $generated@@148 $generated@@149 $generated@@150 $generated@@152 $generated@@155 $generated@@156)))
 :weight 0
)) (forall (($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ) (!  (or (= $generated@@163 $generated@@165) (= ($generated@@138 $generated@@157 $generated@@158 $generated@@159 ($generated@@140 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@162 $generated@@163 $generated@@160) $generated@@164 $generated@@165) ($generated@@138 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@164 $generated@@165)))
 :weight 0
)))))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 Bool) ($generated@@170 T@U) ($generated@@171 T@U) ) (! (= ($generated@@12 ($generated@@138 $generated@@36 $generated@@43 $generated@@8 ($generated@@139 $generated@@166 $generated@@167 $generated@@168 $generated@@169) $generated@@170 $generated@@171))  (=> (and (or (not (= $generated@@170 $generated@@166)) (not true)) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@167 $generated@@170) $generated@@168)))) $generated@@169))
 :pattern ( ($generated@@138 $generated@@36 $generated@@43 $generated@@8 ($generated@@139 $generated@@166 $generated@@167 $generated@@168 $generated@@169) $generated@@170 $generated@@171))
)))
(assert (forall (($generated@@174 T@U) ($generated@@175 Int) ) (!  (and (= ($generated@@172 ($generated@@81 $generated@@174 $generated@@175)) $generated@@174) (= ($generated@@173 ($generated@@81 $generated@@174 $generated@@175)) $generated@@175))
 :pattern ( ($generated@@81 $generated@@174 $generated@@175))
)))
(assert (forall (($generated@@176 T@U) ($generated@@177 T@U) ) (!  (=> ($generated@@110 $generated@@177 ($generated@@26 $generated@@176)) (and (= ($generated@@74 $generated@@36 ($generated@@41 $generated@@36 $generated@@177)) $generated@@177) ($generated@@29 $generated@@36 ($generated@@41 $generated@@36 $generated@@177) ($generated@@26 $generated@@176))))
 :pattern ( ($generated@@110 $generated@@177 ($generated@@26 $generated@@176)))
)))
(assert (forall (($generated@@178 T@U) ($generated@@179 T@U) ) (!  (=> ($generated@@110 $generated@@179 ($generated@@37 $generated@@178)) (and (= ($generated@@74 $generated@@36 ($generated@@41 $generated@@36 $generated@@179)) $generated@@179) ($generated@@29 $generated@@36 ($generated@@41 $generated@@36 $generated@@179) ($generated@@37 $generated@@178))))
 :pattern ( ($generated@@110 $generated@@179 ($generated@@37 $generated@@178)))
)))
(assert (forall (($generated@@180 Int) ) (! (= ($generated@@74 $generated@@9 ($generated@@13 ($generated@@69 $generated@@180))) ($generated@@71 $generated@@44 ($generated@@74 $generated@@9 ($generated@@13 $generated@@180))))
 :pattern ( ($generated@@74 $generated@@9 ($generated@@13 ($generated@@69 $generated@@180))))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@T) ) (! (= ($generated@@74 $generated@@182 ($generated@@71 $generated@@182 $generated@@181)) ($generated@@71 $generated@@44 ($generated@@74 $generated@@182 $generated@@181)))
 :pattern ( ($generated@@74 $generated@@182 ($generated@@71 $generated@@182 $generated@@181)))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (! ($generated@@35 $generated@@9 $generated@@184 $generated@@0 $generated@@183)
 :pattern ( ($generated@@35 $generated@@9 $generated@@184 $generated@@0 $generated@@183))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ) (! ($generated@@35 $generated@@8 $generated@@186 $generated $generated@@185)
 :pattern ( ($generated@@35 $generated@@8 $generated@@186 $generated $generated@@185))
)))
(assert (forall (($generated@@187 T@U) ) (! ($generated@@29 $generated@@9 $generated@@187 $generated@@0)
 :pattern ( ($generated@@29 $generated@@9 $generated@@187 $generated@@0))
)))
(assert (forall (($generated@@188 T@U) ) (! ($generated@@29 $generated@@8 $generated@@188 $generated)
 :pattern ( ($generated@@29 $generated@@8 $generated@@188 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () T@U)
(declare-fun $generated@@191 () Bool)
(declare-fun $generated@@192 () Int)
(declare-fun $generated@@193 () Int)
(declare-fun $generated@@194 () Bool)
(declare-fun $generated@@195 () T@U)
(declare-fun $generated@@196 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 20) (let (($generated@@197  (=> (= ($generated@@78 $generated@@189) (exists (($generated@@198 Int) ($generated@@199 Int) ) (!  (and (and (and (<= ($generated@@69 0) $generated@@198) (< $generated@@198 ($generated@@25 $generated@@189))) (and (<= ($generated@@69 0) $generated@@199) (< $generated@@199 ($generated@@32 $generated@@189)))) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@190 $generated@@189) ($generated@@81 ($generated@@82 $generated@@198) $generated@@199)))))
 :pattern ( ($generated@@41 $generated@@8 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@36 ($generated@@45 $generated@@43 $generated@@44) $generated@@190 $generated@@189) ($generated@@81 ($generated@@82 $generated@@198) $generated@@199))))
))) (=> (and ($generated@@29 $generated@@8 ($generated@@11 ($generated@@78 $generated@@189)) $generated) (= (ControlFlow 0 4) (- 0 3))) $generated@@191))))
(let (($generated@@200  (=> (not (and (and (<= ($generated@@69 0) $generated@@192) (< $generated@@192 ($generated@@25 $generated@@189))) (and (<= ($generated@@69 0) $generated@@193) (< $generated@@193 ($generated@@32 $generated@@189))))) (=> (and (= $generated@@191 true) (= (ControlFlow 0 9) 4)) $generated@@197))))
(let (($generated@@201  (=> (and (and (<= ($generated@@69 0) $generated@@192) (< $generated@@192 ($generated@@25 $generated@@189))) (and (<= ($generated@@69 0) $generated@@193) (< $generated@@193 ($generated@@32 $generated@@189)))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (or (not (= $generated@@189 $generated@@27)) (not true))) (=> (or (not (= $generated@@189 $generated@@27)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (and (<= 0 $generated@@192) (< $generated@@192 ($generated@@25 $generated@@189)))) (=> (and (<= 0 $generated@@192) (< $generated@@192 ($generated@@25 $generated@@189))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= 0 $generated@@193) (< $generated@@193 ($generated@@32 $generated@@189)))) (=> (and (<= 0 $generated@@193) (< $generated@@193 ($generated@@32 $generated@@189))) (=> (= $generated@@194 ($generated@@12 ($generated@@138 $generated@@36 $generated@@43 $generated@@8 $generated@@195 $generated@@189 ($generated@@81 ($generated@@82 $generated@@192) $generated@@193)))) (=> (and (= $generated@@191 $generated@@194) (= (ControlFlow 0 5) 4)) $generated@@197)))))))))))
(let (($generated@@202  (=> (< $generated@@193 ($generated@@69 0)) (and (=> (= (ControlFlow 0 13) 5) $generated@@201) (=> (= (ControlFlow 0 13) 9) $generated@@200)))))
(let (($generated@@203  (=> (<= ($generated@@69 0) $generated@@193) (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (not (= $generated@@189 $generated@@27)) (not true))) (=> (or (not (= $generated@@189 $generated@@27)) (not true)) (and (=> (= (ControlFlow 0 11) 5) $generated@@201) (=> (= (ControlFlow 0 11) 9) $generated@@200)))))))
(let (($generated@@204  (=> (and (<= ($generated@@69 0) $generated@@192) (< $generated@@192 ($generated@@25 $generated@@189))) (and (=> (= (ControlFlow 0 14) 11) $generated@@203) (=> (= (ControlFlow 0 14) 13) $generated@@202)))))
(let (($generated@@205  (=> (not (and (<= ($generated@@69 0) $generated@@192) (< $generated@@192 ($generated@@25 $generated@@189)))) (and (=> (= (ControlFlow 0 10) 5) $generated@@201) (=> (= (ControlFlow 0 10) 9) $generated@@200)))))
(let (($generated@@206  (=> (< $generated@@192 ($generated@@69 0)) (and (=> (= (ControlFlow 0 17) 14) $generated@@204) (=> (= (ControlFlow 0 17) 10) $generated@@205)))))
(let (($generated@@207  (=> (<= ($generated@@69 0) $generated@@192) (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (not (= $generated@@189 $generated@@27)) (not true))) (=> (or (not (= $generated@@189 $generated@@27)) (not true)) (and (=> (= (ControlFlow 0 15) 14) $generated@@204) (=> (= (ControlFlow 0 15) 10) $generated@@205)))))))
(let (($generated@@208  (and (=> (= (ControlFlow 0 18) 15) $generated@@207) (=> (= (ControlFlow 0 18) 17) $generated@@206))))
(let (($generated@@209 true))
(let (($generated@@210 true))
(let (($generated@@211  (=> (= $generated@@195 ($generated@@139 $generated@@27 $generated@@190 $generated@@3 false)) (and (and (=> (= (ControlFlow 0 19) 1) $generated@@210) (=> (= (ControlFlow 0 19) 18) $generated@@208)) (=> (= (ControlFlow 0 19) 2) $generated@@209)))))
(let (($generated@@212  (=> (and (and (and ($generated@@79 $generated@@190) ($generated@@196 $generated@@190)) ($generated@@29 $generated@@36 $generated@@189 ($generated@@37 $generated))) (and (= 0 $generated@@77) (= (ControlFlow 0 20) 19))) $generated@@211)))
$generated@@212)))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)