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
(declare-fun $generated@@9 (T@T) Int)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 (Bool) T@U)
(declare-fun $generated@@14 (T@U) Bool)
(declare-fun $generated@@15 (Int) T@U)
(declare-fun $generated@@16 (T@U) Int)
(declare-fun $generated@@17 (Real) T@U)
(declare-fun $generated@@18 (T@U) Real)
(declare-fun $generated@@25 (T@U) Int)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@41 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@44 (T@T T@T) T@T)
(declare-fun $generated@@45 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@46 (T@T) T@T)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@71 () T@U)
(declare-fun $generated@@72 (T@U T@U) T@U)
(declare-fun $generated@@73 (T@U) Bool)
(declare-fun $generated@@74 (T@T T@U) T@U)
(declare-fun $generated@@77 (T@T T@U T@U) Bool)
(declare-fun $generated@@82 (T@U) T@U)
(declare-fun $generated@@83 (T@U) T@U)
(declare-fun $generated@@88 (T@U) Bool)
(declare-fun $generated@@89 (T@U) T@U)
(declare-fun $generated@@97 (T@U) T@U)
(declare-fun $generated@@100 (T@U) T@U)
(declare-fun $generated@@102 (T@U) T@U)
(declare-fun $generated@@104 (T@U) T@U)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@110 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@111 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@112 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@9 $generated@@10) 0) (= ($generated@@9 $generated@@11) 1)) (= ($generated@@9 $generated@@12) 2)) (forall (($generated@@19 Bool) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 Int) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 Real) ) (! (= ($generated@@18 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 T@U) ) (! (= ($generated@@17 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8)
)
(assert (= ($generated@@25 $generated) 0))
(assert (= ($generated@@26 $generated) $generated@@0))
(assert (= ($generated@@9 $generated@@28) 3))
(assert (forall (($generated@@31 T@U) ($generated@@32 T@U) ($generated@@33 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@32 ($generated@@29 $generated@@31) $generated@@33) ($generated@@27 $generated@@28 $generated@@32 ($generated@@30 $generated@@31) $generated@@33))
 :pattern ( ($generated@@27 $generated@@28 $generated@@32 ($generated@@29 $generated@@31) $generated@@33))
 :pattern ( ($generated@@27 $generated@@28 $generated@@32 ($generated@@30 $generated@@31) $generated@@33))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@37 ($generated@@34 $generated@@36) $generated@@38) ($generated@@27 $generated@@28 $generated@@37 ($generated@@35 $generated@@36) $generated@@38))
 :pattern ( ($generated@@27 $generated@@28 $generated@@37 ($generated@@34 $generated@@36) $generated@@38))
 :pattern ( ($generated@@27 $generated@@28 $generated@@37 ($generated@@35 $generated@@36) $generated@@38))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@48 T@T) ($generated@@49 T@T) ($generated@@50 T@U) ($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@41 $generated@@48 $generated@@49 ($generated@@45 $generated@@48 $generated@@49 $generated@@51 $generated@@52 $generated@@50) $generated@@52) $generated@@50)
 :weight 0
)) (forall (($generated@@53 T@T) ($generated@@54 T@T) ($generated@@55 T@U) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (!  (or (= $generated@@57 $generated@@58) (= ($generated@@41 $generated@@53 $generated@@54 ($generated@@45 $generated@@53 $generated@@54 $generated@@56 $generated@@57 $generated@@55) $generated@@58) ($generated@@41 $generated@@53 $generated@@54 $generated@@56 $generated@@58)))
 :weight 0
))) (= ($generated@@9 $generated@@42) 4)) (= ($generated@@9 $generated@@43) 5)) (forall (($generated@@59 T@T) ($generated@@60 T@T) ) (= ($generated@@9 ($generated@@44 $generated@@59 $generated@@60)) 6))) (forall (($generated@@61 T@T) ($generated@@62 T@T) ) (! (= ($generated@@46 ($generated@@44 $generated@@61 $generated@@62)) $generated@@61)
 :pattern ( ($generated@@44 $generated@@61 $generated@@62))
))) (forall (($generated@@63 T@T) ($generated@@64 T@T) ) (! (= ($generated@@47 ($generated@@44 $generated@@63 $generated@@64)) $generated@@64)
 :pattern ( ($generated@@44 $generated@@63 $generated@@64))
))))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@66 ($generated@@30 $generated@@65) $generated@@67)  (or (= $generated@@66 $generated@@39) ($generated@@14 ($generated@@40 $generated@@10 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@67 $generated@@66) $generated)))))
 :pattern ( ($generated@@27 $generated@@28 $generated@@66 ($generated@@30 $generated@@65) $generated@@67))
)))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@27 $generated@@28 $generated@@69 ($generated@@35 $generated@@68) $generated@@70)  (or (= $generated@@69 $generated@@39) ($generated@@14 ($generated@@40 $generated@@10 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@70 $generated@@69) $generated)))))
 :pattern ( ($generated@@27 $generated@@28 $generated@@69 ($generated@@35 $generated@@68) $generated@@70))
)))
(assert (= ($generated@@25 $generated@@71) 0))
(assert (= ($generated@@72 $generated@@5 $generated@@8) $generated@@71))
(assert  (not ($generated@@73 $generated@@71)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@T) ) (! (= ($generated@@74 $generated@@76 ($generated@@40 $generated@@76 $generated@@75)) $generated@@75)
 :pattern ( ($generated@@40 $generated@@76 $generated@@75))
)))
(assert ($generated@@73 $generated))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@77 $generated@@28 $generated@@79 ($generated@@29 $generated@@78))  (and ($generated@@77 $generated@@28 $generated@@79 ($generated@@30 $generated@@78)) (or (not (= $generated@@79 $generated@@39)) (not true))))
 :pattern ( ($generated@@77 $generated@@28 $generated@@79 ($generated@@29 $generated@@78)))
 :pattern ( ($generated@@77 $generated@@28 $generated@@79 ($generated@@30 $generated@@78)))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@77 $generated@@28 $generated@@81 ($generated@@34 $generated@@80))  (and ($generated@@77 $generated@@28 $generated@@81 ($generated@@35 $generated@@80)) (or (not (= $generated@@81 $generated@@39)) (not true))))
 :pattern ( ($generated@@77 $generated@@28 $generated@@81 ($generated@@34 $generated@@80)))
 :pattern ( ($generated@@77 $generated@@28 $generated@@81 ($generated@@35 $generated@@80)))
)))
(assert (forall (($generated@@84 T@U) ) (!  (and (= ($generated@@82 ($generated@@30 $generated@@84)) $generated@@1) (= ($generated@@83 ($generated@@30 $generated@@84)) $generated@@6))
 :pattern ( ($generated@@30 $generated@@84))
)))
(assert (forall (($generated@@85 T@U) ) (!  (and (= ($generated@@82 ($generated@@29 $generated@@85)) $generated@@2) (= ($generated@@83 ($generated@@29 $generated@@85)) $generated@@6))
 :pattern ( ($generated@@29 $generated@@85))
)))
(assert (forall (($generated@@86 T@U) ) (!  (and (= ($generated@@82 ($generated@@34 $generated@@86)) $generated@@3) (= ($generated@@83 ($generated@@34 $generated@@86)) $generated@@7))
 :pattern ( ($generated@@34 $generated@@86))
)))
(assert (forall (($generated@@87 T@U) ) (!  (and (= ($generated@@82 ($generated@@35 $generated@@87)) $generated@@4) (= ($generated@@83 ($generated@@35 $generated@@87)) $generated@@7))
 :pattern ( ($generated@@35 $generated@@87))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ) (!  (=> (and (and ($generated@@88 $generated@@91) (and (or (not (= $generated@@92 $generated@@39)) (not true)) (= ($generated@@89 $generated@@92) ($generated@@35 $generated@@90)))) ($generated@@14 ($generated@@40 $generated@@10 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@91 $generated@@92) $generated)))) ($generated@@27 $generated@@28 ($generated@@40 $generated@@28 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@91 $generated@@92) $generated@@71)) ($generated@@29 $generated@@90) $generated@@91))
 :pattern ( ($generated@@40 $generated@@28 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@91 $generated@@92) $generated@@71)) ($generated@@35 $generated@@90))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@77 $generated@@28 $generated@@94 ($generated@@30 $generated@@93))  (or (= $generated@@94 $generated@@39) (= ($generated@@89 $generated@@94) ($generated@@30 $generated@@93))))
 :pattern ( ($generated@@77 $generated@@28 $generated@@94 ($generated@@30 $generated@@93)))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (! (= ($generated@@77 $generated@@28 $generated@@96 ($generated@@35 $generated@@95))  (or (= $generated@@96 $generated@@39) (= ($generated@@89 $generated@@96) ($generated@@35 $generated@@95))))
 :pattern ( ($generated@@77 $generated@@28 $generated@@96 ($generated@@35 $generated@@95)))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (!  (and (= ($generated@@97 ($generated@@72 $generated@@98 $generated@@99)) $generated@@98) (= ($generated@@26 ($generated@@72 $generated@@98 $generated@@99)) $generated@@99))
 :pattern ( ($generated@@72 $generated@@98 $generated@@99))
)))
(assert (forall (($generated@@101 T@U) ) (! (= ($generated@@100 ($generated@@30 $generated@@101)) $generated@@101)
 :pattern ( ($generated@@30 $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ) (! (= ($generated@@102 ($generated@@29 $generated@@103)) $generated@@103)
 :pattern ( ($generated@@29 $generated@@103))
)))
(assert (forall (($generated@@105 T@U) ) (! (= ($generated@@104 ($generated@@34 $generated@@105)) $generated@@105)
 :pattern ( ($generated@@34 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ) (! (= ($generated@@106 ($generated@@35 $generated@@107)) $generated@@107)
 :pattern ( ($generated@@35 $generated@@107))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@T) ) (! (= ($generated@@40 $generated@@109 ($generated@@74 $generated@@109 $generated@@108)) $generated@@108)
 :pattern ( ($generated@@74 $generated@@109 $generated@@108))
)))
(assert  (and (forall (($generated@@113 T@T) ($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ) (! (= ($generated@@110 $generated@@113 $generated@@114 $generated@@115 ($generated@@112 $generated@@113 $generated@@114 $generated@@115 $generated@@117 $generated@@118 $generated@@119 $generated@@116) $generated@@118 $generated@@119) $generated@@116)
 :weight 0
)) (and (forall (($generated@@120 T@T) ($generated@@121 T@T) ($generated@@122 T@T) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ) (!  (or (= $generated@@125 $generated@@127) (= ($generated@@110 $generated@@120 $generated@@121 $generated@@122 ($generated@@112 $generated@@120 $generated@@121 $generated@@122 $generated@@124 $generated@@125 $generated@@126 $generated@@123) $generated@@127 $generated@@128) ($generated@@110 $generated@@120 $generated@@121 $generated@@122 $generated@@124 $generated@@127 $generated@@128)))
 :weight 0
)) (forall (($generated@@129 T@T) ($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (!  (or (= $generated@@135 $generated@@137) (= ($generated@@110 $generated@@129 $generated@@130 $generated@@131 ($generated@@112 $generated@@129 $generated@@130 $generated@@131 $generated@@133 $generated@@134 $generated@@135 $generated@@132) $generated@@136 $generated@@137) ($generated@@110 $generated@@129 $generated@@130 $generated@@131 $generated@@133 $generated@@136 $generated@@137)))
 :weight 0
)))))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 Bool) ($generated@@142 T@U) ($generated@@143 T@U) ) (! (= ($generated@@14 ($generated@@110 $generated@@28 $generated@@42 $generated@@10 ($generated@@111 $generated@@138 $generated@@139 $generated@@140 $generated@@141) $generated@@142 $generated@@143))  (=> (and (or (not (= $generated@@142 $generated@@138)) (not true)) ($generated@@14 ($generated@@40 $generated@@10 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@139 $generated@@142) $generated@@140)))) $generated@@141))
 :pattern ( ($generated@@110 $generated@@28 $generated@@42 $generated@@10 ($generated@@111 $generated@@138 $generated@@139 $generated@@140 $generated@@141) $generated@@142 $generated@@143))
)))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> (and ($generated@@88 $generated@@145) (and (or (not (= $generated@@146 $generated@@39)) (not true)) (= ($generated@@89 $generated@@146) ($generated@@35 $generated@@144)))) ($generated@@77 $generated@@28 ($generated@@40 $generated@@28 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@145 $generated@@146) $generated@@71)) ($generated@@29 $generated@@144)))
 :pattern ( ($generated@@40 $generated@@28 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@145 $generated@@146) $generated@@71)) ($generated@@35 $generated@@144))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@147 () T@U)
(declare-fun $generated@@148 () T@U)
(declare-fun $generated@@149 () T@U)
(declare-fun $generated@@150 () T@U)
(declare-fun $generated@@151 () T@U)
(declare-fun $generated@@152 (T@U) Bool)
(declare-fun $generated@@153 () T@U)
(declare-fun $generated@@154 () T@U)
(declare-fun $generated@@155 () T@U)
(declare-fun $generated@@156 () Int)
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
 (=> (= (ControlFlow 0 0) 4) (let (($generated@@157  (=> (= $generated@@147 ($generated@@111 $generated@@39 $generated@@148 $generated false)) (=> (and (= $generated@@149 ($generated@@40 $generated@@28 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@148 $generated@@150) $generated@@71))) (= $generated@@151 ($generated@@40 $generated@@28 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@148 $generated@@150) $generated@@71)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= $generated@@149 $generated@@151)) (=> (= $generated@@149 $generated@@151) (=> (= (ControlFlow 0 2) (- 0 1)) (= $generated@@151 ($generated@@40 $generated@@28 ($generated@@41 $generated@@42 $generated@@43 ($generated@@41 $generated@@28 ($generated@@44 $generated@@42 $generated@@43) $generated@@148 $generated@@150) $generated@@71))))))))))
(let (($generated@@158  (=> (and ($generated@@88 $generated@@148) ($generated@@152 $generated@@148)) (=> (and (and (and (or (not (= $generated@@150 $generated@@39)) (not true)) (and ($generated@@77 $generated@@28 $generated@@150 ($generated@@34 $generated@@153)) ($generated@@27 $generated@@28 $generated@@150 ($generated@@34 $generated@@153) $generated@@148))) (and ($generated@@77 $generated@@28 $generated@@154 ($generated@@29 $generated@@153)) ($generated@@27 $generated@@28 $generated@@154 ($generated@@29 $generated@@153) $generated@@148))) (and (and ($generated@@77 $generated@@28 $generated@@155 ($generated@@29 $generated@@153)) ($generated@@27 $generated@@28 $generated@@155 ($generated@@29 $generated@@153) $generated@@148)) (and (= 0 $generated@@156) (= (ControlFlow 0 4) 2)))) $generated@@157))))
$generated@@158)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)