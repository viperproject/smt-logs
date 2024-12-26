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
(declare-fun $generated@@22 (T@U T@U) Bool)
(declare-fun $generated@@23 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@24 () T@T)
(declare-fun $generated@@25 () T@T)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 (T@T T@T) T@T)
(declare-fun $generated@@28 (T@T T@U) T@U)
(declare-fun $generated@@29 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@30 (T@T) T@T)
(declare-fun $generated@@31 (T@T) T@T)
(declare-fun $generated@@52 (Int) Int)
(declare-fun $generated@@54 (T@T T@U) T@U)
(declare-fun $generated@@57 (T@T T@U T@U) Bool)
(declare-fun $generated@@58 () T@T)
(declare-fun $generated@@59 (T@U T@U) T@U)
(declare-fun $generated@@60 (T@U) T@U)
(declare-fun $generated@@61 (T@U T@U) Bool)
(declare-fun $generated@@65 (T@T T@U) T@U)
(declare-fun $generated@@70 (T@U T@U T@U) Bool)
(declare-fun $generated@@71 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@85 (T@U Int) T@U)
(declare-fun $generated@@101 (T@U) T@U)
(declare-fun $generated@@106 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@107 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@108 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@140 (T@U) T@U)
(declare-fun $generated@@141 (T@U) T@U)
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
(assert  (and (and (and (and (and (and (and (forall (($generated@@32 T@T) ($generated@@33 T@T) ($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ) (! (= ($generated@@23 $generated@@32 $generated@@33 ($generated@@29 $generated@@32 $generated@@33 $generated@@35 $generated@@36 $generated@@34) $generated@@36) $generated@@34)
 :weight 0
)) (forall (($generated@@37 T@T) ($generated@@38 T@T) ($generated@@39 T@U) ($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (!  (or (= $generated@@41 $generated@@42) (= ($generated@@23 $generated@@37 $generated@@38 ($generated@@29 $generated@@37 $generated@@38 $generated@@40 $generated@@41 $generated@@39) $generated@@42) ($generated@@23 $generated@@37 $generated@@38 $generated@@40 $generated@@42)))
 :weight 0
))) (= ($generated@@3 $generated@@24) 3)) (= ($generated@@3 $generated@@25) 4)) (= ($generated@@3 $generated@@26) 5)) (forall (($generated@@43 T@T) ($generated@@44 T@T) ) (= ($generated@@3 ($generated@@27 $generated@@43 $generated@@44)) 6))) (forall (($generated@@45 T@T) ($generated@@46 T@T) ) (! (= ($generated@@30 ($generated@@27 $generated@@45 $generated@@46)) $generated@@45)
 :pattern ( ($generated@@27 $generated@@45 $generated@@46))
))) (forall (($generated@@47 T@T) ($generated@@48 T@T) ) (! (= ($generated@@31 ($generated@@27 $generated@@47 $generated@@48)) $generated@@48)
 :pattern ( ($generated@@27 $generated@@47 $generated@@48))
))))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ) (!  (=> ($generated@@22 $generated@@49 $generated@@50) (forall (($generated@@51 T@U) ) (!  (=> ($generated@@8 ($generated@@28 $generated@@4 ($generated@@23 $generated@@24 $generated@@25 ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@49 $generated@@51) $generated@@2))) ($generated@@8 ($generated@@28 $generated@@4 ($generated@@23 $generated@@24 $generated@@25 ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@50 $generated@@51) $generated@@2))))
 :pattern ( ($generated@@23 $generated@@24 $generated@@25 ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@50 $generated@@51) $generated@@2))
)))
 :pattern ( ($generated@@22 $generated@@49 $generated@@50))
)))
(assert (forall (($generated@@53 Int) ) (! (= ($generated@@52 $generated@@53) $generated@@53)
 :pattern ( ($generated@@52 $generated@@53))
)))
(assert (forall (($generated@@55 T@U) ($generated@@56 T@T) ) (! (= ($generated@@54 $generated@@56 $generated@@55) $generated@@55)
 :pattern ( ($generated@@54 $generated@@56 $generated@@55))
)))
(assert (= ($generated@@3 $generated@@58) 7))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (!  (=> (and ($generated@@57 $generated@@58 $generated@@62 ($generated@@60 $generated@@64)) ($generated@@61 $generated@@63 $generated@@64)) ($generated@@57 $generated@@58 ($generated@@59 $generated@@62 $generated@@63) ($generated@@60 $generated@@64)))
 :pattern ( ($generated@@57 $generated@@58 ($generated@@59 $generated@@62 $generated@@63) ($generated@@60 $generated@@64)))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@T) ) (! (= ($generated@@65 $generated@@67 ($generated@@28 $generated@@67 $generated@@66)) $generated@@66)
 :pattern ( ($generated@@28 $generated@@67 $generated@@66))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ) (! (= ($generated@@20 ($generated@@59 $generated@@68 $generated@@69)) (+ 1 ($generated@@20 $generated@@68)))
 :pattern ( ($generated@@59 $generated@@68 $generated@@69))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@T) ) (! (= ($generated@@70 ($generated@@65 $generated@@75 $generated@@72) $generated@@73 $generated@@74) ($generated@@71 $generated@@75 $generated@@72 $generated@@73 $generated@@74))
 :pattern ( ($generated@@70 ($generated@@65 $generated@@75 $generated@@72) $generated@@73 $generated@@74))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ) (!  (=> ($generated@@22 $generated@@76 $generated@@77) (=> ($generated@@70 $generated@@78 $generated@@79 $generated@@76) ($generated@@70 $generated@@78 $generated@@79 $generated@@77)))
 :pattern ( ($generated@@22 $generated@@76 $generated@@77) ($generated@@70 $generated@@78 $generated@@79 $generated@@76))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ($generated@@84 T@T) ) (!  (=> ($generated@@22 $generated@@80 $generated@@81) (=> ($generated@@71 $generated@@84 $generated@@82 $generated@@83 $generated@@80) ($generated@@71 $generated@@84 $generated@@82 $generated@@83 $generated@@81)))
 :pattern ( ($generated@@22 $generated@@80 $generated@@81) ($generated@@71 $generated@@84 $generated@@82 $generated@@83 $generated@@80))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 Int) ($generated@@88 T@U) ) (!  (and (=> (= $generated@@87 ($generated@@20 $generated@@86)) (= ($generated@@85 ($generated@@59 $generated@@86 $generated@@88) $generated@@87) $generated@@88)) (=> (or (not (= $generated@@87 ($generated@@20 $generated@@86))) (not true)) (= ($generated@@85 ($generated@@59 $generated@@86 $generated@@88) $generated@@87) ($generated@@85 $generated@@86 $generated@@87))))
 :pattern ( ($generated@@85 ($generated@@59 $generated@@86 $generated@@88) $generated@@87))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> (or (not (= $generated@@89 $generated@@91)) (not true)) (=> (and ($generated@@22 $generated@@89 $generated@@90) ($generated@@22 $generated@@90 $generated@@91)) ($generated@@22 $generated@@89 $generated@@91)))
 :pattern ( ($generated@@22 $generated@@89 $generated@@90) ($generated@@22 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@92 T@U) ) (!  (=> ($generated@@61 $generated@@92 $generated) (and (= ($generated@@65 $generated@@5 ($generated@@28 $generated@@5 $generated@@92)) $generated@@92) ($generated@@57 $generated@@5 ($generated@@28 $generated@@5 $generated@@92) $generated)))
 :pattern ( ($generated@@61 $generated@@92 $generated))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 T@T) ) (! (= ($generated@@61 ($generated@@65 $generated@@95 $generated@@93) $generated@@94) ($generated@@57 $generated@@95 $generated@@93 $generated@@94))
 :pattern ( ($generated@@61 ($generated@@65 $generated@@95 $generated@@93) $generated@@94))
)))
(assert (forall (($generated@@96 T@U) ) (! (<= 0 ($generated@@20 $generated@@96))
 :pattern ( ($generated@@20 $generated@@96))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ) (! (= ($generated@@71 $generated@@58 $generated@@97 ($generated@@60 $generated@@98) $generated@@99) (forall (($generated@@100 Int) ) (!  (=> (and (<= 0 $generated@@100) (< $generated@@100 ($generated@@20 $generated@@97))) ($generated@@70 ($generated@@85 $generated@@97 $generated@@100) $generated@@98 $generated@@99))
 :pattern ( ($generated@@85 $generated@@97 $generated@@100))
)))
 :pattern ( ($generated@@71 $generated@@58 $generated@@97 ($generated@@60 $generated@@98) $generated@@99))
)))
(assert (forall (($generated@@102 T@U) ) (! (= ($generated@@101 ($generated@@60 $generated@@102)) $generated@@102)
 :pattern ( ($generated@@60 $generated@@102))
)))
(assert (forall (($generated@@103 T@U) ) (! (= ($generated@@19 ($generated@@60 $generated@@103)) $generated@@1)
 :pattern ( ($generated@@60 $generated@@103))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@T) ) (! (= ($generated@@28 $generated@@105 ($generated@@65 $generated@@105 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@65 $generated@@105 $generated@@104))
)))
(assert  (and (forall (($generated@@109 T@T) ($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@106 $generated@@109 $generated@@110 $generated@@111 ($generated@@108 $generated@@109 $generated@@110 $generated@@111 $generated@@113 $generated@@114 $generated@@115 $generated@@112) $generated@@114 $generated@@115) $generated@@112)
 :weight 0
)) (and (forall (($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ) (!  (or (= $generated@@121 $generated@@123) (= ($generated@@106 $generated@@116 $generated@@117 $generated@@118 ($generated@@108 $generated@@116 $generated@@117 $generated@@118 $generated@@120 $generated@@121 $generated@@122 $generated@@119) $generated@@123 $generated@@124) ($generated@@106 $generated@@116 $generated@@117 $generated@@118 $generated@@120 $generated@@123 $generated@@124)))
 :weight 0
)) (forall (($generated@@125 T@T) ($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (!  (or (= $generated@@131 $generated@@133) (= ($generated@@106 $generated@@125 $generated@@126 $generated@@127 ($generated@@108 $generated@@125 $generated@@126 $generated@@127 $generated@@129 $generated@@130 $generated@@131 $generated@@128) $generated@@132 $generated@@133) ($generated@@106 $generated@@125 $generated@@126 $generated@@127 $generated@@129 $generated@@132 $generated@@133)))
 :weight 0
)))))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 Bool) ($generated@@138 T@U) ($generated@@139 T@U) ) (! (= ($generated@@8 ($generated@@106 $generated@@26 $generated@@24 $generated@@4 ($generated@@107 $generated@@134 $generated@@135 $generated@@136 $generated@@137) $generated@@138 $generated@@139))  (=> (and (or (not (= $generated@@138 $generated@@134)) (not true)) ($generated@@8 ($generated@@28 $generated@@4 ($generated@@23 $generated@@24 $generated@@25 ($generated@@23 $generated@@26 ($generated@@27 $generated@@24 $generated@@25) $generated@@135 $generated@@138) $generated@@136)))) $generated@@137))
 :pattern ( ($generated@@106 $generated@@26 $generated@@24 $generated@@4 ($generated@@107 $generated@@134 $generated@@135 $generated@@136 $generated@@137) $generated@@138 $generated@@139))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ) (!  (and (= ($generated@@140 ($generated@@59 $generated@@142 $generated@@143)) $generated@@142) (= ($generated@@141 ($generated@@59 $generated@@142 $generated@@143)) $generated@@143))
 :pattern ( ($generated@@59 $generated@@142 $generated@@143))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ) (!  (=> ($generated@@61 $generated@@144 ($generated@@60 $generated@@145)) (and (= ($generated@@65 $generated@@58 ($generated@@28 $generated@@58 $generated@@144)) $generated@@144) ($generated@@57 $generated@@58 ($generated@@28 $generated@@58 $generated@@144) ($generated@@60 $generated@@145))))
 :pattern ( ($generated@@61 $generated@@144 ($generated@@60 $generated@@145)))
)))
(assert (forall (($generated@@146 Int) ) (! (= ($generated@@65 $generated@@5 ($generated@@9 ($generated@@52 $generated@@146))) ($generated@@54 $generated@@25 ($generated@@65 $generated@@5 ($generated@@9 $generated@@146))))
 :pattern ( ($generated@@65 $generated@@5 ($generated@@9 ($generated@@52 $generated@@146))))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@T) ) (! (= ($generated@@65 $generated@@148 ($generated@@54 $generated@@148 $generated@@147)) ($generated@@54 $generated@@25 ($generated@@65 $generated@@148 $generated@@147)))
 :pattern ( ($generated@@65 $generated@@148 ($generated@@54 $generated@@148 $generated@@147)))
)))
(assert (forall (($generated@@149 T@U) ) (!  (=> (= ($generated@@20 $generated@@149) 0) (= $generated@@149 $generated@@21))
 :pattern ( ($generated@@20 $generated@@149))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ) (! ($generated@@71 $generated@@5 $generated@@151 $generated $generated@@150)
 :pattern ( ($generated@@71 $generated@@5 $generated@@151 $generated $generated@@150))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (! (= ($generated@@57 $generated@@58 $generated@@152 ($generated@@60 $generated@@153)) (forall (($generated@@154 Int) ) (!  (=> (and (<= 0 $generated@@154) (< $generated@@154 ($generated@@20 $generated@@152))) ($generated@@61 ($generated@@85 $generated@@152 $generated@@154) $generated@@153))
 :pattern ( ($generated@@85 $generated@@152 $generated@@154))
)))
 :pattern ( ($generated@@57 $generated@@58 $generated@@152 ($generated@@60 $generated@@153)))
)))
(assert (forall (($generated@@155 T@U) ) (! ($generated@@57 $generated@@5 $generated@@155 $generated)
 :pattern ( ($generated@@57 $generated@@5 $generated@@155 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)