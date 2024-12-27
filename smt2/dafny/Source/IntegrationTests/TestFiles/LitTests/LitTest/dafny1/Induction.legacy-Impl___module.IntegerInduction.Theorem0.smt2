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
(declare-fun $generated@@19 () Int)
(declare-fun $generated@@20 (T@U T@U Int) Int)
(declare-fun $generated@@21 (T@U) T@U)
(declare-fun $generated@@22 (Int) Int)
(declare-fun $generated@@23 (T@U Int) Bool)
(declare-fun $generated@@24 () T@U)
(declare-fun $generated@@25 (T@T T@U T@U) Bool)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 (Int Int) Int)
(declare-fun $generated@@32 (T@U T@U Int) Int)
(declare-fun $generated@@33 (T@U Int) Bool)
(declare-fun $generated@@37 () T@U)
(declare-fun $generated@@38 (T@U) T@U)
(declare-fun $generated@@40 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@43 (T@T T@U) T@U)
(declare-fun $generated@@44 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@45 () T@T)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@47 (T@T T@T) T@T)
(declare-fun $generated@@48 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@49 (T@T) T@T)
(declare-fun $generated@@50 (T@T) T@T)
(declare-fun $generated@@74 (T@T T@U) T@U)
(declare-fun $generated@@80 (T@T T@U) T@U)
(declare-fun $generated@@98 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@99 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@100 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@134 (T@U) T@U)
(declare-fun $generated@@135 (T@U) T@U)
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
(assert (= ($generated@@3 $generated@@26) 3))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@29 T@U) ($generated@@30 T@U) ($generated@@31 Int) ) (!  (=> (or ($generated@@23 $generated@@30 ($generated@@22 $generated@@31)) (and (< 0 $generated@@19) (and (and (or (not (= $generated@@30 $generated@@24)) (not true)) ($generated@@25 $generated@@26 $generated@@30 $generated@@27)) (<= ($generated@@22 0) ($generated@@22 $generated@@31))))) (and (=> (or (not (= ($generated@@22 $generated@@31) ($generated@@22 0))) (not true)) ($generated@@23 $generated@@30 ($generated@@22 (- $generated@@31 1)))) (= ($generated@@20 ($generated@@21 $generated@@29) $generated@@30 ($generated@@22 $generated@@31)) (ite (= ($generated@@22 $generated@@31) ($generated@@22 0)) 0 (+ ($generated@@20 ($generated@@21 $generated@@29) $generated@@30 ($generated@@22 (- $generated@@31 1))) ($generated@@28 ($generated@@22 ($generated@@28 ($generated@@22 $generated@@31) ($generated@@22 $generated@@31))) ($generated@@22 $generated@@31)))))))
 :weight 3
 :pattern ( ($generated@@20 ($generated@@21 $generated@@29) $generated@@30 ($generated@@22 $generated@@31)))
))))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 Int) ) (!  (=> (or ($generated@@33 $generated@@35 $generated@@36) (and (< 0 $generated@@19) (and (and (or (not (= $generated@@35 $generated@@24)) (not true)) ($generated@@25 $generated@@26 $generated@@35 $generated@@27)) (<= ($generated@@22 0) $generated@@36)))) (and (=> (or (not (= $generated@@36 ($generated@@22 0))) (not true)) ($generated@@33 $generated@@35 (- $generated@@36 1))) (= ($generated@@32 ($generated@@21 $generated@@34) $generated@@35 $generated@@36) (ite (= $generated@@36 ($generated@@22 0)) 0 (+ ($generated@@32 $generated@@34 $generated@@35 (- $generated@@36 1)) $generated@@36)))))
 :pattern ( ($generated@@32 ($generated@@21 $generated@@34) $generated@@35 $generated@@36))
))))
(assert (forall (($generated@@39 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@39 $generated@@37)  (or (= $generated@@39 $generated@@24) (= ($generated@@38 $generated@@39) $generated@@37)))
 :pattern ( ($generated@@25 $generated@@26 $generated@@39 $generated@@37))
)))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@U) ) (! (= ($generated@@40 $generated@@26 $generated@@41 $generated@@27 $generated@@42) ($generated@@40 $generated@@26 $generated@@41 $generated@@37 $generated@@42))
 :pattern ( ($generated@@40 $generated@@26 $generated@@41 $generated@@27 $generated@@42))
 :pattern ( ($generated@@40 $generated@@26 $generated@@41 $generated@@37 $generated@@42))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@51 T@T) ($generated@@52 T@T) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@44 $generated@@51 $generated@@52 ($generated@@48 $generated@@51 $generated@@52 $generated@@54 $generated@@55 $generated@@53) $generated@@55) $generated@@53)
 :weight 0
)) (forall (($generated@@56 T@T) ($generated@@57 T@T) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (!  (or (= $generated@@60 $generated@@61) (= ($generated@@44 $generated@@56 $generated@@57 ($generated@@48 $generated@@56 $generated@@57 $generated@@59 $generated@@60 $generated@@58) $generated@@61) ($generated@@44 $generated@@56 $generated@@57 $generated@@59 $generated@@61)))
 :weight 0
))) (= ($generated@@3 $generated@@45) 4)) (= ($generated@@3 $generated@@46) 5)) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (= ($generated@@3 ($generated@@47 $generated@@62 $generated@@63)) 6))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@49 ($generated@@47 $generated@@64 $generated@@65)) $generated@@64)
 :pattern ( ($generated@@47 $generated@@64 $generated@@65))
))) (forall (($generated@@66 T@T) ($generated@@67 T@T) ) (! (= ($generated@@50 ($generated@@47 $generated@@66 $generated@@67)) $generated@@67)
 :pattern ( ($generated@@47 $generated@@66 $generated@@67))
))))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ) (! (= ($generated@@40 $generated@@26 $generated@@68 $generated@@37 $generated@@69)  (or (= $generated@@68 $generated@@24) ($generated@@8 ($generated@@43 $generated@@4 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@26 ($generated@@47 $generated@@45 $generated@@46) $generated@@69 $generated@@68) $generated)))))
 :pattern ( ($generated@@40 $generated@@26 $generated@@68 $generated@@37 $generated@@69))
)))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 Int) ) (!  (=> (or ($generated@@23 $generated@@71 $generated@@72) (and (< 0 $generated@@19) (and (and (or (not (= $generated@@71 $generated@@24)) (not true)) ($generated@@25 $generated@@26 $generated@@71 $generated@@27)) (<= ($generated@@22 0) $generated@@72)))) (and (=> (or (not (= $generated@@72 ($generated@@22 0))) (not true)) ($generated@@23 $generated@@71 (- $generated@@72 1))) (= ($generated@@20 ($generated@@21 $generated@@70) $generated@@71 $generated@@72) (ite (= $generated@@72 ($generated@@22 0)) 0 (+ ($generated@@20 $generated@@70 $generated@@71 (- $generated@@72 1)) ($generated@@28 ($generated@@28 $generated@@72 $generated@@72) $generated@@72))))))
 :pattern ( ($generated@@20 ($generated@@21 $generated@@70) $generated@@71 $generated@@72))
))))
(assert (forall (($generated@@73 Int) ) (! (= ($generated@@22 $generated@@73) $generated@@73)
 :pattern ( ($generated@@22 $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@T) ) (! (= ($generated@@74 $generated@@76 $generated@@75) $generated@@75)
 :pattern ( ($generated@@74 $generated@@76 $generated@@75))
)))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 Int) ) (!  (=> (or ($generated@@33 ($generated@@74 $generated@@26 $generated@@78) ($generated@@22 $generated@@79)) (and (< 0 $generated@@19) (and (and (or (not (= $generated@@78 $generated@@24)) (not true)) ($generated@@25 $generated@@26 $generated@@78 $generated@@27)) (<= ($generated@@22 0) ($generated@@22 $generated@@79))))) (and (=> (or (not (= ($generated@@22 $generated@@79) ($generated@@22 0))) (not true)) ($generated@@33 ($generated@@74 $generated@@26 $generated@@78) ($generated@@22 (- $generated@@79 1)))) (= ($generated@@32 ($generated@@21 $generated@@77) ($generated@@74 $generated@@26 $generated@@78) ($generated@@22 $generated@@79)) (ite (= ($generated@@22 $generated@@79) ($generated@@22 0)) 0 (+ ($generated@@32 ($generated@@21 $generated@@77) ($generated@@74 $generated@@26 $generated@@78) ($generated@@22 (- $generated@@79 1))) $generated@@79)))))
 :weight 3
 :pattern ( ($generated@@32 ($generated@@21 $generated@@77) ($generated@@74 $generated@@26 $generated@@78) ($generated@@22 $generated@@79)))
))))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@T) ) (! (= ($generated@@80 $generated@@82 ($generated@@43 $generated@@82 $generated@@81)) $generated@@81)
 :pattern ( ($generated@@43 $generated@@82 $generated@@81))
)))
(assert (forall (($generated@@83 T@U) ) (! (= ($generated@@25 $generated@@26 $generated@@83 $generated@@27)  (and ($generated@@25 $generated@@26 $generated@@83 $generated@@37) (or (not (= $generated@@83 $generated@@24)) (not true))))
 :pattern ( ($generated@@25 $generated@@26 $generated@@83 $generated@@27))
 :pattern ( ($generated@@25 $generated@@26 $generated@@83 $generated@@37))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 Int) ) (! (= ($generated@@20 ($generated@@21 $generated@@84) $generated@@85 $generated@@86) ($generated@@20 $generated@@84 $generated@@85 $generated@@86))
 :pattern ( ($generated@@20 ($generated@@21 $generated@@84) $generated@@85 $generated@@86))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 Int) ) (! (= ($generated@@32 ($generated@@21 $generated@@87) $generated@@88 $generated@@89) ($generated@@32 $generated@@87 $generated@@88 $generated@@89))
 :pattern ( ($generated@@32 ($generated@@21 $generated@@87) $generated@@88 $generated@@89))
)))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 Int) ) (!  (=> (or ($generated@@23 ($generated@@74 $generated@@26 $generated@@91) ($generated@@22 $generated@@92)) (and (< 0 $generated@@19) (and (and (or (not (= $generated@@91 $generated@@24)) (not true)) ($generated@@25 $generated@@26 $generated@@91 $generated@@27)) (<= ($generated@@22 0) ($generated@@22 $generated@@92))))) (and (=> (or (not (= ($generated@@22 $generated@@92) ($generated@@22 0))) (not true)) ($generated@@23 ($generated@@74 $generated@@26 $generated@@91) ($generated@@22 (- $generated@@92 1)))) (= ($generated@@20 ($generated@@21 $generated@@90) ($generated@@74 $generated@@26 $generated@@91) ($generated@@22 $generated@@92)) (ite (= ($generated@@22 $generated@@92) ($generated@@22 0)) 0 (+ ($generated@@20 ($generated@@21 $generated@@90) ($generated@@74 $generated@@26 $generated@@91) ($generated@@22 (- $generated@@92 1))) ($generated@@28 ($generated@@22 ($generated@@28 ($generated@@22 $generated@@92) ($generated@@22 $generated@@92))) ($generated@@22 $generated@@92)))))))
 :weight 3
 :pattern ( ($generated@@20 ($generated@@21 $generated@@90) ($generated@@74 $generated@@26 $generated@@91) ($generated@@22 $generated@@92)))
))))
(assert  (=> (<= 0 $generated@@19) (forall (($generated@@93 T@U) ($generated@@94 T@U) ($generated@@95 Int) ) (!  (=> (or ($generated@@33 $generated@@94 ($generated@@22 $generated@@95)) (and (< 0 $generated@@19) (and (and (or (not (= $generated@@94 $generated@@24)) (not true)) ($generated@@25 $generated@@26 $generated@@94 $generated@@27)) (<= ($generated@@22 0) ($generated@@22 $generated@@95))))) (and (=> (or (not (= ($generated@@22 $generated@@95) ($generated@@22 0))) (not true)) ($generated@@33 $generated@@94 ($generated@@22 (- $generated@@95 1)))) (= ($generated@@32 ($generated@@21 $generated@@93) $generated@@94 ($generated@@22 $generated@@95)) (ite (= ($generated@@22 $generated@@95) ($generated@@22 0)) 0 (+ ($generated@@32 ($generated@@21 $generated@@93) $generated@@94 ($generated@@22 (- $generated@@95 1))) $generated@@95)))))
 :weight 3
 :pattern ( ($generated@@32 ($generated@@21 $generated@@93) $generated@@94 ($generated@@22 $generated@@95)))
))))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@T) ) (! (= ($generated@@43 $generated@@97 ($generated@@80 $generated@@97 $generated@@96)) $generated@@96)
 :pattern ( ($generated@@80 $generated@@97 $generated@@96))
)))
(assert  (and (forall (($generated@@101 T@T) ($generated@@102 T@T) ($generated@@103 T@T) ($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ) (! (= ($generated@@98 $generated@@101 $generated@@102 $generated@@103 ($generated@@100 $generated@@101 $generated@@102 $generated@@103 $generated@@105 $generated@@106 $generated@@107 $generated@@104) $generated@@106 $generated@@107) $generated@@104)
 :weight 0
)) (and (forall (($generated@@108 T@T) ($generated@@109 T@T) ($generated@@110 T@T) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (!  (or (= $generated@@113 $generated@@115) (= ($generated@@98 $generated@@108 $generated@@109 $generated@@110 ($generated@@100 $generated@@108 $generated@@109 $generated@@110 $generated@@112 $generated@@113 $generated@@114 $generated@@111) $generated@@115 $generated@@116) ($generated@@98 $generated@@108 $generated@@109 $generated@@110 $generated@@112 $generated@@115 $generated@@116)))
 :weight 0
)) (forall (($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (!  (or (= $generated@@123 $generated@@125) (= ($generated@@98 $generated@@117 $generated@@118 $generated@@119 ($generated@@100 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@122 $generated@@123 $generated@@120) $generated@@124 $generated@@125) ($generated@@98 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@124 $generated@@125)))
 :weight 0
)))))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 Bool) ($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@8 ($generated@@98 $generated@@26 $generated@@45 $generated@@4 ($generated@@99 $generated@@126 $generated@@127 $generated@@128 $generated@@129) $generated@@130 $generated@@131))  (=> (and (or (not (= $generated@@130 $generated@@126)) (not true)) ($generated@@8 ($generated@@43 $generated@@4 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@26 ($generated@@47 $generated@@45 $generated@@46) $generated@@127 $generated@@130) $generated@@128)))) $generated@@129))
 :pattern ( ($generated@@98 $generated@@26 $generated@@45 $generated@@4 ($generated@@99 $generated@@126 $generated@@127 $generated@@128 $generated@@129) $generated@@130 $generated@@131))
)))
(assert (forall (($generated@@132 Int) ($generated@@133 Int) ) (! (= ($generated@@28 $generated@@132 $generated@@133) (* $generated@@132 $generated@@133))
 :pattern ( ($generated@@28 $generated@@132 $generated@@133))
)))
(assert (= ($generated@@134 $generated@@37) $generated@@0))
(assert (= ($generated@@135 $generated@@37) $generated@@2))
(assert (= ($generated@@134 $generated@@27) $generated@@1))
(assert (= ($generated@@135 $generated@@27) $generated@@2))
(assert (forall (($generated@@136 Int) ) (! (= ($generated@@80 $generated@@5 ($generated@@9 ($generated@@22 $generated@@136))) ($generated@@74 $generated@@46 ($generated@@80 $generated@@5 ($generated@@9 $generated@@136))))
 :pattern ( ($generated@@80 $generated@@5 ($generated@@9 ($generated@@22 $generated@@136))))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@T) ) (! (= ($generated@@80 $generated@@138 ($generated@@74 $generated@@138 $generated@@137)) ($generated@@74 $generated@@46 ($generated@@80 $generated@@138 $generated@@137)))
 :pattern ( ($generated@@80 $generated@@138 ($generated@@74 $generated@@138 $generated@@137)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@139 () T@U)
(declare-fun $generated@@140 () T@U)
(declare-fun $generated@@141 () Int)
(declare-fun $generated@@142 () Int)
(declare-fun $generated@@143 (T@U) Bool)
(declare-fun $generated@@144 () T@U)
(declare-fun $generated@@145 (T@U) Bool)
(declare-fun $generated@@146 () T@U)
(declare-fun $generated@@147 () Int)
(declare-fun $generated@@148 () T@U)
(declare-fun $generated@@149 () T@U)
(declare-fun $generated@@150 () T@U)
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
 (=> (= (ControlFlow 0 0) 10) (let (($generated@@151  (=> (= (ControlFlow 0 2) (- 0 1)) (= ($generated@@20 ($generated@@21 ($generated@@21 $generated@@139)) $generated@@140 $generated@@141) ($generated@@28 ($generated@@32 ($generated@@21 ($generated@@21 $generated@@139)) $generated@@140 $generated@@141) ($generated@@32 ($generated@@21 ($generated@@21 $generated@@139)) $generated@@140 $generated@@141))))))
(let (($generated@@152  (=> (and (= $generated@@141 0) (= (ControlFlow 0 8) 2)) $generated@@151)))
(let (($generated@@153  (=> (and (or (not (= $generated@@141 0)) (not true)) (= $generated@@142 (- $generated@@141 1))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (or (<= 0 $generated@@141) (= $generated@@142 $generated@@141))) (=> (or (<= 0 $generated@@141) (= $generated@@142 $generated@@141)) (and (=> (= (ControlFlow 0 3) (- 0 6)) (< $generated@@142 $generated@@141)) (=> (< $generated@@142 $generated@@141) (and (=> (= (ControlFlow 0 3) (- 0 5)) (<= ($generated@@22 0) $generated@@142)) (=> (<= ($generated@@22 0) $generated@@142) (=> (and ($generated@@143 $generated@@144) ($generated@@145 $generated@@144)) (=> (and (and (and ($generated@@23 $generated@@140 $generated@@142) (and ($generated@@33 $generated@@140 $generated@@142) ($generated@@33 $generated@@140 $generated@@142))) (= ($generated@@20 ($generated@@21 ($generated@@21 $generated@@139)) $generated@@140 $generated@@142) ($generated@@28 ($generated@@32 ($generated@@21 ($generated@@21 $generated@@139)) $generated@@140 $generated@@142) ($generated@@32 ($generated@@21 ($generated@@21 $generated@@139)) $generated@@140 $generated@@142)))) (and (= $generated@@146 $generated@@144) (= $generated@@147 (- $generated@@141 1)))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= ($generated@@22 0) $generated@@147)) (=> (<= ($generated@@22 0) $generated@@147) (=> (and ($generated@@143 $generated@@148) ($generated@@145 $generated@@148)) (=> (and (and ($generated@@33 $generated@@140 $generated@@147) (= ($generated@@28 ($generated@@22 2) ($generated@@32 ($generated@@21 ($generated@@21 $generated@@139)) $generated@@140 $generated@@147)) ($generated@@28 $generated@@147 (+ $generated@@147 1)))) (and (= $generated@@144 $generated@@148) (= (ControlFlow 0 3) 2))) $generated@@151)))))))))))))))
(let (($generated@@154  (=> (= $generated@@149 ($generated@@99 $generated@@24 $generated@@150 $generated false)) (=> (and (and ($generated@@143 $generated@@146) ($generated@@145 $generated@@146)) (and (= $generated@@150 $generated@@146) (forall (($generated@@155 Int) ) (!  (=> (and (<= ($generated@@22 0) $generated@@155) (and (<= 0 $generated@@155) (< $generated@@155 $generated@@141))) (= ($generated@@20 ($generated@@21 $generated@@139) $generated@@140 $generated@@155) ($generated@@28 ($generated@@32 ($generated@@21 $generated@@139) $generated@@140 $generated@@155) ($generated@@32 ($generated@@21 $generated@@139) $generated@@140 $generated@@155))))
 :pattern ( ($generated@@32 ($generated@@21 $generated@@139) $generated@@140 $generated@@155))
 :pattern ( ($generated@@20 ($generated@@21 $generated@@139) $generated@@140 $generated@@155))
)))) (and (=> (= (ControlFlow 0 9) 3) $generated@@153) (=> (= (ControlFlow 0 9) 8) $generated@@152))))))
(let (($generated@@156  (=> (and ($generated@@143 $generated@@150) ($generated@@145 $generated@@150)) (=> (and (and (and (or (not (= $generated@@140 $generated@@24)) (not true)) (and ($generated@@25 $generated@@26 $generated@@140 $generated@@27) ($generated@@40 $generated@@26 $generated@@140 $generated@@27 $generated@@150))) (= 2 $generated@@19)) (and (<= ($generated@@22 0) $generated@@141) (= (ControlFlow 0 10) 9))) $generated@@154))))
$generated@@156))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)