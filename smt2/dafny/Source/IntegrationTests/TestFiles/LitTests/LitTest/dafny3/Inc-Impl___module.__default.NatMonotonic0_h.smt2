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
(declare-fun $generated@@22 (T@U Int T@U Int Int) Bool)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@24 (Int) Int)
(declare-fun $generated@@25 (Int T@U Int Int) Bool)
(declare-fun $generated@@26 (T@T T@U T@U) Bool)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 () T@U)
(declare-fun $generated@@29 (T@U) Bool)
(declare-fun $generated@@30 (T@U) Bool)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@49 (T@U T@U) T@U)
(declare-fun $generated@@57 (T@U) T@U)
(declare-fun $generated@@58 () T@U)
(declare-fun $generated@@60 (T@T T@U) T@U)
(declare-fun $generated@@80 (T@U) Bool)
(declare-fun $generated@@82 (T@T T@U) T@U)
(declare-fun $generated@@83 (T@T T@U) T@U)
(declare-fun $generated@@90 (T@U) T@U)
(declare-fun $generated@@109 (T@U) Bool)
(declare-fun $generated@@111 (T@U) Int)
(declare-fun $generated@@117 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@118 () T@T)
(declare-fun $generated@@119 () T@T)
(declare-fun $generated@@120 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@121 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@122 () T@T)
(declare-fun $generated@@123 (T@T T@T) T@T)
(declare-fun $generated@@124 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@125 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@126 (T@T) T@T)
(declare-fun $generated@@127 (T@T) T@T)
(declare-fun $generated@@192 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@193 (T@U) Bool)
(declare-fun $generated@@196 (T@U) T@U)
(declare-fun $generated@@197 (T@U) T@U)
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
(assert  (=> (<= 2 $generated@@21) (forall (($generated@@34 T@U) ($generated@@35 Int) ($generated@@36 T@U) ($generated@@37 Int) ($generated@@38 Int) ) (!  (=> (or ($generated@@25 ($generated@@24 $generated@@35) $generated@@36 $generated@@37 $generated@@38) (and (< 2 $generated@@21) (and (<= ($generated@@24 0) $generated@@35) ($generated@@26 $generated@@27 $generated@@36 $generated@@28)))) (and (=> (< 0 $generated@@35) (=> (not ($generated@@29 $generated@@36)) (and (=> ($generated@@30 $generated@@36) (let (($generated@@39 ($generated@@31 $generated@@36)))
(let (($generated@@40 ($generated@@32 $generated@@36)))
(forall (($generated@@41 Int) ) (!  (and ($generated@@25 (- $generated@@35 1) $generated@@40 $generated@@37 $generated@@41) (=> ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@40 $generated@@37 $generated@@41) ($generated@@25 (- $generated@@35 1) $generated@@39 $generated@@41 $generated@@38)))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@39 $generated@@41 $generated@@38))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@40 $generated@@37 $generated@@41))
))))) (=> (not ($generated@@30 $generated@@36)) (let (($generated@@42 ($generated@@33 $generated@@36)))
 (=> (or (not (= $generated@@37 $generated@@38)) (not true)) (forall (($generated@@43 Int) ) (!  (and ($generated@@25 (- $generated@@35 1) $generated@@42 $generated@@37 $generated@@43) (=> ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@42 $generated@@37 $generated@@43) ($generated@@25 (- $generated@@35 1) $generated@@36 $generated@@43 $generated@@38)))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@36 $generated@@43 $generated@@38))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@42 $generated@@37 $generated@@43))
)))))))) (= ($generated@@22 ($generated@@23 $generated@@34) ($generated@@24 $generated@@35) $generated@@36 $generated@@37 $generated@@38)  (and (< 0 $generated@@35) (ite ($generated@@29 $generated@@36) (= $generated@@38 (+ $generated@@37 1)) (ite ($generated@@30 $generated@@36) (let (($generated@@44 ($generated@@31 $generated@@36)))
(let (($generated@@45 ($generated@@32 $generated@@36)))
(exists (($generated@@46 Int) ) (!  (and ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@45 $generated@@37 $generated@@46) ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@44 $generated@@46 $generated@@38))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@44 $generated@@46 $generated@@38))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@45 $generated@@37 $generated@@46))
)))) (let (($generated@@47 ($generated@@33 $generated@@36)))
 (or (= $generated@@37 $generated@@38) (exists (($generated@@48 Int) ) (!  (and ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@47 $generated@@37 $generated@@48) ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@36 $generated@@48 $generated@@38))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@36 $generated@@48 $generated@@38))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@34) (- $generated@@35 1) $generated@@47 $generated@@37 $generated@@48))
))))))))))
 :weight 3
 :pattern ( ($generated@@22 ($generated@@23 $generated@@34) ($generated@@24 $generated@@35) $generated@@36 $generated@@37 $generated@@38))
))))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@U) ) (! (= ($generated@@26 $generated@@27 ($generated@@49 $generated@@50 $generated@@51) $generated@@28)  (and ($generated@@26 $generated@@27 $generated@@50 $generated@@28) ($generated@@26 $generated@@27 $generated@@51 $generated@@28)))
 :pattern ( ($generated@@26 $generated@@27 ($generated@@49 $generated@@50 $generated@@51) $generated@@28))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 Int) ($generated@@54 T@U) ($generated@@55 Int) ($generated@@56 Int) ) (! (= ($generated@@22 ($generated@@23 $generated@@52) $generated@@53 $generated@@54 $generated@@55 $generated@@56) ($generated@@22 $generated@@52 $generated@@53 $generated@@54 $generated@@55 $generated@@56))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@52) $generated@@53 $generated@@54 $generated@@55 $generated@@56))
)))
(assert (= ($generated@@57 $generated@@58) $generated@@1))
(assert ($generated@@26 $generated@@27 $generated@@58 $generated@@28))
(assert (forall (($generated@@59 Int) ) (! (= ($generated@@24 $generated@@59) $generated@@59)
 :pattern ( ($generated@@24 $generated@@59))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@T) ) (! (= ($generated@@60 $generated@@62 $generated@@61) $generated@@61)
 :pattern ( ($generated@@60 $generated@@62 $generated@@61))
)))
(assert  (=> (<= 2 $generated@@21) (forall (($generated@@63 T@U) ($generated@@64 Int) ($generated@@65 T@U) ($generated@@66 Int) ($generated@@67 Int) ) (!  (=> (or ($generated@@25 ($generated@@24 $generated@@64) ($generated@@60 $generated@@27 $generated@@65) ($generated@@24 $generated@@66) ($generated@@24 $generated@@67)) (and (< 2 $generated@@21) (and (<= ($generated@@24 0) $generated@@64) ($generated@@26 $generated@@27 $generated@@65 $generated@@28)))) (and (=> (< 0 $generated@@64) (=> (not ($generated@@10 ($generated@@60 $generated@@6 ($generated@@9 ($generated@@29 ($generated@@60 $generated@@27 $generated@@65)))))) (and (=> ($generated@@10 ($generated@@60 $generated@@6 ($generated@@9 ($generated@@30 ($generated@@60 $generated@@27 $generated@@65))))) (let (($generated@@68 ($generated@@60 $generated@@27 ($generated@@31 ($generated@@60 $generated@@27 $generated@@65)))))
(let (($generated@@69 ($generated@@60 $generated@@27 ($generated@@32 ($generated@@60 $generated@@27 $generated@@65)))))
(forall (($generated@@70 Int) ) (!  (and ($generated@@25 (- $generated@@64 1) $generated@@69 ($generated@@24 $generated@@66) $generated@@70) (=> ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) $generated@@69 ($generated@@24 $generated@@66) $generated@@70) ($generated@@25 (- $generated@@64 1) $generated@@68 $generated@@70 ($generated@@24 $generated@@67))))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) $generated@@68 $generated@@70 $generated@@67))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) $generated@@69 $generated@@66 $generated@@70))
))))) (=> (not ($generated@@10 ($generated@@60 $generated@@6 ($generated@@9 ($generated@@30 ($generated@@60 $generated@@27 $generated@@65)))))) (let (($generated@@71 ($generated@@60 $generated@@27 ($generated@@33 ($generated@@60 $generated@@27 $generated@@65)))))
 (=> (or (not (= ($generated@@24 $generated@@66) ($generated@@24 $generated@@67))) (not true)) (forall (($generated@@72 Int) ) (!  (and ($generated@@25 (- $generated@@64 1) $generated@@71 ($generated@@24 $generated@@66) $generated@@72) (=> ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) $generated@@71 ($generated@@24 $generated@@66) $generated@@72) ($generated@@25 (- $generated@@64 1) ($generated@@60 $generated@@27 $generated@@65) $generated@@72 ($generated@@24 $generated@@67))))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) $generated@@65 $generated@@72 $generated@@67))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) $generated@@71 $generated@@66 $generated@@72))
)))))))) (= ($generated@@22 ($generated@@23 $generated@@63) ($generated@@24 $generated@@64) ($generated@@60 $generated@@27 $generated@@65) ($generated@@24 $generated@@66) ($generated@@24 $generated@@67))  (and (< 0 $generated@@64) (ite ($generated@@29 ($generated@@60 $generated@@27 $generated@@65)) (= ($generated@@24 $generated@@67) ($generated@@24 (+ $generated@@66 1))) (ite ($generated@@30 ($generated@@60 $generated@@27 $generated@@65)) (let (($generated@@73 ($generated@@60 $generated@@27 ($generated@@31 ($generated@@60 $generated@@27 $generated@@65)))))
(let (($generated@@74 ($generated@@60 $generated@@27 ($generated@@32 ($generated@@60 $generated@@27 $generated@@65)))))
(exists (($generated@@75 Int) ) (!  (and ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) $generated@@74 ($generated@@24 $generated@@66) $generated@@75) ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) $generated@@73 $generated@@75 ($generated@@24 $generated@@67)))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) $generated@@73 $generated@@75 $generated@@67))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) $generated@@74 $generated@@66 $generated@@75))
)))) (let (($generated@@76 ($generated@@60 $generated@@27 ($generated@@33 ($generated@@60 $generated@@27 $generated@@65)))))
 (or (= ($generated@@24 $generated@@66) ($generated@@24 $generated@@67)) (exists (($generated@@77 Int) ) (!  (and ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) $generated@@76 ($generated@@24 $generated@@66) $generated@@77) ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) ($generated@@60 $generated@@27 $generated@@65) $generated@@77 ($generated@@24 $generated@@67)))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) $generated@@65 $generated@@77 $generated@@67))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@63) (- $generated@@64 1) $generated@@76 $generated@@66 $generated@@77))
))))))))))
 :weight 3
 :pattern ( ($generated@@22 ($generated@@23 $generated@@63) ($generated@@24 $generated@@64) ($generated@@60 $generated@@27 $generated@@65) ($generated@@24 $generated@@66) ($generated@@24 $generated@@67)))
))))
(assert (forall (($generated@@78 T@U) ) (! (= ($generated@@29 $generated@@78) (= ($generated@@57 $generated@@78) $generated@@1))
 :pattern ( ($generated@@29 $generated@@78))
)))
(assert (forall (($generated@@79 T@U) ) (! (= ($generated@@30 $generated@@79) (= ($generated@@57 $generated@@79) $generated@@2))
 :pattern ( ($generated@@30 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ) (! (= ($generated@@80 $generated@@81) (= ($generated@@57 $generated@@81) $generated@@3))
 :pattern ( ($generated@@80 $generated@@81))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@T) ) (! (= ($generated@@83 $generated@@85 ($generated@@82 $generated@@85 $generated@@84)) $generated@@84)
 :pattern ( ($generated@@82 $generated@@85 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ) (!  (=> ($generated@@30 $generated@@86) (exists (($generated@@87 T@U) ($generated@@88 T@U) ) (= $generated@@86 ($generated@@49 $generated@@87 $generated@@88))))
 :pattern ( ($generated@@30 $generated@@86))
)))
(assert (forall (($generated@@89 T@U) ) (!  (=> ($generated@@29 $generated@@89) (= $generated@@89 $generated@@58))
 :pattern ( ($generated@@29 $generated@@89))
)))
(assert (forall (($generated@@91 T@U) ) (!  (=> ($generated@@80 $generated@@91) (exists (($generated@@92 T@U) ) (= $generated@@91 ($generated@@90 $generated@@92))))
 :pattern ( ($generated@@80 $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ) (! (= ($generated@@26 $generated@@27 ($generated@@90 $generated@@93) $generated@@28) ($generated@@26 $generated@@27 $generated@@93 $generated@@28))
 :pattern ( ($generated@@26 $generated@@27 ($generated@@90 $generated@@93) $generated@@28))
)))
(assert  (=> (<= 2 $generated@@21) (forall (($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 Int) ($generated@@97 Int) ($generated@@98 Int) ) (!  (=> (and ($generated@@26 $generated@@27 $generated@@95 $generated@@28) (= $generated@@98 0)) (not ($generated@@22 $generated@@94 $generated@@98 $generated@@95 $generated@@96 $generated@@97)))
 :pattern ( ($generated@@22 $generated@@94 $generated@@98 $generated@@95 $generated@@96 $generated@@97))
))))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (! (= ($generated@@57 ($generated@@49 $generated@@99 $generated@@100)) $generated@@2)
 :pattern ( ($generated@@49 $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ) (! (= ($generated@@32 ($generated@@49 $generated@@101 $generated@@102)) $generated@@101)
 :pattern ( ($generated@@49 $generated@@101 $generated@@102))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@31 ($generated@@49 $generated@@103 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@49 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@105 T@U) ) (! (= ($generated@@57 ($generated@@90 $generated@@105)) $generated@@3)
 :pattern ( ($generated@@90 $generated@@105))
)))
(assert (forall (($generated@@106 T@U) ) (! (= ($generated@@33 ($generated@@90 $generated@@106)) $generated@@106)
 :pattern ( ($generated@@90 $generated@@106))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@T) ) (! (= ($generated@@82 $generated@@108 ($generated@@83 $generated@@108 $generated@@107)) $generated@@107)
 :pattern ( ($generated@@83 $generated@@108 $generated@@107))
)))
(assert (forall (($generated@@110 T@U) ) (!  (=> ($generated@@109 $generated@@110) (or (or ($generated@@29 $generated@@110) ($generated@@30 $generated@@110)) ($generated@@80 $generated@@110)))
 :pattern ( ($generated@@109 $generated@@110))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ) (! (< ($generated@@111 $generated@@112) ($generated@@111 ($generated@@49 $generated@@112 $generated@@113)))
 :pattern ( ($generated@@49 $generated@@112 $generated@@113))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (! (< ($generated@@111 $generated@@115) ($generated@@111 ($generated@@49 $generated@@114 $generated@@115)))
 :pattern ( ($generated@@49 $generated@@114 $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ) (! (< ($generated@@111 $generated@@116) ($generated@@111 ($generated@@90 $generated@@116)))
 :pattern ( ($generated@@90 $generated@@116))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@128 T@T) ($generated@@129 T@T) ($generated@@130 T@T) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (! (= ($generated@@117 $generated@@128 $generated@@129 $generated@@130 ($generated@@124 $generated@@128 $generated@@129 $generated@@130 $generated@@132 $generated@@133 $generated@@134 $generated@@131) $generated@@133 $generated@@134) $generated@@131)
 :weight 0
)) (and (forall (($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@T) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (!  (or (= $generated@@140 $generated@@142) (= ($generated@@117 $generated@@135 $generated@@136 $generated@@137 ($generated@@124 $generated@@135 $generated@@136 $generated@@137 $generated@@139 $generated@@140 $generated@@141 $generated@@138) $generated@@142 $generated@@143) ($generated@@117 $generated@@135 $generated@@136 $generated@@137 $generated@@139 $generated@@142 $generated@@143)))
 :weight 0
)) (forall (($generated@@144 T@T) ($generated@@145 T@T) ($generated@@146 T@T) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ) (!  (or (= $generated@@150 $generated@@152) (= ($generated@@117 $generated@@144 $generated@@145 $generated@@146 ($generated@@124 $generated@@144 $generated@@145 $generated@@146 $generated@@148 $generated@@149 $generated@@150 $generated@@147) $generated@@151 $generated@@152) ($generated@@117 $generated@@144 $generated@@145 $generated@@146 $generated@@148 $generated@@151 $generated@@152)))
 :weight 0
)))) (= ($generated@@5 $generated@@118) 4)) (= ($generated@@5 $generated@@119) 5)) (forall (($generated@@153 T@T) ($generated@@154 T@T) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ) (! (= ($generated@@121 $generated@@153 $generated@@154 ($generated@@125 $generated@@153 $generated@@154 $generated@@156 $generated@@157 $generated@@155) $generated@@157) $generated@@155)
 :weight 0
))) (forall (($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ) (!  (or (= $generated@@162 $generated@@163) (= ($generated@@121 $generated@@158 $generated@@159 ($generated@@125 $generated@@158 $generated@@159 $generated@@161 $generated@@162 $generated@@160) $generated@@163) ($generated@@121 $generated@@158 $generated@@159 $generated@@161 $generated@@163)))
 :weight 0
))) (= ($generated@@5 $generated@@122) 6)) (forall (($generated@@164 T@T) ($generated@@165 T@T) ) (= ($generated@@5 ($generated@@123 $generated@@164 $generated@@165)) 7))) (forall (($generated@@166 T@T) ($generated@@167 T@T) ) (! (= ($generated@@126 ($generated@@123 $generated@@166 $generated@@167)) $generated@@166)
 :pattern ( ($generated@@123 $generated@@166 $generated@@167))
))) (forall (($generated@@168 T@T) ($generated@@169 T@T) ) (! (= ($generated@@127 ($generated@@123 $generated@@168 $generated@@169)) $generated@@169)
 :pattern ( ($generated@@123 $generated@@168 $generated@@169))
))))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 Bool) ($generated@@174 T@U) ($generated@@175 T@U) ) (! (= ($generated@@10 ($generated@@117 $generated@@118 $generated@@119 $generated@@6 ($generated@@120 $generated@@170 $generated@@171 $generated@@172 $generated@@173) $generated@@174 $generated@@175))  (=> (and (or (not (= $generated@@174 $generated@@170)) (not true)) ($generated@@10 ($generated@@82 $generated@@6 ($generated@@121 $generated@@119 $generated@@122 ($generated@@121 $generated@@118 ($generated@@123 $generated@@119 $generated@@122) $generated@@171 $generated@@174) $generated@@172)))) $generated@@173))
 :pattern ( ($generated@@117 $generated@@118 $generated@@119 $generated@@6 ($generated@@120 $generated@@170 $generated@@171 $generated@@172 $generated@@173) $generated@@174 $generated@@175))
)))
(assert  (=> (<= 2 $generated@@21) (forall (($generated@@176 T@U) ($generated@@177 Int) ($generated@@178 T@U) ($generated@@179 Int) ($generated@@180 Int) ) (!  (=> (or ($generated@@25 $generated@@177 $generated@@178 $generated@@179 $generated@@180) (and (< 2 $generated@@21) (and (<= ($generated@@24 0) $generated@@177) ($generated@@26 $generated@@27 $generated@@178 $generated@@28)))) (and (=> (< 0 $generated@@177) (=> (not ($generated@@29 $generated@@178)) (and (=> ($generated@@30 $generated@@178) (let (($generated@@181 ($generated@@31 $generated@@178)))
(let (($generated@@182 ($generated@@32 $generated@@178)))
(forall (($generated@@183 Int) ) (!  (and ($generated@@25 (- $generated@@177 1) $generated@@182 $generated@@179 $generated@@183) (=> ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@182 $generated@@179 $generated@@183) ($generated@@25 (- $generated@@177 1) $generated@@181 $generated@@183 $generated@@180)))
 :pattern ( ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@181 $generated@@183 $generated@@180))
 :pattern ( ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@182 $generated@@179 $generated@@183))
))))) (=> (not ($generated@@30 $generated@@178)) (let (($generated@@184 ($generated@@33 $generated@@178)))
 (=> (or (not (= $generated@@179 $generated@@180)) (not true)) (forall (($generated@@185 Int) ) (!  (and ($generated@@25 (- $generated@@177 1) $generated@@184 $generated@@179 $generated@@185) (=> ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@184 $generated@@179 $generated@@185) ($generated@@25 (- $generated@@177 1) $generated@@178 $generated@@185 $generated@@180)))
 :pattern ( ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@178 $generated@@185 $generated@@180))
 :pattern ( ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@184 $generated@@179 $generated@@185))
)))))))) (= ($generated@@22 ($generated@@23 $generated@@176) $generated@@177 $generated@@178 $generated@@179 $generated@@180)  (and (< 0 $generated@@177) (ite ($generated@@29 $generated@@178) (= $generated@@180 (+ $generated@@179 1)) (ite ($generated@@30 $generated@@178) (let (($generated@@186 ($generated@@31 $generated@@178)))
(let (($generated@@187 ($generated@@32 $generated@@178)))
(exists (($generated@@188 Int) ) (!  (and ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@187 $generated@@179 $generated@@188) ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@186 $generated@@188 $generated@@180))
 :pattern ( ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@186 $generated@@188 $generated@@180))
 :pattern ( ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@187 $generated@@179 $generated@@188))
)))) (let (($generated@@189 ($generated@@33 $generated@@178)))
 (or (= $generated@@179 $generated@@180) (exists (($generated@@190 Int) ) (!  (and ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@189 $generated@@179 $generated@@190) ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@178 $generated@@190 $generated@@180))
 :pattern ( ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@178 $generated@@190 $generated@@180))
 :pattern ( ($generated@@22 $generated@@176 (- $generated@@177 1) $generated@@189 $generated@@179 $generated@@190))
))))))))))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@176) $generated@@177 $generated@@178 $generated@@179 $generated@@180))
))))
(assert (forall (($generated@@191 T@U) ) (!  (=> ($generated@@26 $generated@@27 $generated@@191 $generated@@28) (or (or ($generated@@29 $generated@@191) ($generated@@30 $generated@@191)) ($generated@@80 $generated@@191)))
 :pattern ( ($generated@@80 $generated@@191) ($generated@@26 $generated@@27 $generated@@191 $generated@@28))
 :pattern ( ($generated@@30 $generated@@191) ($generated@@26 $generated@@27 $generated@@191 $generated@@28))
 :pattern ( ($generated@@29 $generated@@191) ($generated@@26 $generated@@27 $generated@@191 $generated@@28))
)))
(assert (forall (($generated@@194 T@U) ($generated@@195 T@U) ) (!  (=> (and ($generated@@193 $generated@@195) ($generated@@26 $generated@@27 $generated@@194 $generated@@28)) ($generated@@192 $generated@@27 $generated@@194 $generated@@28 $generated@@195))
 :pattern ( ($generated@@192 $generated@@27 $generated@@194 $generated@@28 $generated@@195))
)))
(assert (= ($generated@@196 $generated@@28) $generated@@0))
(assert (= ($generated@@197 $generated@@28) $generated@@4))
(assert (= $generated@@58 ($generated@@60 $generated@@27 $generated@@58)))
(assert (forall (($generated@@198 T@U) ($generated@@199 T@U) ) (!  (=> (and ($generated@@193 $generated@@199) (and ($generated@@30 $generated@@198) ($generated@@192 $generated@@27 $generated@@198 $generated@@28 $generated@@199))) ($generated@@192 $generated@@27 ($generated@@32 $generated@@198) $generated@@28 $generated@@199))
 :pattern ( ($generated@@192 $generated@@27 ($generated@@32 $generated@@198) $generated@@28 $generated@@199))
)))
(assert (forall (($generated@@200 T@U) ($generated@@201 T@U) ) (!  (=> (and ($generated@@193 $generated@@201) (and ($generated@@30 $generated@@200) ($generated@@192 $generated@@27 $generated@@200 $generated@@28 $generated@@201))) ($generated@@192 $generated@@27 ($generated@@31 $generated@@200) $generated@@28 $generated@@201))
 :pattern ( ($generated@@192 $generated@@27 ($generated@@31 $generated@@200) $generated@@28 $generated@@201))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ) (!  (=> (and ($generated@@193 $generated@@203) (and ($generated@@80 $generated@@202) ($generated@@192 $generated@@27 $generated@@202 $generated@@28 $generated@@203))) ($generated@@192 $generated@@27 ($generated@@33 $generated@@202) $generated@@28 $generated@@203))
 :pattern ( ($generated@@192 $generated@@27 ($generated@@33 $generated@@202) $generated@@28 $generated@@203))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ) (! (= ($generated@@49 ($generated@@60 $generated@@27 $generated@@204) ($generated@@60 $generated@@27 $generated@@205)) ($generated@@60 $generated@@27 ($generated@@49 $generated@@204 $generated@@205)))
 :pattern ( ($generated@@49 ($generated@@60 $generated@@27 $generated@@204) ($generated@@60 $generated@@27 $generated@@205)))
)))
(assert (forall (($generated@@206 Int) ) (! (= ($generated@@83 $generated@@7 ($generated@@11 ($generated@@24 $generated@@206))) ($generated@@60 $generated@@122 ($generated@@83 $generated@@7 ($generated@@11 $generated@@206))))
 :pattern ( ($generated@@83 $generated@@7 ($generated@@11 ($generated@@24 $generated@@206))))
)))
(assert (forall (($generated@@207 T@U) ) (! (= ($generated@@90 ($generated@@60 $generated@@27 $generated@@207)) ($generated@@60 $generated@@27 ($generated@@90 $generated@@207)))
 :pattern ( ($generated@@90 ($generated@@60 $generated@@27 $generated@@207)))
)))
(assert (forall (($generated@@208 T@U) ($generated@@209 T@T) ) (! (= ($generated@@83 $generated@@209 ($generated@@60 $generated@@209 $generated@@208)) ($generated@@60 $generated@@122 ($generated@@83 $generated@@209 $generated@@208)))
 :pattern ( ($generated@@83 $generated@@209 ($generated@@60 $generated@@209 $generated@@208)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@210 () Int)
(declare-fun $generated@@211 () Int)
(declare-fun $generated@@212 () Int)
(declare-fun $generated@@213 () T@U)
(declare-fun $generated@@214 () T@U)
(declare-fun $generated@@215 () T@U)
(declare-fun $generated@@216 () T@U)
(declare-fun $generated@@217 () T@U)
(declare-fun $generated@@218 (T@U) Bool)
(declare-fun $generated@@219 () T@U)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@220  (=> (= (ControlFlow 0 2) (- 0 1)) (<= $generated@@210 $generated@@211))))
(let (($generated@@221  (=> (and (<= $generated@@212 0) (= (ControlFlow 0 4) 2)) $generated@@220)))
(let (($generated@@222  (=> (and (< 0 $generated@@212) (= (ControlFlow 0 3) 2)) $generated@@220)))
(let (($generated@@223  (=> (and (= $generated@@213 ($generated@@120 $generated@@214 $generated@@215 $generated false)) ($generated@@109 $generated@@216)) (=> (and (and ($generated@@193 $generated@@217) ($generated@@218 $generated@@217)) (and (= $generated@@215 $generated@@217) (forall (($generated@@224 Int) ($generated@@225 T@U) ($generated@@226 Int) ($generated@@227 Int) ) (!  (=> (and (and (and (<= ($generated@@24 0) $generated@@224) ($generated@@26 $generated@@27 $generated@@225 $generated@@28)) ($generated@@22 ($generated@@23 $generated@@219) $generated@@224 $generated@@225 $generated@@226 $generated@@227)) (or (and (<= 0 $generated@@224) (< $generated@@224 $generated@@212)) (and (= $generated@@224 $generated@@212) (or (< ($generated@@111 $generated@@225) ($generated@@111 $generated@@216)) (and (= ($generated@@111 $generated@@225) ($generated@@111 $generated@@216)) (or (and (<= 0 $generated@@226) (< $generated@@226 $generated@@210)) (and (= $generated@@226 $generated@@210) (and (<= 0 $generated@@227) (< $generated@@227 $generated@@211))))))))) (<= $generated@@226 $generated@@227))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@219) $generated@@224 $generated@@225 $generated@@226 $generated@@227))
)))) (and (=> (= (ControlFlow 0 5) 3) $generated@@222) (=> (= (ControlFlow 0 5) 4) $generated@@221))))))
(let (($generated@@228  (=> (and (and ($generated@@193 $generated@@215) ($generated@@218 $generated@@215)) (<= ($generated@@24 0) $generated@@212)) (=> (and (and (and (and ($generated@@26 $generated@@27 $generated@@216 $generated@@28) ($generated@@192 $generated@@27 $generated@@216 $generated@@28 $generated@@215)) ($generated@@109 $generated@@216)) (= 3 $generated@@21)) (and (and ($generated@@25 $generated@@212 $generated@@216 $generated@@210 $generated@@211) (and ($generated@@22 ($generated@@23 $generated@@219) $generated@@212 $generated@@216 $generated@@210 $generated@@211) (and (< 0 $generated@@212) (ite ($generated@@29 $generated@@216) (= $generated@@211 (+ $generated@@210 1)) (ite ($generated@@30 $generated@@216) (let (($generated@@229 ($generated@@31 $generated@@216)))
(let (($generated@@230 ($generated@@32 $generated@@216)))
(exists (($generated@@231 Int) ) (!  (and ($generated@@22 ($generated@@23 $generated@@219) (- $generated@@212 1) $generated@@230 $generated@@210 $generated@@231) ($generated@@22 ($generated@@23 $generated@@219) (- $generated@@212 1) $generated@@229 $generated@@231 $generated@@211))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@219) (- $generated@@212 1) $generated@@229 $generated@@231 $generated@@211))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@219) (- $generated@@212 1) $generated@@230 $generated@@210 $generated@@231))
)))) (let (($generated@@232 ($generated@@33 $generated@@216)))
 (or (= $generated@@210 $generated@@211) (exists (($generated@@233 Int) ) (!  (and ($generated@@22 ($generated@@23 $generated@@219) (- $generated@@212 1) $generated@@232 $generated@@210 $generated@@233) ($generated@@22 ($generated@@23 $generated@@219) (- $generated@@212 1) $generated@@216 $generated@@233 $generated@@211))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@219) (- $generated@@212 1) $generated@@216 $generated@@233 $generated@@211))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@219) (- $generated@@212 1) $generated@@232 $generated@@210 $generated@@233))
))))))))) (= (ControlFlow 0 6) 5))) $generated@@223))))
$generated@@228))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)