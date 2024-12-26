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
(declare-fun $generated (T@U T@U) Bool)
(declare-fun $generated@@0 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@1 () T@T)
(declare-fun $generated@@2 () T@T)
(declare-fun $generated@@3 () T@T)
(declare-fun $generated@@4 (T@T T@T) T@T)
(declare-fun $generated@@5 () T@U)
(declare-fun $generated@@6 (T@U) Bool)
(declare-fun $generated@@7 (T@T T@U) T@U)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 (T@T) Int)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 (Bool) T@U)
(declare-fun $generated@@13 (Int) T@U)
(declare-fun $generated@@14 (T@U) Int)
(declare-fun $generated@@15 (Real) T@U)
(declare-fun $generated@@16 (T@U) Real)
(declare-fun $generated@@17 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@18 (T@T) T@T)
(declare-fun $generated@@19 (T@T) T@T)
(declare-fun $generated@@46 (Int) Int)
(declare-fun $generated@@48 (T@T T@U) T@U)
(declare-fun $generated@@51 (T@T T@U) T@U)
(declare-fun $generated@@54 (T@U T@U T@U) Bool)
(declare-fun $generated@@55 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@72 (T@U T@U) Bool)
(declare-fun $generated@@73 (T@T T@U T@U) Bool)
(declare-fun $generated@@79 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@80 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@81 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= ($generated@@9 $generated@@8) 0) (= ($generated@@9 $generated@@10) 1)) (= ($generated@@9 $generated@@11) 2)) (forall (($generated@@20 Bool) ) (! (= ($generated@@6 ($generated@@12 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@12 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@12 ($generated@@6 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@6 $generated@@21))
))) (forall (($generated@@22 Int) ) (! (= ($generated@@14 ($generated@@13 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@13 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@14 $generated@@23))
))) (forall (($generated@@24 Real) ) (! (= ($generated@@16 ($generated@@15 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@15 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@16 $generated@@25))
))) (forall (($generated@@26 T@T) ($generated@@27 T@T) ($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ) (! (= ($generated@@0 $generated@@26 $generated@@27 ($generated@@17 $generated@@26 $generated@@27 $generated@@29 $generated@@30 $generated@@28) $generated@@30) $generated@@28)
 :weight 0
))) (forall (($generated@@31 T@T) ($generated@@32 T@T) ($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ) (!  (or (= $generated@@35 $generated@@36) (= ($generated@@0 $generated@@31 $generated@@32 ($generated@@17 $generated@@31 $generated@@32 $generated@@34 $generated@@35 $generated@@33) $generated@@36) ($generated@@0 $generated@@31 $generated@@32 $generated@@34 $generated@@36)))
 :weight 0
))) (= ($generated@@9 $generated@@1) 3)) (= ($generated@@9 $generated@@2) 4)) (= ($generated@@9 $generated@@3) 5)) (forall (($generated@@37 T@T) ($generated@@38 T@T) ) (= ($generated@@9 ($generated@@4 $generated@@37 $generated@@38)) 6))) (forall (($generated@@39 T@T) ($generated@@40 T@T) ) (! (= ($generated@@18 ($generated@@4 $generated@@39 $generated@@40)) $generated@@39)
 :pattern ( ($generated@@4 $generated@@39 $generated@@40))
))) (forall (($generated@@41 T@T) ($generated@@42 T@T) ) (! (= ($generated@@19 ($generated@@4 $generated@@41 $generated@@42)) $generated@@42)
 :pattern ( ($generated@@4 $generated@@41 $generated@@42))
))))
(assert (forall (($generated@@43 T@U) ($generated@@44 T@U) ) (!  (=> ($generated $generated@@43 $generated@@44) (forall (($generated@@45 T@U) ) (!  (=> ($generated@@6 ($generated@@7 $generated@@8 ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@43 $generated@@45) $generated@@5))) ($generated@@6 ($generated@@7 $generated@@8 ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@44 $generated@@45) $generated@@5))))
 :pattern ( ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@44 $generated@@45) $generated@@5))
)))
 :pattern ( ($generated $generated@@43 $generated@@44))
)))
(assert (forall (($generated@@47 Int) ) (! (= ($generated@@46 $generated@@47) $generated@@47)
 :pattern ( ($generated@@46 $generated@@47))
)))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@T) ) (! (= ($generated@@48 $generated@@50 $generated@@49) $generated@@49)
 :pattern ( ($generated@@48 $generated@@50 $generated@@49))
)))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@T) ) (! (= ($generated@@51 $generated@@53 ($generated@@7 $generated@@53 $generated@@52)) $generated@@52)
 :pattern ( ($generated@@7 $generated@@53 $generated@@52))
)))
(assert (forall (($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@T) ) (! (= ($generated@@54 ($generated@@51 $generated@@59 $generated@@56) $generated@@57 $generated@@58) ($generated@@55 $generated@@59 $generated@@56 $generated@@57 $generated@@58))
 :pattern ( ($generated@@54 ($generated@@51 $generated@@59 $generated@@56) $generated@@57 $generated@@58))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ) (!  (=> ($generated $generated@@60 $generated@@61) (=> ($generated@@54 $generated@@62 $generated@@63 $generated@@60) ($generated@@54 $generated@@62 $generated@@63 $generated@@61)))
 :pattern ( ($generated $generated@@60 $generated@@61) ($generated@@54 $generated@@62 $generated@@63 $generated@@60))
)))
(assert (forall (($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@T) ) (!  (=> ($generated $generated@@64 $generated@@65) (=> ($generated@@55 $generated@@68 $generated@@66 $generated@@67 $generated@@64) ($generated@@55 $generated@@68 $generated@@66 $generated@@67 $generated@@65)))
 :pattern ( ($generated $generated@@64 $generated@@65) ($generated@@55 $generated@@68 $generated@@66 $generated@@67 $generated@@64))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ($generated@@71 T@U) ) (!  (=> (or (not (= $generated@@69 $generated@@71)) (not true)) (=> (and ($generated $generated@@69 $generated@@70) ($generated $generated@@70 $generated@@71)) ($generated $generated@@69 $generated@@71)))
 :pattern ( ($generated $generated@@69 $generated@@70) ($generated $generated@@70 $generated@@71))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ($generated@@76 T@T) ) (! (= ($generated@@72 ($generated@@51 $generated@@76 $generated@@74) $generated@@75) ($generated@@73 $generated@@76 $generated@@74 $generated@@75))
 :pattern ( ($generated@@72 ($generated@@51 $generated@@76 $generated@@74) $generated@@75))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@T) ) (! (= ($generated@@7 $generated@@78 ($generated@@51 $generated@@78 $generated@@77)) $generated@@77)
 :pattern ( ($generated@@51 $generated@@78 $generated@@77))
)))
(assert  (and (forall (($generated@@82 T@T) ($generated@@83 T@T) ($generated@@84 T@T) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ) (! (= ($generated@@79 $generated@@82 $generated@@83 $generated@@84 ($generated@@81 $generated@@82 $generated@@83 $generated@@84 $generated@@86 $generated@@87 $generated@@88 $generated@@85) $generated@@87 $generated@@88) $generated@@85)
 :weight 0
)) (and (forall (($generated@@89 T@T) ($generated@@90 T@T) ($generated@@91 T@T) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (!  (or (= $generated@@94 $generated@@96) (= ($generated@@79 $generated@@89 $generated@@90 $generated@@91 ($generated@@81 $generated@@89 $generated@@90 $generated@@91 $generated@@93 $generated@@94 $generated@@95 $generated@@92) $generated@@96 $generated@@97) ($generated@@79 $generated@@89 $generated@@90 $generated@@91 $generated@@93 $generated@@96 $generated@@97)))
 :weight 0
)) (forall (($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@T) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (!  (or (= $generated@@104 $generated@@106) (= ($generated@@79 $generated@@98 $generated@@99 $generated@@100 ($generated@@81 $generated@@98 $generated@@99 $generated@@100 $generated@@102 $generated@@103 $generated@@104 $generated@@101) $generated@@105 $generated@@106) ($generated@@79 $generated@@98 $generated@@99 $generated@@100 $generated@@102 $generated@@105 $generated@@106)))
 :weight 0
)))))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 Bool) ($generated@@111 T@U) ($generated@@112 T@U) ) (! (= ($generated@@6 ($generated@@79 $generated@@3 $generated@@1 $generated@@8 ($generated@@80 $generated@@107 $generated@@108 $generated@@109 $generated@@110) $generated@@111 $generated@@112))  (=> (and (or (not (= $generated@@111 $generated@@107)) (not true)) ($generated@@6 ($generated@@7 $generated@@8 ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@108 $generated@@111) $generated@@109)))) $generated@@110))
 :pattern ( ($generated@@79 $generated@@3 $generated@@1 $generated@@8 ($generated@@80 $generated@@107 $generated@@108 $generated@@109 $generated@@110) $generated@@111 $generated@@112))
)))
(assert (forall (($generated@@113 Int) ) (! (= ($generated@@51 $generated@@10 ($generated@@13 ($generated@@46 $generated@@113))) ($generated@@48 $generated@@2 ($generated@@51 $generated@@10 ($generated@@13 $generated@@113))))
 :pattern ( ($generated@@51 $generated@@10 ($generated@@13 ($generated@@46 $generated@@113))))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@T) ) (! (= ($generated@@51 $generated@@115 ($generated@@48 $generated@@115 $generated@@114)) ($generated@@48 $generated@@2 ($generated@@51 $generated@@115 $generated@@114)))
 :pattern ( ($generated@@51 $generated@@115 ($generated@@48 $generated@@115 $generated@@114)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@116 () Bool)
(declare-fun $generated@@117 () Int)
(declare-fun $generated@@118 () Int)
(declare-fun $generated@@119 () Bool)
(declare-fun $generated@@120 () T@U)
(declare-fun $generated@@121 () T@U)
(declare-fun $generated@@122 () T@U)
(declare-fun $generated@@123 () Bool)
(declare-fun $generated@@124 () Bool)
(declare-fun $generated@@125 () T@U)
(declare-fun $generated@@126 () T@U)
(declare-fun $generated@@127 () Int)
(declare-fun $generated@@128 () Bool)
(declare-fun $generated@@129 () Int)
(declare-fun $generated@@130 () T@U)
(declare-fun $generated@@131 () T@U)
(declare-fun $generated@@132 () Bool)
(declare-fun $generated@@133 () Bool)
(declare-fun $generated@@134 () Int)
(declare-fun $generated@@135 () Int)
(declare-fun $generated@@136 () T@U)
(declare-fun $generated@@137 () Bool)
(declare-fun $generated@@138 () T@U)
(declare-fun $generated@@139 (T@U) Bool)
(declare-fun $generated@@140 (T@U) Bool)
(declare-fun $generated@@141 () T@U)
(declare-fun $generated@@142 () T@U)
(declare-fun $generated@@143 () Bool)
(declare-fun $generated@@144 () T@U)
(declare-fun $generated@@145 () Int)
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
 (=> (= (ControlFlow 0 0) 30) (let (($generated@@146  (=> (and $generated@@116 (= $generated@@117 (- $generated@@118 1))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (<= 0 $generated@@118) (= $generated@@117 $generated@@118))) (=> (or (<= 0 $generated@@118) (= $generated@@117 $generated@@118)) (=> (= (ControlFlow 0 13) (- 0 12)) (< $generated@@117 $generated@@118)))))))
(let (($generated@@147 true))
(let (($generated@@148  (and (=> (= (ControlFlow 0 15) 11) $generated@@147) (=> (= (ControlFlow 0 15) 13) $generated@@146))))
(let (($generated@@149  (=> (and (or (not (= $generated@@118 ($generated@@46 1))) (not true)) (= (ControlFlow 0 17) 15)) $generated@@148)))
(let (($generated@@150  (=> (and (= $generated@@118 ($generated@@46 1)) (= (ControlFlow 0 16) 15)) $generated@@148)))
(let (($generated@@151  (=> (and (>= $generated@@118 ($generated@@46 0)) (=> $generated@@119 (and ($generated@@72 $generated@@120 $generated@@121) ($generated@@54 $generated@@120 $generated@@121 $generated@@122)))) (and (=> (= (ControlFlow 0 18) 16) $generated@@150) (=> (= (ControlFlow 0 18) 17) $generated@@149)))))
(let (($generated@@152 true))
(let (($generated@@153  (=> $generated@@123 (and (=> (= (ControlFlow 0 19) 10) $generated@@152) (=> (= (ControlFlow 0 19) 18) $generated@@151)))))
(let (($generated@@154 true))
(let (($generated@@155  (and (=> (= (ControlFlow 0 20) 9) $generated@@154) (=> (= (ControlFlow 0 20) 19) $generated@@153))))
(let (($generated@@156 true))
(let (($generated@@157  (=> (and (=> $generated@@124 (and ($generated@@72 $generated@@125 $generated@@121) ($generated@@54 $generated@@125 $generated@@121 $generated@@122))) (=> $generated@@119 (and ($generated@@72 $generated@@126 $generated@@121) ($generated@@54 $generated@@126 $generated@@121 $generated@@122)))) (=> (and (and (and (and (and (and (not false) (and (<= (- 0 1) $generated@@118) (< $generated@@118 3))) (= $generated@@127 1)) $generated@@128) (= $generated@@129 2)) (forall (($generated@@158 T@U) ) (!  (=> (and (or (not (= $generated@@158 $generated@@130)) (not true)) ($generated@@6 ($generated@@7 $generated@@8 ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@158) $generated@@5)))) (= ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@158) ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@158)))
 :pattern ( ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@158))
))) (and (and ($generated $generated@@122 $generated@@122) (forall (($generated@@159 T@U) ($generated@@160 T@U) ) (!  (=> (and (or (not (= $generated@@159 $generated@@130)) (not true)) ($generated@@6 ($generated@@7 $generated@@8 ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@159) $generated@@5)))) (or (= ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@159) $generated@@160) ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@159) $generated@@160)) ($generated@@6 ($generated@@79 $generated@@3 $generated@@1 $generated@@8 $generated@@131 $generated@@159 $generated@@160))))
 :pattern ( ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@159) $generated@@160))
))) (and (=> $generated@@132 $generated@@124) (<= $generated@@118 $generated@@129)))) (and (=> (= (ControlFlow 0 21) 8) $generated@@156) (=> (= (ControlFlow 0 21) 20) $generated@@155))))))
(let (($generated@@161  (=> (not (and $generated@@133 (>= $generated@@134 ($generated@@46 0)))) (=> (and (= $generated@@129 ($generated@@46 2)) (= (ControlFlow 0 22) 21)) $generated@@157))))
(let (($generated@@162  (=> (and (or (not (= $generated@@134 ($generated@@46 0))) (not true)) (= $generated@@135 (- $generated@@134 1))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (<= 0 $generated@@134) (= $generated@@135 $generated@@134))) (=> (or (<= 0 $generated@@134) (= $generated@@135 $generated@@134)) (=> (= (ControlFlow 0 5) (- 0 4)) (< $generated@@135 $generated@@134)))))))
(let (($generated@@163 true))
(let (($generated@@164  (=> (and $generated@@133 (>= $generated@@134 ($generated@@46 0))) (and (=> (= (ControlFlow 0 7) 3) $generated@@163) (=> (= (ControlFlow 0 7) 5) $generated@@162)))))
(let (($generated@@165  (and (=> (= (ControlFlow 0 23) 22) $generated@@161) (=> (= (ControlFlow 0 23) 7) $generated@@164))))
(let (($generated@@166  (=> (and (not $generated@@133) (= (ControlFlow 0 25) 23)) $generated@@165)))
(let (($generated@@167  (=> (and $generated@@133 (= (ControlFlow 0 24) 23)) $generated@@165)))
(let (($generated@@168  (=> $generated@@128 (and (=> (= (ControlFlow 0 26) 24) $generated@@167) (=> (= (ControlFlow 0 26) 25) $generated@@166)))))
(let (($generated@@169 true))
(let (($generated@@170  (and (=> (= (ControlFlow 0 27) 2) $generated@@169) (=> (= (ControlFlow 0 27) 26) $generated@@168))))
(let (($generated@@171 true))
(let (($generated@@172  (=> (=> $generated@@132 (and ($generated@@72 $generated@@136 $generated@@121) ($generated@@54 $generated@@136 $generated@@121 $generated@@122))) (=> (and (and (and (and (not false) (and (<= 0 $generated@@134) (< $generated@@134 2))) (= $generated@@127 1)) (forall (($generated@@173 T@U) ) (!  (=> (and (or (not (= $generated@@173 $generated@@130)) (not true)) ($generated@@6 ($generated@@7 $generated@@8 ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@173) $generated@@5)))) (= ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@173) ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@173)))
 :pattern ( ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@173))
))) (and (and ($generated $generated@@122 $generated@@122) (forall (($generated@@174 T@U) ($generated@@175 T@U) ) (!  (=> (and (or (not (= $generated@@174 $generated@@130)) (not true)) ($generated@@6 ($generated@@7 $generated@@8 ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@174) $generated@@5)))) (or (= ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@174) $generated@@175) ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@174) $generated@@175)) ($generated@@6 ($generated@@79 $generated@@3 $generated@@1 $generated@@8 $generated@@131 $generated@@174 $generated@@175))))
 :pattern ( ($generated@@0 $generated@@1 $generated@@2 ($generated@@0 $generated@@3 ($generated@@4 $generated@@1 $generated@@2) $generated@@122 $generated@@174) $generated@@175))
))) (and (=> $generated@@137 $generated@@132) (<= $generated@@134 $generated@@127)))) (and (=> (= (ControlFlow 0 28) 1) $generated@@171) (=> (= (ControlFlow 0 28) 27) $generated@@170))))))
(let (($generated@@176  (=> (and (and (= $generated@@131 ($generated@@80 $generated@@130 $generated@@122 $generated@@5 false)) (=> $generated@@137 (and ($generated@@72 $generated@@138 $generated@@121) ($generated@@54 $generated@@138 $generated@@121 $generated@@122)))) (and (= $generated@@127 ($generated@@46 1)) (= (ControlFlow 0 29) 28))) $generated@@172)))
(let (($generated@@177  (=> (and ($generated@@139 $generated@@122) ($generated@@140 $generated@@122)) (=> (and (and (and ($generated@@72 $generated@@141 $generated@@121) ($generated@@54 $generated@@141 $generated@@121 $generated@@122)) (and (=> $generated@@137 (and ($generated@@72 $generated@@142 $generated@@121) ($generated@@54 $generated@@142 $generated@@121 $generated@@122))) true)) (and (and (=> $generated@@143 (and ($generated@@72 $generated@@144 $generated@@121) ($generated@@54 $generated@@144 $generated@@121 $generated@@122))) true) (and (= 0 $generated@@145) (= (ControlFlow 0 30) 29)))) $generated@@176))))
$generated@@177)))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)