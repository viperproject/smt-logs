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
(declare-fun $generated@@4 (T@T) Int)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 () T@T)
(declare-fun $generated@@7 () T@T)
(declare-fun $generated@@8 (Bool) T@U)
(declare-fun $generated@@9 (T@U) Bool)
(declare-fun $generated@@10 (Int) T@U)
(declare-fun $generated@@11 (T@U) Int)
(declare-fun $generated@@12 (Real) T@U)
(declare-fun $generated@@13 (T@U) Real)
(declare-fun $generated@@20 () Int)
(declare-fun $generated@@21 (T@U T@U Int) Bool)
(declare-fun $generated@@22 (T@U T@U) Bool)
(declare-fun $generated@@23 (T@U T@U) Bool)
(declare-fun $generated@@29 (T@U T@U Int) Bool)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@39 (T@U T@U) T@U)
(declare-fun $generated@@40 (Int) T@U)
(declare-fun $generated@@41 (T@U) Int)
(declare-fun $generated@@51 (Int) Int)
(declare-fun $generated@@53 (T@T T@U) T@U)
(declare-fun $generated@@56 (T@T T@U) T@U)
(declare-fun $generated@@57 (T@T T@U) T@U)
(declare-fun $generated@@60 (T@U) T@U)
(declare-fun $generated@@61 (T@U Int) Bool)
(declare-fun $generated@@62 (Int) Bool)
(declare-fun $generated@@63 (Int) Bool)
(declare-fun $generated@@64 (T@U Int) Bool)
(declare-fun $generated@@65 () T@U)
(declare-fun $generated@@71 (Int) Bool)
(declare-fun $generated@@72 (Int) Bool)
(declare-fun $generated@@84 (T@U) Bool)
(declare-fun $generated@@88 () T@T)
(declare-fun $generated@@108 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@109 () T@T)
(declare-fun $generated@@110 () T@T)
(declare-fun $generated@@111 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@112 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@113 (T@T T@T) T@T)
(declare-fun $generated@@114 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@115 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@116 (T@T) T@T)
(declare-fun $generated@@117 (T@T) T@T)
(declare-fun $generated@@182 (T@T T@U T@U T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@4 $generated@@5) 0) (= ($generated@@4 $generated@@6) 1)) (= ($generated@@4 $generated@@7) 2)) (forall (($generated@@14 Bool) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Int) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 Real) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3)
)
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@24 T@U) ($generated@@25 Int) ($generated@@26 T@U) ($generated@@27 T@U) ($generated@@28 T@U) ) (!  (=> ($generated@@23 $generated@@26 $generated@@27) (=> ($generated@@21 $generated@@24 $generated@@26 $generated@@25) ($generated@@21 $generated@@24 $generated@@27 $generated@@25)))
 :pattern ( ($generated@@21 $generated@@24 $generated@@26 $generated@@25) ($generated@@22 $generated@@26 $generated@@28) ($generated@@22 $generated@@27 $generated@@28))
))))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@30 T@U) ($generated@@31 Int) ($generated@@32 T@U) ($generated@@33 T@U) ($generated@@34 T@U) ) (!  (=> ($generated@@23 $generated@@32 $generated@@33) (=> ($generated@@29 $generated@@30 $generated@@32 $generated@@31) ($generated@@29 $generated@@30 $generated@@33 $generated@@31)))
 :pattern ( ($generated@@29 $generated@@30 $generated@@32 $generated@@31) ($generated@@22 $generated@@32 $generated@@34) ($generated@@22 $generated@@33 $generated@@34))
))))
(assert (= ($generated@@35 $generated) $generated@@1))
(assert (= ($generated@@35 $generated@@0) $generated@@2))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (!  (=> (and ($generated@@23 $generated@@36 $generated@@37) ($generated@@23 $generated@@37 $generated@@38)) ($generated@@23 $generated@@36 $generated@@38))
 :pattern ( ($generated@@23 $generated@@36 $generated@@37) ($generated@@23 $generated@@37 $generated@@38))
 :pattern ( ($generated@@23 $generated@@36 $generated@@37) ($generated@@23 $generated@@36 $generated@@38))
)))
(assert (forall (($generated@@42 T@U) ($generated@@43 Int) ($generated@@44 Int) ) (!  (=> (and (and (<= 0 $generated@@43) (<= 0 $generated@@44)) (<= (+ $generated@@43 $generated@@44) ($generated@@41 $generated@@42))) (= ($generated@@39 ($generated@@39 $generated@@42 ($generated@@40 $generated@@43)) ($generated@@40 $generated@@44)) ($generated@@39 $generated@@42 ($generated@@40 (+ $generated@@43 $generated@@44)))))
 :pattern ( ($generated@@39 ($generated@@39 $generated@@42 ($generated@@40 $generated@@43)) ($generated@@40 $generated@@44)))
)))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@45 T@U) ($generated@@46 Int) ($generated@@47 T@U) ) (!  (=> (= $generated@@47 ($generated@@40 0)) (not ($generated@@21 $generated@@45 $generated@@47 $generated@@46)))
 :pattern ( ($generated@@21 $generated@@45 $generated@@47 $generated@@46))
))))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@48 T@U) ($generated@@49 Int) ($generated@@50 T@U) ) (!  (=> (= $generated@@50 ($generated@@40 0)) (not ($generated@@29 $generated@@48 $generated@@50 $generated@@49)))
 :pattern ( ($generated@@29 $generated@@48 $generated@@50 $generated@@49))
))))
(assert (forall (($generated@@52 Int) ) (! (= ($generated@@51 $generated@@52) $generated@@52)
 :pattern ( ($generated@@51 $generated@@52))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@T) ) (! (= ($generated@@53 $generated@@55 $generated@@54) $generated@@54)
 :pattern ( ($generated@@53 $generated@@55 $generated@@54))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@T) ) (! (= ($generated@@57 $generated@@59 ($generated@@56 $generated@@59 $generated@@58)) $generated@@58)
 :pattern ( ($generated@@56 $generated@@59 $generated@@58))
)))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 Int) ) (!  (=> (or ($generated@@61 $generated@@67 $generated@@68) (< 2 $generated@@20)) (and (and (=> (< 0 ($generated@@41 $generated@@67)) (and ($generated@@62 $generated@@68) (=> (not ($generated@@63 $generated@@68)) ($generated@@64 ($generated@@39 $generated@@67 ($generated@@40 1)) (+ $generated@@68 1))))) (=> (=> (< 0 ($generated@@41 $generated@@67)) (or ($generated@@63 $generated@@68) ($generated@@29 ($generated@@60 $generated@@65) ($generated@@39 $generated@@67 ($generated@@40 1)) (+ $generated@@68 1)))) (=> (= ($generated@@51 0) ($generated@@41 $generated@@67)) (forall (($generated@@69 T@U) ) (!  (=> ($generated@@22 $generated@@69 $generated@@67) ($generated@@61 $generated@@69 $generated@@68))
 :pattern ( ($generated@@21 $generated@@66 $generated@@69 $generated@@68))
))))) (= ($generated@@21 ($generated@@60 $generated@@66) $generated@@67 $generated@@68)  (and (=> (< 0 ($generated@@41 $generated@@67)) (or ($generated@@63 $generated@@68) ($generated@@29 ($generated@@60 $generated@@65) ($generated@@39 $generated@@67 ($generated@@40 1)) (+ $generated@@68 1)))) (=> (= ($generated@@51 0) ($generated@@41 $generated@@67)) (exists (($generated@@70 T@U) ) (!  (and ($generated@@22 $generated@@70 $generated@@67) ($generated@@21 $generated@@66 $generated@@70 $generated@@68))
 :pattern ( ($generated@@21 $generated@@66 $generated@@70 $generated@@68))
)))))))
 :pattern ( ($generated@@21 ($generated@@60 $generated@@66) $generated@@67 $generated@@68))
))))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 Int) ) (!  (=> (or ($generated@@64 $generated@@74 $generated@@75) (< 2 $generated@@20)) (and (and (=> (< 0 ($generated@@41 $generated@@74)) (and ($generated@@71 $generated@@75) (=> (not ($generated@@72 $generated@@75)) ($generated@@61 ($generated@@39 $generated@@74 ($generated@@40 1)) (+ $generated@@75 1))))) (=> (=> (< 0 ($generated@@41 $generated@@74)) (or ($generated@@72 $generated@@75) ($generated@@21 ($generated@@60 $generated@@65) ($generated@@39 $generated@@74 ($generated@@40 1)) (+ $generated@@75 1)))) (=> (= ($generated@@51 0) ($generated@@41 $generated@@74)) (forall (($generated@@76 T@U) ) (!  (=> ($generated@@22 $generated@@76 $generated@@74) ($generated@@64 $generated@@76 $generated@@75))
 :pattern ( ($generated@@29 $generated@@73 $generated@@76 $generated@@75))
))))) (= ($generated@@29 ($generated@@60 $generated@@73) $generated@@74 $generated@@75)  (and (=> (< 0 ($generated@@41 $generated@@74)) (or ($generated@@72 $generated@@75) ($generated@@21 ($generated@@60 $generated@@65) ($generated@@39 $generated@@74 ($generated@@40 1)) (+ $generated@@75 1)))) (=> (= ($generated@@51 0) ($generated@@41 $generated@@74)) (exists (($generated@@77 T@U) ) (!  (and ($generated@@22 $generated@@77 $generated@@74) ($generated@@29 $generated@@73 $generated@@77 $generated@@75))
 :pattern ( ($generated@@29 $generated@@73 $generated@@77 $generated@@75))
)))))))
 :pattern ( ($generated@@29 ($generated@@60 $generated@@73) $generated@@74 $generated@@75))
))))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 Int) ) (! (= ($generated@@21 ($generated@@60 $generated@@78) $generated@@79 $generated@@80) ($generated@@21 $generated@@78 $generated@@79 $generated@@80))
 :pattern ( ($generated@@21 ($generated@@60 $generated@@78) $generated@@79 $generated@@80))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 Int) ) (! (= ($generated@@29 ($generated@@60 $generated@@81) $generated@@82 $generated@@83) ($generated@@29 $generated@@81 $generated@@82 $generated@@83))
 :pattern ( ($generated@@29 ($generated@@60 $generated@@81) $generated@@82 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (!  (=> (and ($generated@@84 $generated@@86) (<= ($generated@@41 $generated@@86) ($generated@@41 $generated@@85))) (and (= ($generated@@84 ($generated@@39 $generated@@85 $generated@@86)) ($generated@@84 $generated@@85)) (= ($generated@@41 ($generated@@39 $generated@@85 $generated@@86)) (- ($generated@@41 $generated@@85) ($generated@@41 $generated@@86)))))
 :pattern ( ($generated@@39 $generated@@85 $generated@@86))
)))
(assert (forall (($generated@@87 Int) ) (!  (=> (<= 0 $generated@@87) (and ($generated@@84 ($generated@@40 $generated@@87)) (= ($generated@@41 ($generated@@40 $generated@@87)) $generated@@87)))
 :pattern ( ($generated@@40 $generated@@87))
)))
(assert (= ($generated@@4 $generated@@88) 3))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 Int) ) (!  (=> (or ($generated@@61 ($generated@@53 $generated@@88 $generated@@90) ($generated@@51 $generated@@91)) (< 2 $generated@@20)) (and (and (=> (< 0 ($generated@@41 $generated@@90)) (and ($generated@@62 ($generated@@51 $generated@@91)) (=> (not ($generated@@63 ($generated@@51 $generated@@91))) ($generated@@64 ($generated@@39 $generated@@90 ($generated@@40 1)) ($generated@@51 (+ $generated@@91 1)))))) (=> (=> (< 0 ($generated@@41 $generated@@90)) (or ($generated@@63 ($generated@@51 $generated@@91)) ($generated@@29 ($generated@@60 $generated@@65) ($generated@@39 $generated@@90 ($generated@@40 1)) ($generated@@51 (+ $generated@@91 1))))) (=> (= ($generated@@51 0) ($generated@@41 $generated@@90)) (forall (($generated@@92 T@U) ) (!  (=> ($generated@@22 $generated@@92 $generated@@90) ($generated@@61 $generated@@92 $generated@@91))
 :pattern ( ($generated@@21 ($generated@@60 $generated@@89) $generated@@92 $generated@@91))
))))) (= ($generated@@21 ($generated@@60 $generated@@89) ($generated@@53 $generated@@88 $generated@@90) ($generated@@51 $generated@@91))  (and (=> (< 0 ($generated@@41 $generated@@90)) (or ($generated@@63 ($generated@@51 $generated@@91)) ($generated@@29 ($generated@@60 $generated@@65) ($generated@@39 $generated@@90 ($generated@@40 1)) ($generated@@51 (+ $generated@@91 1))))) (=> (= ($generated@@51 0) ($generated@@41 $generated@@90)) (exists (($generated@@93 T@U) ) (!  (and ($generated@@22 $generated@@93 $generated@@90) ($generated@@21 ($generated@@60 $generated@@89) $generated@@93 $generated@@91))
 :pattern ( ($generated@@21 ($generated@@60 $generated@@89) $generated@@93 $generated@@91))
)))))))
 :weight 3
 :pattern ( ($generated@@21 ($generated@@60 $generated@@89) ($generated@@53 $generated@@88 $generated@@90) ($generated@@51 $generated@@91)))
))))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 Int) ) (!  (=> (or ($generated@@64 ($generated@@53 $generated@@88 $generated@@95) ($generated@@51 $generated@@96)) (< 2 $generated@@20)) (and (and (=> (< 0 ($generated@@41 $generated@@95)) (and ($generated@@71 ($generated@@51 $generated@@96)) (=> (not ($generated@@72 ($generated@@51 $generated@@96))) ($generated@@61 ($generated@@39 $generated@@95 ($generated@@40 1)) ($generated@@51 (+ $generated@@96 1)))))) (=> (=> (< 0 ($generated@@41 $generated@@95)) (or ($generated@@72 ($generated@@51 $generated@@96)) ($generated@@21 ($generated@@60 $generated@@65) ($generated@@39 $generated@@95 ($generated@@40 1)) ($generated@@51 (+ $generated@@96 1))))) (=> (= ($generated@@51 0) ($generated@@41 $generated@@95)) (forall (($generated@@97 T@U) ) (!  (=> ($generated@@22 $generated@@97 $generated@@95) ($generated@@64 $generated@@97 $generated@@96))
 :pattern ( ($generated@@29 ($generated@@60 $generated@@94) $generated@@97 $generated@@96))
))))) (= ($generated@@29 ($generated@@60 $generated@@94) ($generated@@53 $generated@@88 $generated@@95) ($generated@@51 $generated@@96))  (and (=> (< 0 ($generated@@41 $generated@@95)) (or ($generated@@72 ($generated@@51 $generated@@96)) ($generated@@21 ($generated@@60 $generated@@65) ($generated@@39 $generated@@95 ($generated@@40 1)) ($generated@@51 (+ $generated@@96 1))))) (=> (= ($generated@@51 0) ($generated@@41 $generated@@95)) (exists (($generated@@98 T@U) ) (!  (and ($generated@@22 $generated@@98 $generated@@95) ($generated@@29 ($generated@@60 $generated@@94) $generated@@98 $generated@@96))
 :pattern ( ($generated@@29 ($generated@@60 $generated@@94) $generated@@98 $generated@@96))
)))))))
 :weight 3
 :pattern ( ($generated@@29 ($generated@@60 $generated@@94) ($generated@@53 $generated@@88 $generated@@95) ($generated@@51 $generated@@96)))
))))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (!  (or (or ($generated@@23 $generated@@99 $generated@@100) (= $generated@@99 $generated@@100)) ($generated@@23 $generated@@100 $generated@@99))
 :pattern ( ($generated@@23 $generated@@99 $generated@@100) ($generated@@23 $generated@@100 $generated@@99))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ) (! (= ($generated@@22 $generated@@101 $generated@@102) ($generated@@23 $generated@@101 $generated@@102))
 :pattern ( ($generated@@22 $generated@@101 $generated@@102))
)))
(assert (forall (($generated@@103 T@U) ) (! (<= 0 ($generated@@41 $generated@@103))
 :pattern ( ($generated@@41 $generated@@103))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@T) ) (! (= ($generated@@56 $generated@@105 ($generated@@57 $generated@@105 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@57 $generated@@105 $generated@@104))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ) (!  (and (and (and (=> ($generated@@23 $generated@@106 $generated@@107) (or (not (= $generated@@106 $generated@@107)) (not true))) (=> (and ($generated@@84 $generated@@106) (not ($generated@@84 $generated@@107))) ($generated@@23 $generated@@106 $generated@@107))) (=> (and ($generated@@84 $generated@@106) ($generated@@84 $generated@@107)) (= ($generated@@23 $generated@@106 $generated@@107) (< ($generated@@41 $generated@@106) ($generated@@41 $generated@@107))))) (=> (and ($generated@@23 $generated@@106 $generated@@107) ($generated@@84 $generated@@107)) ($generated@@84 $generated@@106)))
 :pattern ( ($generated@@23 $generated@@106 $generated@@107))
)))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (! (= ($generated@@108 $generated@@118 $generated@@119 $generated@@120 ($generated@@114 $generated@@118 $generated@@119 $generated@@120 $generated@@122 $generated@@123 $generated@@124 $generated@@121) $generated@@123 $generated@@124) $generated@@121)
 :weight 0
)) (and (forall (($generated@@125 T@T) ($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (!  (or (= $generated@@130 $generated@@132) (= ($generated@@108 $generated@@125 $generated@@126 $generated@@127 ($generated@@114 $generated@@125 $generated@@126 $generated@@127 $generated@@129 $generated@@130 $generated@@131 $generated@@128) $generated@@132 $generated@@133) ($generated@@108 $generated@@125 $generated@@126 $generated@@127 $generated@@129 $generated@@132 $generated@@133)))
 :weight 0
)) (forall (($generated@@134 T@T) ($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ) (!  (or (= $generated@@140 $generated@@142) (= ($generated@@108 $generated@@134 $generated@@135 $generated@@136 ($generated@@114 $generated@@134 $generated@@135 $generated@@136 $generated@@138 $generated@@139 $generated@@140 $generated@@137) $generated@@141 $generated@@142) ($generated@@108 $generated@@134 $generated@@135 $generated@@136 $generated@@138 $generated@@141 $generated@@142)))
 :weight 0
)))) (= ($generated@@4 $generated@@109) 4)) (= ($generated@@4 $generated@@110) 5)) (forall (($generated@@143 T@T) ($generated@@144 T@T) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (! (= ($generated@@112 $generated@@143 $generated@@144 ($generated@@115 $generated@@143 $generated@@144 $generated@@146 $generated@@147 $generated@@145) $generated@@147) $generated@@145)
 :weight 0
))) (forall (($generated@@148 T@T) ($generated@@149 T@T) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ) (!  (or (= $generated@@152 $generated@@153) (= ($generated@@112 $generated@@148 $generated@@149 ($generated@@115 $generated@@148 $generated@@149 $generated@@151 $generated@@152 $generated@@150) $generated@@153) ($generated@@112 $generated@@148 $generated@@149 $generated@@151 $generated@@153)))
 :weight 0
))) (forall (($generated@@154 T@T) ($generated@@155 T@T) ) (= ($generated@@4 ($generated@@113 $generated@@154 $generated@@155)) 6))) (forall (($generated@@156 T@T) ($generated@@157 T@T) ) (! (= ($generated@@116 ($generated@@113 $generated@@156 $generated@@157)) $generated@@156)
 :pattern ( ($generated@@113 $generated@@156 $generated@@157))
))) (forall (($generated@@158 T@T) ($generated@@159 T@T) ) (! (= ($generated@@117 ($generated@@113 $generated@@158 $generated@@159)) $generated@@159)
 :pattern ( ($generated@@113 $generated@@158 $generated@@159))
))))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 Bool) ($generated@@164 T@U) ($generated@@165 T@U) ) (! (= ($generated@@9 ($generated@@108 $generated@@109 $generated@@110 $generated@@5 ($generated@@111 $generated@@160 $generated@@161 $generated@@162 $generated@@163) $generated@@164 $generated@@165))  (=> (and (or (not (= $generated@@164 $generated@@160)) (not true)) ($generated@@9 ($generated@@56 $generated@@5 ($generated@@112 $generated@@110 $generated@@88 ($generated@@112 $generated@@109 ($generated@@113 $generated@@110 $generated@@88) $generated@@161 $generated@@164) $generated@@162)))) $generated@@163))
 :pattern ( ($generated@@108 $generated@@109 $generated@@110 $generated@@5 ($generated@@111 $generated@@160 $generated@@161 $generated@@162 $generated@@163) $generated@@164 $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ) (!  (=> ($generated@@84 $generated@@166) (= $generated@@166 ($generated@@40 ($generated@@41 $generated@@166))))
 :pattern ( ($generated@@41 $generated@@166))
 :pattern ( ($generated@@84 $generated@@166))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ) (!  (=> (and ($generated@@84 $generated@@168) (<= ($generated@@41 $generated@@168) ($generated@@41 $generated@@167))) (or (and (= $generated@@168 ($generated@@40 0)) (= ($generated@@39 $generated@@167 $generated@@168) $generated@@167)) (and (or (not (= $generated@@168 ($generated@@40 0))) (not true)) ($generated@@23 ($generated@@39 $generated@@167 $generated@@168) $generated@@167))))
 :pattern ( ($generated@@39 $generated@@167 $generated@@168))
)))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 Int) ) (!  (=> (or ($generated@@61 ($generated@@53 $generated@@88 $generated@@170) $generated@@171) (< 2 $generated@@20)) (and (and (=> (< 0 ($generated@@41 $generated@@170)) (and ($generated@@62 $generated@@171) (=> (not ($generated@@63 $generated@@171)) ($generated@@64 ($generated@@39 $generated@@170 ($generated@@40 1)) (+ $generated@@171 1))))) (=> (=> (< 0 ($generated@@41 $generated@@170)) (or ($generated@@63 $generated@@171) ($generated@@29 ($generated@@60 $generated@@65) ($generated@@39 $generated@@170 ($generated@@40 1)) (+ $generated@@171 1)))) (=> (= ($generated@@51 0) ($generated@@41 $generated@@170)) (forall (($generated@@172 T@U) ) (!  (=> ($generated@@22 $generated@@172 $generated@@170) ($generated@@61 $generated@@172 $generated@@171))
 :pattern ( ($generated@@21 ($generated@@60 $generated@@169) $generated@@172 $generated@@171))
))))) (= ($generated@@21 ($generated@@60 $generated@@169) ($generated@@53 $generated@@88 $generated@@170) $generated@@171)  (and (=> (< 0 ($generated@@41 $generated@@170)) (or ($generated@@63 $generated@@171) ($generated@@29 ($generated@@60 $generated@@65) ($generated@@39 $generated@@170 ($generated@@40 1)) (+ $generated@@171 1)))) (=> (= ($generated@@51 0) ($generated@@41 $generated@@170)) (exists (($generated@@173 T@U) ) (!  (and ($generated@@22 $generated@@173 $generated@@170) ($generated@@21 ($generated@@60 $generated@@169) $generated@@173 $generated@@171))
 :pattern ( ($generated@@21 ($generated@@60 $generated@@169) $generated@@173 $generated@@171))
)))))))
 :weight 3
 :pattern ( ($generated@@21 ($generated@@60 $generated@@169) ($generated@@53 $generated@@88 $generated@@170) $generated@@171))
))))
(assert  (=> (<= 2 $generated@@20) (forall (($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 Int) ) (!  (=> (or ($generated@@64 ($generated@@53 $generated@@88 $generated@@175) $generated@@176) (< 2 $generated@@20)) (and (and (=> (< 0 ($generated@@41 $generated@@175)) (and ($generated@@71 $generated@@176) (=> (not ($generated@@72 $generated@@176)) ($generated@@61 ($generated@@39 $generated@@175 ($generated@@40 1)) (+ $generated@@176 1))))) (=> (=> (< 0 ($generated@@41 $generated@@175)) (or ($generated@@72 $generated@@176) ($generated@@21 ($generated@@60 $generated@@65) ($generated@@39 $generated@@175 ($generated@@40 1)) (+ $generated@@176 1)))) (=> (= ($generated@@51 0) ($generated@@41 $generated@@175)) (forall (($generated@@177 T@U) ) (!  (=> ($generated@@22 $generated@@177 $generated@@175) ($generated@@64 $generated@@177 $generated@@176))
 :pattern ( ($generated@@29 ($generated@@60 $generated@@174) $generated@@177 $generated@@176))
))))) (= ($generated@@29 ($generated@@60 $generated@@174) ($generated@@53 $generated@@88 $generated@@175) $generated@@176)  (and (=> (< 0 ($generated@@41 $generated@@175)) (or ($generated@@72 $generated@@176) ($generated@@21 ($generated@@60 $generated@@65) ($generated@@39 $generated@@175 ($generated@@40 1)) (+ $generated@@176 1)))) (=> (= ($generated@@51 0) ($generated@@41 $generated@@175)) (exists (($generated@@178 T@U) ) (!  (and ($generated@@22 $generated@@178 $generated@@175) ($generated@@29 ($generated@@60 $generated@@174) $generated@@178 $generated@@176))
 :pattern ( ($generated@@29 ($generated@@60 $generated@@174) $generated@@178 $generated@@176))
)))))))
 :weight 3
 :pattern ( ($generated@@29 ($generated@@60 $generated@@174) ($generated@@53 $generated@@88 $generated@@175) $generated@@176))
))))
(assert (forall (($generated@@179 Int) ) (! (= ($generated@@57 $generated@@6 ($generated@@10 ($generated@@51 $generated@@179))) ($generated@@53 $generated@@88 ($generated@@57 $generated@@6 ($generated@@10 $generated@@179))))
 :pattern ( ($generated@@57 $generated@@6 ($generated@@10 ($generated@@51 $generated@@179))))
)))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@T) ) (! (= ($generated@@57 $generated@@181 ($generated@@53 $generated@@181 $generated@@180)) ($generated@@53 $generated@@88 ($generated@@57 $generated@@181 $generated@@180)))
 :pattern ( ($generated@@57 $generated@@181 ($generated@@53 $generated@@181 $generated@@180)))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (! ($generated@@182 $generated@@6 $generated@@184 $generated $generated@@183)
 :pattern ( ($generated@@182 $generated@@6 $generated@@184 $generated $generated@@183))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ) (! ($generated@@182 $generated@@88 $generated@@186 $generated@@0 $generated@@185)
 :pattern ( ($generated@@182 $generated@@88 $generated@@186 $generated@@0 $generated@@185))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 () Int)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () Int)
(declare-fun $generated@@191 () T@U)
(declare-fun $generated@@192 () T@U)
(declare-fun $generated@@193 () Int)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () T@U)
(declare-fun $generated@@196 (T@U) Bool)
(declare-fun $generated@@197 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 12) (let (($generated@@198 true))
(let (($generated@@199  (=> ($generated@@21 ($generated@@60 $generated@@65) ($generated@@39 $generated@@187 ($generated@@40 1)) (+ $generated@@188 1)) (and (=> (= (ControlFlow 0 3) (- 0 6)) ($generated@@84 ($generated@@53 $generated@@88 ($generated@@40 1)))) (=> ($generated@@84 ($generated@@53 $generated@@88 ($generated@@40 1))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (<= ($generated@@41 ($generated@@53 $generated@@88 ($generated@@40 1))) ($generated@@41 $generated@@187))) (=> (<= ($generated@@41 ($generated@@53 $generated@@88 ($generated@@40 1))) ($generated@@41 $generated@@187)) (=> (and (= $generated@@189 ($generated@@39 $generated@@187 ($generated@@40 1))) (= $generated@@190 (+ $generated@@188 1))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> ($generated@@61 $generated@@189 $generated@@190) (or ($generated@@21 ($generated@@60 $generated@@65) $generated@@189 $generated@@190) (=> (< 0 ($generated@@41 $generated@@189)) (or ($generated@@63 $generated@@190) ($generated@@29 ($generated@@60 ($generated@@60 $generated@@65)) ($generated@@39 $generated@@189 ($generated@@40 1)) (+ $generated@@190 1))))))) (=> (=> ($generated@@61 $generated@@189 $generated@@190) (or ($generated@@21 ($generated@@60 $generated@@65) $generated@@189 $generated@@190) (=> (< 0 ($generated@@41 $generated@@189)) (or ($generated@@63 $generated@@190) ($generated@@29 ($generated@@60 ($generated@@60 $generated@@65)) ($generated@@39 $generated@@189 ($generated@@40 1)) (+ $generated@@190 1)))))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> ($generated@@61 $generated@@189 $generated@@190) (or ($generated@@21 ($generated@@60 $generated@@65) $generated@@189 $generated@@190) (=> (= ($generated@@51 0) ($generated@@41 $generated@@189)) (exists (($generated@@200 T@U) ) (!  (and ($generated@@22 $generated@@200 $generated@@189) ($generated@@21 ($generated@@60 $generated@@65) $generated@@200 $generated@@190))
 :pattern ( ($generated@@21 ($generated@@60 $generated@@65) $generated@@200 $generated@@190))
))))))))))))))))
(let (($generated@@201  (=> (< 0 ($generated@@41 $generated@@187)) (and (=> (= (ControlFlow 0 8) (- 0 10)) ($generated@@84 ($generated@@53 $generated@@88 ($generated@@40 1)))) (=> ($generated@@84 ($generated@@53 $generated@@88 ($generated@@40 1))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (<= ($generated@@41 ($generated@@53 $generated@@88 ($generated@@40 1))) ($generated@@41 $generated@@187))) (=> (<= ($generated@@41 ($generated@@53 $generated@@88 ($generated@@40 1))) ($generated@@41 $generated@@187)) (=> (and (= $generated@@191 ($generated@@39 $generated@@187 ($generated@@40 1))) ($generated@@182 $generated@@88 $generated@@191 $generated@@0 $generated@@192)) (=> (and (and (= $generated@@193 (+ $generated@@188 1)) ($generated@@182 $generated@@6 ($generated@@10 $generated@@193) $generated $generated@@192)) (and ($generated@@61 ($generated@@39 $generated@@187 ($generated@@40 1)) (+ $generated@@188 1)) ($generated@@61 ($generated@@39 $generated@@187 ($generated@@40 1)) (+ $generated@@188 1)))) (and (=> (= (ControlFlow 0 8) 3) $generated@@199) (=> (= (ControlFlow 0 8) 7) $generated@@198)))))))))))
(let (($generated@@202 true))
(let (($generated@@203  (=> (= $generated@@194 ($generated@@111 $generated@@195 $generated@@192 $generated@@3 false)) (and (=> (= (ControlFlow 0 11) 8) $generated@@201) (=> (= (ControlFlow 0 11) 1) $generated@@202)))))
(let (($generated@@204  (=> (and (and (and ($generated@@196 $generated@@192) ($generated@@197 $generated@@192)) (= 3 $generated@@20)) (and (and ($generated@@64 $generated@@187 $generated@@188) (and ($generated@@29 ($generated@@60 $generated@@65) $generated@@187 $generated@@188) (and (=> (< 0 ($generated@@41 $generated@@187)) (or ($generated@@72 $generated@@188) ($generated@@21 ($generated@@60 $generated@@65) ($generated@@39 $generated@@187 ($generated@@40 1)) (+ $generated@@188 1)))) (=> (= ($generated@@51 0) ($generated@@41 $generated@@187)) (exists (($generated@@205 T@U) ) (!  (and ($generated@@22 $generated@@205 $generated@@187) ($generated@@29 ($generated@@60 $generated@@65) $generated@@205 $generated@@188))
 :pattern ( ($generated@@29 ($generated@@60 $generated@@65) $generated@@205 $generated@@188))
)))))) (= (ControlFlow 0 12) 11))) $generated@@203)))
$generated@@204)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid