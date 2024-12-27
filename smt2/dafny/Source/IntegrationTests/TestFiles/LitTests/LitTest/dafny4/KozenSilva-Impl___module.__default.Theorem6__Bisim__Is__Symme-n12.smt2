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
(declare-fun $generated@@19 (T@U T@U) Bool)
(declare-fun $generated@@23 (T@U) Bool)
(declare-fun $generated@@24 (T@U) Bool)
(declare-fun $generated@@26 () Int)
(declare-fun $generated@@27 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@T T@U) T@U)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 (T@U T@U T@U T@U) Bool)
(declare-fun $generated@@32 (T@T T@U T@U) Bool)
(declare-fun $generated@@33 () T@T)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@35 (T@U) Int)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@37 (T@U T@U) T@U)
(declare-fun $generated@@38 (Int) T@U)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@40 (Int) Int)
(declare-fun $generated@@61 (T@U T@U) T@U)
(declare-fun $generated@@62 (T@U T@U) Bool)
(declare-fun $generated@@66 (T@U T@U T@U T@U) Bool)
(declare-fun $generated@@72 (T@U) T@U)
(declare-fun $generated@@74 (T@T T@U) T@U)
(declare-fun $generated@@75 (T@T T@U) T@U)
(declare-fun $generated@@86 (T@U T@U T@U) Bool)
(declare-fun $generated@@87 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@92 (T@U) T@U)
(declare-fun $generated@@93 (T@U) T@U)
(declare-fun $generated@@95 (T@U) Bool)
(declare-fun $generated@@118 (T@U) T@U)
(declare-fun $generated@@128 (T@U) Bool)
(declare-fun $generated@@132 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@133 () T@T)
(declare-fun $generated@@134 () T@T)
(declare-fun $generated@@135 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@136 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@137 (T@T T@T) T@T)
(declare-fun $generated@@138 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@139 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@140 (T@T) T@T)
(declare-fun $generated@@141 (T@T) T@T)
(declare-fun $generated@@190 (T@U T@U T@U) Bool)
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
(assert (forall (($generated@@20 T@U) ($generated@@21 T@U) ($generated@@22 T@U) ) (!  (=> (and ($generated@@19 $generated@@20 $generated@@21) ($generated@@19 $generated@@21 $generated@@22)) ($generated@@19 $generated@@20 $generated@@22))
 :pattern ( ($generated@@19 $generated@@20 $generated@@21) ($generated@@19 $generated@@21 $generated@@22))
 :pattern ( ($generated@@19 $generated@@20 $generated@@21) ($generated@@19 $generated@@20 $generated@@22))
)))
(assert (forall (($generated@@25 T@U) ) (!  (=> ($generated@@23 $generated@@25) ($generated@@24 $generated@@25))
 :pattern ( ($generated@@23 $generated@@25))
)))
(assert  (and (= ($generated@@3 $generated@@30) 3) (= ($generated@@3 $generated@@33) 4)))
(assert  (=> (<= 2 $generated@@26) (forall (($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ) (!  (=> (or ($generated@@31 $generated@@41 ($generated@@29 $generated@@30 $generated@@43) $generated@@44 $generated@@45) (and (< 2 $generated@@26) (and ($generated@@32 $generated@@33 $generated@@44 ($generated@@34 $generated@@41)) ($generated@@32 $generated@@33 $generated@@45 ($generated@@34 $generated@@41))))) (and (and (=> (< 0 ($generated@@35 $generated@@43)) (and (and ($generated@@24 $generated@@44) ($generated@@24 $generated@@45)) (=> (= ($generated@@36 $generated@@44) ($generated@@36 $generated@@45)) (and (and ($generated@@24 $generated@@44) ($generated@@24 $generated@@45)) ($generated@@31 $generated@@41 ($generated@@37 $generated@@43 ($generated@@38 1)) ($generated@@39 $generated@@44) ($generated@@39 $generated@@45)))))) (=> (=> (< 0 ($generated@@35 $generated@@43)) (and (= ($generated@@36 $generated@@44) ($generated@@36 $generated@@45)) ($generated@@27 $generated@@41 ($generated@@28 $generated@@42) ($generated@@37 $generated@@43 ($generated@@38 1)) ($generated@@39 $generated@@44) ($generated@@39 $generated@@45)))) (=> (= ($generated@@40 0) ($generated@@35 $generated@@43)) (forall (($generated@@46 T@U) ) (!  (=> ($generated@@19 $generated@@46 $generated@@43) ($generated@@31 $generated@@41 $generated@@46 $generated@@44 $generated@@45))
 :pattern ( ($generated@@27 $generated@@41 ($generated@@28 $generated@@42) $generated@@46 $generated@@44 $generated@@45))
))))) (= ($generated@@27 $generated@@41 ($generated@@28 $generated@@42) ($generated@@29 $generated@@30 $generated@@43) $generated@@44 $generated@@45)  (and (=> (< 0 ($generated@@35 $generated@@43)) (and (= ($generated@@36 $generated@@44) ($generated@@36 $generated@@45)) ($generated@@27 $generated@@41 ($generated@@28 $generated@@42) ($generated@@37 $generated@@43 ($generated@@38 1)) ($generated@@39 $generated@@44) ($generated@@39 $generated@@45)))) (=> (= ($generated@@40 0) ($generated@@35 $generated@@43)) (forall (($generated@@47 T@U) ) (!  (=> ($generated@@19 $generated@@47 $generated@@43) ($generated@@27 $generated@@41 ($generated@@28 $generated@@42) $generated@@47 $generated@@44 $generated@@45))
 :pattern ( ($generated@@27 $generated@@41 ($generated@@28 $generated@@42) $generated@@47 $generated@@44 $generated@@45))
)))))))
 :weight 3
 :pattern ( ($generated@@27 $generated@@41 ($generated@@28 $generated@@42) ($generated@@29 $generated@@30 $generated@@43) $generated@@44 $generated@@45))
))))
(assert (forall (($generated@@48 T@U) ($generated@@49 Int) ($generated@@50 Int) ) (!  (=> (and (and (<= 0 $generated@@49) (<= 0 $generated@@50)) (<= (+ $generated@@49 $generated@@50) ($generated@@35 $generated@@48))) (= ($generated@@37 ($generated@@37 $generated@@48 ($generated@@38 $generated@@49)) ($generated@@38 $generated@@50)) ($generated@@37 $generated@@48 ($generated@@38 (+ $generated@@49 $generated@@50)))))
 :pattern ( ($generated@@37 ($generated@@37 $generated@@48 ($generated@@38 $generated@@49)) ($generated@@38 $generated@@50)))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ) (!  (=> ($generated@@32 $generated@@33 $generated@@52 ($generated@@34 $generated@@51)) ($generated@@24 $generated@@52))
 :pattern ( ($generated@@24 $generated@@52) ($generated@@32 $generated@@33 $generated@@52 ($generated@@34 $generated@@51)))
)))
(assert  (=> (<= 2 $generated@@26) (forall (($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ) (!  (=> (and (and ($generated@@32 $generated@@33 $generated@@55 ($generated@@34 $generated@@53)) ($generated@@32 $generated@@33 $generated@@56 ($generated@@34 $generated@@53))) (= $generated@@57 ($generated@@38 0))) ($generated@@27 $generated@@53 $generated@@54 $generated@@57 $generated@@55 $generated@@56))
 :pattern ( ($generated@@27 $generated@@53 $generated@@54 $generated@@57 $generated@@55 $generated@@56))
))))
(assert (forall (($generated@@58 Int) ) (! (= ($generated@@40 $generated@@58) $generated@@58)
 :pattern ( ($generated@@40 $generated@@58))
)))
(assert (forall (($generated@@59 T@U) ($generated@@60 T@T) ) (! (= ($generated@@29 $generated@@60 $generated@@59) $generated@@59)
 :pattern ( ($generated@@29 $generated@@60 $generated@@59))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (! (= ($generated@@32 $generated@@33 ($generated@@61 $generated@@64 $generated@@65) ($generated@@34 $generated@@63))  (and ($generated@@62 $generated@@64 $generated@@63) ($generated@@32 $generated@@33 $generated@@65 ($generated@@34 $generated@@63))))
 :pattern ( ($generated@@32 $generated@@33 ($generated@@61 $generated@@64 $generated@@65) ($generated@@34 $generated@@63)))
)))
(assert  (=> (<= 2 $generated@@26) (forall (($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ) (!  (=> (and (and ($generated@@32 $generated@@33 $generated@@69 ($generated@@34 $generated@@67)) ($generated@@32 $generated@@33 $generated@@70 ($generated@@34 $generated@@67))) (forall (($generated@@71 T@U) ) (! ($generated@@27 $generated@@67 ($generated@@28 $generated@@68) $generated@@71 $generated@@69 $generated@@70)
 :pattern ( ($generated@@27 $generated@@67 ($generated@@28 $generated@@68) $generated@@71 $generated@@69 $generated@@70))
))) ($generated@@66 $generated@@67 ($generated@@28 $generated@@68) $generated@@69 $generated@@70))
 :pattern ( ($generated@@66 $generated@@67 ($generated@@28 $generated@@68) $generated@@69 $generated@@70))
))))
(assert (forall (($generated@@73 T@U) ) (! (= ($generated@@24 $generated@@73) (= ($generated@@72 $generated@@73) $generated@@1))
 :pattern ( ($generated@@24 $generated@@73))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@T) ) (! (= ($generated@@75 $generated@@77 ($generated@@74 $generated@@77 $generated@@76)) $generated@@76)
 :pattern ( ($generated@@74 $generated@@77 $generated@@76))
)))
(assert (forall (($generated@@78 T@U) ) (!  (=> ($generated@@24 $generated@@78) (exists (($generated@@79 T@U) ($generated@@80 T@U) ) (= $generated@@78 ($generated@@61 $generated@@79 $generated@@80))))
 :pattern ( ($generated@@24 $generated@@78))
)))
(assert  (=> (<= 2 $generated@@26) (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ) (!  (=> (and (and ($generated@@32 $generated@@33 $generated@@83 ($generated@@34 $generated@@81)) ($generated@@32 $generated@@33 $generated@@84 ($generated@@34 $generated@@81))) ($generated@@66 $generated@@81 ($generated@@28 $generated@@82) $generated@@83 $generated@@84)) (forall (($generated@@85 T@U) ) (! ($generated@@27 $generated@@81 ($generated@@28 $generated@@82) $generated@@85 $generated@@83 $generated@@84)
 :pattern ( ($generated@@27 $generated@@81 ($generated@@28 $generated@@82) $generated@@85 $generated@@83 $generated@@84))
)))
 :pattern ( ($generated@@66 $generated@@81 ($generated@@28 $generated@@82) $generated@@83 $generated@@84))
))))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@T) ) (! (= ($generated@@86 ($generated@@75 $generated@@91 $generated@@88) $generated@@89 $generated@@90) ($generated@@87 $generated@@91 $generated@@88 $generated@@89 $generated@@90))
 :pattern ( ($generated@@86 ($generated@@75 $generated@@91 $generated@@88) $generated@@89 $generated@@90))
)))
(assert (forall (($generated@@94 T@U) ) (!  (and (= ($generated@@92 ($generated@@34 $generated@@94)) $generated@@0) (= ($generated@@93 ($generated@@34 $generated@@94)) $generated@@2))
 :pattern ( ($generated@@34 $generated@@94))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ) (!  (=> (and ($generated@@95 $generated@@97) (<= ($generated@@35 $generated@@97) ($generated@@35 $generated@@96))) (and (= ($generated@@95 ($generated@@37 $generated@@96 $generated@@97)) ($generated@@95 $generated@@96)) (= ($generated@@35 ($generated@@37 $generated@@96 $generated@@97)) (- ($generated@@35 $generated@@96) ($generated@@35 $generated@@97)))))
 :pattern ( ($generated@@37 $generated@@96 $generated@@97))
)))
(assert (forall (($generated@@98 Int) ) (!  (=> (<= 0 $generated@@98) (and ($generated@@95 ($generated@@38 $generated@@98)) (= ($generated@@35 ($generated@@38 $generated@@98)) $generated@@98)))
 :pattern ( ($generated@@38 $generated@@98))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (!  (or (or ($generated@@19 $generated@@99 $generated@@100) (= $generated@@99 $generated@@100)) ($generated@@19 $generated@@100 $generated@@99))
 :pattern ( ($generated@@19 $generated@@99 $generated@@100) ($generated@@19 $generated@@100 $generated@@99))
)))
(assert  (=> (<= 2 $generated@@26) (forall (($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (!  (=> (or ($generated@@31 $generated@@101 ($generated@@29 $generated@@30 $generated@@103) ($generated@@29 $generated@@33 $generated@@104) ($generated@@29 $generated@@33 $generated@@105)) (and (< 2 $generated@@26) (and ($generated@@32 $generated@@33 $generated@@104 ($generated@@34 $generated@@101)) ($generated@@32 $generated@@33 $generated@@105 ($generated@@34 $generated@@101))))) (and (and (=> (< 0 ($generated@@35 $generated@@103)) (and (and ($generated@@24 ($generated@@29 $generated@@33 $generated@@104)) ($generated@@24 ($generated@@29 $generated@@33 $generated@@105))) (=> (= ($generated@@29 $generated@@30 ($generated@@36 ($generated@@29 $generated@@33 $generated@@104))) ($generated@@29 $generated@@30 ($generated@@36 ($generated@@29 $generated@@33 $generated@@105)))) (and (and ($generated@@24 ($generated@@29 $generated@@33 $generated@@104)) ($generated@@24 ($generated@@29 $generated@@33 $generated@@105))) ($generated@@31 $generated@@101 ($generated@@37 $generated@@103 ($generated@@38 1)) ($generated@@29 $generated@@33 ($generated@@39 ($generated@@29 $generated@@33 $generated@@104))) ($generated@@29 $generated@@33 ($generated@@39 ($generated@@29 $generated@@33 $generated@@105)))))))) (=> (=> (< 0 ($generated@@35 $generated@@103)) (and (= ($generated@@29 $generated@@30 ($generated@@36 ($generated@@29 $generated@@33 $generated@@104))) ($generated@@29 $generated@@30 ($generated@@36 ($generated@@29 $generated@@33 $generated@@105)))) ($generated@@27 $generated@@101 ($generated@@28 $generated@@102) ($generated@@37 $generated@@103 ($generated@@38 1)) ($generated@@29 $generated@@33 ($generated@@39 ($generated@@29 $generated@@33 $generated@@104))) ($generated@@29 $generated@@33 ($generated@@39 ($generated@@29 $generated@@33 $generated@@105)))))) (=> (= ($generated@@40 0) ($generated@@35 $generated@@103)) (forall (($generated@@106 T@U) ) (!  (=> ($generated@@19 $generated@@106 $generated@@103) ($generated@@31 $generated@@101 $generated@@106 $generated@@104 $generated@@105))
 :pattern ( ($generated@@27 $generated@@101 ($generated@@28 $generated@@102) $generated@@106 $generated@@104 $generated@@105))
))))) (= ($generated@@27 $generated@@101 ($generated@@28 $generated@@102) ($generated@@29 $generated@@30 $generated@@103) ($generated@@29 $generated@@33 $generated@@104) ($generated@@29 $generated@@33 $generated@@105))  (and (=> (< 0 ($generated@@35 $generated@@103)) (and (= ($generated@@29 $generated@@30 ($generated@@36 ($generated@@29 $generated@@33 $generated@@104))) ($generated@@29 $generated@@30 ($generated@@36 ($generated@@29 $generated@@33 $generated@@105)))) ($generated@@27 $generated@@101 ($generated@@28 $generated@@102) ($generated@@37 $generated@@103 ($generated@@38 1)) ($generated@@29 $generated@@33 ($generated@@39 ($generated@@29 $generated@@33 $generated@@104))) ($generated@@29 $generated@@33 ($generated@@39 ($generated@@29 $generated@@33 $generated@@105)))))) (=> (= ($generated@@40 0) ($generated@@35 $generated@@103)) (forall (($generated@@107 T@U) ) (!  (=> ($generated@@19 $generated@@107 $generated@@103) ($generated@@27 $generated@@101 ($generated@@28 $generated@@102) $generated@@107 $generated@@104 $generated@@105))
 :pattern ( ($generated@@27 $generated@@101 ($generated@@28 $generated@@102) $generated@@107 $generated@@104 $generated@@105))
)))))))
 :weight 3
 :pattern ( ($generated@@27 $generated@@101 ($generated@@28 $generated@@102) ($generated@@29 $generated@@30 $generated@@103) ($generated@@29 $generated@@33 $generated@@104) ($generated@@29 $generated@@33 $generated@@105)))
))))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@T) ) (! (= ($generated@@62 ($generated@@75 $generated@@110 $generated@@108) $generated@@109) ($generated@@32 $generated@@110 $generated@@108 $generated@@109))
 :pattern ( ($generated@@62 ($generated@@75 $generated@@110 $generated@@108) $generated@@109))
)))
(assert (forall (($generated@@111 T@U) ) (! (<= 0 ($generated@@35 $generated@@111))
 :pattern ( ($generated@@35 $generated@@111))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ) (! (= ($generated@@72 ($generated@@61 $generated@@112 $generated@@113)) $generated@@1)
 :pattern ( ($generated@@61 $generated@@112 $generated@@113))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@36 ($generated@@61 $generated@@114 $generated@@115)) $generated@@114)
 :pattern ( ($generated@@61 $generated@@114 $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@39 ($generated@@61 $generated@@116 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@61 $generated@@116 $generated@@117))
)))
(assert (forall (($generated@@119 T@U) ) (! (= ($generated@@118 ($generated@@34 $generated@@119)) $generated@@119)
 :pattern ( ($generated@@34 $generated@@119))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@T) ) (! (= ($generated@@74 $generated@@121 ($generated@@75 $generated@@121 $generated@@120)) $generated@@120)
 :pattern ( ($generated@@75 $generated@@121 $generated@@120))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ) (!  (and (and (and (=> ($generated@@19 $generated@@122 $generated@@123) (or (not (= $generated@@122 $generated@@123)) (not true))) (=> (and ($generated@@95 $generated@@122) (not ($generated@@95 $generated@@123))) ($generated@@19 $generated@@122 $generated@@123))) (=> (and ($generated@@95 $generated@@122) ($generated@@95 $generated@@123)) (= ($generated@@19 $generated@@122 $generated@@123) (< ($generated@@35 $generated@@122) ($generated@@35 $generated@@123))))) (=> (and ($generated@@19 $generated@@122 $generated@@123) ($generated@@95 $generated@@123)) ($generated@@95 $generated@@122)))
 :pattern ( ($generated@@19 $generated@@122 $generated@@123))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (! (= ($generated@@66 $generated@@124 ($generated@@28 $generated@@125) $generated@@126 $generated@@127) ($generated@@66 $generated@@124 $generated@@125 $generated@@126 $generated@@127))
 :pattern ( ($generated@@66 $generated@@124 ($generated@@28 $generated@@125) $generated@@126 $generated@@127))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (!  (=> (and ($generated@@128 $generated@@131) (and ($generated@@24 $generated@@129) ($generated@@87 $generated@@33 $generated@@129 ($generated@@34 $generated@@130) $generated@@131))) ($generated@@86 ($generated@@36 $generated@@129) $generated@@130 $generated@@131))
 :pattern ( ($generated@@86 ($generated@@36 $generated@@129) $generated@@130 $generated@@131))
)))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@T) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ) (! (= ($generated@@132 $generated@@142 $generated@@143 $generated@@144 ($generated@@138 $generated@@142 $generated@@143 $generated@@144 $generated@@146 $generated@@147 $generated@@148 $generated@@145) $generated@@147 $generated@@148) $generated@@145)
 :weight 0
)) (and (forall (($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (!  (or (= $generated@@154 $generated@@156) (= ($generated@@132 $generated@@149 $generated@@150 $generated@@151 ($generated@@138 $generated@@149 $generated@@150 $generated@@151 $generated@@153 $generated@@154 $generated@@155 $generated@@152) $generated@@156 $generated@@157) ($generated@@132 $generated@@149 $generated@@150 $generated@@151 $generated@@153 $generated@@156 $generated@@157)))
 :weight 0
)) (forall (($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ) (!  (or (= $generated@@164 $generated@@166) (= ($generated@@132 $generated@@158 $generated@@159 $generated@@160 ($generated@@138 $generated@@158 $generated@@159 $generated@@160 $generated@@162 $generated@@163 $generated@@164 $generated@@161) $generated@@165 $generated@@166) ($generated@@132 $generated@@158 $generated@@159 $generated@@160 $generated@@162 $generated@@165 $generated@@166)))
 :weight 0
)))) (= ($generated@@3 $generated@@133) 5)) (= ($generated@@3 $generated@@134) 6)) (forall (($generated@@167 T@T) ($generated@@168 T@T) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ) (! (= ($generated@@136 $generated@@167 $generated@@168 ($generated@@139 $generated@@167 $generated@@168 $generated@@170 $generated@@171 $generated@@169) $generated@@171) $generated@@169)
 :weight 0
))) (forall (($generated@@172 T@T) ($generated@@173 T@T) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ) (!  (or (= $generated@@176 $generated@@177) (= ($generated@@136 $generated@@172 $generated@@173 ($generated@@139 $generated@@172 $generated@@173 $generated@@175 $generated@@176 $generated@@174) $generated@@177) ($generated@@136 $generated@@172 $generated@@173 $generated@@175 $generated@@177)))
 :weight 0
))) (forall (($generated@@178 T@T) ($generated@@179 T@T) ) (= ($generated@@3 ($generated@@137 $generated@@178 $generated@@179)) 7))) (forall (($generated@@180 T@T) ($generated@@181 T@T) ) (! (= ($generated@@140 ($generated@@137 $generated@@180 $generated@@181)) $generated@@180)
 :pattern ( ($generated@@137 $generated@@180 $generated@@181))
))) (forall (($generated@@182 T@T) ($generated@@183 T@T) ) (! (= ($generated@@141 ($generated@@137 $generated@@182 $generated@@183)) $generated@@183)
 :pattern ( ($generated@@137 $generated@@182 $generated@@183))
))))
(assert (forall (($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 Bool) ($generated@@188 T@U) ($generated@@189 T@U) ) (! (= ($generated@@8 ($generated@@132 $generated@@133 $generated@@134 $generated@@4 ($generated@@135 $generated@@184 $generated@@185 $generated@@186 $generated@@187) $generated@@188 $generated@@189))  (=> (and (or (not (= $generated@@188 $generated@@184)) (not true)) ($generated@@8 ($generated@@74 $generated@@4 ($generated@@136 $generated@@134 $generated@@30 ($generated@@136 $generated@@133 ($generated@@137 $generated@@134 $generated@@30) $generated@@185 $generated@@188) $generated@@186)))) $generated@@187))
 :pattern ( ($generated@@132 $generated@@133 $generated@@134 $generated@@4 ($generated@@135 $generated@@184 $generated@@185 $generated@@186 $generated@@187) $generated@@188 $generated@@189))
)))
(assert  (=> (<= 1 $generated@@26) (forall (($generated@@191 T@U) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ) (!  (=> (or ($generated@@190 $generated@@191 $generated@@193 $generated@@194) (and (< 1 $generated@@26) (and ($generated@@32 $generated@@33 $generated@@193 ($generated@@34 $generated@@191)) ($generated@@32 $generated@@33 $generated@@194 ($generated@@34 $generated@@191))))) (and (and (and ($generated@@24 $generated@@193) ($generated@@24 $generated@@194)) (=> (= ($generated@@36 $generated@@193) ($generated@@36 $generated@@194)) (and (and ($generated@@24 $generated@@193) ($generated@@24 $generated@@194)) ($generated@@190 $generated@@191 ($generated@@39 $generated@@193) ($generated@@39 $generated@@194))))) (= ($generated@@66 $generated@@191 ($generated@@28 $generated@@192) $generated@@193 $generated@@194)  (and (= ($generated@@36 $generated@@193) ($generated@@36 $generated@@194)) ($generated@@66 $generated@@191 $generated@@192 ($generated@@39 $generated@@193) ($generated@@39 $generated@@194))))))
 :pattern ( ($generated@@66 $generated@@191 ($generated@@28 $generated@@192) $generated@@193 $generated@@194))
))))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@U) ) (!  (=> ($generated@@62 $generated@@196 ($generated@@34 $generated@@195)) (and (= ($generated@@75 $generated@@33 ($generated@@74 $generated@@33 $generated@@196)) $generated@@196) ($generated@@32 $generated@@33 ($generated@@74 $generated@@33 $generated@@196) ($generated@@34 $generated@@195))))
 :pattern ( ($generated@@62 $generated@@196 ($generated@@34 $generated@@195)))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ) (! (= ($generated@@27 $generated@@197 ($generated@@28 $generated@@198) $generated@@199 $generated@@200 $generated@@201) ($generated@@27 $generated@@197 $generated@@198 $generated@@199 $generated@@200 $generated@@201))
 :pattern ( ($generated@@27 $generated@@197 ($generated@@28 $generated@@198) $generated@@199 $generated@@200 $generated@@201))
)))
(assert (forall (($generated@@202 T@U) ) (!  (=> ($generated@@95 $generated@@202) (= $generated@@202 ($generated@@38 ($generated@@35 $generated@@202))))
 :pattern ( ($generated@@35 $generated@@202))
 :pattern ( ($generated@@95 $generated@@202))
)))
(assert (forall (($generated@@203 T@U) ($generated@@204 T@U) ($generated@@205 T@U) ) (!  (=> (and ($generated@@128 $generated@@205) (and ($generated@@24 $generated@@203) ($generated@@87 $generated@@33 $generated@@203 ($generated@@34 $generated@@204) $generated@@205))) ($generated@@87 $generated@@33 ($generated@@39 $generated@@203) ($generated@@34 $generated@@204) $generated@@205))
 :pattern ( ($generated@@87 $generated@@33 ($generated@@39 $generated@@203) ($generated@@34 $generated@@204) $generated@@205))
)))
(assert (forall (($generated@@206 T@U) ($generated@@207 T@U) ) (!  (=> (and ($generated@@95 $generated@@207) (<= ($generated@@35 $generated@@207) ($generated@@35 $generated@@206))) (or (and (= $generated@@207 ($generated@@38 0)) (= ($generated@@37 $generated@@206 $generated@@207) $generated@@206)) (and (or (not (= $generated@@207 ($generated@@38 0))) (not true)) ($generated@@19 ($generated@@37 $generated@@206 $generated@@207) $generated@@206))))
 :pattern ( ($generated@@37 $generated@@206 $generated@@207))
)))
(assert  (=> (<= 2 $generated@@26) (forall (($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ) (!  (=> (or ($generated@@31 $generated@@208 $generated@@210 $generated@@211 $generated@@212) (and (< 2 $generated@@26) (and ($generated@@32 $generated@@33 $generated@@211 ($generated@@34 $generated@@208)) ($generated@@32 $generated@@33 $generated@@212 ($generated@@34 $generated@@208))))) (and (and (=> (< 0 ($generated@@35 $generated@@210)) (and (and ($generated@@24 $generated@@211) ($generated@@24 $generated@@212)) (=> (= ($generated@@36 $generated@@211) ($generated@@36 $generated@@212)) (and (and ($generated@@24 $generated@@211) ($generated@@24 $generated@@212)) ($generated@@31 $generated@@208 ($generated@@37 $generated@@210 ($generated@@38 1)) ($generated@@39 $generated@@211) ($generated@@39 $generated@@212)))))) (=> (=> (< 0 ($generated@@35 $generated@@210)) (and (= ($generated@@36 $generated@@211) ($generated@@36 $generated@@212)) ($generated@@27 $generated@@208 $generated@@209 ($generated@@37 $generated@@210 ($generated@@38 1)) ($generated@@39 $generated@@211) ($generated@@39 $generated@@212)))) (=> (= ($generated@@40 0) ($generated@@35 $generated@@210)) (forall (($generated@@213 T@U) ) (!  (=> ($generated@@19 $generated@@213 $generated@@210) ($generated@@31 $generated@@208 $generated@@213 $generated@@211 $generated@@212))
 :pattern ( ($generated@@27 $generated@@208 $generated@@209 $generated@@213 $generated@@211 $generated@@212))
))))) (= ($generated@@27 $generated@@208 ($generated@@28 $generated@@209) $generated@@210 $generated@@211 $generated@@212)  (and (=> (< 0 ($generated@@35 $generated@@210)) (and (= ($generated@@36 $generated@@211) ($generated@@36 $generated@@212)) ($generated@@27 $generated@@208 $generated@@209 ($generated@@37 $generated@@210 ($generated@@38 1)) ($generated@@39 $generated@@211) ($generated@@39 $generated@@212)))) (=> (= ($generated@@40 0) ($generated@@35 $generated@@210)) (forall (($generated@@214 T@U) ) (!  (=> ($generated@@19 $generated@@214 $generated@@210) ($generated@@27 $generated@@208 $generated@@209 $generated@@214 $generated@@211 $generated@@212))
 :pattern ( ($generated@@27 $generated@@208 $generated@@209 $generated@@214 $generated@@211 $generated@@212))
)))))))
 :pattern ( ($generated@@27 $generated@@208 ($generated@@28 $generated@@209) $generated@@210 $generated@@211 $generated@@212))
))))
(assert (forall (($generated@@215 Int) ) (! (= ($generated@@75 $generated@@5 ($generated@@9 ($generated@@40 $generated@@215))) ($generated@@29 $generated@@30 ($generated@@75 $generated@@5 ($generated@@9 $generated@@215))))
 :pattern ( ($generated@@75 $generated@@5 ($generated@@9 ($generated@@40 $generated@@215))))
)))
(assert (forall (($generated@@216 T@U) ($generated@@217 T@T) ) (! (= ($generated@@75 $generated@@217 ($generated@@29 $generated@@217 $generated@@216)) ($generated@@29 $generated@@30 ($generated@@75 $generated@@217 $generated@@216)))
 :pattern ( ($generated@@75 $generated@@217 ($generated@@29 $generated@@217 $generated@@216)))
)))
(assert (forall (($generated@@218 T@U) ($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ) (!  (=> ($generated@@128 $generated@@221) (= ($generated@@87 $generated@@33 ($generated@@61 $generated@@219 $generated@@220) ($generated@@34 $generated@@218) $generated@@221)  (and ($generated@@86 $generated@@219 $generated@@218 $generated@@221) ($generated@@87 $generated@@33 $generated@@220 ($generated@@34 $generated@@218) $generated@@221))))
 :pattern ( ($generated@@87 $generated@@33 ($generated@@61 $generated@@219 $generated@@220) ($generated@@34 $generated@@218) $generated@@221))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@222 () T@U)
(declare-fun $generated@@223 () T@U)
(declare-fun $generated@@224 () T@U)
(declare-fun $generated@@225 () T@U)
(declare-fun $generated@@226 () T@U)
(declare-fun $generated@@227 () T@U)
(declare-fun $generated@@228 (T@U) Bool)
(declare-fun $generated@@229 () T@U)
(declare-fun $generated@@230 () T@U)
(declare-fun $generated@@231 () T@U)
(declare-fun $generated@@232 () T@U)
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
 (=> (= (ControlFlow 0 0) 8) (let (($generated@@233  (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> ($generated@@31 $generated@@222 $generated@@223 $generated@@224 $generated@@225) (or ($generated@@27 $generated@@222 ($generated@@28 $generated@@226) $generated@@223 $generated@@224 $generated@@225) (=> (< 0 ($generated@@35 $generated@@223)) (= ($generated@@36 $generated@@224) ($generated@@36 $generated@@225)))))) (=> (=> ($generated@@31 $generated@@222 $generated@@223 $generated@@224 $generated@@225) (or ($generated@@27 $generated@@222 ($generated@@28 $generated@@226) $generated@@223 $generated@@224 $generated@@225) (=> (< 0 ($generated@@35 $generated@@223)) (= ($generated@@36 $generated@@224) ($generated@@36 $generated@@225))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> ($generated@@31 $generated@@222 $generated@@223 $generated@@224 $generated@@225) (or ($generated@@27 $generated@@222 ($generated@@28 $generated@@226) $generated@@223 $generated@@224 $generated@@225) (=> (< 0 ($generated@@35 $generated@@223)) ($generated@@27 $generated@@222 ($generated@@28 ($generated@@28 $generated@@226)) ($generated@@37 $generated@@223 ($generated@@38 1)) ($generated@@39 $generated@@224) ($generated@@39 $generated@@225)))))) (=> (=> ($generated@@31 $generated@@222 $generated@@223 $generated@@224 $generated@@225) (or ($generated@@27 $generated@@222 ($generated@@28 $generated@@226) $generated@@223 $generated@@224 $generated@@225) (=> (< 0 ($generated@@35 $generated@@223)) ($generated@@27 $generated@@222 ($generated@@28 ($generated@@28 $generated@@226)) ($generated@@37 $generated@@223 ($generated@@38 1)) ($generated@@39 $generated@@224) ($generated@@39 $generated@@225))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> ($generated@@31 $generated@@222 $generated@@223 $generated@@224 $generated@@225) (or ($generated@@27 $generated@@222 ($generated@@28 $generated@@226) $generated@@223 $generated@@224 $generated@@225) (=> (= ($generated@@40 0) ($generated@@35 $generated@@223)) (forall (($generated@@234 T@U) ) (!  (=> ($generated@@19 $generated@@234 $generated@@223) ($generated@@27 $generated@@222 ($generated@@28 ($generated@@28 $generated@@226)) $generated@@234 $generated@@224 $generated@@225))
 :pattern ( ($generated@@27 $generated@@222 ($generated@@28 ($generated@@28 $generated@@226)) $generated@@234 $generated@@224 $generated@@225))
))))))))))))
(let (($generated@@235  (=> (<= ($generated@@35 $generated@@223) 0) (=> (and (and (and ($generated@@128 $generated@@227) ($generated@@228 $generated@@227)) (= $generated@@229 $generated@@227)) (and (forall (($generated@@236 T@U) ($generated@@237 T@U) ($generated@@238 T@U) ) (!  (=> (and (and ($generated@@32 $generated@@33 $generated@@237 ($generated@@34 $generated@@222)) ($generated@@32 $generated@@33 $generated@@238 ($generated@@34 $generated@@222))) (and ($generated@@19 $generated@@236 $generated@@223) ($generated@@66 $generated@@222 ($generated@@28 $generated@@226) $generated@@237 $generated@@238))) ($generated@@27 $generated@@222 ($generated@@28 $generated@@226) $generated@@236 $generated@@238 $generated@@237))
 :pattern ( ($generated@@27 $generated@@222 ($generated@@28 $generated@@226) $generated@@236 $generated@@238 $generated@@237))
 :pattern ( ($generated@@66 $generated@@222 ($generated@@28 $generated@@226) $generated@@237 $generated@@238) ($generated@@19 $generated@@236 $generated@@223))
)) (= (ControlFlow 0 6) 2))) $generated@@233))))
(let (($generated@@239  (=> (and (< 0 ($generated@@35 $generated@@223)) (= (ControlFlow 0 5) 2)) $generated@@233)))
(let (($generated@@240  (=> (= $generated@@230 ($generated@@135 $generated@@231 $generated@@232 $generated false)) (=> (and ($generated@@23 $generated@@225) ($generated@@23 $generated@@224)) (=> (and (and ($generated@@128 $generated@@229) ($generated@@228 $generated@@229)) (and (= $generated@@232 $generated@@229) (forall (($generated@@241 T@U) ($generated@@242 T@U) ($generated@@243 T@U) ) (!  (=> (and (and (and ($generated@@32 $generated@@33 $generated@@242 ($generated@@34 $generated@@222)) ($generated@@32 $generated@@33 $generated@@243 ($generated@@34 $generated@@222))) ($generated@@66 $generated@@222 ($generated@@28 $generated@@226) $generated@@242 $generated@@243)) ($generated@@19 $generated@@241 $generated@@223)) ($generated@@27 $generated@@222 ($generated@@28 $generated@@226) $generated@@241 $generated@@243 $generated@@242))
 :pattern ( ($generated@@27 $generated@@222 ($generated@@28 $generated@@226) $generated@@241 $generated@@243 $generated@@242))
)))) (and (=> (= (ControlFlow 0 7) 5) $generated@@239) (=> (= (ControlFlow 0 7) 6) $generated@@235)))))))
(let (($generated@@244  (=> (and ($generated@@128 $generated@@232) ($generated@@228 $generated@@232)) (=> (and (and ($generated@@32 $generated@@33 $generated@@225 ($generated@@34 $generated@@222)) ($generated@@87 $generated@@33 $generated@@225 ($generated@@34 $generated@@222) $generated@@232)) ($generated@@23 $generated@@225)) (=> (and (and (and (and ($generated@@32 $generated@@33 $generated@@224 ($generated@@34 $generated@@222)) ($generated@@87 $generated@@33 $generated@@224 ($generated@@34 $generated@@222) $generated@@232)) ($generated@@23 $generated@@224)) (= 3 $generated@@26)) (and (and ($generated@@190 $generated@@222 $generated@@225 $generated@@224) (and ($generated@@66 $generated@@222 ($generated@@28 $generated@@226) $generated@@225 $generated@@224) (and (= ($generated@@36 $generated@@225) ($generated@@36 $generated@@224)) ($generated@@66 $generated@@222 ($generated@@28 $generated@@226) ($generated@@39 $generated@@225) ($generated@@39 $generated@@224))))) (= (ControlFlow 0 8) 7))) $generated@@240)))))
$generated@@244))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)