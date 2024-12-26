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
(declare-fun $generated@@9 () T@U)
(declare-fun $generated@@10 () T@U)
(declare-fun $generated@@11 (T@T) Int)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 (Bool) T@U)
(declare-fun $generated@@16 (T@U) Bool)
(declare-fun $generated@@17 (Int) T@U)
(declare-fun $generated@@18 (T@U) Int)
(declare-fun $generated@@19 (Real) T@U)
(declare-fun $generated@@20 (T@U) Real)
(declare-fun $generated@@27 (T@U) Int)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@34 (T@T T@U T@U) Bool)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 () T@U)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@38 (T@U) T@U)
(declare-fun $generated@@40 () T@U)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@44 (T@U T@U) T@U)
(declare-fun $generated@@45 (T@U) Bool)
(declare-fun $generated@@46 () T@U)
(declare-fun $generated@@47 (T@T T@U) T@U)
(declare-fun $generated@@48 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@49 () T@T)
(declare-fun $generated@@50 () T@T)
(declare-fun $generated@@51 (T@T T@T) T@T)
(declare-fun $generated@@52 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@53 (T@T) T@T)
(declare-fun $generated@@54 (T@T) T@T)
(declare-fun $generated@@74 (T@U T@U) Bool)
(declare-fun $generated@@78 (Int) Int)
(declare-fun $generated@@80 (T@T T@U) T@U)
(declare-fun $generated@@83 (T@T T@U) T@U)
(declare-fun $generated@@87 (T@U) Bool)
(declare-fun $generated@@95 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@96 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@97 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@137 (T@U) T@U)
(declare-fun $generated@@144 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@11 $generated@@12) 0) (= ($generated@@11 $generated@@13) 1)) (= ($generated@@11 $generated@@14) 2)) (forall (($generated@@21 Bool) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 Int) ) (! (= ($generated@@18 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 T@U) ) (! (= ($generated@@17 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 Real) ) (! (= ($generated@@20 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 T@U) ) (! (= ($generated@@19 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10)
)
(assert (= ($generated@@27 $generated@@1) 0))
(assert (= ($generated@@28 $generated) $generated@@0))
(assert (= ($generated@@29 $generated@@1) $generated@@2))
(assert (forall (($generated@@32 T@U) ($generated@@33 T@U) ) (! ($generated@@30 $generated@@13 $generated@@32 $generated@@31 $generated@@33)
 :pattern ( ($generated@@30 $generated@@13 $generated@@32 $generated@@31 $generated@@33))
)))
(assert (= ($generated@@11 $generated@@35) 3))
(assert (forall (($generated@@39 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@39 $generated@@36)  (or (= $generated@@39 $generated@@37) (= ($generated@@38 $generated@@39) $generated@@36)))
 :pattern ( ($generated@@34 $generated@@35 $generated@@39 $generated@@36))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@U) ) (! (= ($generated@@30 $generated@@35 $generated@@41 $generated@@40 $generated@@42) ($generated@@30 $generated@@35 $generated@@41 $generated@@36 $generated@@42))
 :pattern ( ($generated@@30 $generated@@35 $generated@@41 $generated@@40 $generated@@42))
 :pattern ( ($generated@@30 $generated@@35 $generated@@41 $generated@@36 $generated@@42))
)))
(assert (= ($generated@@27 $generated@@43) 0))
(assert (= ($generated@@44 $generated@@6 $generated@@9) $generated@@43))
(assert  (not ($generated@@45 $generated@@43)))
(assert (= ($generated@@27 $generated@@46) 0))
(assert (= ($generated@@44 $generated@@6 $generated@@10) $generated@@46))
(assert  (not ($generated@@45 $generated@@46)))
(assert  (and (and (and (and (and (and (forall (($generated@@55 T@T) ($generated@@56 T@T) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@48 $generated@@55 $generated@@56 ($generated@@52 $generated@@55 $generated@@56 $generated@@58 $generated@@59 $generated@@57) $generated@@59) $generated@@57)
 :weight 0
)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (!  (or (= $generated@@64 $generated@@65) (= ($generated@@48 $generated@@60 $generated@@61 ($generated@@52 $generated@@60 $generated@@61 $generated@@63 $generated@@64 $generated@@62) $generated@@65) ($generated@@48 $generated@@60 $generated@@61 $generated@@63 $generated@@65)))
 :weight 0
))) (= ($generated@@11 $generated@@49) 4)) (= ($generated@@11 $generated@@50) 5)) (forall (($generated@@66 T@T) ($generated@@67 T@T) ) (= ($generated@@11 ($generated@@51 $generated@@66 $generated@@67)) 6))) (forall (($generated@@68 T@T) ($generated@@69 T@T) ) (! (= ($generated@@53 ($generated@@51 $generated@@68 $generated@@69)) $generated@@68)
 :pattern ( ($generated@@51 $generated@@68 $generated@@69))
))) (forall (($generated@@70 T@T) ($generated@@71 T@T) ) (! (= ($generated@@54 ($generated@@51 $generated@@70 $generated@@71)) $generated@@71)
 :pattern ( ($generated@@51 $generated@@70 $generated@@71))
))))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@30 $generated@@35 $generated@@72 $generated@@36 $generated@@73)  (or (= $generated@@72 $generated@@37) ($generated@@16 ($generated@@47 $generated@@12 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@73 $generated@@72) $generated@@1)))))
 :pattern ( ($generated@@30 $generated@@35 $generated@@72 $generated@@36 $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ) (!  (=> ($generated@@74 $generated@@75 $generated@@76) (forall (($generated@@77 T@U) ) (!  (=> ($generated@@16 ($generated@@47 $generated@@12 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@75 $generated@@77) $generated@@1))) ($generated@@16 ($generated@@47 $generated@@12 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@76 $generated@@77) $generated@@1))))
 :pattern ( ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@76 $generated@@77) $generated@@1))
)))
 :pattern ( ($generated@@74 $generated@@75 $generated@@76))
)))
(assert (forall (($generated@@79 Int) ) (! (= ($generated@@78 $generated@@79) $generated@@79)
 :pattern ( ($generated@@78 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@T) ) (! (= ($generated@@80 $generated@@82 $generated@@81) $generated@@81)
 :pattern ( ($generated@@80 $generated@@82 $generated@@81))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@T) ) (! (= ($generated@@83 $generated@@85 ($generated@@47 $generated@@85 $generated@@84)) $generated@@84)
 :pattern ( ($generated@@47 $generated@@85 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ) (! (= ($generated@@34 $generated@@13 $generated@@86 $generated@@31) (<= ($generated@@78 0) ($generated@@18 $generated@@86)))
 :pattern ( ($generated@@34 $generated@@13 $generated@@86 $generated@@31))
)))
(assert ($generated@@45 $generated@@1))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ) (!  (=> (and (and ($generated@@87 $generated@@88) (and (or (not (= $generated@@89 $generated@@37)) (not true)) (= ($generated@@38 $generated@@89) $generated@@36))) ($generated@@16 ($generated@@47 $generated@@12 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@88 $generated@@89) $generated@@1)))) ($generated@@30 $generated@@13 ($generated@@47 $generated@@13 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@88 $generated@@89) $generated@@43)) $generated $generated@@88))
 :pattern ( ($generated@@47 $generated@@13 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@88 $generated@@89) $generated@@43)))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@T) ) (!  (=> ($generated@@74 $generated@@90 $generated@@91) (=> ($generated@@30 $generated@@94 $generated@@92 $generated@@93 $generated@@90) ($generated@@30 $generated@@94 $generated@@92 $generated@@93 $generated@@91)))
 :pattern ( ($generated@@74 $generated@@90 $generated@@91) ($generated@@30 $generated@@94 $generated@@92 $generated@@93 $generated@@90))
)))
(assert  (and (forall (($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@T) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@95 $generated@@98 $generated@@99 $generated@@100 ($generated@@97 $generated@@98 $generated@@99 $generated@@100 $generated@@102 $generated@@103 $generated@@104 $generated@@101) $generated@@103 $generated@@104) $generated@@101)
 :weight 0
)) (and (forall (($generated@@105 T@T) ($generated@@106 T@T) ($generated@@107 T@T) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (!  (or (= $generated@@110 $generated@@112) (= ($generated@@95 $generated@@105 $generated@@106 $generated@@107 ($generated@@97 $generated@@105 $generated@@106 $generated@@107 $generated@@109 $generated@@110 $generated@@111 $generated@@108) $generated@@112 $generated@@113) ($generated@@95 $generated@@105 $generated@@106 $generated@@107 $generated@@109 $generated@@112 $generated@@113)))
 :weight 0
)) (forall (($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@T) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (!  (or (= $generated@@120 $generated@@122) (= ($generated@@95 $generated@@114 $generated@@115 $generated@@116 ($generated@@97 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@119 $generated@@120 $generated@@117) $generated@@121 $generated@@122) ($generated@@95 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@121 $generated@@122)))
 :weight 0
)))))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ) (! (= ($generated@@16 ($generated@@95 $generated@@35 $generated@@49 $generated@@12 ($generated@@96 $generated@@123 $generated@@124 $generated@@125 $generated@@126) $generated@@127 $generated@@128))  (=> (and (or (not (= $generated@@127 $generated@@123)) (not true)) ($generated@@16 ($generated@@47 $generated@@12 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@124 $generated@@127) $generated@@125)))) (= $generated@@127 $generated@@126)))
 :pattern ( ($generated@@95 $generated@@35 $generated@@49 $generated@@12 ($generated@@96 $generated@@123 $generated@@124 $generated@@125 $generated@@126) $generated@@127 $generated@@128))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ) (!  (=> (and ($generated@@87 $generated@@129) (and (or (not (= $generated@@130 $generated@@37)) (not true)) (= ($generated@@38 $generated@@130) $generated@@36))) ($generated@@34 $generated@@13 ($generated@@47 $generated@@13 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@129 $generated@@130) $generated@@46)) $generated@@31))
 :pattern ( ($generated@@47 $generated@@13 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@129 $generated@@130) $generated@@46)))
)))
(assert (forall (($generated@@131 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@131 $generated@@40)  (and ($generated@@34 $generated@@35 $generated@@131 $generated@@36) (or (not (= $generated@@131 $generated@@37)) (not true))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@131 $generated@@40))
 :pattern ( ($generated@@34 $generated@@35 $generated@@131 $generated@@36))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ) (!  (=> (and (and ($generated@@87 $generated@@132) (and (or (not (= $generated@@133 $generated@@37)) (not true)) (= ($generated@@38 $generated@@133) $generated@@36))) ($generated@@16 ($generated@@47 $generated@@12 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@132 $generated@@133) $generated@@1)))) ($generated@@30 $generated@@13 ($generated@@47 $generated@@13 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@132 $generated@@133) $generated@@46)) $generated@@31 $generated@@132))
 :pattern ( ($generated@@47 $generated@@13 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@132 $generated@@133) $generated@@46)))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (!  (=> (or (not (= $generated@@134 $generated@@136)) (not true)) (=> (and ($generated@@74 $generated@@134 $generated@@135) ($generated@@74 $generated@@135 $generated@@136)) ($generated@@74 $generated@@134 $generated@@136)))
 :pattern ( ($generated@@74 $generated@@134 $generated@@135) ($generated@@74 $generated@@135 $generated@@136))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ) (!  (and (= ($generated@@137 ($generated@@44 $generated@@138 $generated@@139)) $generated@@138) (= ($generated@@29 ($generated@@44 $generated@@138 $generated@@139)) $generated@@139))
 :pattern ( ($generated@@44 $generated@@138 $generated@@139))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@T) ) (! (= ($generated@@47 $generated@@141 ($generated@@83 $generated@@141 $generated@@140)) $generated@@140)
 :pattern ( ($generated@@83 $generated@@141 $generated@@140))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (!  (=> (and ($generated@@87 $generated@@142) (and (or (not (= $generated@@143 $generated@@37)) (not true)) (= ($generated@@38 $generated@@143) $generated@@36))) ($generated@@34 $generated@@13 ($generated@@47 $generated@@13 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@142 $generated@@143) $generated@@43)) $generated))
 :pattern ( ($generated@@47 $generated@@13 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@142 $generated@@143) $generated@@43)))
)))
(assert (= ($generated@@28 $generated@@31) $generated@@3))
(assert (= ($generated@@144 $generated@@31) $generated@@7))
(assert (= ($generated@@28 $generated@@40) $generated@@4))
(assert (= ($generated@@144 $generated@@40) $generated@@8))
(assert (= ($generated@@28 $generated@@36) $generated@@5))
(assert (= ($generated@@144 $generated@@36) $generated@@8))
(assert (forall (($generated@@145 Int) ) (! (= ($generated@@83 $generated@@13 ($generated@@17 ($generated@@78 $generated@@145))) ($generated@@80 $generated@@50 ($generated@@83 $generated@@13 ($generated@@17 $generated@@145))))
 :pattern ( ($generated@@83 $generated@@13 ($generated@@17 ($generated@@78 $generated@@145))))
)))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@T) ) (! (= ($generated@@83 $generated@@147 ($generated@@80 $generated@@147 $generated@@146)) ($generated@@80 $generated@@50 ($generated@@83 $generated@@147 $generated@@146)))
 :pattern ( ($generated@@83 $generated@@147 ($generated@@80 $generated@@147 $generated@@146)))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ) (! ($generated@@30 $generated@@13 $generated@@149 $generated $generated@@148)
 :pattern ( ($generated@@30 $generated@@13 $generated@@149 $generated $generated@@148))
)))
(assert (forall (($generated@@150 T@U) ) (! ($generated@@34 $generated@@13 $generated@@150 $generated)
 :pattern ( ($generated@@34 $generated@@13 $generated@@150 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@151 () Int)
(declare-fun $generated@@152 () T@U)
(declare-fun $generated@@153 () Int)
(declare-fun $generated@@154 () T@U)
(declare-fun $generated@@155 () Bool)
(declare-fun $generated@@156 (T@U) Bool)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@158 () T@U)
(declare-fun $generated@@159 () Int)
(declare-fun $generated@@160 () Int)
(declare-fun $generated@@161 () Int)
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
 (=> (= (ControlFlow 0 0) 15) (let (($generated@@162  (=> (<= 100 $generated@@151) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (not (= $generated@@152 $generated@@37)) (not true))) (=> (= (ControlFlow 0 6) (- 0 5)) (= $generated@@153 ($generated@@18 ($generated@@47 $generated@@13 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@154 $generated@@152) $generated@@43)))))))))
(let (($generated@@163 true))
(let (($generated@@164  (=> (and (< $generated@@151 100) (= (ControlFlow 0 8) 4)) $generated@@163)))
(let (($generated@@165  (and (=> (= (ControlFlow 0 9) 6) $generated@@162) (=> (= (ControlFlow 0 9) 8) $generated@@164))))
(let (($generated@@166  (=> $generated@@155 (and (=> (= (ControlFlow 0 10) 9) $generated@@165) (=> (= (ControlFlow 0 10) 4) $generated@@163)))))
(let (($generated@@167  (=> (and (not $generated@@155) (= (ControlFlow 0 3) (- 0 2))) (or (not (= $generated@@152 $generated@@37)) (not true)))))
(let (($generated@@168  (and (=> (= (ControlFlow 0 11) 3) $generated@@167) (=> (= (ControlFlow 0 11) 10) $generated@@166))))
(let (($generated@@169 true))
(let (($generated@@170  (=> (and (and (and ($generated@@87 $generated@@154) ($generated@@156 $generated@@154)) (not false)) (and (and (forall (($generated@@171 T@U) ) (!  (=> (and (or (not (= $generated@@171 $generated@@37)) (not true)) ($generated@@16 ($generated@@47 $generated@@12 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@157 $generated@@171) $generated@@1)))) (or (= ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@154 $generated@@171) ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@157 $generated@@171)) (= $generated@@171 $generated@@152)))
 :pattern ( ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@154 $generated@@171))
)) ($generated@@74 $generated@@157 $generated@@154)) (and (forall (($generated@@172 T@U) ($generated@@173 T@U) ) (!  (=> (and (or (not (= $generated@@172 $generated@@37)) (not true)) ($generated@@16 ($generated@@47 $generated@@12 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@157 $generated@@172) $generated@@1)))) (or (= ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@154 $generated@@172) $generated@@173) ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@157 $generated@@172) $generated@@173)) ($generated@@16 ($generated@@95 $generated@@35 $generated@@49 $generated@@12 $generated@@158 $generated@@172 $generated@@173))))
 :pattern ( ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@154 $generated@@172) $generated@@173))
)) (<= ($generated@@18 ($generated@@47 $generated@@13 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@154 $generated@@152) $generated@@46))) $generated@@159)))) (and (=> (= (ControlFlow 0 12) 1) $generated@@169) (=> (= (ControlFlow 0 12) 11) $generated@@168)))))
(let (($generated@@174  (=> (= $generated@@158 ($generated@@96 $generated@@37 $generated@@157 $generated@@1 $generated@@152)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (not (= $generated@@152 $generated@@37)) (not true))) (=> (or (not (= $generated@@152 $generated@@37)) (not true)) (=> (and (and (= $generated@@153 ($generated@@18 ($generated@@47 $generated@@13 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@157 $generated@@152) $generated@@43)))) (= $generated@@160 ($generated@@78 0))) (and (= $generated@@159 ($generated@@18 ($generated@@47 $generated@@13 ($generated@@48 $generated@@49 $generated@@50 ($generated@@48 $generated@@35 ($generated@@51 $generated@@49 $generated@@50) $generated@@157 $generated@@152) $generated@@46)))) (= (ControlFlow 0 13) 12))) $generated@@170))))))
(let (($generated@@175  (=> (and ($generated@@87 $generated@@157) ($generated@@156 $generated@@157)) (=> (and (and ($generated@@34 $generated@@35 $generated@@152 $generated@@40) ($generated@@30 $generated@@35 $generated@@152 $generated@@40 $generated@@157)) (and (= 1 $generated@@161) (= (ControlFlow 0 15) 13))) $generated@@174))))
$generated@@175))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)