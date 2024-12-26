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
(declare-fun $generated@@21 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@22 () T@U)
(declare-fun $generated@@25 (T@U T@U) Bool)
(declare-fun $generated@@26 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@27 () T@T)
(declare-fun $generated@@28 () T@T)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 (T@T T@T) T@T)
(declare-fun $generated@@31 (T@T T@U) T@U)
(declare-fun $generated@@32 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@33 (T@T) T@T)
(declare-fun $generated@@34 (T@T) T@T)
(declare-fun $generated@@55 (Int) Int)
(declare-fun $generated@@57 (T@T T@U) T@U)
(declare-fun $generated@@60 (T@T T@U) T@U)
(declare-fun $generated@@63 (T@T T@U T@U) Bool)
(declare-fun $generated@@65 (T@U) Bool)
(declare-fun $generated@@71 (T@U T@U) Bool)
(declare-fun $generated@@76 (T@U Int Int) Int)
(declare-fun $generated@@77 (T@U) T@U)
(declare-fun $generated@@81 () Int)
(declare-fun $generated@@82 (Int Int) Bool)
(declare-fun $generated@@83 (Int Int) Int)
(declare-fun $generated@@95 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@96 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@97 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@131 (T@U) T@U)
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
(assert (= ($generated@@20 $generated) $generated@@0))
(assert (forall (($generated@@23 T@U) ($generated@@24 T@U) ) (! ($generated@@21 $generated@@6 $generated@@23 $generated@@22 $generated@@24)
 :pattern ( ($generated@@21 $generated@@6 $generated@@23 $generated@@22 $generated@@24))
)))
(assert  (and (and (and (and (and (and (and (forall (($generated@@35 T@T) ($generated@@36 T@T) ($generated@@37 T@U) ($generated@@38 T@U) ($generated@@39 T@U) ) (! (= ($generated@@26 $generated@@35 $generated@@36 ($generated@@32 $generated@@35 $generated@@36 $generated@@38 $generated@@39 $generated@@37) $generated@@39) $generated@@37)
 :weight 0
)) (forall (($generated@@40 T@T) ($generated@@41 T@T) ($generated@@42 T@U) ($generated@@43 T@U) ($generated@@44 T@U) ($generated@@45 T@U) ) (!  (or (= $generated@@44 $generated@@45) (= ($generated@@26 $generated@@40 $generated@@41 ($generated@@32 $generated@@40 $generated@@41 $generated@@43 $generated@@44 $generated@@42) $generated@@45) ($generated@@26 $generated@@40 $generated@@41 $generated@@43 $generated@@45)))
 :weight 0
))) (= ($generated@@4 $generated@@27) 3)) (= ($generated@@4 $generated@@28) 4)) (= ($generated@@4 $generated@@29) 5)) (forall (($generated@@46 T@T) ($generated@@47 T@T) ) (= ($generated@@4 ($generated@@30 $generated@@46 $generated@@47)) 6))) (forall (($generated@@48 T@T) ($generated@@49 T@T) ) (! (= ($generated@@33 ($generated@@30 $generated@@48 $generated@@49)) $generated@@48)
 :pattern ( ($generated@@30 $generated@@48 $generated@@49))
))) (forall (($generated@@50 T@T) ($generated@@51 T@T) ) (! (= ($generated@@34 ($generated@@30 $generated@@50 $generated@@51)) $generated@@51)
 :pattern ( ($generated@@30 $generated@@50 $generated@@51))
))))
(assert (forall (($generated@@52 T@U) ($generated@@53 T@U) ) (!  (=> ($generated@@25 $generated@@52 $generated@@53) (forall (($generated@@54 T@U) ) (!  (=> ($generated@@9 ($generated@@31 $generated@@5 ($generated@@26 $generated@@27 $generated@@28 ($generated@@26 $generated@@29 ($generated@@30 $generated@@27 $generated@@28) $generated@@52 $generated@@54) $generated@@1))) ($generated@@9 ($generated@@31 $generated@@5 ($generated@@26 $generated@@27 $generated@@28 ($generated@@26 $generated@@29 ($generated@@30 $generated@@27 $generated@@28) $generated@@53 $generated@@54) $generated@@1))))
 :pattern ( ($generated@@26 $generated@@27 $generated@@28 ($generated@@26 $generated@@29 ($generated@@30 $generated@@27 $generated@@28) $generated@@53 $generated@@54) $generated@@1))
)))
 :pattern ( ($generated@@25 $generated@@52 $generated@@53))
)))
(assert (forall (($generated@@56 Int) ) (! (= ($generated@@55 $generated@@56) $generated@@56)
 :pattern ( ($generated@@55 $generated@@56))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@T) ) (! (= ($generated@@57 $generated@@59 $generated@@58) $generated@@58)
 :pattern ( ($generated@@57 $generated@@59 $generated@@58))
)))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@T) ) (! (= ($generated@@60 $generated@@62 ($generated@@31 $generated@@62 $generated@@61)) $generated@@61)
 :pattern ( ($generated@@31 $generated@@62 $generated@@61))
)))
(assert (forall (($generated@@64 T@U) ) (! (= ($generated@@63 $generated@@6 $generated@@64 $generated@@22) (<= ($generated@@55 0) ($generated@@11 $generated@@64)))
 :pattern ( ($generated@@63 $generated@@6 $generated@@64 $generated@@22))
)))
(assert ($generated@@65 $generated@@1))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@T) ) (!  (=> ($generated@@25 $generated@@66 $generated@@67) (=> ($generated@@21 $generated@@70 $generated@@68 $generated@@69 $generated@@66) ($generated@@21 $generated@@70 $generated@@68 $generated@@69 $generated@@67)))
 :pattern ( ($generated@@25 $generated@@66 $generated@@67) ($generated@@21 $generated@@70 $generated@@68 $generated@@69 $generated@@66))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (!  (=> ($generated@@71 $generated@@72 $generated@@73) (and ($generated@@25 $generated@@72 $generated@@73) (forall (($generated@@74 T@U) ($generated@@75 T@U) ) (!  (=> (not ($generated@@65 $generated@@75)) (= ($generated@@26 $generated@@27 $generated@@28 ($generated@@26 $generated@@29 ($generated@@30 $generated@@27 $generated@@28) $generated@@72 $generated@@74) $generated@@75) ($generated@@26 $generated@@27 $generated@@28 ($generated@@26 $generated@@29 ($generated@@30 $generated@@27 $generated@@28) $generated@@73 $generated@@74) $generated@@75)))
 :pattern ( ($generated@@26 $generated@@27 $generated@@28 ($generated@@26 $generated@@29 ($generated@@30 $generated@@27 $generated@@28) $generated@@73 $generated@@74) $generated@@75))
))))
 :pattern ( ($generated@@71 $generated@@72 $generated@@73))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 Int) ($generated@@80 Int) ) (! (= ($generated@@76 ($generated@@77 $generated@@78) $generated@@79 $generated@@80) ($generated@@76 $generated@@78 $generated@@79 $generated@@80))
 :pattern ( ($generated@@76 ($generated@@77 $generated@@78) $generated@@79 $generated@@80))
)))
(assert  (=> (<= 0 $generated@@81) (forall (($generated@@84 T@U) ($generated@@85 Int) ($generated@@86 Int) ) (!  (=> (or ($generated@@82 ($generated@@55 $generated@@85) ($generated@@55 $generated@@86)) (and (< 0 $generated@@81) (<= ($generated@@55 0) $generated@@86))) (and (=> (or (not (= ($generated@@55 $generated@@86) ($generated@@55 0))) (not true)) ($generated@@82 ($generated@@55 $generated@@85) ($generated@@55 (- $generated@@86 1)))) (= ($generated@@76 ($generated@@77 $generated@@84) ($generated@@55 $generated@@85) ($generated@@55 $generated@@86)) (ite (= ($generated@@55 $generated@@86) ($generated@@55 0)) 1 ($generated@@83 ($generated@@55 $generated@@85) ($generated@@55 ($generated@@76 ($generated@@77 $generated@@84) ($generated@@55 $generated@@85) ($generated@@55 (- $generated@@86 1)))))))))
 :weight 3
 :pattern ( ($generated@@76 ($generated@@77 $generated@@84) ($generated@@55 $generated@@85) ($generated@@55 $generated@@86)))
))))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ) (!  (=> (or (not (= $generated@@87 $generated@@89)) (not true)) (=> (and ($generated@@25 $generated@@87 $generated@@88) ($generated@@25 $generated@@88 $generated@@89)) ($generated@@25 $generated@@87 $generated@@89)))
 :pattern ( ($generated@@25 $generated@@87 $generated@@88) ($generated@@25 $generated@@88 $generated@@89))
)))
(assert  (=> (<= 0 $generated@@81) (forall (($generated@@90 T@U) ($generated@@91 Int) ($generated@@92 Int) ) (!  (=> (or ($generated@@82 $generated@@91 $generated@@92) (and (< 0 $generated@@81) (<= ($generated@@55 0) $generated@@92))) (and (=> (or (not (= $generated@@92 ($generated@@55 0))) (not true)) ($generated@@82 $generated@@91 (- $generated@@92 1))) (= ($generated@@76 ($generated@@77 $generated@@90) $generated@@91 $generated@@92) (ite (= $generated@@92 ($generated@@55 0)) 1 ($generated@@83 $generated@@91 ($generated@@76 $generated@@90 $generated@@91 (- $generated@@92 1)))))))
 :pattern ( ($generated@@76 ($generated@@77 $generated@@90) $generated@@91 $generated@@92))
))))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@T) ) (! (= ($generated@@31 $generated@@94 ($generated@@60 $generated@@94 $generated@@93)) $generated@@93)
 :pattern ( ($generated@@60 $generated@@94 $generated@@93))
)))
(assert  (and (forall (($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@T) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@95 $generated@@98 $generated@@99 $generated@@100 ($generated@@97 $generated@@98 $generated@@99 $generated@@100 $generated@@102 $generated@@103 $generated@@104 $generated@@101) $generated@@103 $generated@@104) $generated@@101)
 :weight 0
)) (and (forall (($generated@@105 T@T) ($generated@@106 T@T) ($generated@@107 T@T) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ) (!  (or (= $generated@@110 $generated@@112) (= ($generated@@95 $generated@@105 $generated@@106 $generated@@107 ($generated@@97 $generated@@105 $generated@@106 $generated@@107 $generated@@109 $generated@@110 $generated@@111 $generated@@108) $generated@@112 $generated@@113) ($generated@@95 $generated@@105 $generated@@106 $generated@@107 $generated@@109 $generated@@112 $generated@@113)))
 :weight 0
)) (forall (($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@T) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ) (!  (or (= $generated@@120 $generated@@122) (= ($generated@@95 $generated@@114 $generated@@115 $generated@@116 ($generated@@97 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@119 $generated@@120 $generated@@117) $generated@@121 $generated@@122) ($generated@@95 $generated@@114 $generated@@115 $generated@@116 $generated@@118 $generated@@121 $generated@@122)))
 :weight 0
)))))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 Bool) ($generated@@127 T@U) ($generated@@128 T@U) ) (! (= ($generated@@9 ($generated@@95 $generated@@29 $generated@@27 $generated@@5 ($generated@@96 $generated@@123 $generated@@124 $generated@@125 $generated@@126) $generated@@127 $generated@@128))  (=> (and (or (not (= $generated@@127 $generated@@123)) (not true)) ($generated@@9 ($generated@@31 $generated@@5 ($generated@@26 $generated@@27 $generated@@28 ($generated@@26 $generated@@29 ($generated@@30 $generated@@27 $generated@@28) $generated@@124 $generated@@127) $generated@@125)))) $generated@@126))
 :pattern ( ($generated@@95 $generated@@29 $generated@@27 $generated@@5 ($generated@@96 $generated@@123 $generated@@124 $generated@@125 $generated@@126) $generated@@127 $generated@@128))
)))
(assert (forall (($generated@@129 Int) ($generated@@130 Int) ) (! (= ($generated@@83 $generated@@129 $generated@@130) (* $generated@@129 $generated@@130))
 :pattern ( ($generated@@83 $generated@@129 $generated@@130))
)))
(assert (= ($generated@@20 $generated@@22) $generated@@2))
(assert (= ($generated@@131 $generated@@22) $generated@@3))
(assert (forall (($generated@@132 Int) ) (! (= ($generated@@60 $generated@@6 ($generated@@10 ($generated@@55 $generated@@132))) ($generated@@57 $generated@@28 ($generated@@60 $generated@@6 ($generated@@10 $generated@@132))))
 :pattern ( ($generated@@60 $generated@@6 ($generated@@10 ($generated@@55 $generated@@132))))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@T) ) (! (= ($generated@@60 $generated@@134 ($generated@@57 $generated@@134 $generated@@133)) ($generated@@57 $generated@@28 ($generated@@60 $generated@@134 $generated@@133)))
 :pattern ( ($generated@@60 $generated@@134 ($generated@@57 $generated@@134 $generated@@133)))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (! ($generated@@21 $generated@@6 $generated@@136 $generated $generated@@135)
 :pattern ( ($generated@@21 $generated@@6 $generated@@136 $generated $generated@@135))
)))
(assert (forall (($generated@@137 T@U) ) (! ($generated@@63 $generated@@6 $generated@@137 $generated)
 :pattern ( ($generated@@63 $generated@@6 $generated@@137 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@138 () T@U)
(declare-fun $generated@@139 () T@U)
(declare-fun $generated@@140 () T@U)
(declare-fun $generated@@141 (T@U) Bool)
(declare-fun $generated@@142 () T@U)
(declare-fun $generated@@143 (T@U) Bool)
(declare-fun $generated@@144 () Int)
(declare-fun $generated@@145 () Int)
(declare-fun $generated@@146 () Int)
(declare-fun $generated@@147 () T@U)
(declare-fun $generated@@148 () Int)
(declare-fun $generated@@149 () Int)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@150  (=> (= $generated@@138 ($generated@@96 $generated@@139 $generated@@140 $generated@@1 false)) (=> (and ($generated@@141 $generated@@142) ($generated@@143 $generated@@142)) (=> (and (and (forall (($generated@@151 T@U) ) (!  (=> (and (or (not (= $generated@@151 $generated@@139)) (not true)) ($generated@@9 ($generated@@31 $generated@@5 ($generated@@26 $generated@@27 $generated@@28 ($generated@@26 $generated@@29 ($generated@@30 $generated@@27 $generated@@28) $generated@@140 $generated@@151) $generated@@1)))) (= ($generated@@26 $generated@@29 ($generated@@30 $generated@@27 $generated@@28) $generated@@142 $generated@@151) ($generated@@26 $generated@@29 ($generated@@30 $generated@@27 $generated@@28) $generated@@140 $generated@@151)))
 :pattern ( ($generated@@26 $generated@@29 ($generated@@30 $generated@@27 $generated@@28) $generated@@142 $generated@@151))
)) ($generated@@71 $generated@@140 $generated@@142)) (and (= $generated@@144 ($generated@@55 2)) ($generated@@21 $generated@@6 ($generated@@10 $generated@@144) $generated $generated@@142))) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($generated@@63 $generated@@6 ($generated@@10 ($generated@@55 3)) $generated@@22)) (=> ($generated@@63 $generated@@6 ($generated@@10 ($generated@@55 3)) $generated@@22) (=> (= $generated@@145 ($generated@@55 3)) (=> (and ($generated@@21 $generated@@6 ($generated@@10 $generated@@145) $generated@@22 $generated@@142) ($generated@@82 ($generated@@55 2) ($generated@@55 3))) (=> (and (and (= $generated@@146 ($generated@@55 ($generated@@76 ($generated@@77 $generated@@147) ($generated@@55 2) ($generated@@55 3)))) ($generated@@21 $generated@@6 ($generated@@10 $generated@@146) $generated $generated@@142)) (and (= $generated@@148 ($generated@@55 2)) ($generated@@21 $generated@@6 ($generated@@10 $generated@@148) $generated $generated@@142))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@63 $generated@@6 ($generated@@10 ($generated@@55 2)) $generated@@22)) (=> ($generated@@63 $generated@@6 ($generated@@10 ($generated@@55 2)) $generated@@22) (=> (and (and (= $generated@@149 ($generated@@55 2)) ($generated@@21 $generated@@6 ($generated@@10 $generated@@149) $generated@@22 $generated@@142)) (and ($generated@@82 ($generated@@55 2) ($generated@@55 2)) (= (ControlFlow 0 2) (- 0 1)))) ($generated@@63 $generated@@6 ($generated@@10 ($generated@@55 (+ 1 ($generated@@76 ($generated@@77 $generated@@147) ($generated@@55 2) ($generated@@55 2))))) $generated@@22))))))))))))))
(let (($generated@@152  (=> (and (and ($generated@@141 $generated@@140) ($generated@@143 $generated@@140)) (and (= 1 $generated@@81) (= (ControlFlow 0 5) 2))) $generated@@150)))
$generated@@152)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)