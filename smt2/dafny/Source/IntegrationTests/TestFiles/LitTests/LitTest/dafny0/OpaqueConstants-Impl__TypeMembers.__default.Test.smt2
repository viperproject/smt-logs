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
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@28 () Int)
(declare-fun $generated@@29 (Int) Bool)
(declare-fun $generated@@30 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@32 (T@U) Bool)
(declare-fun $generated@@33 (T@T T@U T@U) Bool)
(declare-fun $generated@@36 (T@U) Bool)
(declare-fun $generated@@37 () T@T)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@43 (T@U) T@U)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@45 () T@U)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@47 () T@U)
(declare-fun $generated@@48 () T@U)
(declare-fun $generated@@51 () T@U)
(declare-fun $generated@@52 (T@T T@U) T@U)
(declare-fun $generated@@53 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@54 () T@T)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 (T@T T@T) T@T)
(declare-fun $generated@@57 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@58 (T@T) T@T)
(declare-fun $generated@@59 (T@T) T@T)
(declare-fun $generated@@79 (T@U T@U) Bool)
(declare-fun $generated@@82 (Int) Int)
(declare-fun $generated@@84 (T@T T@U) T@U)
(declare-fun $generated@@87 (T@U) Bool)
(declare-fun $generated@@89 (T@U) Bool)
(declare-fun $generated@@91 (T@T T@U) T@U)
(declare-fun $generated@@94 (T@U) Bool)
(declare-fun $generated@@97 (T@U) Bool)
(declare-fun $generated@@105 (T@U) Bool)
(declare-fun $generated@@116 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@117 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@118 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@152 (T@U) T@U)
(declare-fun $generated@@153 (T@U) Bool)
(declare-fun $generated@@154 (T@U) T@U)
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
(assert (= ($generated@@27 $generated) $generated@@0))
(assert  (=> (< 0 $generated@@28) (forall (($generated@@34 T@U) ($generated@@35 Int) ) (!  (=> (and (and ($generated@@32 $generated@@34) ($generated@@33 $generated@@13 ($generated@@17 $generated@@35) $generated@@31)) ($generated@@30 $generated@@13 ($generated@@17 $generated@@35) $generated@@31 $generated@@34)) ($generated@@30 $generated@@12 ($generated@@15 ($generated@@29 $generated@@35)) $generated $generated@@34))
 :pattern ( ($generated@@29 $generated@@35) ($generated@@30 $generated@@13 ($generated@@17 $generated@@35) $generated@@31 $generated@@34))
))))
(assert (= ($generated@@11 $generated@@37) 3))
(assert  (=> (< 1 $generated@@28) (forall (($generated@@39 T@U) ($generated@@40 T@U) ) (!  (=> (and (and ($generated@@32 $generated@@39) ($generated@@33 $generated@@37 $generated@@40 $generated@@38)) ($generated@@30 $generated@@37 $generated@@40 $generated@@38 $generated@@39)) ($generated@@30 $generated@@12 ($generated@@15 ($generated@@36 $generated@@40)) $generated $generated@@39))
 :pattern ( ($generated@@36 $generated@@40) ($generated@@30 $generated@@37 $generated@@40 $generated@@38 $generated@@39))
))))
(assert (forall (($generated@@41 T@U) ($generated@@42 T@U) ) (! ($generated@@30 $generated@@13 $generated@@41 $generated@@31 $generated@@42)
 :pattern ( ($generated@@30 $generated@@13 $generated@@41 $generated@@31 $generated@@42))
)))
(assert (= ($generated@@43 $generated@@44) $generated@@5))
(assert (= ($generated@@43 $generated@@45) $generated@@6))
(assert (= ($generated@@11 $generated@@46) 4))
(assert (forall (($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@30 $generated@@46 $generated@@49 $generated@@47 $generated@@50) ($generated@@30 $generated@@46 $generated@@49 $generated@@48 $generated@@50))
 :pattern ( ($generated@@30 $generated@@46 $generated@@49 $generated@@47 $generated@@50))
 :pattern ( ($generated@@30 $generated@@46 $generated@@49 $generated@@48 $generated@@50))
)))
(assert ($generated@@33 $generated@@37 $generated@@44 $generated@@38))
(assert ($generated@@33 $generated@@37 $generated@@45 $generated@@38))
(assert  (and (and (and (and (and (and (forall (($generated@@60 T@T) ($generated@@61 T@T) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (! (= ($generated@@53 $generated@@60 $generated@@61 ($generated@@57 $generated@@60 $generated@@61 $generated@@63 $generated@@64 $generated@@62) $generated@@64) $generated@@62)
 :weight 0
)) (forall (($generated@@65 T@T) ($generated@@66 T@T) ($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ) (!  (or (= $generated@@69 $generated@@70) (= ($generated@@53 $generated@@65 $generated@@66 ($generated@@57 $generated@@65 $generated@@66 $generated@@68 $generated@@69 $generated@@67) $generated@@70) ($generated@@53 $generated@@65 $generated@@66 $generated@@68 $generated@@70)))
 :weight 0
))) (= ($generated@@11 $generated@@54) 5)) (= ($generated@@11 $generated@@55) 6)) (forall (($generated@@71 T@T) ($generated@@72 T@T) ) (= ($generated@@11 ($generated@@56 $generated@@71 $generated@@72)) 7))) (forall (($generated@@73 T@T) ($generated@@74 T@T) ) (! (= ($generated@@58 ($generated@@56 $generated@@73 $generated@@74)) $generated@@73)
 :pattern ( ($generated@@56 $generated@@73 $generated@@74))
))) (forall (($generated@@75 T@T) ($generated@@76 T@T) ) (! (= ($generated@@59 ($generated@@56 $generated@@75 $generated@@76)) $generated@@76)
 :pattern ( ($generated@@56 $generated@@75 $generated@@76))
))))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ) (! (= ($generated@@30 $generated@@46 $generated@@77 $generated@@48 $generated@@78)  (or (= $generated@@77 $generated@@51) ($generated@@16 ($generated@@52 $generated@@12 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@46 ($generated@@56 $generated@@54 $generated@@55) $generated@@78 $generated@@77) $generated@@1)))))
 :pattern ( ($generated@@30 $generated@@46 $generated@@77 $generated@@48 $generated@@78))
)))
(assert (forall (($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@79 $generated@@80 $generated@@81) (= $generated@@80 $generated@@81))
 :pattern ( ($generated@@79 $generated@@80 $generated@@81))
)))
(assert (forall (($generated@@83 Int) ) (! (= ($generated@@82 $generated@@83) $generated@@83)
 :pattern ( ($generated@@82 $generated@@83))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@T) ) (! (= ($generated@@84 $generated@@86 $generated@@85) $generated@@85)
 :pattern ( ($generated@@84 $generated@@86 $generated@@85))
)))
(assert (forall (($generated@@88 T@U) ) (! (= ($generated@@87 $generated@@88) (= ($generated@@43 $generated@@88) $generated@@5))
 :pattern ( ($generated@@87 $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ) (! (= ($generated@@89 $generated@@90) (= ($generated@@43 $generated@@90) $generated@@6))
 :pattern ( ($generated@@89 $generated@@90))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@T) ) (! (= ($generated@@91 $generated@@93 ($generated@@52 $generated@@93 $generated@@92)) $generated@@92)
 :pattern ( ($generated@@52 $generated@@93 $generated@@92))
)))
(assert  (=> (< 0 $generated@@28) (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (!  (=> (and (and ($generated@@32 $generated@@95) (and (or (not (= $generated@@96 $generated@@51)) (not true)) ($generated@@33 $generated@@46 $generated@@96 $generated@@48))) ($generated@@16 ($generated@@52 $generated@@12 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@46 ($generated@@56 $generated@@54 $generated@@55) $generated@@95 $generated@@96) $generated@@1)))) ($generated@@30 $generated@@12 ($generated@@15 ($generated@@94 $generated@@96)) $generated $generated@@95))
 :pattern ( ($generated@@94 $generated@@96) ($generated@@52 $generated@@12 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@46 ($generated@@56 $generated@@54 $generated@@55) $generated@@95 $generated@@96) $generated@@1)))
))))
(assert  (=> (< 1 $generated@@28) (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (!  (=> (and (and ($generated@@32 $generated@@98) (and (or (not (= $generated@@99 $generated@@51)) (not true)) ($generated@@33 $generated@@46 $generated@@99 $generated@@48))) ($generated@@16 ($generated@@52 $generated@@12 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@46 ($generated@@56 $generated@@54 $generated@@55) $generated@@98 $generated@@99) $generated@@1)))) ($generated@@30 $generated@@12 ($generated@@15 ($generated@@97 $generated@@99)) $generated $generated@@98))
 :pattern ( ($generated@@97 $generated@@99) ($generated@@52 $generated@@12 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@46 ($generated@@56 $generated@@54 $generated@@55) $generated@@98 $generated@@99) $generated@@1)))
))))
(assert (forall (($generated@@100 T@U) ) (!  (=> ($generated@@87 $generated@@100) (= $generated@@100 $generated@@44))
 :pattern ( ($generated@@87 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ) (!  (=> ($generated@@89 $generated@@101) (= $generated@@101 $generated@@45))
 :pattern ( ($generated@@89 $generated@@101))
)))
(assert  (=> (< 0 $generated@@28) (forall (($generated@@102 Int) ) (!  (=> ($generated@@33 $generated@@13 ($generated@@17 $generated@@102) $generated@@31) ($generated@@33 $generated@@12 ($generated@@15 ($generated@@29 $generated@@102)) $generated))
 :pattern ( ($generated@@29 $generated@@102))
))))
(assert  (=> (< 1 $generated@@28) (forall (($generated@@103 T@U) ) (!  (=> ($generated@@33 $generated@@37 $generated@@103 $generated@@38) ($generated@@33 $generated@@12 ($generated@@15 ($generated@@36 $generated@@103)) $generated))
 :pattern ( ($generated@@36 $generated@@103))
))))
(assert (forall (($generated@@104 T@U) ) (! (= ($generated@@33 $generated@@46 $generated@@104 $generated@@47)  (and ($generated@@33 $generated@@46 $generated@@104 $generated@@48) (or (not (= $generated@@104 $generated@@51)) (not true))))
 :pattern ( ($generated@@33 $generated@@46 $generated@@104 $generated@@47))
 :pattern ( ($generated@@33 $generated@@46 $generated@@104 $generated@@48))
)))
(assert (forall (($generated@@106 T@U) ) (!  (=> ($generated@@105 $generated@@106) (or ($generated@@87 $generated@@106) ($generated@@89 $generated@@106)))
 :pattern ( ($generated@@105 $generated@@106))
)))
(assert (forall (($generated@@107 T@U) ) (!  (=> ($generated@@33 $generated@@37 $generated@@107 $generated@@38) (or ($generated@@87 $generated@@107) ($generated@@89 $generated@@107)))
 :pattern ( ($generated@@89 $generated@@107) ($generated@@33 $generated@@37 $generated@@107 $generated@@38))
 :pattern ( ($generated@@87 $generated@@107) ($generated@@33 $generated@@37 $generated@@107 $generated@@38))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ) (!  (=> (and ($generated@@87 $generated@@108) ($generated@@87 $generated@@109)) ($generated@@79 $generated@@108 $generated@@109))
 :pattern ( ($generated@@79 $generated@@108 $generated@@109) ($generated@@87 $generated@@108))
 :pattern ( ($generated@@79 $generated@@108 $generated@@109) ($generated@@87 $generated@@109))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (!  (=> (and ($generated@@89 $generated@@110) ($generated@@89 $generated@@111)) ($generated@@79 $generated@@110 $generated@@111))
 :pattern ( ($generated@@79 $generated@@110 $generated@@111) ($generated@@89 $generated@@110))
 :pattern ( ($generated@@79 $generated@@110 $generated@@111) ($generated@@89 $generated@@111))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@T) ) (! (= ($generated@@52 $generated@@113 ($generated@@91 $generated@@113 $generated@@112)) $generated@@112)
 :pattern ( ($generated@@91 $generated@@113 $generated@@112))
)))
(assert  (=> (< 0 $generated@@28) (forall (($generated@@114 T@U) ) (!  (=> (and (or (not (= $generated@@114 $generated@@51)) (not true)) ($generated@@33 $generated@@46 $generated@@114 $generated@@48)) ($generated@@33 $generated@@12 ($generated@@15 ($generated@@94 $generated@@114)) $generated))
 :pattern ( ($generated@@94 $generated@@114))
))))
(assert  (=> (< 1 $generated@@28) (forall (($generated@@115 T@U) ) (!  (=> (and (or (not (= $generated@@115 $generated@@51)) (not true)) ($generated@@33 $generated@@46 $generated@@115 $generated@@48)) ($generated@@33 $generated@@12 ($generated@@15 ($generated@@97 $generated@@115)) $generated))
 :pattern ( ($generated@@97 $generated@@115))
))))
(assert  (and (forall (($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@T) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (! (= ($generated@@116 $generated@@119 $generated@@120 $generated@@121 ($generated@@118 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@124 $generated@@125 $generated@@122) $generated@@124 $generated@@125) $generated@@122)
 :weight 0
)) (and (forall (($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (or (= $generated@@131 $generated@@133) (= ($generated@@116 $generated@@126 $generated@@127 $generated@@128 ($generated@@118 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@131 $generated@@132 $generated@@129) $generated@@133 $generated@@134) ($generated@@116 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@133 $generated@@134)))
 :weight 0
)) (forall (($generated@@135 T@T) ($generated@@136 T@T) ($generated@@137 T@T) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ) (!  (or (= $generated@@141 $generated@@143) (= ($generated@@116 $generated@@135 $generated@@136 $generated@@137 ($generated@@118 $generated@@135 $generated@@136 $generated@@137 $generated@@139 $generated@@140 $generated@@141 $generated@@138) $generated@@142 $generated@@143) ($generated@@116 $generated@@135 $generated@@136 $generated@@137 $generated@@139 $generated@@142 $generated@@143)))
 :weight 0
)))))
(assert (forall (($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 Bool) ($generated@@148 T@U) ($generated@@149 T@U) ) (! (= ($generated@@16 ($generated@@116 $generated@@46 $generated@@54 $generated@@12 ($generated@@117 $generated@@144 $generated@@145 $generated@@146 $generated@@147) $generated@@148 $generated@@149))  (=> (and (or (not (= $generated@@148 $generated@@144)) (not true)) ($generated@@16 ($generated@@52 $generated@@12 ($generated@@53 $generated@@54 $generated@@55 ($generated@@53 $generated@@46 ($generated@@56 $generated@@54 $generated@@55) $generated@@145 $generated@@148) $generated@@146)))) $generated@@147))
 :pattern ( ($generated@@116 $generated@@46 $generated@@54 $generated@@12 ($generated@@117 $generated@@144 $generated@@145 $generated@@146 $generated@@147) $generated@@148 $generated@@149))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ) (!  (=> (and ($generated@@32 $generated@@151) ($generated@@33 $generated@@37 $generated@@150 $generated@@38)) ($generated@@30 $generated@@37 $generated@@150 $generated@@38 $generated@@151))
 :pattern ( ($generated@@30 $generated@@37 $generated@@150 $generated@@38 $generated@@151))
)))
(assert (= ($generated@@27 $generated@@47) $generated@@2))
(assert (= ($generated@@152 $generated@@47) $generated@@8))
(assert (= ($generated@@27 $generated@@38) $generated@@3))
(assert (= ($generated@@152 $generated@@38) $generated@@9))
(assert (= ($generated@@27 $generated@@48) $generated@@4))
(assert (= ($generated@@152 $generated@@48) $generated@@8))
(assert (= ($generated@@27 $generated@@31) $generated@@7))
(assert (= ($generated@@152 $generated@@31) $generated@@10))
(assert (= $generated@@44 ($generated@@84 $generated@@37 $generated@@44)))
(assert (= $generated@@45 ($generated@@84 $generated@@37 $generated@@45)))
(assert (forall (($generated@@155 T@U) ) (! (= ($generated@@33 $generated@@46 $generated@@155 $generated@@48)  (or (= $generated@@155 $generated@@51) ($generated@@153 ($generated@@154 $generated@@155))))
 :pattern ( ($generated@@33 $generated@@46 $generated@@155 $generated@@48))
)))
(assert (forall (($generated@@156 T@U) ) (! (= ($generated@@33 $generated@@13 $generated@@156 $generated@@31)  (and (<= ($generated@@82 30) ($generated@@18 $generated@@156)) (< ($generated@@18 $generated@@156) 40)))
 :pattern ( ($generated@@33 $generated@@13 $generated@@156 $generated@@31))
)))
(assert (forall (($generated@@157 Int) ) (! (= ($generated@@91 $generated@@13 ($generated@@17 ($generated@@82 $generated@@157))) ($generated@@84 $generated@@55 ($generated@@91 $generated@@13 ($generated@@17 $generated@@157))))
 :pattern ( ($generated@@91 $generated@@13 ($generated@@17 ($generated@@82 $generated@@157))))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@T) ) (! (= ($generated@@91 $generated@@159 ($generated@@84 $generated@@159 $generated@@158)) ($generated@@84 $generated@@55 ($generated@@91 $generated@@159 $generated@@158)))
 :pattern ( ($generated@@91 $generated@@159 ($generated@@84 $generated@@159 $generated@@158)))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ) (! ($generated@@30 $generated@@12 $generated@@161 $generated $generated@@160)
 :pattern ( ($generated@@30 $generated@@12 $generated@@161 $generated $generated@@160))
)))
(assert (forall (($generated@@162 T@U) ) (! ($generated@@33 $generated@@12 $generated@@162 $generated)
 :pattern ( ($generated@@33 $generated@@12 $generated@@162 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@163 () T@U)
(declare-fun $generated@@164 () T@U)
(declare-fun $generated@@165 () Int)
(declare-fun $generated@@166 () Int)
(declare-fun $generated@@167 () T@U)
(declare-fun $generated@@168 (T@U) Bool)
(declare-fun $generated@@169 () T@U)
(declare-fun $generated@@170 () T@U)
(declare-fun $generated@@171 () T@U)
(declare-fun $generated@@172 () T@U)
(declare-fun $generated@@173 () Int)
(declare-fun $generated@@174 () T@U)
(declare-fun $generated@@175 () T@U)
(declare-fun $generated@@176 () Int)
(declare-fun $generated@@177 () T@U)
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
 (=> (= (ControlFlow 0 0) 41) (let (($generated@@178  (=> (and (=> ($generated@@94 $generated@@163) ($generated@@105 $generated@@164)) (= (ControlFlow 0 24) (- 0 23))) (or (or (not ($generated@@94 $generated@@163)) ($generated@@79 $generated@@164 $generated@@44)) (= $generated@@165 ($generated@@82 39))))))
(let (($generated@@179  (=> (and (or (not ($generated@@94 $generated@@163)) ($generated@@79 $generated@@164 $generated@@44)) (= (ControlFlow 0 27) 24)) $generated@@178)))
(let (($generated@@180  (=> (and (not (or (not ($generated@@94 $generated@@163)) ($generated@@79 $generated@@164 $generated@@44))) (= $generated@@166 ($generated@@82 39))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (and (<= ($generated@@82 30) $generated@@166) (< $generated@@166 40))) (=> (and (<= ($generated@@82 30) $generated@@166) (< $generated@@166 40)) (=> (= (ControlFlow 0 25) 24) $generated@@178))))))
(let (($generated@@181  (=> (not ($generated@@94 $generated@@163)) (and (=> (= (ControlFlow 0 29) 25) $generated@@180) (=> (= (ControlFlow 0 29) 27) $generated@@179)))))
(let (($generated@@182  (=> ($generated@@94 $generated@@163) (and (=> (= (ControlFlow 0 28) 25) $generated@@180) (=> (= (ControlFlow 0 28) 27) $generated@@179)))))
(let (($generated@@183  (=> (and (and ($generated@@97 $generated@@163) ($generated@@36 $generated@@164)) ($generated@@29 $generated@@165)) (and (=> (= (ControlFlow 0 30) (- 0 32)) (or (not (= $generated@@163 $generated@@51)) (not true))) (=> (or (not (= $generated@@163 $generated@@51)) (not true)) (=> (and (and ($generated@@32 $generated@@167) ($generated@@168 $generated@@167)) (and (= ($generated@@97 $generated@@163) ($generated@@94 $generated@@163)) (= $generated@@169 $generated@@167))) (=> (and (and (and (and ($generated@@32 $generated@@170) ($generated@@168 $generated@@170)) ($generated@@105 $generated@@164)) (and (= ($generated@@36 $generated@@164) ($generated@@79 $generated@@164 $generated@@45)) (= $generated@@167 $generated@@170))) (and (and ($generated@@32 $generated@@171) ($generated@@168 $generated@@171)) (and (= ($generated@@29 $generated@@165) (= $generated@@165 ($generated@@82 34))) (= $generated@@170 $generated@@171)))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (or (not (= $generated@@163 $generated@@51)) (not true))) (and (=> (= (ControlFlow 0 30) 28) $generated@@182) (=> (= (ControlFlow 0 30) 29) $generated@@181))))))))))
(let (($generated@@184 true))
(let (($generated@@185  (and (=> (= (ControlFlow 0 33) 30) $generated@@183) (=> (= (ControlFlow 0 33) 22) $generated@@184))))
(let (($generated@@186  (=> (and (not (and ($generated@@97 $generated@@163) ($generated@@36 $generated@@164))) (= (ControlFlow 0 35) 33)) $generated@@185)))
(let (($generated@@187  (=> (and (and ($generated@@97 $generated@@163) ($generated@@36 $generated@@164)) (= (ControlFlow 0 34) 33)) $generated@@185)))
(let (($generated@@188  (=> (not ($generated@@97 $generated@@163)) (and (=> (= (ControlFlow 0 37) 34) $generated@@187) (=> (= (ControlFlow 0 37) 35) $generated@@186)))))
(let (($generated@@189  (=> ($generated@@97 $generated@@163) (and (=> (= (ControlFlow 0 36) 34) $generated@@187) (=> (= (ControlFlow 0 36) 35) $generated@@186)))))
(let (($generated@@190  (and (=> (= (ControlFlow 0 38) (- 0 39)) (or (not (= $generated@@163 $generated@@51)) (not true))) (=> (or (not (= $generated@@163 $generated@@51)) (not true)) (and (=> (= (ControlFlow 0 38) 36) $generated@@189) (=> (= (ControlFlow 0 38) 37) $generated@@188))))))
(let (($generated@@191  (=> (and (and (and (and (and (and (and (not ($generated@@97 $generated@@163)) (not ($generated@@36 $generated@@164))) (not ($generated@@29 $generated@@165))) (not ($generated@@97 $generated@@163))) (not ($generated@@36 $generated@@164))) (not ($generated@@29 $generated@@165))) (not ($generated@@16 ($generated@@84 $generated@@12 ($generated@@15 true))))) (= (ControlFlow 0 21) (- 0 20))) false)))
(let (($generated@@192  (=> ($generated@@29 $generated@@165) (=> (and (and (and ($generated@@32 $generated@@172) ($generated@@168 $generated@@172)) (= ($generated@@29 $generated@@165) (= $generated@@165 ($generated@@82 34)))) (and (= $generated@@169 $generated@@172) (= $generated@@173 ($generated@@82 34)))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (and (<= ($generated@@82 30) $generated@@173) (< $generated@@173 40))) (=> (and (<= ($generated@@82 30) $generated@@173) (< $generated@@173 40)) (=> (= (ControlFlow 0 18) (- 0 17)) (= $generated@@165 ($generated@@82 34)))))))))
(let (($generated@@193  (=> ($generated@@36 $generated@@164) (=> (and (and (and ($generated@@32 $generated@@174) ($generated@@168 $generated@@174)) ($generated@@105 $generated@@164)) (and (and (= ($generated@@36 $generated@@164) ($generated@@79 $generated@@164 $generated@@45)) (= $generated@@169 $generated@@174)) (and ($generated@@105 $generated@@164) (= (ControlFlow 0 16) (- 0 15))))) ($generated@@79 $generated@@164 $generated@@45)))))
(let (($generated@@194  (and (=> (= (ControlFlow 0 11) (- 0 14)) (or (not (= $generated@@163 $generated@@51)) (not true))) (=> (or (not (= $generated@@163 $generated@@51)) (not true)) (=> ($generated@@97 $generated@@163) (and (=> (= (ControlFlow 0 11) (- 0 13)) (or (not (= $generated@@163 $generated@@51)) (not true))) (=> (or (not (= $generated@@163 $generated@@51)) (not true)) (=> (and (and ($generated@@32 $generated@@175) ($generated@@168 $generated@@175)) (and (= ($generated@@97 $generated@@163) ($generated@@94 $generated@@163)) (= $generated@@169 $generated@@175))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (not (= $generated@@163 $generated@@51)) (not true))) (=> (= (ControlFlow 0 11) (- 0 10)) ($generated@@94 $generated@@163)))))))))))
(let (($generated@@195  (=> (and ($generated@@29 $generated@@165) (= $generated@@176 ($generated@@82 34))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (<= ($generated@@82 30) $generated@@176) (< $generated@@176 40))) (=> (and (<= ($generated@@82 30) $generated@@176) (< $generated@@176 40)) (=> (= (ControlFlow 0 8) (- 0 7)) (= $generated@@165 ($generated@@82 34))))))))
(let (($generated@@196  (=> ($generated@@36 $generated@@164) (=> (and ($generated@@105 $generated@@164) (= (ControlFlow 0 6) (- 0 5))) ($generated@@79 $generated@@164 $generated@@45)))))
(let (($generated@@197  (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= $generated@@163 $generated@@51)) (not true))) (=> (or (not (= $generated@@163 $generated@@51)) (not true)) (=> ($generated@@97 $generated@@163) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $generated@@163 $generated@@51)) (not true))) (=> (= (ControlFlow 0 2) (- 0 1)) ($generated@@94 $generated@@163))))))))
(let (($generated@@198  (=> (= $generated@@177 ($generated@@117 $generated@@51 $generated@@169 $generated@@1 false)) (and (and (and (and (and (and (and (=> (= (ControlFlow 0 40) 2) $generated@@197) (=> (= (ControlFlow 0 40) 6) $generated@@196)) (=> (= (ControlFlow 0 40) 8) $generated@@195)) (=> (= (ControlFlow 0 40) 11) $generated@@194)) (=> (= (ControlFlow 0 40) 16) $generated@@193)) (=> (= (ControlFlow 0 40) 18) $generated@@192)) (=> (= (ControlFlow 0 40) 38) $generated@@190)) (=> (= (ControlFlow 0 40) 21) $generated@@191)))))
(let (($generated@@199  (=> (and (and ($generated@@32 $generated@@169) ($generated@@168 $generated@@169)) (and ($generated@@33 $generated@@46 $generated@@163 $generated@@47) ($generated@@30 $generated@@46 $generated@@163 $generated@@47 $generated@@169))) (=> (and (and (and ($generated@@33 $generated@@37 $generated@@164 $generated@@38) ($generated@@30 $generated@@37 $generated@@164 $generated@@38 $generated@@169)) ($generated@@105 $generated@@164)) (and (and (<= ($generated@@82 30) $generated@@165) (< $generated@@165 40)) (and (= 3 $generated@@28) (= (ControlFlow 0 41) 40)))) $generated@@198))))
$generated@@199)))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 5))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 7))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 24) (- 23))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)