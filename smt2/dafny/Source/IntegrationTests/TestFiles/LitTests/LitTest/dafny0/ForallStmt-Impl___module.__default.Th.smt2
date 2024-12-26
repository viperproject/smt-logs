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
(declare-fun $generated@@20 (T@U) T@U)
(declare-fun $generated@@21 () T@U)
(declare-fun $generated@@22 (T@T T@U T@U) Bool)
(declare-fun $generated@@23 () T@T)
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@25 (Int) Int)
(declare-fun $generated@@27 (T@T T@U) T@U)
(declare-fun $generated@@30 (T@U) Bool)
(declare-fun $generated@@32 (T@U) Bool)
(declare-fun $generated@@34 (T@T T@U) T@U)
(declare-fun $generated@@35 (T@T T@U) T@U)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@43 (T@U) Bool)
(declare-fun $generated@@45 () Int)
(declare-fun $generated@@46 (T@U Int T@U Int) Bool)
(declare-fun $generated@@47 (T@U) T@U)
(declare-fun $generated@@48 (Int T@U Int) Bool)
(declare-fun $generated@@49 (T@U) T@U)
(declare-fun $generated@@79 (T@U) Int)
(declare-fun $generated@@81 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@82 () T@T)
(declare-fun $generated@@83 () T@T)
(declare-fun $generated@@84 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@85 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@86 () T@T)
(declare-fun $generated@@87 (T@T T@T) T@T)
(declare-fun $generated@@88 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@89 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@90 (T@T) T@T)
(declare-fun $generated@@91 (T@T) T@T)
(declare-fun $generated@@140 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@141 (T@U) Bool)
(declare-fun $generated@@144 (T@U) T@U)
(declare-fun $generated@@145 (T@U) T@U)
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
(assert (= ($generated@@20 $generated@@21) $generated@@1))
(assert (= ($generated@@4 $generated@@23) 3))
(assert ($generated@@22 $generated@@23 $generated@@21 $generated@@24))
(assert (forall (($generated@@26 Int) ) (! (= ($generated@@25 $generated@@26) $generated@@26)
 :pattern ( ($generated@@25 $generated@@26))
)))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@T) ) (! (= ($generated@@27 $generated@@29 $generated@@28) $generated@@28)
 :pattern ( ($generated@@27 $generated@@29 $generated@@28))
)))
(assert (forall (($generated@@31 T@U) ) (! (= ($generated@@30 $generated@@31) (= ($generated@@20 $generated@@31) $generated@@1))
 :pattern ( ($generated@@30 $generated@@31))
)))
(assert (forall (($generated@@33 T@U) ) (! (= ($generated@@32 $generated@@33) (= ($generated@@20 $generated@@33) $generated@@2))
 :pattern ( ($generated@@32 $generated@@33))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@T) ) (! (= ($generated@@35 $generated@@37 ($generated@@34 $generated@@37 $generated@@36)) $generated@@36)
 :pattern ( ($generated@@34 $generated@@37 $generated@@36))
)))
(assert (forall (($generated@@38 T@U) ) (!  (=> ($generated@@30 $generated@@38) (= $generated@@38 $generated@@21))
 :pattern ( ($generated@@30 $generated@@38))
)))
(assert (forall (($generated@@40 T@U) ) (!  (=> ($generated@@32 $generated@@40) (exists (($generated@@41 T@U) ) (= $generated@@40 ($generated@@39 $generated@@41))))
 :pattern ( ($generated@@32 $generated@@40))
)))
(assert (forall (($generated@@42 T@U) ) (! (= ($generated@@22 $generated@@23 ($generated@@39 $generated@@42) $generated@@24) ($generated@@22 $generated@@23 $generated@@42 $generated@@24))
 :pattern ( ($generated@@22 $generated@@23 ($generated@@39 $generated@@42) $generated@@24))
)))
(assert (forall (($generated@@44 T@U) ) (!  (=> ($generated@@43 $generated@@44) (or ($generated@@30 $generated@@44) ($generated@@32 $generated@@44)))
 :pattern ( ($generated@@43 $generated@@44))
)))
(assert  (=> (<= 1 $generated@@45) (forall (($generated@@50 T@U) ($generated@@51 Int) ($generated@@52 T@U) ($generated@@53 Int) ) (!  (=> (or ($generated@@48 $generated@@51 $generated@@52 $generated@@53) (and (< 1 $generated@@45) (and (and (<= ($generated@@25 0) $generated@@51) ($generated@@22 $generated@@23 $generated@@52 $generated@@24)) (<= ($generated@@25 0) $generated@@53)))) (and (=> (not ($generated@@30 $generated@@52)) (let (($generated@@54 ($generated@@49 $generated@@52)))
 (=> (> $generated@@51 0) (forall (($generated@@55 Int) ($generated@@56 Int) ) (!  (=> (and (<= ($generated@@25 0) $generated@@55) (<= ($generated@@25 0) $generated@@56)) (=> (= $generated@@56 (- $generated@@51 1)) ($generated@@48 $generated@@56 $generated@@54 $generated@@55)))
 :pattern ( ($generated@@46 $generated@@50 $generated@@56 $generated@@54 $generated@@55))
))))) (= ($generated@@46 ($generated@@47 $generated@@50) $generated@@51 $generated@@52 $generated@@53) (ite ($generated@@30 $generated@@52) true (let (($generated@@57 ($generated@@49 $generated@@52)))
 (and (> $generated@@51 0) (exists (($generated@@58 Int) ($generated@@59 Int) ) (!  (and (and (and (<= ($generated@@25 0) $generated@@58) (<= ($generated@@25 0) $generated@@59)) (= $generated@@59 (- $generated@@51 1))) ($generated@@46 $generated@@50 $generated@@59 $generated@@57 $generated@@58))
 :pattern ( ($generated@@46 $generated@@50 $generated@@59 $generated@@57 $generated@@58))
))))))))
 :pattern ( ($generated@@46 ($generated@@47 $generated@@50) $generated@@51 $generated@@52 $generated@@53))
))))
(assert (forall (($generated@@60 T@U) ) (!  (=> ($generated@@22 $generated@@23 $generated@@60 $generated@@24) (or ($generated@@30 $generated@@60) ($generated@@32 $generated@@60)))
 :pattern ( ($generated@@32 $generated@@60) ($generated@@22 $generated@@23 $generated@@60 $generated@@24))
 :pattern ( ($generated@@30 $generated@@60) ($generated@@22 $generated@@23 $generated@@60 $generated@@24))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 Int) ($generated@@63 T@U) ($generated@@64 Int) ) (! (= ($generated@@46 ($generated@@47 $generated@@61) $generated@@62 $generated@@63 $generated@@64) ($generated@@46 $generated@@61 $generated@@62 $generated@@63 $generated@@64))
 :pattern ( ($generated@@46 ($generated@@47 $generated@@61) $generated@@62 $generated@@63 $generated@@64))
)))
(assert (forall (($generated@@65 T@U) ) (! (= ($generated@@20 ($generated@@39 $generated@@65)) $generated@@2)
 :pattern ( ($generated@@39 $generated@@65))
)))
(assert (forall (($generated@@66 T@U) ) (! (= ($generated@@49 ($generated@@39 $generated@@66)) $generated@@66)
 :pattern ( ($generated@@39 $generated@@66))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@T) ) (! (= ($generated@@34 $generated@@68 ($generated@@35 $generated@@68 $generated@@67)) $generated@@67)
 :pattern ( ($generated@@35 $generated@@68 $generated@@67))
)))
(assert  (=> (<= 1 $generated@@45) (forall (($generated@@69 T@U) ($generated@@70 Int) ($generated@@71 T@U) ($generated@@72 Int) ) (!  (=> (or ($generated@@48 ($generated@@25 $generated@@70) ($generated@@27 $generated@@23 $generated@@71) ($generated@@25 $generated@@72)) (and (< 1 $generated@@45) (and (and (<= ($generated@@25 0) $generated@@70) ($generated@@22 $generated@@23 $generated@@71 $generated@@24)) (<= ($generated@@25 0) $generated@@72)))) (and (=> (not ($generated@@9 ($generated@@27 $generated@@5 ($generated@@8 ($generated@@30 ($generated@@27 $generated@@23 $generated@@71)))))) (let (($generated@@73 ($generated@@27 $generated@@23 ($generated@@49 ($generated@@27 $generated@@23 $generated@@71)))))
 (=> ($generated@@9 ($generated@@27 $generated@@5 ($generated@@8 (> $generated@@70 0)))) (forall (($generated@@74 Int) ($generated@@75 Int) ) (!  (=> (and (<= ($generated@@25 0) $generated@@74) (<= ($generated@@25 0) $generated@@75)) (=> (= $generated@@75 ($generated@@25 (- $generated@@70 1))) ($generated@@48 $generated@@75 $generated@@73 $generated@@74)))
 :pattern ( ($generated@@46 ($generated@@47 $generated@@69) $generated@@75 $generated@@73 $generated@@74))
))))) (= ($generated@@46 ($generated@@47 $generated@@69) ($generated@@25 $generated@@70) ($generated@@27 $generated@@23 $generated@@71) ($generated@@25 $generated@@72)) (ite ($generated@@30 ($generated@@27 $generated@@23 $generated@@71)) true (let (($generated@@76 ($generated@@27 $generated@@23 ($generated@@49 ($generated@@27 $generated@@23 $generated@@71)))))
 (and (> $generated@@70 0) (exists (($generated@@77 Int) ($generated@@78 Int) ) (!  (and (and (and (<= ($generated@@25 0) $generated@@77) (<= ($generated@@25 0) $generated@@78)) (= $generated@@78 ($generated@@25 (- $generated@@70 1)))) ($generated@@46 ($generated@@47 $generated@@69) $generated@@78 $generated@@76 $generated@@77))
 :pattern ( ($generated@@46 ($generated@@47 $generated@@69) $generated@@78 $generated@@76 $generated@@77))
))))))))
 :weight 3
 :pattern ( ($generated@@46 ($generated@@47 $generated@@69) ($generated@@25 $generated@@70) ($generated@@27 $generated@@23 $generated@@71) ($generated@@25 $generated@@72)))
))))
(assert (forall (($generated@@80 T@U) ) (! (< ($generated@@79 $generated@@80) ($generated@@79 ($generated@@39 $generated@@80)))
 :pattern ( ($generated@@39 $generated@@80))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@92 T@T) ($generated@@93 T@T) ($generated@@94 T@T) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@81 $generated@@92 $generated@@93 $generated@@94 ($generated@@88 $generated@@92 $generated@@93 $generated@@94 $generated@@96 $generated@@97 $generated@@98 $generated@@95) $generated@@97 $generated@@98) $generated@@95)
 :weight 0
)) (and (forall (($generated@@99 T@T) ($generated@@100 T@T) ($generated@@101 T@T) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ) (!  (or (= $generated@@104 $generated@@106) (= ($generated@@81 $generated@@99 $generated@@100 $generated@@101 ($generated@@88 $generated@@99 $generated@@100 $generated@@101 $generated@@103 $generated@@104 $generated@@105 $generated@@102) $generated@@106 $generated@@107) ($generated@@81 $generated@@99 $generated@@100 $generated@@101 $generated@@103 $generated@@106 $generated@@107)))
 :weight 0
)) (forall (($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@T) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (!  (or (= $generated@@114 $generated@@116) (= ($generated@@81 $generated@@108 $generated@@109 $generated@@110 ($generated@@88 $generated@@108 $generated@@109 $generated@@110 $generated@@112 $generated@@113 $generated@@114 $generated@@111) $generated@@115 $generated@@116) ($generated@@81 $generated@@108 $generated@@109 $generated@@110 $generated@@112 $generated@@115 $generated@@116)))
 :weight 0
)))) (= ($generated@@4 $generated@@82) 4)) (= ($generated@@4 $generated@@83) 5)) (forall (($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (! (= ($generated@@85 $generated@@117 $generated@@118 ($generated@@89 $generated@@117 $generated@@118 $generated@@120 $generated@@121 $generated@@119) $generated@@121) $generated@@119)
 :weight 0
))) (forall (($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (!  (or (= $generated@@126 $generated@@127) (= ($generated@@85 $generated@@122 $generated@@123 ($generated@@89 $generated@@122 $generated@@123 $generated@@125 $generated@@126 $generated@@124) $generated@@127) ($generated@@85 $generated@@122 $generated@@123 $generated@@125 $generated@@127)))
 :weight 0
))) (= ($generated@@4 $generated@@86) 6)) (forall (($generated@@128 T@T) ($generated@@129 T@T) ) (= ($generated@@4 ($generated@@87 $generated@@128 $generated@@129)) 7))) (forall (($generated@@130 T@T) ($generated@@131 T@T) ) (! (= ($generated@@90 ($generated@@87 $generated@@130 $generated@@131)) $generated@@130)
 :pattern ( ($generated@@87 $generated@@130 $generated@@131))
))) (forall (($generated@@132 T@T) ($generated@@133 T@T) ) (! (= ($generated@@91 ($generated@@87 $generated@@132 $generated@@133)) $generated@@133)
 :pattern ( ($generated@@87 $generated@@132 $generated@@133))
))))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 Bool) ($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@9 ($generated@@81 $generated@@82 $generated@@83 $generated@@5 ($generated@@84 $generated@@134 $generated@@135 $generated@@136 $generated@@137) $generated@@138 $generated@@139))  (=> (and (or (not (= $generated@@138 $generated@@134)) (not true)) ($generated@@9 ($generated@@34 $generated@@5 ($generated@@85 $generated@@83 $generated@@86 ($generated@@85 $generated@@82 ($generated@@87 $generated@@83 $generated@@86) $generated@@135 $generated@@138) $generated@@136)))) $generated@@137))
 :pattern ( ($generated@@81 $generated@@82 $generated@@83 $generated@@5 ($generated@@84 $generated@@134 $generated@@135 $generated@@136 $generated@@137) $generated@@138 $generated@@139))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (!  (=> (and ($generated@@141 $generated@@143) ($generated@@22 $generated@@23 $generated@@142 $generated@@24)) ($generated@@140 $generated@@23 $generated@@142 $generated@@24 $generated@@143))
 :pattern ( ($generated@@140 $generated@@23 $generated@@142 $generated@@24 $generated@@143))
)))
(assert (= ($generated@@144 $generated@@24) $generated@@0))
(assert (= ($generated@@145 $generated@@24) $generated@@3))
(assert (= $generated@@21 ($generated@@27 $generated@@23 $generated@@21)))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ) (!  (=> (and ($generated@@141 $generated@@147) (and ($generated@@32 $generated@@146) ($generated@@140 $generated@@23 $generated@@146 $generated@@24 $generated@@147))) ($generated@@140 $generated@@23 ($generated@@49 $generated@@146) $generated@@24 $generated@@147))
 :pattern ( ($generated@@140 $generated@@23 ($generated@@49 $generated@@146) $generated@@24 $generated@@147))
)))
(assert (forall (($generated@@148 Int) ) (! (= ($generated@@35 $generated@@6 ($generated@@10 ($generated@@25 $generated@@148))) ($generated@@27 $generated@@86 ($generated@@35 $generated@@6 ($generated@@10 $generated@@148))))
 :pattern ( ($generated@@35 $generated@@6 ($generated@@10 ($generated@@25 $generated@@148))))
)))
(assert (forall (($generated@@149 T@U) ) (! (= ($generated@@39 ($generated@@27 $generated@@23 $generated@@149)) ($generated@@27 $generated@@23 ($generated@@39 $generated@@149)))
 :pattern ( ($generated@@39 ($generated@@27 $generated@@23 $generated@@149)))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@T) ) (! (= ($generated@@35 $generated@@151 ($generated@@27 $generated@@151 $generated@@150)) ($generated@@27 $generated@@86 ($generated@@35 $generated@@151 $generated@@150)))
 :pattern ( ($generated@@35 $generated@@151 ($generated@@27 $generated@@151 $generated@@150)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@152 () T@U)
(declare-fun $generated@@153 () T@U)
(declare-fun $generated@@154 () T@U)
(declare-fun $generated@@155 () T@U)
(declare-fun $generated@@156 () T@U)
(declare-fun $generated@@157 (T@U) Bool)
(declare-fun $generated@@158 () T@U)
(declare-fun $generated@@159 () Int)
(declare-fun $generated@@160 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@161  (=> (and (= $generated@@152 ($generated@@84 $generated@@153 $generated@@154 $generated false)) ($generated@@43 $generated@@155)) (=> (and (and (and ($generated@@141 $generated@@156) ($generated@@157 $generated@@156)) (= $generated@@154 $generated@@156)) (and (forall (($generated@@162 Int) ($generated@@163 T@U) ($generated@@164 Int) ) (!  (=> (and (and (and (and (<= ($generated@@25 0) $generated@@162) ($generated@@22 $generated@@23 $generated@@163 $generated@@24)) (<= ($generated@@25 0) $generated@@164)) (and ($generated@@32 $generated@@163) ($generated@@46 ($generated@@47 $generated@@158) $generated@@162 $generated@@163 $generated@@164))) (or (and (<= 0 $generated@@162) (< $generated@@162 $generated@@159)) (and (= $generated@@162 $generated@@159) (or (< ($generated@@79 $generated@@163) ($generated@@79 $generated@@155)) (and (= ($generated@@79 $generated@@163) ($generated@@79 $generated@@155)) (and (<= 0 $generated@@164) (< $generated@@164 $generated@@160))))))) (exists (($generated@@165 Int) ($generated@@166 Int) ) (!  (and (and (and (<= ($generated@@25 0) $generated@@165) (<= ($generated@@25 0) $generated@@166)) (= $generated@@166 (- $generated@@162 1))) ($generated@@46 ($generated@@47 $generated@@158) $generated@@166 ($generated@@49 $generated@@163) $generated@@165))
 :pattern ( ($generated@@46 ($generated@@47 $generated@@158) $generated@@166 ($generated@@49 $generated@@163) $generated@@165))
)))
 :pattern ( ($generated@@46 ($generated@@47 $generated@@158) $generated@@162 $generated@@163 $generated@@164))
)) (= (ControlFlow 0 2) (- 0 1)))) (exists (($generated@@167 Int) ($generated@@168 Int) ) (!  (and (and (and (<= ($generated@@25 0) $generated@@167) (<= ($generated@@25 0) $generated@@168)) (= $generated@@168 (- $generated@@159 1))) ($generated@@46 ($generated@@47 $generated@@158) $generated@@168 ($generated@@49 $generated@@155) $generated@@167))
 :pattern ( ($generated@@46 ($generated@@47 $generated@@158) $generated@@168 ($generated@@49 $generated@@155) $generated@@167))
))))))
(let (($generated@@169  (=> (and (and ($generated@@141 $generated@@154) ($generated@@157 $generated@@154)) (<= ($generated@@25 0) $generated@@159)) (=> (and (and (and (and (and ($generated@@22 $generated@@23 $generated@@155 $generated@@24) ($generated@@140 $generated@@23 $generated@@155 $generated@@24 $generated@@154)) ($generated@@43 $generated@@155)) (<= ($generated@@25 0) $generated@@160)) (and (= 2 $generated@@45) ($generated@@32 $generated@@155))) (and (and ($generated@@48 $generated@@159 $generated@@155 $generated@@160) (and ($generated@@46 ($generated@@47 $generated@@158) $generated@@159 $generated@@155 $generated@@160) (ite ($generated@@30 $generated@@155) true (let (($generated@@170 ($generated@@49 $generated@@155)))
 (and (> $generated@@159 0) (exists (($generated@@171 Int) ($generated@@172 Int) ) (!  (and (and (and (<= ($generated@@25 0) $generated@@171) (<= ($generated@@25 0) $generated@@172)) (= $generated@@172 (- $generated@@159 1))) ($generated@@46 ($generated@@47 $generated@@158) $generated@@172 $generated@@170 $generated@@171))
 :pattern ( ($generated@@46 ($generated@@47 $generated@@158) $generated@@172 $generated@@170 $generated@@171))
))))))) (= (ControlFlow 0 3) 2))) $generated@@161))))
$generated@@169)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)