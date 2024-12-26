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
(declare-fun $generated@@20 (T@U) Bool)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@22 () Int)
(declare-fun $generated@@23 (T@U T@U) T@U)
(declare-fun $generated@@24 (T@U T@U) Bool)
(declare-fun $generated@@25 (T@U T@U) Bool)
(declare-fun $generated@@26 () T@U)
(declare-fun $generated@@27 (T@U T@U) Bool)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@32 (T@U T@U T@U) Bool)
(declare-fun $generated@@33 (T@U) Bool)
(declare-fun $generated@@37 (T@T T@U) T@U)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@41 (T@T T@U) T@U)
(declare-fun $generated@@44 (T@T T@U T@U) Bool)
(declare-fun $generated@@45 () T@T)
(declare-fun $generated@@46 (T@U) T@U)
(declare-fun $generated@@50 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@55 (T@U) Bool)
(declare-fun $generated@@56 (T@U) Bool)
(declare-fun $generated@@57 (T@U) Bool)
(declare-fun $generated@@83 (T@U) T@U)
(declare-fun $generated@@89 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@90 () T@T)
(declare-fun $generated@@91 () T@T)
(declare-fun $generated@@92 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@93 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@94 () T@T)
(declare-fun $generated@@95 (T@T T@T) T@T)
(declare-fun $generated@@96 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@97 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@98 (T@T) T@T)
(declare-fun $generated@@99 (T@T) T@T)
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
(assert ($generated@@20 $generated@@21))
(assert  (=> (<= 1 $generated@@22) (forall (($generated@@30 T@U) ($generated@@31 T@U) ) (!  (=> (or ($generated@@24 $generated@@30 $generated@@31) (and (< 1 $generated@@22) (and (and ($generated@@25 $generated@@30 $generated@@21) ($generated@@25 $generated@@31 $generated@@26)) ($generated@@27 ($generated@@28 $generated@@31) $generated@@30)))) ($generated@@25 ($generated@@23 $generated@@30 $generated@@31) $generated@@29))
 :pattern ( ($generated@@23 $generated@@30 $generated@@31))
))))
(assert  (=> (<= 1 $generated@@22) (forall (($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ) (!  (=> (and (or ($generated@@24 $generated@@35 $generated@@36) (and (< 1 $generated@@22) (and (and (and ($generated@@25 $generated@@35 $generated@@21) ($generated@@32 $generated@@35 $generated@@21 $generated@@34)) (and ($generated@@25 $generated@@36 $generated@@26) ($generated@@32 $generated@@36 $generated@@26 $generated@@34))) ($generated@@27 ($generated@@28 $generated@@36) $generated@@35)))) ($generated@@33 $generated@@34)) ($generated@@32 ($generated@@23 $generated@@35 $generated@@36) $generated@@29 $generated@@34))
 :pattern ( ($generated@@32 ($generated@@23 $generated@@35 $generated@@36) $generated@@29 $generated@@34))
))))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@T) ) (! (= ($generated@@37 $generated@@39 $generated@@38) $generated@@38)
 :pattern ( ($generated@@37 $generated@@39 $generated@@38))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 T@T) ) (! (= ($generated@@41 $generated@@43 ($generated@@40 $generated@@43 $generated@@42)) $generated@@42)
 :pattern ( ($generated@@40 $generated@@43 $generated@@42))
)))
(assert (= ($generated@@3 $generated@@45) 3))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@U) ) (! (= ($generated@@44 $generated@@45 $generated@@47 ($generated@@46 $generated@@48)) (forall (($generated@@49 T@U) ) (!  (=> ($generated@@27 $generated@@47 $generated@@49) ($generated@@25 $generated@@49 $generated@@48))
 :pattern ( ($generated@@27 $generated@@47 $generated@@49))
)))
 :pattern ( ($generated@@44 $generated@@45 $generated@@47 ($generated@@46 $generated@@48)))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@T) ) (! (= ($generated@@32 ($generated@@41 $generated@@54 $generated@@51) $generated@@52 $generated@@53) ($generated@@50 $generated@@54 $generated@@51 $generated@@52 $generated@@53))
 :pattern ( ($generated@@32 ($generated@@41 $generated@@54 $generated@@51) $generated@@52 $generated@@53))
)))
(assert  (=> (<= 2 $generated@@22) (forall (($generated@@58 T@U) ) (!  (=> (or ($generated@@56 ($generated@@37 $generated@@45 $generated@@58)) (and (< 2 $generated@@22) ($generated@@44 $generated@@45 $generated@@58 ($generated@@46 $generated@@26)))) (and (forall (($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (!  (=> (and (and ($generated@@25 $generated@@59 $generated@@26) ($generated@@25 $generated@@60 $generated@@26)) ($generated@@25 $generated@@61 $generated@@21)) (=> ($generated@@27 ($generated@@37 $generated@@45 $generated@@58) $generated@@59) (=> ($generated@@27 ($generated@@37 $generated@@45 $generated@@58) $generated@@60) (and ($generated@@57 $generated@@59) (=> ($generated@@27 ($generated@@28 $generated@@59) $generated@@61) (and ($generated@@57 $generated@@60) (=> ($generated@@27 ($generated@@28 $generated@@60) $generated@@61) (and ($generated@@24 $generated@@61 $generated@@59) ($generated@@24 $generated@@61 $generated@@60)))))))))
 :pattern ( ($generated@@23 $generated@@61 $generated@@60) ($generated@@23 $generated@@61 $generated@@59))
 :pattern ( ($generated@@23 $generated@@61 $generated@@60) ($generated@@28 $generated@@59))
 :pattern ( ($generated@@23 $generated@@61 $generated@@60) ($generated@@27 $generated@@58 $generated@@59))
 :pattern ( ($generated@@23 $generated@@61 $generated@@59) ($generated@@28 $generated@@60))
 :pattern ( ($generated@@23 $generated@@61 $generated@@59) ($generated@@27 $generated@@58 $generated@@60))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@60) $generated@@61) ($generated@@28 $generated@@59))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@60) $generated@@61) ($generated@@27 $generated@@58 $generated@@59))
 :pattern ( ($generated@@28 $generated@@60) ($generated@@27 ($generated@@28 $generated@@59) $generated@@61))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@59) $generated@@61) ($generated@@27 $generated@@58 $generated@@60))
)) (= ($generated@@55 ($generated@@37 $generated@@45 $generated@@58)) (forall (($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (!  (=> (and (and ($generated@@25 $generated@@62 $generated@@26) ($generated@@25 $generated@@63 $generated@@26)) ($generated@@25 $generated@@64 $generated@@21)) (=> (and (and (and ($generated@@27 ($generated@@37 $generated@@45 $generated@@58) $generated@@62) ($generated@@27 ($generated@@37 $generated@@45 $generated@@58) $generated@@63)) ($generated@@27 ($generated@@28 $generated@@62) $generated@@64)) ($generated@@27 ($generated@@28 $generated@@63) $generated@@64)) (= ($generated@@23 $generated@@64 $generated@@62) ($generated@@23 $generated@@64 $generated@@63))))
 :pattern ( ($generated@@23 $generated@@64 $generated@@63) ($generated@@23 $generated@@64 $generated@@62))
 :pattern ( ($generated@@23 $generated@@64 $generated@@63) ($generated@@28 $generated@@62))
 :pattern ( ($generated@@23 $generated@@64 $generated@@63) ($generated@@27 $generated@@58 $generated@@62))
 :pattern ( ($generated@@23 $generated@@64 $generated@@62) ($generated@@28 $generated@@63))
 :pattern ( ($generated@@23 $generated@@64 $generated@@62) ($generated@@27 $generated@@58 $generated@@63))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@63) $generated@@64) ($generated@@28 $generated@@62))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@63) $generated@@64) ($generated@@27 $generated@@58 $generated@@62))
 :pattern ( ($generated@@28 $generated@@63) ($generated@@27 ($generated@@28 $generated@@62) $generated@@64))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@62) $generated@@64) ($generated@@27 $generated@@58 $generated@@63))
)))))
 :weight 3
 :pattern ( ($generated@@55 ($generated@@37 $generated@@45 $generated@@58)))
))))
(assert (forall (($generated@@65 T@U) ) (!  (=> ($generated@@25 $generated@@65 $generated) (and (= ($generated@@41 $generated@@4 ($generated@@40 $generated@@4 $generated@@65)) $generated@@65) ($generated@@44 $generated@@4 ($generated@@40 $generated@@4 $generated@@65) $generated)))
 :pattern ( ($generated@@25 $generated@@65 $generated))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@T) ) (! (= ($generated@@25 ($generated@@41 $generated@@68 $generated@@66) $generated@@67) ($generated@@44 $generated@@68 $generated@@66 $generated@@67))
 :pattern ( ($generated@@25 ($generated@@41 $generated@@68 $generated@@66) $generated@@67))
)))
(assert (forall (($generated@@69 T@U) ) (!  (=> ($generated@@20 $generated@@69) (forall (($generated@@70 T@U) ($generated@@71 T@U) ) (!  (=> ($generated@@25 $generated@@71 $generated@@69) ($generated@@32 $generated@@71 $generated@@69 $generated@@70))
 :pattern ( ($generated@@32 $generated@@71 $generated@@69 $generated@@70))
)))
 :pattern ( ($generated@@20 $generated@@69))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ) (! (= ($generated@@50 $generated@@45 $generated@@72 ($generated@@46 $generated@@73) $generated@@74) (forall (($generated@@75 T@U) ) (!  (=> ($generated@@27 $generated@@72 $generated@@75) ($generated@@32 $generated@@75 $generated@@73 $generated@@74))
 :pattern ( ($generated@@27 $generated@@72 $generated@@75))
)))
 :pattern ( ($generated@@50 $generated@@45 $generated@@72 ($generated@@46 $generated@@73) $generated@@74))
)))
(assert  (=> (<= 2 $generated@@22) (forall (($generated@@76 T@U) ) (!  (=> (or ($generated@@56 $generated@@76) (and (< 2 $generated@@22) ($generated@@44 $generated@@45 $generated@@76 ($generated@@46 $generated@@26)))) (and (forall (($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (!  (=> (and (and ($generated@@25 $generated@@77 $generated@@26) ($generated@@25 $generated@@78 $generated@@26)) ($generated@@25 $generated@@79 $generated@@21)) (=> ($generated@@27 $generated@@76 $generated@@77) (=> ($generated@@27 $generated@@76 $generated@@78) (and ($generated@@57 $generated@@77) (=> ($generated@@27 ($generated@@28 $generated@@77) $generated@@79) (and ($generated@@57 $generated@@78) (=> ($generated@@27 ($generated@@28 $generated@@78) $generated@@79) (and ($generated@@24 $generated@@79 $generated@@77) ($generated@@24 $generated@@79 $generated@@78)))))))))
 :pattern ( ($generated@@23 $generated@@79 $generated@@78) ($generated@@23 $generated@@79 $generated@@77))
 :pattern ( ($generated@@23 $generated@@79 $generated@@78) ($generated@@28 $generated@@77))
 :pattern ( ($generated@@23 $generated@@79 $generated@@78) ($generated@@27 $generated@@76 $generated@@77))
 :pattern ( ($generated@@23 $generated@@79 $generated@@77) ($generated@@28 $generated@@78))
 :pattern ( ($generated@@23 $generated@@79 $generated@@77) ($generated@@27 $generated@@76 $generated@@78))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@78) $generated@@79) ($generated@@28 $generated@@77))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@78) $generated@@79) ($generated@@27 $generated@@76 $generated@@77))
 :pattern ( ($generated@@28 $generated@@78) ($generated@@27 ($generated@@28 $generated@@77) $generated@@79))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@77) $generated@@79) ($generated@@27 $generated@@76 $generated@@78))
)) (= ($generated@@55 $generated@@76) (forall (($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ) (!  (=> (and (and ($generated@@25 $generated@@80 $generated@@26) ($generated@@25 $generated@@81 $generated@@26)) ($generated@@25 $generated@@82 $generated@@21)) (=> (and (and (and ($generated@@27 $generated@@76 $generated@@80) ($generated@@27 $generated@@76 $generated@@81)) ($generated@@27 ($generated@@28 $generated@@80) $generated@@82)) ($generated@@27 ($generated@@28 $generated@@81) $generated@@82)) (= ($generated@@23 $generated@@82 $generated@@80) ($generated@@23 $generated@@82 $generated@@81))))
 :pattern ( ($generated@@23 $generated@@82 $generated@@81) ($generated@@23 $generated@@82 $generated@@80))
 :pattern ( ($generated@@23 $generated@@82 $generated@@81) ($generated@@28 $generated@@80))
 :pattern ( ($generated@@23 $generated@@82 $generated@@81) ($generated@@27 $generated@@76 $generated@@80))
 :pattern ( ($generated@@23 $generated@@82 $generated@@80) ($generated@@28 $generated@@81))
 :pattern ( ($generated@@23 $generated@@82 $generated@@80) ($generated@@27 $generated@@76 $generated@@81))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@81) $generated@@82) ($generated@@28 $generated@@80))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@81) $generated@@82) ($generated@@27 $generated@@76 $generated@@80))
 :pattern ( ($generated@@28 $generated@@81) ($generated@@27 ($generated@@28 $generated@@80) $generated@@82))
 :pattern ( ($generated@@27 ($generated@@28 $generated@@80) $generated@@82) ($generated@@27 $generated@@76 $generated@@81))
)))))
 :pattern ( ($generated@@55 $generated@@76))
))))
(assert (forall (($generated@@84 T@U) ) (! (= ($generated@@83 ($generated@@46 $generated@@84)) $generated@@84)
 :pattern ( ($generated@@46 $generated@@84))
)))
(assert (forall (($generated@@85 T@U) ) (! (= ($generated@@19 ($generated@@46 $generated@@85)) $generated@@1)
 :pattern ( ($generated@@46 $generated@@85))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@40 $generated@@87 ($generated@@41 $generated@@87 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@41 $generated@@87 $generated@@86))
)))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@88 T@U) ) (!  (=> (or ($generated@@57 $generated@@88) (and (< 0 $generated@@22) ($generated@@25 $generated@@88 $generated@@26))) ($generated@@44 $generated@@45 ($generated@@28 $generated@@88) ($generated@@46 $generated@@21)))
 :pattern ( ($generated@@28 $generated@@88))
))))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@100 T@T) ($generated@@101 T@T) ($generated@@102 T@T) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (! (= ($generated@@89 $generated@@100 $generated@@101 $generated@@102 ($generated@@96 $generated@@100 $generated@@101 $generated@@102 $generated@@104 $generated@@105 $generated@@106 $generated@@103) $generated@@105 $generated@@106) $generated@@103)
 :weight 0
)) (and (forall (($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (!  (or (= $generated@@112 $generated@@114) (= ($generated@@89 $generated@@107 $generated@@108 $generated@@109 ($generated@@96 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@112 $generated@@113 $generated@@110) $generated@@114 $generated@@115) ($generated@@89 $generated@@107 $generated@@108 $generated@@109 $generated@@111 $generated@@114 $generated@@115)))
 :weight 0
)) (forall (($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (!  (or (= $generated@@122 $generated@@124) (= ($generated@@89 $generated@@116 $generated@@117 $generated@@118 ($generated@@96 $generated@@116 $generated@@117 $generated@@118 $generated@@120 $generated@@121 $generated@@122 $generated@@119) $generated@@123 $generated@@124) ($generated@@89 $generated@@116 $generated@@117 $generated@@118 $generated@@120 $generated@@123 $generated@@124)))
 :weight 0
)))) (= ($generated@@3 $generated@@90) 4)) (= ($generated@@3 $generated@@91) 5)) (forall (($generated@@125 T@T) ($generated@@126 T@T) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ) (! (= ($generated@@93 $generated@@125 $generated@@126 ($generated@@97 $generated@@125 $generated@@126 $generated@@128 $generated@@129 $generated@@127) $generated@@129) $generated@@127)
 :weight 0
))) (forall (($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (!  (or (= $generated@@134 $generated@@135) (= ($generated@@93 $generated@@130 $generated@@131 ($generated@@97 $generated@@130 $generated@@131 $generated@@133 $generated@@134 $generated@@132) $generated@@135) ($generated@@93 $generated@@130 $generated@@131 $generated@@133 $generated@@135)))
 :weight 0
))) (= ($generated@@3 $generated@@94) 6)) (forall (($generated@@136 T@T) ($generated@@137 T@T) ) (= ($generated@@3 ($generated@@95 $generated@@136 $generated@@137)) 7))) (forall (($generated@@138 T@T) ($generated@@139 T@T) ) (! (= ($generated@@98 ($generated@@95 $generated@@138 $generated@@139)) $generated@@138)
 :pattern ( ($generated@@95 $generated@@138 $generated@@139))
))) (forall (($generated@@140 T@T) ($generated@@141 T@T) ) (! (= ($generated@@99 ($generated@@95 $generated@@140 $generated@@141)) $generated@@141)
 :pattern ( ($generated@@95 $generated@@140 $generated@@141))
))))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 Bool) ($generated@@146 T@U) ($generated@@147 T@U) ) (! (= ($generated@@8 ($generated@@89 $generated@@90 $generated@@91 $generated@@4 ($generated@@92 $generated@@142 $generated@@143 $generated@@144 $generated@@145) $generated@@146 $generated@@147))  (=> (and (or (not (= $generated@@146 $generated@@142)) (not true)) ($generated@@8 ($generated@@40 $generated@@4 ($generated@@93 $generated@@91 $generated@@94 ($generated@@93 $generated@@90 ($generated@@95 $generated@@91 $generated@@94) $generated@@143 $generated@@146) $generated@@144)))) $generated@@145))
 :pattern ( ($generated@@89 $generated@@90 $generated@@91 $generated@@4 ($generated@@92 $generated@@142 $generated@@143 $generated@@144 $generated@@145) $generated@@146 $generated@@147))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ) (!  (=> ($generated@@25 $generated@@148 ($generated@@46 $generated@@149)) (and (= ($generated@@41 $generated@@45 ($generated@@40 $generated@@45 $generated@@148)) $generated@@148) ($generated@@44 $generated@@45 ($generated@@40 $generated@@45 $generated@@148) ($generated@@46 $generated@@149))))
 :pattern ( ($generated@@25 $generated@@148 ($generated@@46 $generated@@149)))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@T) ) (! (= ($generated@@41 $generated@@151 ($generated@@37 $generated@@151 $generated@@150)) ($generated@@37 $generated@@94 ($generated@@41 $generated@@151 $generated@@150)))
 :pattern ( ($generated@@41 $generated@@151 ($generated@@37 $generated@@151 $generated@@150)))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (! ($generated@@50 $generated@@4 $generated@@153 $generated $generated@@152)
 :pattern ( ($generated@@50 $generated@@4 $generated@@153 $generated $generated@@152))
)))
(assert (forall (($generated@@154 T@U) ) (! ($generated@@44 $generated@@4 $generated@@154 $generated)
 :pattern ( ($generated@@44 $generated@@4 $generated@@154 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@155 () T@U)
(declare-fun $generated@@156 () T@U)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@158 () T@U)
(declare-fun $generated@@159 () T@U)
(declare-fun $generated@@160 () T@U)
(declare-fun $generated@@161 () T@U)
(declare-fun $generated@@162 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 16) (let (($generated@@163 true))
(let (($generated@@164  (=> (and (not (and (and (and ($generated@@27 $generated@@155 $generated@@156) ($generated@@27 $generated@@155 $generated@@157)) ($generated@@27 ($generated@@28 $generated@@156) $generated@@158)) ($generated@@27 ($generated@@28 $generated@@157) $generated@@158))) (= (ControlFlow 0 7) 2)) $generated@@163)))
(let (($generated@@165  (=> (and (and (and (and ($generated@@27 $generated@@155 $generated@@156) ($generated@@27 $generated@@155 $generated@@157)) ($generated@@27 ($generated@@28 $generated@@156) $generated@@158)) ($generated@@27 ($generated@@28 $generated@@157) $generated@@158)) (and ($generated@@32 $generated@@158 $generated@@21 $generated@@159) ($generated@@32 $generated@@156 $generated@@26 $generated@@159))) (and (=> (= (ControlFlow 0 4) (- 0 6)) ($generated@@27 ($generated@@28 $generated@@156) $generated@@158)) (=> (and (and ($generated@@27 ($generated@@28 $generated@@156) $generated@@158) ($generated@@24 $generated@@158 $generated@@156)) (and ($generated@@32 $generated@@158 $generated@@21 $generated@@159) ($generated@@32 $generated@@157 $generated@@26 $generated@@159))) (and (=> (= (ControlFlow 0 4) (- 0 5)) ($generated@@27 ($generated@@28 $generated@@157) $generated@@158)) (=> ($generated@@27 ($generated@@28 $generated@@157) $generated@@158) (=> (and ($generated@@24 $generated@@158 $generated@@157) (= (ControlFlow 0 4) 2)) $generated@@163))))))))
(let (($generated@@166  (=> (not (and (and ($generated@@27 $generated@@155 $generated@@156) ($generated@@27 $generated@@155 $generated@@157)) ($generated@@27 ($generated@@28 $generated@@156) $generated@@158))) (and (=> (= (ControlFlow 0 9) 4) $generated@@165) (=> (= (ControlFlow 0 9) 7) $generated@@164)))))
(let (($generated@@167  (=> (and (and (and ($generated@@27 $generated@@155 $generated@@156) ($generated@@27 $generated@@155 $generated@@157)) ($generated@@27 ($generated@@28 $generated@@156) $generated@@158)) (and ($generated@@32 $generated@@157 $generated@@26 $generated@@159) ($generated@@57 $generated@@157))) (and (=> (= (ControlFlow 0 8) 4) $generated@@165) (=> (= (ControlFlow 0 8) 7) $generated@@164)))))
(let (($generated@@168  (=> (not (and ($generated@@27 $generated@@155 $generated@@156) ($generated@@27 $generated@@155 $generated@@157))) (and (=> (= (ControlFlow 0 11) 8) $generated@@167) (=> (= (ControlFlow 0 11) 9) $generated@@166)))))
(let (($generated@@169  (=> (and (and ($generated@@27 $generated@@155 $generated@@156) ($generated@@27 $generated@@155 $generated@@157)) (and ($generated@@32 $generated@@156 $generated@@26 $generated@@159) ($generated@@57 $generated@@156))) (and (=> (= (ControlFlow 0 10) 8) $generated@@167) (=> (= (ControlFlow 0 10) 9) $generated@@166)))))
(let (($generated@@170  (=> (not ($generated@@27 $generated@@155 $generated@@156)) (and (=> (= (ControlFlow 0 13) 10) $generated@@169) (=> (= (ControlFlow 0 13) 11) $generated@@168)))))
(let (($generated@@171  (=> ($generated@@27 $generated@@155 $generated@@156) (and (=> (= (ControlFlow 0 12) 10) $generated@@169) (=> (= (ControlFlow 0 12) 11) $generated@@168)))))
(let (($generated@@172  (=> (and (and (and ($generated@@25 $generated@@156 $generated@@26) ($generated@@32 $generated@@156 $generated@@26 $generated@@159)) (and ($generated@@25 $generated@@157 $generated@@26) ($generated@@32 $generated@@157 $generated@@26 $generated@@159))) (and ($generated@@25 $generated@@158 $generated@@21) ($generated@@32 $generated@@158 $generated@@21 $generated@@159))) (and (=> (= (ControlFlow 0 14) 12) $generated@@171) (=> (= (ControlFlow 0 14) 13) $generated@@170)))))
(let (($generated@@173  (=> (and (not (and (and (and ($generated@@25 $generated@@156 $generated@@26) ($generated@@32 $generated@@156 $generated@@26 $generated@@159)) (and ($generated@@25 $generated@@157 $generated@@26) ($generated@@32 $generated@@157 $generated@@26 $generated@@159))) (and ($generated@@25 $generated@@158 $generated@@21) ($generated@@32 $generated@@158 $generated@@21 $generated@@159)))) (= (ControlFlow 0 3) 2)) $generated@@163)))
(let (($generated@@174 true))
(let (($generated@@175  (=> (= $generated@@160 ($generated@@92 $generated@@161 $generated@@159 $generated@@2 false)) (and (and (=> (= (ControlFlow 0 15) 1) $generated@@174) (=> (= (ControlFlow 0 15) 14) $generated@@172)) (=> (= (ControlFlow 0 15) 3) $generated@@173)))))
(let (($generated@@176  (=> (and (and (and ($generated@@33 $generated@@159) ($generated@@162 $generated@@159)) ($generated@@44 $generated@@45 $generated@@155 ($generated@@46 $generated@@26))) (and (= 2 $generated@@22) (= (ControlFlow 0 16) 15))) $generated@@175)))
$generated@@176)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)