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
(declare-fun $generated@@20 (T@U) Int)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@22 () Int)
(declare-fun $generated@@23 (T@U T@U) T@U)
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 (T@T T@U) T@U)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 (T@U) Bool)
(declare-fun $generated@@28 (T@T T@U T@U) Bool)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (T@T T@U) T@U)
(declare-fun $generated@@31 (T@U Int) T@U)
(declare-fun $generated@@32 (Int) Int)
(declare-fun $generated@@33 (T@U Int) T@U)
(declare-fun $generated@@36 (T@U Int) T@U)
(declare-fun $generated@@42 (T@U T@U Int) Int)
(declare-fun $generated@@43 (T@U Int) Bool)
(declare-fun $generated@@44 (Int Int) Int)
(declare-fun $generated@@53 (T@T T@U) T@U)
(declare-fun $generated@@56 (T@U T@U T@U) Bool)
(declare-fun $generated@@57 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@72 (T@U T@U) Bool)
(declare-fun $generated@@82 (T@U) T@U)
(declare-fun $generated@@95 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@96 () T@T)
(declare-fun $generated@@97 () T@T)
(declare-fun $generated@@98 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@99 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@100 () T@T)
(declare-fun $generated@@101 (T@T T@T) T@T)
(declare-fun $generated@@102 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@103 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@104 (T@T) T@T)
(declare-fun $generated@@105 (T@T) T@T)
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
(assert (= ($generated@@20 $generated@@21) 0))
(assert (= ($generated@@3 $generated@@26) 3))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@34 T@U) ($generated@@35 T@U) ) (!  (=> (or ($generated@@27 ($generated@@25 $generated@@26 $generated@@35)) (and (< 0 $generated@@22) ($generated@@28 $generated@@26 $generated@@35 ($generated@@29 $generated)))) (and (=> (and (or (not (= ($generated@@20 ($generated@@25 $generated@@26 $generated@@35)) 0)) (not true)) (= ($generated@@10 ($generated@@30 $generated@@5 ($generated@@31 ($generated@@25 $generated@@26 $generated@@35) (- ($generated@@20 ($generated@@25 $generated@@26 $generated@@35)) 1)))) ($generated@@32 0))) ($generated@@27 ($generated@@33 ($generated@@25 $generated@@26 $generated@@35) (- ($generated@@20 ($generated@@25 $generated@@26 $generated@@35)) 1)))) (= ($generated@@23 ($generated@@24 $generated@@34) ($generated@@25 $generated@@26 $generated@@35)) (ite  (and (or (not (= ($generated@@20 ($generated@@25 $generated@@26 $generated@@35)) 0)) (not true)) (= ($generated@@10 ($generated@@30 $generated@@5 ($generated@@31 ($generated@@25 $generated@@26 $generated@@35) (- ($generated@@20 ($generated@@25 $generated@@26 $generated@@35)) 1)))) ($generated@@32 0))) ($generated@@23 ($generated@@24 $generated@@34) ($generated@@33 ($generated@@25 $generated@@26 $generated@@35) (- ($generated@@20 ($generated@@25 $generated@@26 $generated@@35)) 1))) $generated@@35))))
 :weight 3
 :pattern ( ($generated@@23 ($generated@@24 $generated@@34) ($generated@@25 $generated@@26 $generated@@35)))
))))
(assert (forall (($generated@@37 T@U) ($generated@@38 Int) ) (!  (=> (= $generated@@38 0) (= ($generated@@36 $generated@@37 $generated@@38) $generated@@37))
 :pattern ( ($generated@@36 $generated@@37 $generated@@38))
)))
(assert (forall (($generated@@39 Int) ) (! (= ($generated@@32 $generated@@39) $generated@@39)
 :pattern ( ($generated@@32 $generated@@39))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@T) ) (! (= ($generated@@25 $generated@@41 $generated@@40) $generated@@40)
 :pattern ( ($generated@@25 $generated@@41 $generated@@40))
)))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 Int) ) (!  (=> (or ($generated@@43 ($generated@@25 $generated@@26 $generated@@46) ($generated@@32 $generated@@47)) (and (< 0 $generated@@22) (and ($generated@@28 $generated@@26 $generated@@46 ($generated@@29 $generated)) (<= ($generated@@32 2) ($generated@@32 $generated@@47))))) (and (=> (or (not (= ($generated@@20 ($generated@@25 $generated@@26 $generated@@46)) ($generated@@32 0))) (not true)) ($generated@@43 ($generated@@25 $generated@@26 ($generated@@36 ($generated@@25 $generated@@26 $generated@@46) ($generated@@32 1))) ($generated@@32 $generated@@47))) (= ($generated@@42 ($generated@@24 $generated@@45) ($generated@@25 $generated@@26 $generated@@46) ($generated@@32 $generated@@47)) (ite (= ($generated@@20 ($generated@@25 $generated@@26 $generated@@46)) ($generated@@32 0)) 0 (+ ($generated@@10 ($generated@@30 $generated@@5 ($generated@@31 ($generated@@25 $generated@@26 $generated@@46) ($generated@@32 0)))) ($generated@@44 ($generated@@32 $generated@@47) ($generated@@32 ($generated@@42 ($generated@@24 $generated@@45) ($generated@@25 $generated@@26 ($generated@@36 ($generated@@25 $generated@@26 $generated@@46) ($generated@@32 1))) ($generated@@32 $generated@@47)))))))))
 :weight 3
 :pattern ( ($generated@@42 ($generated@@24 $generated@@45) ($generated@@25 $generated@@26 $generated@@46) ($generated@@32 $generated@@47)))
))))
(assert (forall (($generated@@48 T@U) ($generated@@49 Int) ($generated@@50 Int) ) (!  (=> (and (and (<= 0 $generated@@50) (< $generated@@50 $generated@@49)) (< $generated@@50 ($generated@@20 $generated@@48))) (= ($generated@@31 ($generated@@33 $generated@@48 $generated@@49) $generated@@50) ($generated@@31 $generated@@48 $generated@@50)))
 :weight 25
 :pattern ( ($generated@@31 ($generated@@33 $generated@@48 $generated@@49) $generated@@50))
 :pattern ( ($generated@@31 $generated@@48 $generated@@50) ($generated@@33 $generated@@48 $generated@@49))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 Int) ) (!  (=> (and (<= 0 $generated@@52) (<= $generated@@52 ($generated@@20 $generated@@51))) (= ($generated@@20 ($generated@@36 $generated@@51 $generated@@52)) (- ($generated@@20 $generated@@51) $generated@@52)))
 :pattern ( ($generated@@20 ($generated@@36 $generated@@51 $generated@@52)))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@T) ) (! (= ($generated@@53 $generated@@55 ($generated@@30 $generated@@55 $generated@@54)) $generated@@54)
 :pattern ( ($generated@@30 $generated@@55 $generated@@54))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@T) ) (! (= ($generated@@56 ($generated@@53 $generated@@61 $generated@@58) $generated@@59 $generated@@60) ($generated@@57 $generated@@61 $generated@@58 $generated@@59 $generated@@60))
 :pattern ( ($generated@@56 ($generated@@53 $generated@@61 $generated@@58) $generated@@59 $generated@@60))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 Int) ($generated@@64 Int) ) (!  (=> (and (and (<= 0 $generated@@63) (<= 0 $generated@@64)) (< $generated@@64 (- ($generated@@20 $generated@@62) $generated@@63))) (= ($generated@@31 ($generated@@36 $generated@@62 $generated@@63) $generated@@64) ($generated@@31 $generated@@62 (+ $generated@@64 $generated@@63))))
 :weight 25
 :pattern ( ($generated@@31 ($generated@@36 $generated@@62 $generated@@63) $generated@@64))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 Int) ) (! (= ($generated@@42 ($generated@@24 $generated@@65) $generated@@66 $generated@@67) ($generated@@42 $generated@@65 $generated@@66 $generated@@67))
 :pattern ( ($generated@@42 ($generated@@24 $generated@@65) $generated@@66 $generated@@67))
)))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@68 T@U) ($generated@@69 T@U) ) (!  (=> (or ($generated@@27 $generated@@69) (and (< 0 $generated@@22) ($generated@@28 $generated@@26 $generated@@69 ($generated@@29 $generated)))) (and (=> (and (or (not (= ($generated@@20 $generated@@69) 0)) (not true)) (= ($generated@@10 ($generated@@30 $generated@@5 ($generated@@31 $generated@@69 (- ($generated@@20 $generated@@69) 1)))) ($generated@@32 0))) ($generated@@27 ($generated@@33 $generated@@69 (- ($generated@@20 $generated@@69) 1)))) (= ($generated@@23 ($generated@@24 $generated@@68) $generated@@69) (ite  (and (or (not (= ($generated@@20 $generated@@69) 0)) (not true)) (= ($generated@@10 ($generated@@30 $generated@@5 ($generated@@31 $generated@@69 (- ($generated@@20 $generated@@69) 1)))) ($generated@@32 0))) ($generated@@23 $generated@@68 ($generated@@33 $generated@@69 (- ($generated@@20 $generated@@69) 1))) $generated@@69))))
 :pattern ( ($generated@@23 ($generated@@24 $generated@@68) $generated@@69))
))))
(assert (forall (($generated@@70 T@U) ($generated@@71 Int) ) (!  (=> (and (<= 0 $generated@@71) (<= $generated@@71 ($generated@@20 $generated@@70))) (= ($generated@@20 ($generated@@33 $generated@@70 $generated@@71)) $generated@@71))
 :pattern ( ($generated@@20 ($generated@@33 $generated@@70 $generated@@71)))
)))
(assert (forall (($generated@@73 T@U) ) (!  (=> ($generated@@72 $generated@@73 $generated) (and (= ($generated@@53 $generated@@5 ($generated@@30 $generated@@5 $generated@@73)) $generated@@73) ($generated@@28 $generated@@5 ($generated@@30 $generated@@5 $generated@@73) $generated)))
 :pattern ( ($generated@@72 $generated@@73 $generated))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@T) ) (! (= ($generated@@72 ($generated@@53 $generated@@76 $generated@@74) $generated@@75) ($generated@@28 $generated@@76 $generated@@74 $generated@@75))
 :pattern ( ($generated@@72 ($generated@@53 $generated@@76 $generated@@74) $generated@@75))
)))
(assert (forall (($generated@@77 T@U) ) (! (<= 0 ($generated@@20 $generated@@77))
 :pattern ( ($generated@@20 $generated@@77))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@57 $generated@@26 $generated@@78 ($generated@@29 $generated@@79) $generated@@80) (forall (($generated@@81 Int) ) (!  (=> (and (<= 0 $generated@@81) (< $generated@@81 ($generated@@20 $generated@@78))) ($generated@@56 ($generated@@31 $generated@@78 $generated@@81) $generated@@79 $generated@@80))
 :pattern ( ($generated@@31 $generated@@78 $generated@@81))
)))
 :pattern ( ($generated@@57 $generated@@26 $generated@@78 ($generated@@29 $generated@@79) $generated@@80))
)))
(assert (forall (($generated@@83 T@U) ) (! (= ($generated@@82 ($generated@@29 $generated@@83)) $generated@@83)
 :pattern ( ($generated@@29 $generated@@83))
)))
(assert (forall (($generated@@84 T@U) ) (! (= ($generated@@19 ($generated@@29 $generated@@84)) $generated@@1)
 :pattern ( ($generated@@29 $generated@@84))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@T) ) (! (= ($generated@@30 $generated@@86 ($generated@@53 $generated@@86 $generated@@85)) $generated@@85)
 :pattern ( ($generated@@53 $generated@@86 $generated@@85))
)))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 Int) ) (!  (=> (or ($generated@@43 $generated@@88 $generated@@89) (and (< 0 $generated@@22) (and ($generated@@28 $generated@@26 $generated@@88 ($generated@@29 $generated)) (<= ($generated@@32 2) $generated@@89)))) (and (=> (or (not (= ($generated@@20 $generated@@88) ($generated@@32 0))) (not true)) ($generated@@43 ($generated@@36 $generated@@88 ($generated@@32 1)) $generated@@89)) (= ($generated@@42 ($generated@@24 $generated@@87) $generated@@88 $generated@@89) (ite (= ($generated@@20 $generated@@88) ($generated@@32 0)) 0 (+ ($generated@@10 ($generated@@30 $generated@@5 ($generated@@31 $generated@@88 ($generated@@32 0)))) ($generated@@44 $generated@@89 ($generated@@42 $generated@@87 ($generated@@36 $generated@@88 ($generated@@32 1)) $generated@@89)))))))
 :pattern ( ($generated@@42 ($generated@@24 $generated@@87) $generated@@88 $generated@@89))
))))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 Int) ) (!  (=> (or ($generated@@43 ($generated@@25 $generated@@26 $generated@@91) $generated@@92) (and (< 0 $generated@@22) (and ($generated@@28 $generated@@26 $generated@@91 ($generated@@29 $generated)) (<= ($generated@@32 2) $generated@@92)))) (and (=> (or (not (= ($generated@@20 ($generated@@25 $generated@@26 $generated@@91)) ($generated@@32 0))) (not true)) ($generated@@43 ($generated@@25 $generated@@26 ($generated@@36 ($generated@@25 $generated@@26 $generated@@91) ($generated@@32 1))) $generated@@92)) (= ($generated@@42 ($generated@@24 $generated@@90) ($generated@@25 $generated@@26 $generated@@91) $generated@@92) (ite (= ($generated@@20 ($generated@@25 $generated@@26 $generated@@91)) ($generated@@32 0)) 0 (+ ($generated@@10 ($generated@@30 $generated@@5 ($generated@@31 ($generated@@25 $generated@@26 $generated@@91) ($generated@@32 0)))) ($generated@@44 $generated@@92 ($generated@@42 ($generated@@24 $generated@@90) ($generated@@25 $generated@@26 ($generated@@36 ($generated@@25 $generated@@26 $generated@@91) ($generated@@32 1))) $generated@@92)))))))
 :weight 3
 :pattern ( ($generated@@42 ($generated@@24 $generated@@90) ($generated@@25 $generated@@26 $generated@@91) $generated@@92))
))))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@23 ($generated@@24 $generated@@93) $generated@@94) ($generated@@23 $generated@@93 $generated@@94))
 :pattern ( ($generated@@23 ($generated@@24 $generated@@93) $generated@@94))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@106 T@T) ($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@95 $generated@@106 $generated@@107 $generated@@108 ($generated@@102 $generated@@106 $generated@@107 $generated@@108 $generated@@110 $generated@@111 $generated@@112 $generated@@109) $generated@@111 $generated@@112) $generated@@109)
 :weight 0
)) (and (forall (($generated@@113 T@T) ($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (!  (or (= $generated@@118 $generated@@120) (= ($generated@@95 $generated@@113 $generated@@114 $generated@@115 ($generated@@102 $generated@@113 $generated@@114 $generated@@115 $generated@@117 $generated@@118 $generated@@119 $generated@@116) $generated@@120 $generated@@121) ($generated@@95 $generated@@113 $generated@@114 $generated@@115 $generated@@117 $generated@@120 $generated@@121)))
 :weight 0
)) (forall (($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@T) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ) (!  (or (= $generated@@128 $generated@@130) (= ($generated@@95 $generated@@122 $generated@@123 $generated@@124 ($generated@@102 $generated@@122 $generated@@123 $generated@@124 $generated@@126 $generated@@127 $generated@@128 $generated@@125) $generated@@129 $generated@@130) ($generated@@95 $generated@@122 $generated@@123 $generated@@124 $generated@@126 $generated@@129 $generated@@130)))
 :weight 0
)))) (= ($generated@@3 $generated@@96) 4)) (= ($generated@@3 $generated@@97) 5)) (forall (($generated@@131 T@T) ($generated@@132 T@T) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@99 $generated@@131 $generated@@132 ($generated@@103 $generated@@131 $generated@@132 $generated@@134 $generated@@135 $generated@@133) $generated@@135) $generated@@133)
 :weight 0
))) (forall (($generated@@136 T@T) ($generated@@137 T@T) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (!  (or (= $generated@@140 $generated@@141) (= ($generated@@99 $generated@@136 $generated@@137 ($generated@@103 $generated@@136 $generated@@137 $generated@@139 $generated@@140 $generated@@138) $generated@@141) ($generated@@99 $generated@@136 $generated@@137 $generated@@139 $generated@@141)))
 :weight 0
))) (= ($generated@@3 $generated@@100) 6)) (forall (($generated@@142 T@T) ($generated@@143 T@T) ) (= ($generated@@3 ($generated@@101 $generated@@142 $generated@@143)) 7))) (forall (($generated@@144 T@T) ($generated@@145 T@T) ) (! (= ($generated@@104 ($generated@@101 $generated@@144 $generated@@145)) $generated@@144)
 :pattern ( ($generated@@101 $generated@@144 $generated@@145))
))) (forall (($generated@@146 T@T) ($generated@@147 T@T) ) (! (= ($generated@@105 ($generated@@101 $generated@@146 $generated@@147)) $generated@@147)
 :pattern ( ($generated@@101 $generated@@146 $generated@@147))
))))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 Bool) ($generated@@152 T@U) ($generated@@153 T@U) ) (! (= ($generated@@8 ($generated@@95 $generated@@96 $generated@@97 $generated@@4 ($generated@@98 $generated@@148 $generated@@149 $generated@@150 $generated@@151) $generated@@152 $generated@@153))  (=> (and (or (not (= $generated@@152 $generated@@148)) (not true)) ($generated@@8 ($generated@@30 $generated@@4 ($generated@@99 $generated@@97 $generated@@100 ($generated@@99 $generated@@96 ($generated@@101 $generated@@97 $generated@@100) $generated@@149 $generated@@152) $generated@@150)))) $generated@@151))
 :pattern ( ($generated@@95 $generated@@96 $generated@@97 $generated@@4 ($generated@@98 $generated@@148 $generated@@149 $generated@@150 $generated@@151) $generated@@152 $generated@@153))
)))
(assert (forall (($generated@@154 Int) ($generated@@155 Int) ) (! (= ($generated@@44 $generated@@154 $generated@@155) (* $generated@@154 $generated@@155))
 :pattern ( ($generated@@44 $generated@@154 $generated@@155))
)))
(assert (forall (($generated@@156 T@U) ($generated@@157 T@U) ) (!  (=> ($generated@@72 $generated@@156 ($generated@@29 $generated@@157)) (and (= ($generated@@53 $generated@@26 ($generated@@30 $generated@@26 $generated@@156)) $generated@@156) ($generated@@28 $generated@@26 ($generated@@30 $generated@@26 $generated@@156) ($generated@@29 $generated@@157))))
 :pattern ( ($generated@@72 $generated@@156 ($generated@@29 $generated@@157)))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 Int) ($generated@@160 Int) ) (!  (=> (and (and (<= 0 $generated@@159) (<= $generated@@159 $generated@@160)) (< $generated@@160 ($generated@@20 $generated@@158))) (= ($generated@@31 ($generated@@36 $generated@@158 $generated@@159) (- $generated@@160 $generated@@159)) ($generated@@31 $generated@@158 $generated@@160)))
 :weight 25
 :pattern ( ($generated@@31 $generated@@158 $generated@@160) ($generated@@36 $generated@@158 $generated@@159))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 Int) ($generated@@163 Int) ) (!  (=> (and (and (<= 0 $generated@@162) (<= 0 $generated@@163)) (<= (+ $generated@@162 $generated@@163) ($generated@@20 $generated@@161))) (= ($generated@@36 ($generated@@36 $generated@@161 $generated@@162) $generated@@163) ($generated@@36 $generated@@161 (+ $generated@@162 $generated@@163))))
 :pattern ( ($generated@@36 ($generated@@36 $generated@@161 $generated@@162) $generated@@163))
)))
(assert (forall (($generated@@164 Int) ) (! (= ($generated@@53 $generated@@5 ($generated@@9 ($generated@@32 $generated@@164))) ($generated@@25 $generated@@100 ($generated@@53 $generated@@5 ($generated@@9 $generated@@164))))
 :pattern ( ($generated@@53 $generated@@5 ($generated@@9 ($generated@@32 $generated@@164))))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@T) ) (! (= ($generated@@53 $generated@@166 ($generated@@25 $generated@@166 $generated@@165)) ($generated@@25 $generated@@100 ($generated@@53 $generated@@166 $generated@@165)))
 :pattern ( ($generated@@53 $generated@@166 ($generated@@25 $generated@@166 $generated@@165)))
)))
(assert (forall (($generated@@167 T@U) ) (!  (=> (= ($generated@@20 $generated@@167) 0) (= $generated@@167 $generated@@21))
 :pattern ( ($generated@@20 $generated@@167))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 Int) ) (!  (=> (= $generated@@169 0) (= ($generated@@33 $generated@@168 $generated@@169) $generated@@21))
 :pattern ( ($generated@@33 $generated@@168 $generated@@169))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ) (! ($generated@@57 $generated@@5 $generated@@171 $generated $generated@@170)
 :pattern ( ($generated@@57 $generated@@5 $generated@@171 $generated $generated@@170))
)))
(assert  (=> (<= 0 $generated@@22) (forall (($generated@@172 T@U) ($generated@@173 T@U) ) (!  (=> (or ($generated@@27 $generated@@173) (and (< 0 $generated@@22) ($generated@@28 $generated@@26 $generated@@173 ($generated@@29 $generated)))) ($generated@@28 $generated@@26 ($generated@@23 $generated@@172 $generated@@173) ($generated@@29 $generated)))
 :pattern ( ($generated@@23 $generated@@172 $generated@@173))
))))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@U) ) (! (= ($generated@@28 $generated@@26 $generated@@174 ($generated@@29 $generated@@175)) (forall (($generated@@176 Int) ) (!  (=> (and (<= 0 $generated@@176) (< $generated@@176 ($generated@@20 $generated@@174))) ($generated@@72 ($generated@@31 $generated@@174 $generated@@176) $generated@@175))
 :pattern ( ($generated@@31 $generated@@174 $generated@@176))
)))
 :pattern ( ($generated@@28 $generated@@26 $generated@@174 ($generated@@29 $generated@@175)))
)))
(assert (forall (($generated@@177 T@U) ) (! ($generated@@28 $generated@@5 $generated@@177 $generated)
 :pattern ( ($generated@@28 $generated@@5 $generated@@177 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@178 () T@U)
(declare-fun $generated@@179 () T@U)
(declare-fun $generated@@180 () T@U)
(declare-fun $generated@@181 () Int)
(declare-fun $generated@@182 (T@U) Bool)
(declare-fun $generated@@183 () T@U)
(declare-fun $generated@@184 (T@U) Bool)
(declare-fun $generated@@185 () T@U)
(declare-fun $generated@@186 () T@U)
(declare-fun $generated@@187 () T@U)
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@188  (=> (and (= $generated@@178 ($generated@@98 $generated@@179 $generated@@180 $generated@@2 false)) (<= ($generated@@32 2) $generated@@181)) (=> (and (and (and ($generated@@182 $generated@@183) ($generated@@184 $generated@@183)) (= $generated@@180 $generated@@183)) (and ($generated@@57 $generated@@26 $generated@@185 ($generated@@29 $generated) $generated@@183) ($generated@@57 $generated@@5 ($generated@@9 $generated@@181) $generated $generated@@183))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= ($generated@@32 2) $generated@@181)) (=> (and (and (and (<= ($generated@@32 2) $generated@@181) ($generated@@43 $generated@@185 $generated@@181)) (and ($generated@@57 $generated@@26 $generated@@185 ($generated@@29 $generated) $generated@@183) ($generated@@27 $generated@@185))) (and (and (= $generated@@186 ($generated@@23 ($generated@@24 $generated@@187) $generated@@185)) ($generated@@57 $generated@@26 $generated@@186 ($generated@@29 $generated) $generated@@183)) (and ($generated@@57 $generated@@5 ($generated@@9 $generated@@181) $generated $generated@@183) (= (ControlFlow 0 2) (- 0 1))))) (<= ($generated@@32 2) $generated@@181)))))))
(let (($generated@@189  (=> (and ($generated@@182 $generated@@180) ($generated@@184 $generated@@180)) (=> (and (and ($generated@@28 $generated@@26 $generated@@185 ($generated@@29 $generated)) ($generated@@57 $generated@@26 $generated@@185 ($generated@@29 $generated) $generated@@180)) (and (= 2 $generated@@22) (= (ControlFlow 0 4) 2))) $generated@@188))))
$generated@@189)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)