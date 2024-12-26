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
(declare-fun $generated@@2 (T@T) Int)
(declare-fun $generated@@3 () T@T)
(declare-fun $generated@@4 () T@T)
(declare-fun $generated@@5 () T@T)
(declare-fun $generated@@6 (Bool) T@U)
(declare-fun $generated@@7 (T@U) Bool)
(declare-fun $generated@@8 (Int) T@U)
(declare-fun $generated@@9 (T@U) Int)
(declare-fun $generated@@10 (Real) T@U)
(declare-fun $generated@@11 (T@U) Real)
(declare-fun $generated@@18 (T@U) T@U)
(declare-fun $generated@@19 (T@U T@U) Bool)
(declare-fun $generated@@23 (T@U T@U) T@U)
(declare-fun $generated@@24 (Int) T@U)
(declare-fun $generated@@25 (T@U) Int)
(declare-fun $generated@@29 () Int)
(declare-fun $generated@@30 (T@U T@U Int) Bool)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U Int) Bool)
(declare-fun $generated@@33 (Int) Int)
(declare-fun $generated@@39 (T@T T@U) T@U)
(declare-fun $generated@@40 () T@T)
(declare-fun $generated@@49 (T@U Int) Bool)
(declare-fun $generated@@56 (T@T T@U) T@U)
(declare-fun $generated@@57 (T@T T@U) T@U)
(declare-fun $generated@@66 (T@U) Bool)
(declare-fun $generated@@70 (Int) Bool)
(declare-fun $generated@@87 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@88 () T@T)
(declare-fun $generated@@89 () T@T)
(declare-fun $generated@@90 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@91 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@92 (T@T T@T) T@T)
(declare-fun $generated@@93 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@94 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@95 (T@T) T@T)
(declare-fun $generated@@96 (T@T) T@T)
(declare-fun $generated@@145 (Int Int) Int)
(declare-fun $generated@@154 (T@T T@U T@U T@U) Bool)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@2 $generated@@3) 0) (= ($generated@@2 $generated@@4) 1)) (= ($generated@@2 $generated@@5) 2)) (forall (($generated@@12 Bool) ) (! (= ($generated@@7 ($generated@@6 $generated@@12)) $generated@@12)
 :pattern ( ($generated@@6 $generated@@12))
))) (forall (($generated@@13 T@U) ) (! (= ($generated@@6 ($generated@@7 $generated@@13)) $generated@@13)
 :pattern ( ($generated@@7 $generated@@13))
))) (forall (($generated@@14 Int) ) (! (= ($generated@@9 ($generated@@8 $generated@@14)) $generated@@14)
 :pattern ( ($generated@@8 $generated@@14))
))) (forall (($generated@@15 T@U) ) (! (= ($generated@@8 ($generated@@9 $generated@@15)) $generated@@15)
 :pattern ( ($generated@@9 $generated@@15))
))) (forall (($generated@@16 Real) ) (! (= ($generated@@11 ($generated@@10 $generated@@16)) $generated@@16)
 :pattern ( ($generated@@10 $generated@@16))
))) (forall (($generated@@17 T@U) ) (! (= ($generated@@10 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))))
(assert (distinct $generated $generated@@0 $generated@@1)
)
(assert (= ($generated@@18 $generated) $generated@@0))
(assert (forall (($generated@@20 T@U) ($generated@@21 T@U) ($generated@@22 T@U) ) (!  (=> (and ($generated@@19 $generated@@20 $generated@@21) ($generated@@19 $generated@@21 $generated@@22)) ($generated@@19 $generated@@20 $generated@@22))
 :pattern ( ($generated@@19 $generated@@20 $generated@@21) ($generated@@19 $generated@@21 $generated@@22))
 :pattern ( ($generated@@19 $generated@@20 $generated@@21) ($generated@@19 $generated@@20 $generated@@22))
)))
(assert (forall (($generated@@26 T@U) ($generated@@27 Int) ($generated@@28 Int) ) (!  (=> (and (and (<= 0 $generated@@27) (<= 0 $generated@@28)) (<= (+ $generated@@27 $generated@@28) ($generated@@25 $generated@@26))) (= ($generated@@23 ($generated@@23 $generated@@26 ($generated@@24 $generated@@27)) ($generated@@24 $generated@@28)) ($generated@@23 $generated@@26 ($generated@@24 (+ $generated@@27 $generated@@28)))))
 :pattern ( ($generated@@23 ($generated@@23 $generated@@26 ($generated@@24 $generated@@27)) ($generated@@24 $generated@@28)))
)))
(assert  (=> (<= 1 $generated@@29) (forall (($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 Int) ) (!  (=> (or ($generated@@32 $generated@@35 $generated@@36) (< 1 $generated@@29)) (and (and (=> (< 0 ($generated@@25 $generated@@35)) (=> (or (not (= $generated@@36 (- 0 2))) (not true)) ($generated@@32 ($generated@@23 $generated@@35 ($generated@@24 1)) (+ $generated@@36 2)))) (=> (=> (< 0 ($generated@@25 $generated@@35)) (and (or (not (= $generated@@36 (- 0 2))) (not true)) ($generated@@30 $generated@@34 ($generated@@23 $generated@@35 ($generated@@24 1)) (+ $generated@@36 2)))) (=> (= ($generated@@33 0) ($generated@@25 $generated@@35)) (forall (($generated@@37 T@U) ) (!  (=> ($generated@@19 $generated@@37 $generated@@35) ($generated@@32 $generated@@37 $generated@@36))
 :pattern ( ($generated@@30 $generated@@34 $generated@@37 $generated@@36))
))))) (= ($generated@@30 ($generated@@31 $generated@@34) $generated@@35 $generated@@36)  (and (=> (< 0 ($generated@@25 $generated@@35)) (and (or (not (= $generated@@36 (- 0 2))) (not true)) ($generated@@30 $generated@@34 ($generated@@23 $generated@@35 ($generated@@24 1)) (+ $generated@@36 2)))) (=> (= ($generated@@33 0) ($generated@@25 $generated@@35)) (forall (($generated@@38 T@U) ) (!  (=> ($generated@@19 $generated@@38 $generated@@35) ($generated@@30 $generated@@34 $generated@@38 $generated@@36))
 :pattern ( ($generated@@30 $generated@@34 $generated@@38 $generated@@36))
)))))))
 :pattern ( ($generated@@30 ($generated@@31 $generated@@34) $generated@@35 $generated@@36))
))))
(assert (= ($generated@@2 $generated@@40) 3))
(assert  (=> (<= 1 $generated@@29) (forall (($generated@@41 T@U) ($generated@@42 T@U) ($generated@@43 Int) ) (!  (=> (or ($generated@@32 ($generated@@39 $generated@@40 $generated@@42) ($generated@@33 $generated@@43)) (< 1 $generated@@29)) (and (and (=> (< 0 ($generated@@25 $generated@@42)) (=> ($generated@@7 ($generated@@39 $generated@@3 ($generated@@6  (or (not (= $generated@@43 (- 0 2))) (not true))))) ($generated@@32 ($generated@@23 $generated@@42 ($generated@@24 1)) ($generated@@33 (+ $generated@@43 2))))) (=> (=> (< 0 ($generated@@25 $generated@@42)) (and (or (not (= $generated@@43 (- 0 2))) (not true)) ($generated@@30 ($generated@@31 $generated@@41) ($generated@@23 $generated@@42 ($generated@@24 1)) ($generated@@33 (+ $generated@@43 2))))) (=> (= ($generated@@33 0) ($generated@@25 $generated@@42)) (forall (($generated@@44 T@U) ) (!  (=> ($generated@@19 $generated@@44 $generated@@42) ($generated@@32 $generated@@44 $generated@@43))
 :pattern ( ($generated@@30 ($generated@@31 $generated@@41) $generated@@44 $generated@@43))
))))) (= ($generated@@30 ($generated@@31 $generated@@41) ($generated@@39 $generated@@40 $generated@@42) ($generated@@33 $generated@@43))  (and (=> (< 0 ($generated@@25 $generated@@42)) (and (or (not (= $generated@@43 (- 0 2))) (not true)) ($generated@@30 ($generated@@31 $generated@@41) ($generated@@23 $generated@@42 ($generated@@24 1)) ($generated@@33 (+ $generated@@43 2))))) (=> (= ($generated@@33 0) ($generated@@25 $generated@@42)) (forall (($generated@@45 T@U) ) (!  (=> ($generated@@19 $generated@@45 $generated@@42) ($generated@@30 ($generated@@31 $generated@@41) $generated@@45 $generated@@43))
 :pattern ( ($generated@@30 ($generated@@31 $generated@@41) $generated@@45 $generated@@43))
)))))))
 :weight 3
 :pattern ( ($generated@@30 ($generated@@31 $generated@@41) ($generated@@39 $generated@@40 $generated@@42) ($generated@@33 $generated@@43)))
))))
(assert  (=> (<= 1 $generated@@29) (forall (($generated@@46 T@U) ($generated@@47 Int) ($generated@@48 T@U) ) (!  (=> (= $generated@@48 ($generated@@24 0)) ($generated@@30 $generated@@46 $generated@@48 $generated@@47))
 :pattern ( ($generated@@30 $generated@@46 $generated@@48 $generated@@47))
))))
(assert  (=> (<= 1 $generated@@29) (forall (($generated@@50 T@U) ($generated@@51 Int) ) (!  (=> (forall (($generated@@52 T@U) ) (! ($generated@@30 ($generated@@31 $generated@@50) $generated@@52 $generated@@51)
 :pattern ( ($generated@@30 ($generated@@31 $generated@@50) $generated@@52 $generated@@51))
)) ($generated@@49 ($generated@@31 $generated@@50) $generated@@51))
 :pattern ( ($generated@@49 ($generated@@31 $generated@@50) $generated@@51))
))))
(assert (forall (($generated@@53 Int) ) (! (= ($generated@@33 $generated@@53) $generated@@53)
 :pattern ( ($generated@@33 $generated@@53))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@T) ) (! (= ($generated@@39 $generated@@55 $generated@@54) $generated@@54)
 :pattern ( ($generated@@39 $generated@@55 $generated@@54))
)))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@T) ) (! (= ($generated@@57 $generated@@59 ($generated@@56 $generated@@59 $generated@@58)) $generated@@58)
 :pattern ( ($generated@@56 $generated@@59 $generated@@58))
)))
(assert  (=> (<= 1 $generated@@29) (forall (($generated@@60 T@U) ($generated@@61 Int) ) (!  (=> ($generated@@49 ($generated@@31 $generated@@60) $generated@@61) (forall (($generated@@62 T@U) ) (! ($generated@@30 ($generated@@31 $generated@@60) $generated@@62 $generated@@61)
 :pattern ( ($generated@@30 ($generated@@31 $generated@@60) $generated@@62 $generated@@61))
)))
 :pattern ( ($generated@@49 ($generated@@31 $generated@@60) $generated@@61))
))))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 Int) ) (! (= ($generated@@30 ($generated@@31 $generated@@63) $generated@@64 $generated@@65) ($generated@@30 $generated@@63 $generated@@64 $generated@@65))
 :pattern ( ($generated@@30 ($generated@@31 $generated@@63) $generated@@64 $generated@@65))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ) (!  (=> (and ($generated@@66 $generated@@68) (<= ($generated@@25 $generated@@68) ($generated@@25 $generated@@67))) (and (= ($generated@@66 ($generated@@23 $generated@@67 $generated@@68)) ($generated@@66 $generated@@67)) (= ($generated@@25 ($generated@@23 $generated@@67 $generated@@68)) (- ($generated@@25 $generated@@67) ($generated@@25 $generated@@68)))))
 :pattern ( ($generated@@23 $generated@@67 $generated@@68))
)))
(assert (forall (($generated@@69 Int) ) (!  (=> (<= 0 $generated@@69) (and ($generated@@66 ($generated@@24 $generated@@69)) (= ($generated@@25 ($generated@@24 $generated@@69)) $generated@@69)))
 :pattern ( ($generated@@24 $generated@@69))
)))
(assert  (=> (<= 0 $generated@@29) (forall (($generated@@71 T@U) ($generated@@72 Int) ) (!  (=> (or ($generated@@70 $generated@@72) (< 0 $generated@@29)) (and (=> (or (not (= $generated@@72 (- 0 2))) (not true)) ($generated@@70 (+ $generated@@72 2))) (= ($generated@@49 ($generated@@31 $generated@@71) $generated@@72)  (and (or (not (= $generated@@72 (- 0 2))) (not true)) ($generated@@49 $generated@@71 (+ $generated@@72 2))))))
 :pattern ( ($generated@@49 ($generated@@31 $generated@@71) $generated@@72))
))))
(assert  (=> (<= 1 $generated@@29) (forall (($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 Int) ) (!  (=> (or ($generated@@32 ($generated@@39 $generated@@40 $generated@@74) $generated@@75) (< 1 $generated@@29)) (and (and (=> (< 0 ($generated@@25 $generated@@74)) (=> (or (not (= $generated@@75 (- 0 2))) (not true)) ($generated@@32 ($generated@@23 $generated@@74 ($generated@@24 1)) (+ $generated@@75 2)))) (=> (=> (< 0 ($generated@@25 $generated@@74)) (and (or (not (= $generated@@75 (- 0 2))) (not true)) ($generated@@30 ($generated@@31 $generated@@73) ($generated@@23 $generated@@74 ($generated@@24 1)) (+ $generated@@75 2)))) (=> (= ($generated@@33 0) ($generated@@25 $generated@@74)) (forall (($generated@@76 T@U) ) (!  (=> ($generated@@19 $generated@@76 $generated@@74) ($generated@@32 $generated@@76 $generated@@75))
 :pattern ( ($generated@@30 ($generated@@31 $generated@@73) $generated@@76 $generated@@75))
))))) (= ($generated@@30 ($generated@@31 $generated@@73) ($generated@@39 $generated@@40 $generated@@74) $generated@@75)  (and (=> (< 0 ($generated@@25 $generated@@74)) (and (or (not (= $generated@@75 (- 0 2))) (not true)) ($generated@@30 ($generated@@31 $generated@@73) ($generated@@23 $generated@@74 ($generated@@24 1)) (+ $generated@@75 2)))) (=> (= ($generated@@33 0) ($generated@@25 $generated@@74)) (forall (($generated@@77 T@U) ) (!  (=> ($generated@@19 $generated@@77 $generated@@74) ($generated@@30 ($generated@@31 $generated@@73) $generated@@77 $generated@@75))
 :pattern ( ($generated@@30 ($generated@@31 $generated@@73) $generated@@77 $generated@@75))
)))))))
 :weight 3
 :pattern ( ($generated@@30 ($generated@@31 $generated@@73) ($generated@@39 $generated@@40 $generated@@74) $generated@@75))
))))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (!  (or (or ($generated@@19 $generated@@78 $generated@@79) (= $generated@@78 $generated@@79)) ($generated@@19 $generated@@79 $generated@@78))
 :pattern ( ($generated@@19 $generated@@78 $generated@@79) ($generated@@19 $generated@@79 $generated@@78))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 Int) ) (! (= ($generated@@49 ($generated@@31 $generated@@80) $generated@@81) ($generated@@49 $generated@@80 $generated@@81))
 :pattern ( ($generated@@49 ($generated@@31 $generated@@80) $generated@@81))
)))
(assert (forall (($generated@@82 T@U) ) (! (<= 0 ($generated@@25 $generated@@82))
 :pattern ( ($generated@@25 $generated@@82))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@T) ) (! (= ($generated@@56 $generated@@84 ($generated@@57 $generated@@84 $generated@@83)) $generated@@83)
 :pattern ( ($generated@@57 $generated@@84 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (!  (and (and (and (=> ($generated@@19 $generated@@85 $generated@@86) (or (not (= $generated@@85 $generated@@86)) (not true))) (=> (and ($generated@@66 $generated@@85) (not ($generated@@66 $generated@@86))) ($generated@@19 $generated@@85 $generated@@86))) (=> (and ($generated@@66 $generated@@85) ($generated@@66 $generated@@86)) (= ($generated@@19 $generated@@85 $generated@@86) (< ($generated@@25 $generated@@85) ($generated@@25 $generated@@86))))) (=> (and ($generated@@19 $generated@@85 $generated@@86) ($generated@@66 $generated@@86)) ($generated@@66 $generated@@85)))
 :pattern ( ($generated@@19 $generated@@85 $generated@@86))
)))
(assert  (and (and (and (and (and (and (and (and (forall (($generated@@97 T@T) ($generated@@98 T@T) ($generated@@99 T@T) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@87 $generated@@97 $generated@@98 $generated@@99 ($generated@@93 $generated@@97 $generated@@98 $generated@@99 $generated@@101 $generated@@102 $generated@@103 $generated@@100) $generated@@102 $generated@@103) $generated@@100)
 :weight 0
)) (and (forall (($generated@@104 T@T) ($generated@@105 T@T) ($generated@@106 T@T) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (!  (or (= $generated@@109 $generated@@111) (= ($generated@@87 $generated@@104 $generated@@105 $generated@@106 ($generated@@93 $generated@@104 $generated@@105 $generated@@106 $generated@@108 $generated@@109 $generated@@110 $generated@@107) $generated@@111 $generated@@112) ($generated@@87 $generated@@104 $generated@@105 $generated@@106 $generated@@108 $generated@@111 $generated@@112)))
 :weight 0
)) (forall (($generated@@113 T@T) ($generated@@114 T@T) ($generated@@115 T@T) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (!  (or (= $generated@@119 $generated@@121) (= ($generated@@87 $generated@@113 $generated@@114 $generated@@115 ($generated@@93 $generated@@113 $generated@@114 $generated@@115 $generated@@117 $generated@@118 $generated@@119 $generated@@116) $generated@@120 $generated@@121) ($generated@@87 $generated@@113 $generated@@114 $generated@@115 $generated@@117 $generated@@120 $generated@@121)))
 :weight 0
)))) (= ($generated@@2 $generated@@88) 4)) (= ($generated@@2 $generated@@89) 5)) (forall (($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (! (= ($generated@@91 $generated@@122 $generated@@123 ($generated@@94 $generated@@122 $generated@@123 $generated@@125 $generated@@126 $generated@@124) $generated@@126) $generated@@124)
 :weight 0
))) (forall (($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (!  (or (= $generated@@131 $generated@@132) (= ($generated@@91 $generated@@127 $generated@@128 ($generated@@94 $generated@@127 $generated@@128 $generated@@130 $generated@@131 $generated@@129) $generated@@132) ($generated@@91 $generated@@127 $generated@@128 $generated@@130 $generated@@132)))
 :weight 0
))) (forall (($generated@@133 T@T) ($generated@@134 T@T) ) (= ($generated@@2 ($generated@@92 $generated@@133 $generated@@134)) 6))) (forall (($generated@@135 T@T) ($generated@@136 T@T) ) (! (= ($generated@@95 ($generated@@92 $generated@@135 $generated@@136)) $generated@@135)
 :pattern ( ($generated@@92 $generated@@135 $generated@@136))
))) (forall (($generated@@137 T@T) ($generated@@138 T@T) ) (! (= ($generated@@96 ($generated@@92 $generated@@137 $generated@@138)) $generated@@138)
 :pattern ( ($generated@@92 $generated@@137 $generated@@138))
))))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 Bool) ($generated@@143 T@U) ($generated@@144 T@U) ) (! (= ($generated@@7 ($generated@@87 $generated@@88 $generated@@89 $generated@@3 ($generated@@90 $generated@@139 $generated@@140 $generated@@141 $generated@@142) $generated@@143 $generated@@144))  (=> (and (or (not (= $generated@@143 $generated@@139)) (not true)) ($generated@@7 ($generated@@56 $generated@@3 ($generated@@91 $generated@@89 $generated@@40 ($generated@@91 $generated@@88 ($generated@@92 $generated@@89 $generated@@40) $generated@@140 $generated@@143) $generated@@141)))) $generated@@142))
 :pattern ( ($generated@@87 $generated@@88 $generated@@89 $generated@@3 ($generated@@90 $generated@@139 $generated@@140 $generated@@141 $generated@@142) $generated@@143 $generated@@144))
)))
(assert (forall (($generated@@146 Int) ($generated@@147 Int) ) (! (= ($generated@@145 $generated@@146 $generated@@147) (mod $generated@@146 $generated@@147))
 :pattern ( ($generated@@145 $generated@@146 $generated@@147))
)))
(assert (forall (($generated@@148 T@U) ) (!  (=> ($generated@@66 $generated@@148) (= $generated@@148 ($generated@@24 ($generated@@25 $generated@@148))))
 :pattern ( ($generated@@25 $generated@@148))
 :pattern ( ($generated@@66 $generated@@148))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (!  (=> (and ($generated@@66 $generated@@150) (<= ($generated@@25 $generated@@150) ($generated@@25 $generated@@149))) (or (and (= $generated@@150 ($generated@@24 0)) (= ($generated@@23 $generated@@149 $generated@@150) $generated@@149)) (and (or (not (= $generated@@150 ($generated@@24 0))) (not true)) ($generated@@19 ($generated@@23 $generated@@149 $generated@@150) $generated@@149))))
 :pattern ( ($generated@@23 $generated@@149 $generated@@150))
)))
(assert (forall (($generated@@151 Int) ) (! (= ($generated@@57 $generated@@4 ($generated@@8 ($generated@@33 $generated@@151))) ($generated@@39 $generated@@40 ($generated@@57 $generated@@4 ($generated@@8 $generated@@151))))
 :pattern ( ($generated@@57 $generated@@4 ($generated@@8 ($generated@@33 $generated@@151))))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@T) ) (! (= ($generated@@57 $generated@@153 ($generated@@39 $generated@@153 $generated@@152)) ($generated@@39 $generated@@40 ($generated@@57 $generated@@153 $generated@@152)))
 :pattern ( ($generated@@57 $generated@@153 ($generated@@39 $generated@@153 $generated@@152)))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@U) ) (! ($generated@@154 $generated@@4 $generated@@156 $generated $generated@@155)
 :pattern ( ($generated@@154 $generated@@4 $generated@@156 $generated $generated@@155))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@157 () Int)
(declare-fun $generated@@158 () T@U)
(declare-fun $generated@@159 () T@U)
(declare-fun $generated@@160 () T@U)
(declare-fun $generated@@161 (T@U) Bool)
(declare-fun $generated@@162 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@163 true))
(let (($generated@@164  (=> (< $generated@@157 ($generated@@33 0)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (not (= ($generated@@33 2) 0)) (not true))) (=> (or (not (= ($generated@@33 2) 0)) (not true)) (=> (and (= ($generated@@145 $generated@@157 ($generated@@33 2)) ($generated@@33 1)) (= (ControlFlow 0 3) 1)) $generated@@163))))))
(let (($generated@@165  (=> (and (<= ($generated@@33 0) $generated@@157) (= (ControlFlow 0 2) 1)) $generated@@163)))
(let (($generated@@166  (=> (= $generated@@158 ($generated@@90 $generated@@159 $generated@@160 $generated@@1 false)) (and (=> (= (ControlFlow 0 5) 2) $generated@@165) (=> (= (ControlFlow 0 5) 3) $generated@@164)))))
(let (($generated@@167  (=> (and (and ($generated@@161 $generated@@160) ($generated@@162 $generated@@160)) (and (= 1 $generated@@29) (= (ControlFlow 0 6) 5))) $generated@@166)))
$generated@@167))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)