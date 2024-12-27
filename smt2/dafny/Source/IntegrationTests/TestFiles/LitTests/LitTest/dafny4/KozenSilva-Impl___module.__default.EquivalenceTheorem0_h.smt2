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
(declare-fun $generated@@5 (T@T) Int)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 (Bool) T@U)
(declare-fun $generated@@10 (T@U) Bool)
(declare-fun $generated@@11 (Int) T@U)
(declare-fun $generated@@12 (T@U) Int)
(declare-fun $generated@@13 (Real) T@U)
(declare-fun $generated@@14 (T@U) Real)
(declare-fun $generated@@21 () Int)
(declare-fun $generated@@22 (T@U Int T@U T@U) Bool)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@24 (Int T@U T@U) Bool)
(declare-fun $generated@@25 (Int) Int)
(declare-fun $generated@@26 (T@T T@U T@U) Bool)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@U) Bool)
(declare-fun $generated@@30 (T@T T@U) T@U)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@38 (T@U) Bool)
(declare-fun $generated@@42 (T@U Int T@U T@U) Bool)
(declare-fun $generated@@48 (T@T T@U) T@U)
(declare-fun $generated@@51 (T@U T@U) T@U)
(declare-fun $generated@@52 (T@U T@U) Bool)
(declare-fun $generated@@56 (T@U) T@U)
(declare-fun $generated@@58 (T@T T@U) T@U)
(declare-fun $generated@@64 (T@U T@U T@U) Bool)
(declare-fun $generated@@65 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@70 (T@U) T@U)
(declare-fun $generated@@98 (Int T@U T@U) Bool)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@107 (T@U T@U) Bool)
(declare-fun $generated@@108 (T@U T@U) Bool)
(declare-fun $generated@@109 () T@U)
(declare-fun $generated@@114 (T@U) Bool)
(declare-fun $generated@@118 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@119 () T@T)
(declare-fun $generated@@120 () T@T)
(declare-fun $generated@@121 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@122 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@123 () T@T)
(declare-fun $generated@@124 (T@T T@T) T@T)
(declare-fun $generated@@125 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@126 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@127 (T@T) T@T)
(declare-fun $generated@@128 (T@T) T@T)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@5 $generated@@6) 0) (= ($generated@@5 $generated@@7) 1)) (= ($generated@@5 $generated@@8) 2)) (forall (($generated@@15 Bool) ) (! (= ($generated@@10 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 T@U) ) (! (= ($generated@@9 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 Int) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Real) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4)
)
(assert (= ($generated@@5 $generated@@27) 3))
(assert  (=> (<= 1 $generated@@21) (forall (($generated@@33 T@U) ($generated@@34 Int) ($generated@@35 T@U) ($generated@@36 T@U) ) (!  (=> (or ($generated@@24 $generated@@34 $generated@@35 $generated@@36) (and (< 1 $generated@@21) (and (and (<= ($generated@@25 0) $generated@@34) ($generated@@26 $generated@@27 $generated@@35 ($generated@@28 $generated))) ($generated@@26 $generated@@27 $generated@@36 ($generated@@28 $generated))))) (and (=> (or (not (= $generated@@34 ($generated@@25 0))) (not true)) (and (and ($generated@@29 $generated@@35) ($generated@@29 $generated@@36)) (=> (<= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@35))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@36)))) (and (and ($generated@@29 $generated@@35) ($generated@@29 $generated@@36)) (=> (= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@35))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@36)))) (and (and ($generated@@29 $generated@@35) ($generated@@29 $generated@@36)) ($generated@@24 (- $generated@@34 1) ($generated@@32 $generated@@35) ($generated@@32 $generated@@36)))))))) (= ($generated@@22 ($generated@@23 $generated@@33) $generated@@34 $generated@@35 $generated@@36) (ite (= $generated@@34 ($generated@@25 0)) false  (or (not (<= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@35))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@36))))) (and (= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@35))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@36)))) ($generated@@22 $generated@@33 (- $generated@@34 1) ($generated@@32 $generated@@35) ($generated@@32 $generated@@36))))))))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@33) $generated@@34 $generated@@35 $generated@@36))
))))
(assert (= ($generated@@37 $generated) $generated@@0))
(assert (forall (($generated@@39 T@U) ) (!  (=> ($generated@@38 $generated@@39) ($generated@@29 $generated@@39))
 :pattern ( ($generated@@38 $generated@@39))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ) (!  (=> ($generated@@26 $generated@@27 $generated@@41 ($generated@@28 $generated@@40)) ($generated@@29 $generated@@41))
 :pattern ( ($generated@@29 $generated@@41) ($generated@@26 $generated@@27 $generated@@41 ($generated@@28 $generated@@40)))
)))
(assert  (=> (<= 2 $generated@@21) (forall (($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ($generated@@46 Int) ) (!  (=> (and (and ($generated@@26 $generated@@27 $generated@@44 ($generated@@28 $generated)) ($generated@@26 $generated@@27 $generated@@45 ($generated@@28 $generated))) (= $generated@@46 0)) ($generated@@42 $generated@@43 $generated@@46 $generated@@44 $generated@@45))
 :pattern ( ($generated@@42 $generated@@43 $generated@@46 $generated@@44 $generated@@45))
))))
(assert (forall (($generated@@47 Int) ) (! (= ($generated@@25 $generated@@47) $generated@@47)
 :pattern ( ($generated@@25 $generated@@47))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@T) ) (! (= ($generated@@48 $generated@@50 $generated@@49) $generated@@49)
 :pattern ( ($generated@@48 $generated@@50 $generated@@49))
)))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@26 $generated@@27 ($generated@@51 $generated@@54 $generated@@55) ($generated@@28 $generated@@53))  (and ($generated@@52 $generated@@54 $generated@@53) ($generated@@26 $generated@@27 $generated@@55 ($generated@@28 $generated@@53))))
 :pattern ( ($generated@@26 $generated@@27 ($generated@@51 $generated@@54 $generated@@55) ($generated@@28 $generated@@53)))
)))
(assert (forall (($generated@@57 T@U) ) (! (= ($generated@@29 $generated@@57) (= ($generated@@56 $generated@@57) $generated@@3))
 :pattern ( ($generated@@29 $generated@@57))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@T) ) (! (= ($generated@@58 $generated@@60 ($generated@@30 $generated@@60 $generated@@59)) $generated@@59)
 :pattern ( ($generated@@30 $generated@@60 $generated@@59))
)))
(assert (forall (($generated@@61 T@U) ) (!  (=> ($generated@@29 $generated@@61) (exists (($generated@@62 T@U) ($generated@@63 T@U) ) (= $generated@@61 ($generated@@51 $generated@@62 $generated@@63))))
 :pattern ( ($generated@@29 $generated@@61))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@T) ) (! (= ($generated@@64 ($generated@@58 $generated@@69 $generated@@66) $generated@@67 $generated@@68) ($generated@@65 $generated@@69 $generated@@66 $generated@@67 $generated@@68))
 :pattern ( ($generated@@64 ($generated@@58 $generated@@69 $generated@@66) $generated@@67 $generated@@68))
)))
(assert (forall (($generated@@71 T@U) ) (!  (and (= ($generated@@37 ($generated@@28 $generated@@71)) $generated@@2) (= ($generated@@70 ($generated@@28 $generated@@71)) $generated@@4))
 :pattern ( ($generated@@28 $generated@@71))
)))
(assert  (=> (<= 1 $generated@@21) (forall (($generated@@72 T@U) ($generated@@73 Int) ($generated@@74 T@U) ($generated@@75 T@U) ) (!  (=> (or ($generated@@24 ($generated@@25 $generated@@73) ($generated@@48 $generated@@27 $generated@@74) ($generated@@48 $generated@@27 $generated@@75)) (and (< 1 $generated@@21) (and (and (<= ($generated@@25 0) $generated@@73) ($generated@@26 $generated@@27 $generated@@74 ($generated@@28 $generated))) ($generated@@26 $generated@@27 $generated@@75 ($generated@@28 $generated))))) (and (=> (or (not (= ($generated@@25 $generated@@73) ($generated@@25 0))) (not true)) (and (and ($generated@@29 ($generated@@48 $generated@@27 $generated@@74)) ($generated@@29 ($generated@@48 $generated@@27 $generated@@75))) (=> (<= ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@74))))) ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@75)))))) (and (and ($generated@@29 ($generated@@48 $generated@@27 $generated@@74)) ($generated@@29 ($generated@@48 $generated@@27 $generated@@75))) (=> (= ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@74))))) ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@75)))))) (and (and ($generated@@29 ($generated@@48 $generated@@27 $generated@@74)) ($generated@@29 ($generated@@48 $generated@@27 $generated@@75))) ($generated@@24 ($generated@@25 (- $generated@@73 1)) ($generated@@48 $generated@@27 ($generated@@32 ($generated@@48 $generated@@27 $generated@@74))) ($generated@@48 $generated@@27 ($generated@@32 ($generated@@48 $generated@@27 $generated@@75)))))))))) (= ($generated@@22 ($generated@@23 $generated@@72) ($generated@@25 $generated@@73) ($generated@@48 $generated@@27 $generated@@74) ($generated@@48 $generated@@27 $generated@@75)) (ite (= ($generated@@25 $generated@@73) ($generated@@25 0)) false  (or (not (<= ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@74))))) ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@75))))))) (and (= ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@74))))) ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@75)))))) ($generated@@22 ($generated@@23 $generated@@72) ($generated@@25 (- $generated@@73 1)) ($generated@@48 $generated@@27 ($generated@@32 ($generated@@48 $generated@@27 $generated@@74))) ($generated@@48 $generated@@27 ($generated@@32 ($generated@@48 $generated@@27 $generated@@75))))))))))
 :weight 3
 :pattern ( ($generated@@22 ($generated@@23 $generated@@72) ($generated@@25 $generated@@73) ($generated@@48 $generated@@27 $generated@@74) ($generated@@48 $generated@@27 $generated@@75)))
))))
(assert  (=> (<= 1 $generated@@21) (forall (($generated@@76 T@U) ($generated@@77 Int) ($generated@@78 T@U) ($generated@@79 T@U) ) (!  (=> (or ($generated@@24 ($generated@@25 $generated@@77) $generated@@78 $generated@@79) (and (< 1 $generated@@21) (and (and (<= ($generated@@25 0) $generated@@77) ($generated@@26 $generated@@27 $generated@@78 ($generated@@28 $generated))) ($generated@@26 $generated@@27 $generated@@79 ($generated@@28 $generated))))) (and (=> (or (not (= ($generated@@25 $generated@@77) ($generated@@25 0))) (not true)) (and (and ($generated@@29 $generated@@78) ($generated@@29 $generated@@79)) (=> (<= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@78))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@79)))) (and (and ($generated@@29 $generated@@78) ($generated@@29 $generated@@79)) (=> (= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@78))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@79)))) (and (and ($generated@@29 $generated@@78) ($generated@@29 $generated@@79)) ($generated@@24 ($generated@@25 (- $generated@@77 1)) ($generated@@32 $generated@@78) ($generated@@32 $generated@@79)))))))) (= ($generated@@22 ($generated@@23 $generated@@76) ($generated@@25 $generated@@77) $generated@@78 $generated@@79) (ite (= ($generated@@25 $generated@@77) ($generated@@25 0)) false  (or (not (<= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@78))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@79))))) (and (= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@78))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@79)))) ($generated@@22 ($generated@@23 $generated@@76) ($generated@@25 (- $generated@@77 1)) ($generated@@32 $generated@@78) ($generated@@32 $generated@@79))))))))
 :weight 3
 :pattern ( ($generated@@22 ($generated@@23 $generated@@76) ($generated@@25 $generated@@77) $generated@@78 $generated@@79))
))))
(assert (forall (($generated@@80 T@U) ) (!  (=> ($generated@@52 $generated@@80 $generated) (and (= ($generated@@58 $generated@@7 ($generated@@30 $generated@@7 $generated@@80)) $generated@@80) ($generated@@26 $generated@@7 ($generated@@30 $generated@@7 $generated@@80) $generated)))
 :pattern ( ($generated@@52 $generated@@80 $generated))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@T) ) (! (= ($generated@@52 ($generated@@58 $generated@@83 $generated@@81) $generated@@82) ($generated@@26 $generated@@83 $generated@@81 $generated@@82))
 :pattern ( ($generated@@52 ($generated@@58 $generated@@83 $generated@@81) $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 Int) ($generated@@86 T@U) ($generated@@87 T@U) ) (! (= ($generated@@42 ($generated@@23 $generated@@84) $generated@@85 $generated@@86 $generated@@87) ($generated@@42 $generated@@84 $generated@@85 $generated@@86 $generated@@87))
 :pattern ( ($generated@@42 ($generated@@23 $generated@@84) $generated@@85 $generated@@86 $generated@@87))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 Int) ($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@22 ($generated@@23 $generated@@88) $generated@@89 $generated@@90 $generated@@91) ($generated@@22 $generated@@88 $generated@@89 $generated@@90 $generated@@91))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@88) $generated@@89 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ) (! (= ($generated@@56 ($generated@@51 $generated@@92 $generated@@93)) $generated@@3)
 :pattern ( ($generated@@51 $generated@@92 $generated@@93))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@31 ($generated@@51 $generated@@94 $generated@@95)) $generated@@94)
 :pattern ( ($generated@@51 $generated@@94 $generated@@95))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ) (! (= ($generated@@32 ($generated@@51 $generated@@96 $generated@@97)) $generated@@97)
 :pattern ( ($generated@@51 $generated@@96 $generated@@97))
)))
(assert  (=> (<= 2 $generated@@21) (forall (($generated@@99 T@U) ($generated@@100 Int) ($generated@@101 T@U) ($generated@@102 T@U) ) (!  (=> (or ($generated@@98 $generated@@100 $generated@@101 $generated@@102) (and (< 2 $generated@@21) (and (and (<= ($generated@@25 0) $generated@@100) ($generated@@26 $generated@@27 $generated@@101 ($generated@@28 $generated))) ($generated@@26 $generated@@27 $generated@@102 ($generated@@28 $generated))))) (and (=> (< 0 $generated@@100) (and (and ($generated@@29 $generated@@101) ($generated@@29 $generated@@102)) (=> (<= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@101))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@102)))) (and (and ($generated@@29 $generated@@101) ($generated@@29 $generated@@102)) (=> (= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@101))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@102)))) (and (and ($generated@@29 $generated@@101) ($generated@@29 $generated@@102)) ($generated@@98 (- $generated@@100 1) ($generated@@32 $generated@@101) ($generated@@32 $generated@@102)))))))) (= ($generated@@42 ($generated@@23 $generated@@99) $generated@@100 $generated@@101 $generated@@102)  (=> (< 0 $generated@@100) (and (<= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@101))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@102)))) (=> (= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@101))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@102)))) ($generated@@42 $generated@@99 (- $generated@@100 1) ($generated@@32 $generated@@101) ($generated@@32 $generated@@102))))))))
 :pattern ( ($generated@@42 ($generated@@23 $generated@@99) $generated@@100 $generated@@101 $generated@@102))
))))
(assert (forall (($generated@@104 T@U) ) (! (= ($generated@@103 ($generated@@28 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@28 $generated@@104))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@T) ) (! (= ($generated@@30 $generated@@106 ($generated@@58 $generated@@106 $generated@@105)) $generated@@105)
 :pattern ( ($generated@@58 $generated@@106 $generated@@105))
)))
(assert  (=> (<= 2 $generated@@21) (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (!  (=> (or ($generated@@108 ($generated@@48 $generated@@27 $generated@@110) ($generated@@48 $generated@@27 $generated@@111)) (and (< 2 $generated@@21) (and ($generated@@26 $generated@@27 $generated@@110 ($generated@@28 $generated)) ($generated@@26 $generated@@27 $generated@@111 ($generated@@28 $generated))))) (and (forall (($generated@@112 Int) ) (!  (=> (<= ($generated@@25 0) $generated@@112) ($generated@@24 $generated@@112 ($generated@@48 $generated@@27 $generated@@110) ($generated@@48 $generated@@27 $generated@@111)))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@109) $generated@@112 $generated@@110 $generated@@111))
)) (= ($generated@@107 ($generated@@48 $generated@@27 $generated@@110) ($generated@@48 $generated@@27 $generated@@111)) (exists (($generated@@113 Int) ) (!  (and (<= ($generated@@25 0) $generated@@113) ($generated@@22 ($generated@@23 $generated@@109) $generated@@113 ($generated@@48 $generated@@27 $generated@@110) ($generated@@48 $generated@@27 $generated@@111)))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@109) $generated@@113 $generated@@110 $generated@@111))
)))))
 :weight 3
 :pattern ( ($generated@@107 ($generated@@48 $generated@@27 $generated@@110) ($generated@@48 $generated@@27 $generated@@111)))
))))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (!  (=> (and ($generated@@114 $generated@@117) (and ($generated@@29 $generated@@115) ($generated@@65 $generated@@27 $generated@@115 ($generated@@28 $generated@@116) $generated@@117))) ($generated@@64 ($generated@@31 $generated@@115) $generated@@116 $generated@@117))
 :pattern ( ($generated@@64 ($generated@@31 $generated@@115) $generated@@116 $generated@@117))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@129 T@T) ($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@118 $generated@@129 $generated@@130 $generated@@131 ($generated@@125 $generated@@129 $generated@@130 $generated@@131 $generated@@133 $generated@@134 $generated@@135 $generated@@132) $generated@@134 $generated@@135) $generated@@132)
 :weight 0
)) (and (forall (($generated@@136 T@T) ($generated@@137 T@T) ($generated@@138 T@T) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ) (!  (or (= $generated@@141 $generated@@143) (= ($generated@@118 $generated@@136 $generated@@137 $generated@@138 ($generated@@125 $generated@@136 $generated@@137 $generated@@138 $generated@@140 $generated@@141 $generated@@142 $generated@@139) $generated@@143 $generated@@144) ($generated@@118 $generated@@136 $generated@@137 $generated@@138 $generated@@140 $generated@@143 $generated@@144)))
 :weight 0
)) (forall (($generated@@145 T@T) ($generated@@146 T@T) ($generated@@147 T@T) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ) (!  (or (= $generated@@151 $generated@@153) (= ($generated@@118 $generated@@145 $generated@@146 $generated@@147 ($generated@@125 $generated@@145 $generated@@146 $generated@@147 $generated@@149 $generated@@150 $generated@@151 $generated@@148) $generated@@152 $generated@@153) ($generated@@118 $generated@@145 $generated@@146 $generated@@147 $generated@@149 $generated@@152 $generated@@153)))
 :weight 0
)))) (= ($generated@@5 $generated@@119) 4)) (= ($generated@@5 $generated@@120) 5)) (forall (($generated@@154 T@T) ($generated@@155 T@T) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (! (= ($generated@@122 $generated@@154 $generated@@155 ($generated@@126 $generated@@154 $generated@@155 $generated@@157 $generated@@158 $generated@@156) $generated@@158) $generated@@156)
 :weight 0
))) (forall (($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ) (!  (or (= $generated@@163 $generated@@164) (= ($generated@@122 $generated@@159 $generated@@160 ($generated@@126 $generated@@159 $generated@@160 $generated@@162 $generated@@163 $generated@@161) $generated@@164) ($generated@@122 $generated@@159 $generated@@160 $generated@@162 $generated@@164)))
 :weight 0
))) (= ($generated@@5 $generated@@123) 6)) (forall (($generated@@165 T@T) ($generated@@166 T@T) ) (= ($generated@@5 ($generated@@124 $generated@@165 $generated@@166)) 7))) (forall (($generated@@167 T@T) ($generated@@168 T@T) ) (! (= ($generated@@127 ($generated@@124 $generated@@167 $generated@@168)) $generated@@167)
 :pattern ( ($generated@@124 $generated@@167 $generated@@168))
))) (forall (($generated@@169 T@T) ($generated@@170 T@T) ) (! (= ($generated@@128 ($generated@@124 $generated@@169 $generated@@170)) $generated@@170)
 :pattern ( ($generated@@124 $generated@@169 $generated@@170))
))))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 Bool) ($generated@@175 T@U) ($generated@@176 T@U) ) (! (= ($generated@@10 ($generated@@118 $generated@@119 $generated@@120 $generated@@6 ($generated@@121 $generated@@171 $generated@@172 $generated@@173 $generated@@174) $generated@@175 $generated@@176))  (=> (and (or (not (= $generated@@175 $generated@@171)) (not true)) ($generated@@10 ($generated@@30 $generated@@6 ($generated@@122 $generated@@120 $generated@@123 ($generated@@122 $generated@@119 ($generated@@124 $generated@@120 $generated@@123) $generated@@172 $generated@@175) $generated@@173)))) $generated@@174))
 :pattern ( ($generated@@118 $generated@@119 $generated@@120 $generated@@6 ($generated@@121 $generated@@171 $generated@@172 $generated@@173 $generated@@174) $generated@@175 $generated@@176))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ) (!  (=> ($generated@@52 $generated@@178 ($generated@@28 $generated@@177)) (and (= ($generated@@58 $generated@@27 ($generated@@30 $generated@@27 $generated@@178)) $generated@@178) ($generated@@26 $generated@@27 ($generated@@30 $generated@@27 $generated@@178) ($generated@@28 $generated@@177))))
 :pattern ( ($generated@@52 $generated@@178 ($generated@@28 $generated@@177)))
)))
(assert (forall (($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (=> (and ($generated@@114 $generated@@181) (and ($generated@@29 $generated@@179) ($generated@@65 $generated@@27 $generated@@179 ($generated@@28 $generated@@180) $generated@@181))) ($generated@@65 $generated@@27 ($generated@@32 $generated@@179) ($generated@@28 $generated@@180) $generated@@181))
 :pattern ( ($generated@@65 $generated@@27 ($generated@@32 $generated@@179) ($generated@@28 $generated@@180) $generated@@181))
)))
(assert  (=> (<= 2 $generated@@21) (forall (($generated@@182 T@U) ($generated@@183 T@U) ) (!  (=> (or ($generated@@108 $generated@@182 $generated@@183) (and (< 2 $generated@@21) (and ($generated@@26 $generated@@27 $generated@@182 ($generated@@28 $generated)) ($generated@@26 $generated@@27 $generated@@183 ($generated@@28 $generated))))) (and (forall (($generated@@184 Int) ) (!  (=> (<= ($generated@@25 0) $generated@@184) ($generated@@24 $generated@@184 $generated@@182 $generated@@183))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@109) $generated@@184 $generated@@182 $generated@@183))
)) (= ($generated@@107 $generated@@182 $generated@@183) (exists (($generated@@185 Int) ) (!  (and (<= ($generated@@25 0) $generated@@185) ($generated@@22 ($generated@@23 $generated@@109) $generated@@185 $generated@@182 $generated@@183))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@109) $generated@@185 $generated@@182 $generated@@183))
)))))
 :pattern ( ($generated@@107 $generated@@182 $generated@@183))
))))
(assert  (=> (<= 2 $generated@@21) (forall (($generated@@186 T@U) ($generated@@187 Int) ($generated@@188 T@U) ($generated@@189 T@U) ) (!  (=> (or ($generated@@98 ($generated@@25 $generated@@187) ($generated@@48 $generated@@27 $generated@@188) ($generated@@48 $generated@@27 $generated@@189)) (and (< 2 $generated@@21) (and (and (<= ($generated@@25 0) $generated@@187) ($generated@@26 $generated@@27 $generated@@188 ($generated@@28 $generated))) ($generated@@26 $generated@@27 $generated@@189 ($generated@@28 $generated))))) (and (=> (< 0 $generated@@187) (and (and ($generated@@29 ($generated@@48 $generated@@27 $generated@@188)) ($generated@@29 ($generated@@48 $generated@@27 $generated@@189))) (=> (<= ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@188))))) ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@189)))))) (and (and ($generated@@29 ($generated@@48 $generated@@27 $generated@@188)) ($generated@@29 ($generated@@48 $generated@@27 $generated@@189))) (=> (= ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@188))))) ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@189)))))) (and (and ($generated@@29 ($generated@@48 $generated@@27 $generated@@188)) ($generated@@29 ($generated@@48 $generated@@27 $generated@@189))) ($generated@@98 (- $generated@@187 1) ($generated@@48 $generated@@27 ($generated@@32 ($generated@@48 $generated@@27 $generated@@188))) ($generated@@48 $generated@@27 ($generated@@32 ($generated@@48 $generated@@27 $generated@@189)))))))))) (= ($generated@@42 ($generated@@23 $generated@@186) ($generated@@25 $generated@@187) ($generated@@48 $generated@@27 $generated@@188) ($generated@@48 $generated@@27 $generated@@189))  (=> (< 0 $generated@@187) (and (<= ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@188))))) ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@189)))))) (=> (= ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@188))))) ($generated@@25 ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 ($generated@@48 $generated@@27 $generated@@189)))))) ($generated@@42 ($generated@@23 $generated@@186) (- $generated@@187 1) ($generated@@48 $generated@@27 ($generated@@32 ($generated@@48 $generated@@27 $generated@@188))) ($generated@@48 $generated@@27 ($generated@@32 ($generated@@48 $generated@@27 $generated@@189))))))))))
 :weight 3
 :pattern ( ($generated@@42 ($generated@@23 $generated@@186) ($generated@@25 $generated@@187) ($generated@@48 $generated@@27 $generated@@188) ($generated@@48 $generated@@27 $generated@@189)))
))))
(assert (forall (($generated@@190 Int) ) (! (= ($generated@@58 $generated@@7 ($generated@@11 ($generated@@25 $generated@@190))) ($generated@@48 $generated@@123 ($generated@@58 $generated@@7 ($generated@@11 $generated@@190))))
 :pattern ( ($generated@@58 $generated@@7 ($generated@@11 ($generated@@25 $generated@@190))))
)))
(assert (forall (($generated@@191 T@U) ($generated@@192 T@T) ) (! (= ($generated@@58 $generated@@192 ($generated@@48 $generated@@192 $generated@@191)) ($generated@@48 $generated@@123 ($generated@@58 $generated@@192 $generated@@191)))
 :pattern ( ($generated@@58 $generated@@192 ($generated@@48 $generated@@192 $generated@@191)))
)))
(assert  (=> (<= 2 $generated@@21) (forall (($generated@@193 T@U) ($generated@@194 Int) ($generated@@195 T@U) ($generated@@196 T@U) ) (!  (=> (or ($generated@@98 ($generated@@25 $generated@@194) $generated@@195 $generated@@196) (and (< 2 $generated@@21) (and (and (<= ($generated@@25 0) $generated@@194) ($generated@@26 $generated@@27 $generated@@195 ($generated@@28 $generated))) ($generated@@26 $generated@@27 $generated@@196 ($generated@@28 $generated))))) (and (=> (< 0 $generated@@194) (and (and ($generated@@29 $generated@@195) ($generated@@29 $generated@@196)) (=> (<= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@195))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@196)))) (and (and ($generated@@29 $generated@@195) ($generated@@29 $generated@@196)) (=> (= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@195))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@196)))) (and (and ($generated@@29 $generated@@195) ($generated@@29 $generated@@196)) ($generated@@98 (- $generated@@194 1) ($generated@@32 $generated@@195) ($generated@@32 $generated@@196)))))))) (= ($generated@@42 ($generated@@23 $generated@@193) ($generated@@25 $generated@@194) $generated@@195 $generated@@196)  (=> (< 0 $generated@@194) (and (<= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@195))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@196)))) (=> (= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@195))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@196)))) ($generated@@42 ($generated@@23 $generated@@193) (- $generated@@194 1) ($generated@@32 $generated@@195) ($generated@@32 $generated@@196))))))))
 :weight 3
 :pattern ( ($generated@@42 ($generated@@23 $generated@@193) ($generated@@25 $generated@@194) $generated@@195 $generated@@196))
))))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ) (! ($generated@@65 $generated@@7 $generated@@198 $generated $generated@@197)
 :pattern ( ($generated@@65 $generated@@7 $generated@@198 $generated $generated@@197))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ) (!  (=> ($generated@@114 $generated@@202) (= ($generated@@65 $generated@@27 ($generated@@51 $generated@@200 $generated@@201) ($generated@@28 $generated@@199) $generated@@202)  (and ($generated@@64 $generated@@200 $generated@@199 $generated@@202) ($generated@@65 $generated@@27 $generated@@201 ($generated@@28 $generated@@199) $generated@@202))))
 :pattern ( ($generated@@65 $generated@@27 ($generated@@51 $generated@@200 $generated@@201) ($generated@@28 $generated@@199) $generated@@202))
)))
(assert (forall (($generated@@203 T@U) ) (! ($generated@@26 $generated@@7 $generated@@203 $generated)
 :pattern ( ($generated@@26 $generated@@7 $generated@@203 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@204 () Int)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 () T@U)
(declare-fun $generated@@208 (T@U) Bool)
(declare-fun $generated@@209 () T@U)
(declare-fun $generated@@210 () T@U)
(declare-fun $generated@@211 () T@U)
(declare-fun $generated@@212 () T@U)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@213  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> ($generated@@98 $generated@@204 $generated@@205 $generated@@206) (or ($generated@@42 ($generated@@23 $generated@@109) $generated@@204 $generated@@205 $generated@@206) (=> (< 0 $generated@@204) (<= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@205))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@206)))))))) (=> (=> ($generated@@98 $generated@@204 $generated@@205 $generated@@206) (or ($generated@@42 ($generated@@23 $generated@@109) $generated@@204 $generated@@205 $generated@@206) (=> (< 0 $generated@@204) (<= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@205))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@206))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> ($generated@@98 $generated@@204 $generated@@205 $generated@@206) (or ($generated@@42 ($generated@@23 $generated@@109) $generated@@204 $generated@@205 $generated@@206) (=> (< 0 $generated@@204) (=> (= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@205))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@206)))) ($generated@@42 ($generated@@23 ($generated@@23 $generated@@109)) (- $generated@@204 1) ($generated@@32 $generated@@205) ($generated@@32 $generated@@206)))))))))))
(let (($generated@@214  (=> (and (<= $generated@@204 0) (= (ControlFlow 0 6) 2)) $generated@@213)))
(let (($generated@@215  (=> (< 0 $generated@@204) (and (=> (= (ControlFlow 0 4) (- 0 5)) (not ($generated@@22 ($generated@@23 ($generated@@23 $generated@@109)) $generated@@204 $generated@@205 $generated@@206))) (=> (not ($generated@@22 ($generated@@23 ($generated@@23 $generated@@109)) $generated@@204 $generated@@205 $generated@@206)) (=> (and (and (and ($generated@@114 $generated@@207) ($generated@@208 $generated@@207)) ($generated@@98 $generated@@204 $generated@@205 $generated@@206)) (and (and ($generated@@98 $generated@@204 $generated@@205 $generated@@206) (and ($generated@@42 ($generated@@23 $generated@@109) $generated@@204 $generated@@205 $generated@@206) (=> (< 0 $generated@@204) (and (<= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@205))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@206)))) (=> (= ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@205))) ($generated@@12 ($generated@@30 $generated@@7 ($generated@@31 $generated@@206)))) ($generated@@42 ($generated@@23 $generated@@109) (- $generated@@204 1) ($generated@@32 $generated@@205) ($generated@@32 $generated@@206))))))) (and (= $generated@@209 $generated@@207) (= (ControlFlow 0 4) 2)))) $generated@@213))))))
(let (($generated@@216  (=> (= $generated@@210 ($generated@@121 $generated@@211 $generated@@212 $generated@@1 false)) (=> (and ($generated@@38 $generated@@205) ($generated@@38 $generated@@206)) (=> (and (and ($generated@@114 $generated@@209) ($generated@@208 $generated@@209)) (and (= $generated@@212 $generated@@209) (forall (($generated@@217 Int) ($generated@@218 T@U) ($generated@@219 T@U) ) (!  (=> (and (and (and (and (<= ($generated@@25 0) $generated@@217) ($generated@@26 $generated@@27 $generated@@218 ($generated@@28 $generated))) ($generated@@26 $generated@@27 $generated@@219 ($generated@@28 $generated))) (not ($generated@@107 $generated@@218 $generated@@219))) (and (<= 0 $generated@@217) (< $generated@@217 $generated@@204))) ($generated@@42 ($generated@@23 $generated@@109) $generated@@217 $generated@@218 $generated@@219))
 :pattern ( ($generated@@42 ($generated@@23 $generated@@109) $generated@@217 $generated@@218 $generated@@219))
)))) (and (=> (= (ControlFlow 0 7) 4) $generated@@215) (=> (= (ControlFlow 0 7) 6) $generated@@214)))))))
(let (($generated@@220  (=> (and (and (and ($generated@@114 $generated@@212) ($generated@@208 $generated@@212)) (<= ($generated@@25 0) $generated@@204)) (and (and ($generated@@26 $generated@@27 $generated@@205 ($generated@@28 $generated)) ($generated@@65 $generated@@27 $generated@@205 ($generated@@28 $generated) $generated@@212)) ($generated@@38 $generated@@205))) (=> (and (and (and (and ($generated@@26 $generated@@27 $generated@@206 ($generated@@28 $generated)) ($generated@@65 $generated@@27 $generated@@206 ($generated@@28 $generated) $generated@@212)) ($generated@@38 $generated@@206)) (= 5 $generated@@21)) (and (not ($generated@@107 $generated@@205 $generated@@206)) (= (ControlFlow 0 8) 7))) $generated@@216))))
$generated@@220))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)