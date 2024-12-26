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
(declare-fun $generated@@22 (T@U Int) T@U)
(declare-fun $generated@@23 (T@U Int T@U) T@U)
(declare-fun $generated@@28 (T@U Int) T@U)
(declare-fun $generated@@35 (Int) Int)
(declare-fun $generated@@37 (T@T T@U) T@U)
(declare-fun $generated@@42 (T@T T@U) T@U)
(declare-fun $generated@@43 (T@T T@U) T@U)
(declare-fun $generated@@46 (T@U T@U T@U) Bool)
(declare-fun $generated@@47 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@59 (T@U T@U) Bool)
(declare-fun $generated@@60 (T@T T@U T@U) Bool)
(declare-fun $generated@@66 () T@T)
(declare-fun $generated@@67 (T@U) T@U)
(declare-fun $generated@@72 (T@U) T@U)
(declare-fun $generated@@77 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@78 () T@T)
(declare-fun $generated@@79 () T@T)
(declare-fun $generated@@80 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@81 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@82 () T@T)
(declare-fun $generated@@83 (T@T T@T) T@T)
(declare-fun $generated@@84 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@85 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@86 (T@T) T@T)
(declare-fun $generated@@87 (T@T) T@T)
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
(assert (forall (($generated@@24 T@U) ($generated@@25 Int) ($generated@@26 T@U) ($generated@@27 Int) ) (!  (=> (and (<= 0 $generated@@27) (< $generated@@27 ($generated@@20 $generated@@24))) (and (=> (= $generated@@25 $generated@@27) (= ($generated@@22 ($generated@@23 $generated@@24 $generated@@25 $generated@@26) $generated@@27) $generated@@26)) (=> (or (not (= $generated@@25 $generated@@27)) (not true)) (= ($generated@@22 ($generated@@23 $generated@@24 $generated@@25 $generated@@26) $generated@@27) ($generated@@22 $generated@@24 $generated@@27)))))
 :pattern ( ($generated@@22 ($generated@@23 $generated@@24 $generated@@25 $generated@@26) $generated@@27))
)))
(assert (forall (($generated@@29 T@U) ($generated@@30 Int) ($generated@@31 T@U) ($generated@@32 Int) ) (!  (=> (and (and (<= 0 $generated@@32) (<= $generated@@32 $generated@@30)) (< $generated@@30 ($generated@@20 $generated@@29))) (= ($generated@@28 ($generated@@23 $generated@@29 $generated@@30 $generated@@31) $generated@@32) ($generated@@23 ($generated@@28 $generated@@29 $generated@@32) (- $generated@@30 $generated@@32) $generated@@31)))
 :pattern ( ($generated@@28 ($generated@@23 $generated@@29 $generated@@30 $generated@@31) $generated@@32))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 Int) ) (!  (=> (= $generated@@34 0) (= ($generated@@28 $generated@@33 $generated@@34) $generated@@33))
 :pattern ( ($generated@@28 $generated@@33 $generated@@34))
)))
(assert (forall (($generated@@36 Int) ) (! (= ($generated@@35 $generated@@36) $generated@@36)
 :pattern ( ($generated@@35 $generated@@36))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@T) ) (! (= ($generated@@37 $generated@@39 $generated@@38) $generated@@38)
 :pattern ( ($generated@@37 $generated@@39 $generated@@38))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 Int) ) (!  (=> (and (<= 0 $generated@@41) (<= $generated@@41 ($generated@@20 $generated@@40))) (= ($generated@@20 ($generated@@28 $generated@@40 $generated@@41)) (- ($generated@@20 $generated@@40) $generated@@41)))
 :pattern ( ($generated@@20 ($generated@@28 $generated@@40 $generated@@41)))
)))
(assert (forall (($generated@@44 T@U) ($generated@@45 T@T) ) (! (= ($generated@@43 $generated@@45 ($generated@@42 $generated@@45 $generated@@44)) $generated@@44)
 :pattern ( ($generated@@42 $generated@@45 $generated@@44))
)))
(assert (forall (($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@T) ) (! (= ($generated@@46 ($generated@@43 $generated@@51 $generated@@48) $generated@@49 $generated@@50) ($generated@@47 $generated@@51 $generated@@48 $generated@@49 $generated@@50))
 :pattern ( ($generated@@46 ($generated@@43 $generated@@51 $generated@@48) $generated@@49 $generated@@50))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 Int) ($generated@@54 Int) ) (!  (=> (and (and (<= 0 $generated@@53) (<= 0 $generated@@54)) (< $generated@@54 (- ($generated@@20 $generated@@52) $generated@@53))) (= ($generated@@22 ($generated@@28 $generated@@52 $generated@@53) $generated@@54) ($generated@@22 $generated@@52 (+ $generated@@54 $generated@@53))))
 :weight 25
 :pattern ( ($generated@@22 ($generated@@28 $generated@@52 $generated@@53) $generated@@54))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 Int) ($generated@@57 T@U) ($generated@@58 Int) ) (!  (=> (and (and (<= 0 $generated@@56) (< $generated@@56 $generated@@58)) (<= $generated@@58 ($generated@@20 $generated@@55))) (= ($generated@@28 ($generated@@23 $generated@@55 $generated@@56 $generated@@57) $generated@@58) ($generated@@28 $generated@@55 $generated@@58)))
 :pattern ( ($generated@@28 ($generated@@23 $generated@@55 $generated@@56 $generated@@57) $generated@@58))
)))
(assert (forall (($generated@@61 T@U) ) (!  (=> ($generated@@59 $generated@@61 $generated) (and (= ($generated@@43 $generated@@5 ($generated@@42 $generated@@5 $generated@@61)) $generated@@61) ($generated@@60 $generated@@5 ($generated@@42 $generated@@5 $generated@@61) $generated)))
 :pattern ( ($generated@@59 $generated@@61 $generated))
)))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@T) ) (! (= ($generated@@59 ($generated@@43 $generated@@64 $generated@@62) $generated@@63) ($generated@@60 $generated@@64 $generated@@62 $generated@@63))
 :pattern ( ($generated@@59 ($generated@@43 $generated@@64 $generated@@62) $generated@@63))
)))
(assert (forall (($generated@@65 T@U) ) (! (<= 0 ($generated@@20 $generated@@65))
 :pattern ( ($generated@@20 $generated@@65))
)))
(assert (= ($generated@@3 $generated@@66) 3))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@47 $generated@@66 $generated@@68 ($generated@@67 $generated@@69) $generated@@70) (forall (($generated@@71 Int) ) (!  (=> (and (<= 0 $generated@@71) (< $generated@@71 ($generated@@20 $generated@@68))) ($generated@@46 ($generated@@22 $generated@@68 $generated@@71) $generated@@69 $generated@@70))
 :pattern ( ($generated@@22 $generated@@68 $generated@@71))
)))
 :pattern ( ($generated@@47 $generated@@66 $generated@@68 ($generated@@67 $generated@@69) $generated@@70))
)))
(assert (forall (($generated@@73 T@U) ) (! (= ($generated@@72 ($generated@@67 $generated@@73)) $generated@@73)
 :pattern ( ($generated@@67 $generated@@73))
)))
(assert (forall (($generated@@74 T@U) ) (! (= ($generated@@19 ($generated@@67 $generated@@74)) $generated@@1)
 :pattern ( ($generated@@67 $generated@@74))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@T) ) (! (= ($generated@@42 $generated@@76 ($generated@@43 $generated@@76 $generated@@75)) $generated@@75)
 :pattern ( ($generated@@43 $generated@@76 $generated@@75))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@88 T@T) ($generated@@89 T@T) ($generated@@90 T@T) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@77 $generated@@88 $generated@@89 $generated@@90 ($generated@@84 $generated@@88 $generated@@89 $generated@@90 $generated@@92 $generated@@93 $generated@@94 $generated@@91) $generated@@93 $generated@@94) $generated@@91)
 :weight 0
)) (and (forall (($generated@@95 T@T) ($generated@@96 T@T) ($generated@@97 T@T) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ) (!  (or (= $generated@@100 $generated@@102) (= ($generated@@77 $generated@@95 $generated@@96 $generated@@97 ($generated@@84 $generated@@95 $generated@@96 $generated@@97 $generated@@99 $generated@@100 $generated@@101 $generated@@98) $generated@@102 $generated@@103) ($generated@@77 $generated@@95 $generated@@96 $generated@@97 $generated@@99 $generated@@102 $generated@@103)))
 :weight 0
)) (forall (($generated@@104 T@T) ($generated@@105 T@T) ($generated@@106 T@T) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (!  (or (= $generated@@110 $generated@@112) (= ($generated@@77 $generated@@104 $generated@@105 $generated@@106 ($generated@@84 $generated@@104 $generated@@105 $generated@@106 $generated@@108 $generated@@109 $generated@@110 $generated@@107) $generated@@111 $generated@@112) ($generated@@77 $generated@@104 $generated@@105 $generated@@106 $generated@@108 $generated@@111 $generated@@112)))
 :weight 0
)))) (= ($generated@@3 $generated@@78) 4)) (= ($generated@@3 $generated@@79) 5)) (forall (($generated@@113 T@T) ($generated@@114 T@T) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@81 $generated@@113 $generated@@114 ($generated@@85 $generated@@113 $generated@@114 $generated@@116 $generated@@117 $generated@@115) $generated@@117) $generated@@115)
 :weight 0
))) (forall (($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (!  (or (= $generated@@122 $generated@@123) (= ($generated@@81 $generated@@118 $generated@@119 ($generated@@85 $generated@@118 $generated@@119 $generated@@121 $generated@@122 $generated@@120) $generated@@123) ($generated@@81 $generated@@118 $generated@@119 $generated@@121 $generated@@123)))
 :weight 0
))) (= ($generated@@3 $generated@@82) 6)) (forall (($generated@@124 T@T) ($generated@@125 T@T) ) (= ($generated@@3 ($generated@@83 $generated@@124 $generated@@125)) 7))) (forall (($generated@@126 T@T) ($generated@@127 T@T) ) (! (= ($generated@@86 ($generated@@83 $generated@@126 $generated@@127)) $generated@@126)
 :pattern ( ($generated@@83 $generated@@126 $generated@@127))
))) (forall (($generated@@128 T@T) ($generated@@129 T@T) ) (! (= ($generated@@87 ($generated@@83 $generated@@128 $generated@@129)) $generated@@129)
 :pattern ( ($generated@@83 $generated@@128 $generated@@129))
))))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 Bool) ($generated@@134 T@U) ($generated@@135 T@U) ) (! (= ($generated@@8 ($generated@@77 $generated@@78 $generated@@79 $generated@@4 ($generated@@80 $generated@@130 $generated@@131 $generated@@132 $generated@@133) $generated@@134 $generated@@135))  (=> (and (or (not (= $generated@@134 $generated@@130)) (not true)) ($generated@@8 ($generated@@42 $generated@@4 ($generated@@81 $generated@@79 $generated@@82 ($generated@@81 $generated@@78 ($generated@@83 $generated@@79 $generated@@82) $generated@@131 $generated@@134) $generated@@132)))) $generated@@133))
 :pattern ( ($generated@@77 $generated@@78 $generated@@79 $generated@@4 ($generated@@80 $generated@@130 $generated@@131 $generated@@132 $generated@@133) $generated@@134 $generated@@135))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 Int) ($generated@@138 T@U) ) (!  (=> (and (<= 0 $generated@@137) (< $generated@@137 ($generated@@20 $generated@@136))) (= ($generated@@20 ($generated@@23 $generated@@136 $generated@@137 $generated@@138)) ($generated@@20 $generated@@136)))
 :pattern ( ($generated@@20 ($generated@@23 $generated@@136 $generated@@137 $generated@@138)))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (!  (=> ($generated@@59 $generated@@139 ($generated@@67 $generated@@140)) (and (= ($generated@@43 $generated@@66 ($generated@@42 $generated@@66 $generated@@139)) $generated@@139) ($generated@@60 $generated@@66 ($generated@@42 $generated@@66 $generated@@139) ($generated@@67 $generated@@140))))
 :pattern ( ($generated@@59 $generated@@139 ($generated@@67 $generated@@140)))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 Int) ($generated@@143 Int) ) (!  (=> (and (and (<= 0 $generated@@142) (<= $generated@@142 $generated@@143)) (< $generated@@143 ($generated@@20 $generated@@141))) (= ($generated@@22 ($generated@@28 $generated@@141 $generated@@142) (- $generated@@143 $generated@@142)) ($generated@@22 $generated@@141 $generated@@143)))
 :weight 25
 :pattern ( ($generated@@22 $generated@@141 $generated@@143) ($generated@@28 $generated@@141 $generated@@142))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 Int) ($generated@@146 Int) ) (!  (=> (and (and (<= 0 $generated@@145) (<= 0 $generated@@146)) (<= (+ $generated@@145 $generated@@146) ($generated@@20 $generated@@144))) (= ($generated@@28 ($generated@@28 $generated@@144 $generated@@145) $generated@@146) ($generated@@28 $generated@@144 (+ $generated@@145 $generated@@146))))
 :pattern ( ($generated@@28 ($generated@@28 $generated@@144 $generated@@145) $generated@@146))
)))
(assert (forall (($generated@@147 Int) ) (! (= ($generated@@43 $generated@@5 ($generated@@9 ($generated@@35 $generated@@147))) ($generated@@37 $generated@@82 ($generated@@43 $generated@@5 ($generated@@9 $generated@@147))))
 :pattern ( ($generated@@43 $generated@@5 ($generated@@9 ($generated@@35 $generated@@147))))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@T) ) (! (= ($generated@@43 $generated@@149 ($generated@@37 $generated@@149 $generated@@148)) ($generated@@37 $generated@@82 ($generated@@43 $generated@@149 $generated@@148)))
 :pattern ( ($generated@@43 $generated@@149 ($generated@@37 $generated@@149 $generated@@148)))
)))
(assert (forall (($generated@@150 T@U) ) (!  (=> (= ($generated@@20 $generated@@150) 0) (= $generated@@150 $generated@@21))
 :pattern ( ($generated@@20 $generated@@150))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ) (! ($generated@@47 $generated@@5 $generated@@152 $generated $generated@@151)
 :pattern ( ($generated@@47 $generated@@5 $generated@@152 $generated $generated@@151))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ) (! (= ($generated@@60 $generated@@66 $generated@@153 ($generated@@67 $generated@@154)) (forall (($generated@@155 Int) ) (!  (=> (and (<= 0 $generated@@155) (< $generated@@155 ($generated@@20 $generated@@153))) ($generated@@59 ($generated@@22 $generated@@153 $generated@@155) $generated@@154))
 :pattern ( ($generated@@22 $generated@@153 $generated@@155))
)))
 :pattern ( ($generated@@60 $generated@@66 $generated@@153 ($generated@@67 $generated@@154)))
)))
(assert (forall (($generated@@156 T@U) ) (! ($generated@@60 $generated@@5 $generated@@156 $generated)
 :pattern ( ($generated@@60 $generated@@5 $generated@@156 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@158 () T@U)
(declare-fun $generated@@159 () T@U)
(declare-fun $generated@@160 () Int)
(declare-fun $generated@@161 () T@U)
(declare-fun $generated@@162 () T@U)
(declare-fun $generated@@163 () Int)
(declare-fun $generated@@164 () Int)
(declare-fun $generated@@165 () T@U)
(declare-fun $generated@@166 (T@U T@U) Bool)
(declare-fun $generated@@167 (T@U T@U) Bool)
(declare-fun $generated@@168 (T@U) Bool)
(declare-fun $generated@@169 (T@U) Bool)
(declare-fun $generated@@170 () T@U)
(declare-fun $generated@@171 () Int)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@172  (=> (= $generated@@157 ($generated@@80 $generated@@158 $generated@@159 $generated@@2 false)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 $generated@@160) (< $generated@@160 ($generated@@20 $generated@@161)))) (=> (and (<= 0 $generated@@160) (< $generated@@160 ($generated@@20 $generated@@161))) (=> (= $generated@@162 ($generated@@23 $generated@@161 $generated@@160 ($generated@@43 $generated@@5 ($generated@@9 $generated@@163)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 $generated@@164) (<= $generated@@164 ($generated@@20 $generated@@162)))) (=> (= $generated@@165 ($generated@@28 $generated@@162 $generated@@164)) (=> (and (and ($generated@@47 $generated@@66 $generated@@165 ($generated@@67 $generated) $generated@@159) ($generated@@166 $generated ($generated@@28 $generated@@162 $generated@@164))) (and ($generated@@166 $generated ($generated@@28 $generated@@162 $generated@@164)) (= (ControlFlow 0 2) (- 0 1)))) ($generated@@167 $generated ($generated@@28 $generated@@162 $generated@@164)))))))))))
(let (($generated@@173  (=> (and ($generated@@168 $generated@@159) ($generated@@169 $generated@@159)) (=> (and (and ($generated@@60 $generated@@66 $generated@@161 ($generated@@67 $generated)) ($generated@@47 $generated@@66 $generated@@161 ($generated@@67 $generated) $generated@@159)) (and (<= ($generated@@35 0) $generated@@160) (<= ($generated@@35 0) $generated@@164))) (=> (and (and (and (and ($generated@@60 $generated@@66 $generated@@170 ($generated@@67 $generated)) ($generated@@47 $generated@@66 $generated@@170 ($generated@@67 $generated) $generated@@159)) true) (= 1 $generated@@171)) (and (and (< $generated@@160 $generated@@164) (<= $generated@@164 ($generated@@20 $generated@@161))) (and ($generated@@167 $generated ($generated@@28 $generated@@161 $generated@@164)) (= (ControlFlow 0 5) 2)))) $generated@@172)))))
$generated@@173)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)