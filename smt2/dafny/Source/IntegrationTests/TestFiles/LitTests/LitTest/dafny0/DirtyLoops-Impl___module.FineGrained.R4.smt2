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
(declare-fun $generated@@8 (T@T) Int)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 (Bool) T@U)
(declare-fun $generated@@13 (T@U) Bool)
(declare-fun $generated@@14 (Int) T@U)
(declare-fun $generated@@15 (T@U) Int)
(declare-fun $generated@@16 (Real) T@U)
(declare-fun $generated@@17 (T@U) Real)
(declare-fun $generated@@24 (T@U) Int)
(declare-fun $generated@@25 (T@U) T@U)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 (T@T T@U T@U) Bool)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 () T@U)
(declare-fun $generated@@30 () T@U)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@33 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@38 (T@U T@U) T@U)
(declare-fun $generated@@39 (T@U) Bool)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@41 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@44 (T@T T@T) T@T)
(declare-fun $generated@@45 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@46 (T@T) T@T)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@67 (T@U T@U) Bool)
(declare-fun $generated@@71 (Int) Int)
(declare-fun $generated@@73 (T@T T@U) T@U)
(declare-fun $generated@@76 (T@T T@U) T@U)
(declare-fun $generated@@79 (T@U) Bool)
(declare-fun $generated@@87 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@88 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@89 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@125 (T@U) T@U)
(declare-fun $generated@@132 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@139 (T@U) T@U)
(declare-fun $generated@@140 (T@U T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@8 $generated@@9) 0) (= ($generated@@8 $generated@@10) 1)) (= ($generated@@8 $generated@@11) 2)) (forall (($generated@@18 Bool) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Int) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Real) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7)
)
(assert (= ($generated@@24 $generated@@1) 0))
(assert (= ($generated@@25 $generated) $generated@@0))
(assert (= ($generated@@26 $generated@@1) $generated@@2))
(assert (= ($generated@@8 $generated@@28) 3))
(assert (forall (($generated@@32 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@32 $generated@@29)  (or (= $generated@@32 $generated@@30) (= ($generated@@31 $generated@@32) $generated@@29)))
 :pattern ( ($generated@@27 $generated@@28 $generated@@32 $generated@@29))
)))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@U) ) (! (= ($generated@@33 $generated@@28 $generated@@35 $generated@@34 $generated@@36) ($generated@@33 $generated@@28 $generated@@35 $generated@@29 $generated@@36))
 :pattern ( ($generated@@33 $generated@@28 $generated@@35 $generated@@34 $generated@@36))
 :pattern ( ($generated@@33 $generated@@28 $generated@@35 $generated@@29 $generated@@36))
)))
(assert (= ($generated@@24 $generated@@37) 0))
(assert (= ($generated@@38 $generated@@3 $generated@@7) $generated@@37))
(assert  (not ($generated@@39 $generated@@37)))
(assert  (and (and (and (and (and (and (forall (($generated@@48 T@T) ($generated@@49 T@T) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@41 $generated@@48 $generated@@49 ($generated@@45 $generated@@48 $generated@@49 $generated@@51 $generated@@52 $generated@@50) $generated@@52) $generated@@50)
 :weight 0
)) (forall (($generated@@53 T@T) ($generated@@54 T@T) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (!  (or (= $generated@@57 $generated@@58) (= ($generated@@41 $generated@@53 $generated@@54 ($generated@@45 $generated@@53 $generated@@54 $generated@@56 $generated@@57 $generated@@55) $generated@@58) ($generated@@41 $generated@@53 $generated@@54 $generated@@56 $generated@@58)))
 :weight 0
))) (= ($generated@@8 $generated@@42) 4)) (= ($generated@@8 $generated@@43) 5)) (forall (($generated@@59 T@T) ($generated@@60 T@T) ) (= ($generated@@8 ($generated@@44 $generated@@59 $generated@@60)) 6))) (forall (($generated@@61 T@T) ($generated@@62 T@T) ) (! (= ($generated@@46 ($generated@@44 $generated@@61 $generated@@62)) $generated@@61)
 :pattern ( ($generated@@44 $generated@@61 $generated@@62))
))) (forall (($generated@@63 T@T) ($generated@@64 T@T) ) (! (= ($generated@@47 ($generated@@44 $generated@@63 $generated@@64)) $generated@@64)
 :pattern ( ($generated@@44 $generated@@63 $generated@@64))
))))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ) (! (= ($generated@@33 $generated@@28 $generated@@65 $generated@@29 $generated@@66)  (or (= $generated@@65 $generated@@30) ($generated@@13 ($generated@@40 $generated@@9 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@66 $generated@@65) $generated@@1)))))
 :pattern ( ($generated@@33 $generated@@28 $generated@@65 $generated@@29 $generated@@66))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ) (!  (=> ($generated@@67 $generated@@68 $generated@@69) (forall (($generated@@70 T@U) ) (!  (=> ($generated@@13 ($generated@@40 $generated@@9 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@68 $generated@@70) $generated@@1))) ($generated@@13 ($generated@@40 $generated@@9 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@69 $generated@@70) $generated@@1))))
 :pattern ( ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@69 $generated@@70) $generated@@1))
)))
 :pattern ( ($generated@@67 $generated@@68 $generated@@69))
)))
(assert (forall (($generated@@72 Int) ) (! (= ($generated@@71 $generated@@72) $generated@@72)
 :pattern ( ($generated@@71 $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@T) ) (! (= ($generated@@73 $generated@@75 $generated@@74) $generated@@74)
 :pattern ( ($generated@@73 $generated@@75 $generated@@74))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@76 $generated@@78 ($generated@@40 $generated@@78 $generated@@77)) $generated@@77)
 :pattern ( ($generated@@40 $generated@@78 $generated@@77))
)))
(assert ($generated@@39 $generated@@1))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ) (!  (=> (and (and ($generated@@79 $generated@@80) (and (or (not (= $generated@@81 $generated@@30)) (not true)) (= ($generated@@31 $generated@@81) $generated@@29))) ($generated@@13 ($generated@@40 $generated@@9 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@80 $generated@@81) $generated@@1)))) ($generated@@33 $generated@@10 ($generated@@40 $generated@@10 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@80 $generated@@81) $generated@@37)) $generated $generated@@80))
 :pattern ( ($generated@@40 $generated@@10 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@80 $generated@@81) $generated@@37)))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@T) ) (!  (=> ($generated@@67 $generated@@82 $generated@@83) (=> ($generated@@33 $generated@@86 $generated@@84 $generated@@85 $generated@@82) ($generated@@33 $generated@@86 $generated@@84 $generated@@85 $generated@@83)))
 :pattern ( ($generated@@67 $generated@@82 $generated@@83) ($generated@@33 $generated@@86 $generated@@84 $generated@@85 $generated@@82))
)))
(assert  (and (forall (($generated@@90 T@T) ($generated@@91 T@T) ($generated@@92 T@T) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ) (! (= ($generated@@87 $generated@@90 $generated@@91 $generated@@92 ($generated@@89 $generated@@90 $generated@@91 $generated@@92 $generated@@94 $generated@@95 $generated@@96 $generated@@93) $generated@@95 $generated@@96) $generated@@93)
 :weight 0
)) (and (forall (($generated@@97 T@T) ($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ) (!  (or (= $generated@@102 $generated@@104) (= ($generated@@87 $generated@@97 $generated@@98 $generated@@99 ($generated@@89 $generated@@97 $generated@@98 $generated@@99 $generated@@101 $generated@@102 $generated@@103 $generated@@100) $generated@@104 $generated@@105) ($generated@@87 $generated@@97 $generated@@98 $generated@@99 $generated@@101 $generated@@104 $generated@@105)))
 :weight 0
)) (forall (($generated@@106 T@T) ($generated@@107 T@T) ($generated@@108 T@T) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ) (!  (or (= $generated@@112 $generated@@114) (= ($generated@@87 $generated@@106 $generated@@107 $generated@@108 ($generated@@89 $generated@@106 $generated@@107 $generated@@108 $generated@@110 $generated@@111 $generated@@112 $generated@@109) $generated@@113 $generated@@114) ($generated@@87 $generated@@106 $generated@@107 $generated@@108 $generated@@110 $generated@@113 $generated@@114)))
 :weight 0
)))))
(assert (forall (($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@13 ($generated@@87 $generated@@28 $generated@@42 $generated@@9 ($generated@@88 $generated@@115 $generated@@116 $generated@@117 $generated@@118) $generated@@119 $generated@@120))  (=> (and (or (not (= $generated@@119 $generated@@115)) (not true)) ($generated@@13 ($generated@@40 $generated@@9 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@116 $generated@@119) $generated@@117)))) (= $generated@@119 $generated@@118)))
 :pattern ( ($generated@@87 $generated@@28 $generated@@42 $generated@@9 ($generated@@88 $generated@@115 $generated@@116 $generated@@117 $generated@@118) $generated@@119 $generated@@120))
)))
(assert (forall (($generated@@121 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@121 $generated@@34)  (and ($generated@@27 $generated@@28 $generated@@121 $generated@@29) (or (not (= $generated@@121 $generated@@30)) (not true))))
 :pattern ( ($generated@@27 $generated@@28 $generated@@121 $generated@@34))
 :pattern ( ($generated@@27 $generated@@28 $generated@@121 $generated@@29))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (!  (=> (or (not (= $generated@@122 $generated@@124)) (not true)) (=> (and ($generated@@67 $generated@@122 $generated@@123) ($generated@@67 $generated@@123 $generated@@124)) ($generated@@67 $generated@@122 $generated@@124)))
 :pattern ( ($generated@@67 $generated@@122 $generated@@123) ($generated@@67 $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (!  (and (= ($generated@@125 ($generated@@38 $generated@@126 $generated@@127)) $generated@@126) (= ($generated@@26 ($generated@@38 $generated@@126 $generated@@127)) $generated@@127))
 :pattern ( ($generated@@38 $generated@@126 $generated@@127))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@T) ) (! (= ($generated@@40 $generated@@129 ($generated@@76 $generated@@129 $generated@@128)) $generated@@128)
 :pattern ( ($generated@@76 $generated@@129 $generated@@128))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (!  (=> (and ($generated@@79 $generated@@130) (and (or (not (= $generated@@131 $generated@@30)) (not true)) (= ($generated@@31 $generated@@131) $generated@@29))) ($generated@@27 $generated@@10 ($generated@@40 $generated@@10 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@130 $generated@@131) $generated@@37)) $generated))
 :pattern ( ($generated@@40 $generated@@10 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@130 $generated@@131) $generated@@37)))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 Bool) ($generated@@137 T@U) ($generated@@138 T@U) ) (! (= ($generated@@13 ($generated@@87 $generated@@28 $generated@@42 $generated@@9 ($generated@@132 $generated@@133 $generated@@134 $generated@@135 $generated@@136) $generated@@137 $generated@@138))  (=> (and (or (not (= $generated@@137 $generated@@133)) (not true)) ($generated@@13 ($generated@@40 $generated@@9 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@134 $generated@@137) $generated@@135)))) $generated@@136))
 :pattern ( ($generated@@87 $generated@@28 $generated@@42 $generated@@9 ($generated@@132 $generated@@133 $generated@@134 $generated@@135 $generated@@136) $generated@@137 $generated@@138))
)))
(assert (= ($generated@@25 $generated@@29) $generated@@4))
(assert (= ($generated@@139 $generated@@29) $generated@@6))
(assert (= ($generated@@25 $generated@@34) $generated@@5))
(assert (= ($generated@@139 $generated@@34) $generated@@6))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (! (= ($generated@@13 ($generated@@87 $generated@@28 $generated@@42 $generated@@9 ($generated@@140 $generated@@141 $generated@@142 $generated@@143 $generated@@144 $generated@@145) $generated@@146 $generated@@147))  (=> (and (or (not (= $generated@@146 $generated@@141)) (not true)) ($generated@@13 ($generated@@40 $generated@@9 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@142 $generated@@146) $generated@@143)))) (or (= $generated@@146 $generated@@144) (= $generated@@146 $generated@@145))))
 :pattern ( ($generated@@87 $generated@@28 $generated@@42 $generated@@9 ($generated@@140 $generated@@141 $generated@@142 $generated@@143 $generated@@144 $generated@@145) $generated@@146 $generated@@147))
)))
(assert (forall (($generated@@148 Int) ) (! (= ($generated@@76 $generated@@10 ($generated@@14 ($generated@@71 $generated@@148))) ($generated@@73 $generated@@43 ($generated@@76 $generated@@10 ($generated@@14 $generated@@148))))
 :pattern ( ($generated@@76 $generated@@10 ($generated@@14 ($generated@@71 $generated@@148))))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@T) ) (! (= ($generated@@76 $generated@@150 ($generated@@73 $generated@@150 $generated@@149)) ($generated@@73 $generated@@43 ($generated@@76 $generated@@150 $generated@@149)))
 :pattern ( ($generated@@76 $generated@@150 ($generated@@73 $generated@@150 $generated@@149)))
)))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ) (! ($generated@@33 $generated@@10 $generated@@152 $generated $generated@@151)
 :pattern ( ($generated@@33 $generated@@10 $generated@@152 $generated $generated@@151))
)))
(assert (forall (($generated@@153 T@U) ) (! ($generated@@27 $generated@@10 $generated@@153 $generated)
 :pattern ( ($generated@@27 $generated@@10 $generated@@153 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@154 () Int)
(declare-fun $generated@@155 () T@U)
(declare-fun $generated@@156 () T@U)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@158 () Int)
(declare-fun $generated@@159 () Int)
(declare-fun $generated@@160 () Int)
(declare-fun $generated@@161 () Bool)
(declare-fun $generated@@162 () Bool)
(declare-fun $generated@@163 (T@U) Bool)
(declare-fun $generated@@164 () Int)
(declare-fun $generated@@165 () Int)
(declare-fun $generated@@166 () T@U)
(declare-fun $generated@@167 () T@U)
(declare-fun $generated@@168 () T@U)
(declare-fun $generated@@169 () Int)
(declare-fun $generated@@170 () T@U)
(declare-fun $generated@@171 () T@U)
(declare-fun $generated@@172 () Int)
(declare-fun $generated@@173 () Int)
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
 (=> (= (ControlFlow 0 0) 25) (let (($generated@@174  (=> (<= 7 $generated@@154) (and (=> (= (ControlFlow 0 8) (- 0 12)) ($generated@@33 $generated@@28 $generated@@155 $generated@@34 $generated@@156)) (=> ($generated@@33 $generated@@28 $generated@@155 $generated@@34 $generated@@156) (and (=> (= (ControlFlow 0 8) (- 0 11)) (= ($generated@@15 ($generated@@40 $generated@@10 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@157 $generated@@155) $generated@@37))) ($generated@@15 ($generated@@40 $generated@@10 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@156 $generated@@155) $generated@@37))))) (=> (= ($generated@@15 ($generated@@40 $generated@@10 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@157 $generated@@155) $generated@@37))) ($generated@@15 ($generated@@40 $generated@@10 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@156 $generated@@155) $generated@@37)))) (=> (= $generated@@158 (+ $generated@@159 1)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (or (<= 0 $generated@@160) (= (- 7 $generated@@158) $generated@@160))) (=> (or (<= 0 $generated@@160) (= (- 7 $generated@@158) $generated@@160)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (< (- 7 $generated@@158) $generated@@160)) (=> (< (- 7 $generated@@158) $generated@@160) (=> (= (ControlFlow 0 8) (- 0 7)) (=> $generated@@161 (<= $generated@@158 ($generated@@71 7))))))))))))))))
(let (($generated@@175 true))
(let (($generated@@176  (=> (and (< $generated@@154 7) (= (ControlFlow 0 13) 6)) $generated@@175)))
(let (($generated@@177  (and (=> (= (ControlFlow 0 14) 8) $generated@@174) (=> (= (ControlFlow 0 14) 13) $generated@@176))))
(let (($generated@@178  (=> $generated@@162 (and (=> (= (ControlFlow 0 15) 14) $generated@@177) (=> (= (ControlFlow 0 15) 6) $generated@@175)))))
(let (($generated@@179 true))
(let (($generated@@180  (and (=> (= (ControlFlow 0 16) 5) $generated@@179) (=> (= (ControlFlow 0 16) 15) $generated@@178))))
(let (($generated@@181 true))
(let (($generated@@182  (=> (and ($generated@@79 $generated@@157) ($generated@@163 $generated@@157)) (=> (and (and (and (and (and (and (not false) (and (<= 0 $generated@@159) (< $generated@@159 7))) (= $generated@@164 7)) $generated@@161) (and (<= 1 $generated@@160) (< $generated@@160 8))) (= $generated@@165 7)) (and (and (forall (($generated@@183 T@U) ) (!  (=> (and (or (not (= $generated@@183 $generated@@30)) (not true)) ($generated@@13 ($generated@@40 $generated@@9 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@156 $generated@@183) $generated@@1)))) (or (= ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@157 $generated@@183) ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@166 $generated@@183)) (or (= $generated@@183 $generated@@155) (= $generated@@183 $generated@@167))))
 :pattern ( ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@157 $generated@@183))
)) ($generated@@67 $generated@@166 $generated@@157)) (and (forall (($generated@@184 T@U) ($generated@@185 T@U) ) (!  (=> (and (or (not (= $generated@@184 $generated@@30)) (not true)) ($generated@@13 ($generated@@40 $generated@@9 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@166 $generated@@184) $generated@@1)))) (or (= ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@157 $generated@@184) $generated@@185) ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@166 $generated@@184) $generated@@185)) ($generated@@13 ($generated@@87 $generated@@28 $generated@@42 $generated@@9 $generated@@168 $generated@@184 $generated@@185))))
 :pattern ( ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@157 $generated@@184) $generated@@185))
)) (<= (- 7 $generated@@154) $generated@@165)))) (and (=> (= (ControlFlow 0 17) 4) $generated@@181) (=> (= (ControlFlow 0 17) 16) $generated@@180))))))
(let (($generated@@186  (=> (< $generated@@159 7) (=> (and (= $generated@@160 (- 7 $generated@@159)) (= $generated@@169 ($generated@@71 0))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (forall (($generated@@187 T@U) ($generated@@188 T@U) )  (=> (and (and (or (not (= $generated@@187 $generated@@30)) (not true)) ($generated@@13 ($generated@@40 $generated@@9 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@166 $generated@@187) $generated@@1)))) (= $generated@@187 $generated@@167)) ($generated@@13 ($generated@@87 $generated@@28 $generated@@42 $generated@@9 $generated@@170 $generated@@187 $generated@@188))))) (=> (forall (($generated@@189 T@U) ($generated@@190 T@U) )  (=> (and (and (or (not (= $generated@@189 $generated@@30)) (not true)) ($generated@@13 ($generated@@40 $generated@@9 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@166 $generated@@189) $generated@@1)))) (= $generated@@189 $generated@@167)) ($generated@@13 ($generated@@87 $generated@@28 $generated@@42 $generated@@9 $generated@@170 $generated@@189 $generated@@190)))) (=> (= $generated@@168 ($generated@@88 $generated@@30 $generated@@166 $generated@@1 $generated@@167)) (=> (and (= $generated@@165 (- 7 $generated@@169)) (= (ControlFlow 0 18) 17)) $generated@@182))))))))
(let (($generated@@191 true))
(let (($generated@@192  (=> $generated@@161 (and (=> (= (ControlFlow 0 20) 3) $generated@@191) (=> (= (ControlFlow 0 20) 18) $generated@@186)))))
(let (($generated@@193 true))
(let (($generated@@194  (and (=> (= (ControlFlow 0 21) 2) $generated@@193) (=> (= (ControlFlow 0 21) 20) $generated@@192))))
(let (($generated@@195 true))
(let (($generated@@196  (=> (and ($generated@@79 $generated@@166) ($generated@@163 $generated@@166)) (=> (and (and (and (and (not false) (and (<= 0 $generated@@159) (< $generated@@159 8))) (= $generated@@164 7)) (=> $generated@@161 (<= $generated@@159 ($generated@@71 7)))) (and (and (forall (($generated@@197 T@U) ) (!  (=> (and (or (not (= $generated@@197 $generated@@30)) (not true)) ($generated@@13 ($generated@@40 $generated@@9 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@156 $generated@@197) $generated@@1)))) (or (= ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@166 $generated@@197) ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@156 $generated@@197)) (or (= $generated@@197 $generated@@155) (= $generated@@197 $generated@@167))))
 :pattern ( ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@166 $generated@@197))
)) ($generated@@67 $generated@@156 $generated@@166)) (and (forall (($generated@@198 T@U) ($generated@@199 T@U) ) (!  (=> (and (or (not (= $generated@@198 $generated@@30)) (not true)) ($generated@@13 ($generated@@40 $generated@@9 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@156 $generated@@198) $generated@@1)))) (or (= ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@166 $generated@@198) $generated@@199) ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@156 $generated@@198) $generated@@199)) ($generated@@13 ($generated@@87 $generated@@28 $generated@@42 $generated@@9 $generated@@170 $generated@@198 $generated@@199))))
 :pattern ( ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@166 $generated@@198) $generated@@199))
)) (<= (- 7 $generated@@159) $generated@@164)))) (and (=> (= (ControlFlow 0 22) 1) $generated@@195) (=> (= (ControlFlow 0 22) 21) $generated@@194))))))
(let (($generated@@200  (=> (and (and (= $generated@@171 ($generated@@140 $generated@@30 $generated@@156 $generated@@1 $generated@@155 $generated@@167)) (= $generated@@172 ($generated@@71 0))) (and (= $generated@@170 ($generated@@132 $generated@@30 $generated@@156 $generated@@1 false)) (= $generated@@164 (- 7 $generated@@172)))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (=> $generated@@161 (<= $generated@@172 ($generated@@71 7)))) (=> (=> $generated@@161 (<= $generated@@172 ($generated@@71 7))) (=> (= (ControlFlow 0 23) 22) $generated@@196))))))
(let (($generated@@201  (=> (and (and ($generated@@79 $generated@@156) ($generated@@163 $generated@@156)) (and (or (not (= $generated@@155 $generated@@30)) (not true)) (and ($generated@@27 $generated@@28 $generated@@155 $generated@@34) ($generated@@33 $generated@@28 $generated@@155 $generated@@34 $generated@@156)))) (=> (and (and (and ($generated@@27 $generated@@28 $generated@@167 $generated@@34) ($generated@@33 $generated@@28 $generated@@167 $generated@@34 $generated@@156)) (= 1 $generated@@173)) (and (or (not (= $generated@@155 $generated@@167)) (not true)) (= (ControlFlow 0 25) 23))) $generated@@200))))
$generated@@201)))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 18) (- 19))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid