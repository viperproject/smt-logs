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
(declare-fun $generated@@24 (T@U) T@U)
(declare-fun $generated@@25 (T@U) Int)
(declare-fun $generated@@26 (T@U) T@U)
(declare-fun $generated@@27 () T@U)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@T T@U T@U) Bool)
(declare-fun $generated@@32 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@33 () T@T)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@38 (T@U) T@U)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@43 (T@T T@U) T@U)
(declare-fun $generated@@44 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@45 () T@T)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@47 (T@T T@T) T@T)
(declare-fun $generated@@48 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@49 (T@T) T@T)
(declare-fun $generated@@50 (T@T) T@T)
(declare-fun $generated@@74 (T@U T@U) Bool)
(declare-fun $generated@@78 (Int) Int)
(declare-fun $generated@@80 (T@T T@U) T@U)
(declare-fun $generated@@83 (T@T T@U) T@U)
(declare-fun $generated@@95 (T@U) T@U)
(declare-fun $generated@@108 (T@U) T@U)
(declare-fun $generated@@110 (T@U) T@U)
(declare-fun $generated@@112 (T@U) T@U)
(declare-fun $generated@@114 (T@U) T@U)
(declare-fun $generated@@118 (T@U) Bool)
(declare-fun $generated@@122 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@123 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@124 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (= ($generated@@24 $generated) $generated@@0))
(assert (forall (($generated@@30 T@U) ($generated@@31 T@U) ) (!  (=> (and (or (not (= $generated@@31 $generated@@27)) (not true)) (= ($generated@@28 $generated@@31) ($generated@@26 $generated@@30))) ($generated@@29 $generated@@10 ($generated@@14 ($generated@@25 $generated@@31)) $generated))
 :pattern ( ($generated@@25 $generated@@31) ($generated@@26 $generated@@30))
)))
(assert (= ($generated@@8 $generated@@33) 3))
(assert (forall (($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ) (! (= ($generated@@32 $generated@@33 $generated@@36 ($generated@@34 $generated@@35) $generated@@37) ($generated@@32 $generated@@33 $generated@@36 ($generated@@26 $generated@@35) $generated@@37))
 :pattern ( ($generated@@32 $generated@@33 $generated@@36 ($generated@@34 $generated@@35) $generated@@37))
 :pattern ( ($generated@@32 $generated@@33 $generated@@36 ($generated@@26 $generated@@35) $generated@@37))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@U) ($generated@@42 T@U) ) (! (= ($generated@@32 $generated@@33 $generated@@41 ($generated@@38 $generated@@40) $generated@@42) ($generated@@32 $generated@@33 $generated@@41 ($generated@@39 $generated@@40) $generated@@42))
 :pattern ( ($generated@@32 $generated@@33 $generated@@41 ($generated@@38 $generated@@40) $generated@@42))
 :pattern ( ($generated@@32 $generated@@33 $generated@@41 ($generated@@39 $generated@@40) $generated@@42))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@51 T@T) ($generated@@52 T@T) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@44 $generated@@51 $generated@@52 ($generated@@48 $generated@@51 $generated@@52 $generated@@54 $generated@@55 $generated@@53) $generated@@55) $generated@@53)
 :weight 0
)) (forall (($generated@@56 T@T) ($generated@@57 T@T) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (!  (or (= $generated@@60 $generated@@61) (= ($generated@@44 $generated@@56 $generated@@57 ($generated@@48 $generated@@56 $generated@@57 $generated@@59 $generated@@60 $generated@@58) $generated@@61) ($generated@@44 $generated@@56 $generated@@57 $generated@@59 $generated@@61)))
 :weight 0
))) (= ($generated@@8 $generated@@45) 4)) (= ($generated@@8 $generated@@46) 5)) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (= ($generated@@8 ($generated@@47 $generated@@62 $generated@@63)) 6))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@49 ($generated@@47 $generated@@64 $generated@@65)) $generated@@64)
 :pattern ( ($generated@@47 $generated@@64 $generated@@65))
))) (forall (($generated@@66 T@T) ($generated@@67 T@T) ) (! (= ($generated@@50 ($generated@@47 $generated@@66 $generated@@67)) $generated@@67)
 :pattern ( ($generated@@47 $generated@@66 $generated@@67))
))))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@32 $generated@@33 $generated@@69 ($generated@@26 $generated@@68) $generated@@70)  (or (= $generated@@69 $generated@@27) ($generated@@13 ($generated@@43 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@33 ($generated@@47 $generated@@45 $generated@@46) $generated@@70 $generated@@69) $generated@@1)))))
 :pattern ( ($generated@@32 $generated@@33 $generated@@69 ($generated@@26 $generated@@68) $generated@@70))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (! (= ($generated@@32 $generated@@33 $generated@@72 ($generated@@39 $generated@@71) $generated@@73)  (or (= $generated@@72 $generated@@27) ($generated@@13 ($generated@@43 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@33 ($generated@@47 $generated@@45 $generated@@46) $generated@@73 $generated@@72) $generated@@1)))))
 :pattern ( ($generated@@32 $generated@@33 $generated@@72 ($generated@@39 $generated@@71) $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ) (!  (=> ($generated@@74 $generated@@75 $generated@@76) (forall (($generated@@77 T@U) ) (!  (=> ($generated@@13 ($generated@@43 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@33 ($generated@@47 $generated@@45 $generated@@46) $generated@@75 $generated@@77) $generated@@1))) ($generated@@13 ($generated@@43 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@33 ($generated@@47 $generated@@45 $generated@@46) $generated@@76 $generated@@77) $generated@@1))))
 :pattern ( ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@33 ($generated@@47 $generated@@45 $generated@@46) $generated@@76 $generated@@77) $generated@@1))
)))
 :pattern ( ($generated@@74 $generated@@75 $generated@@76))
)))
(assert (forall (($generated@@79 Int) ) (! (= ($generated@@78 $generated@@79) $generated@@79)
 :pattern ( ($generated@@78 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@T) ) (! (= ($generated@@80 $generated@@82 $generated@@81) $generated@@81)
 :pattern ( ($generated@@80 $generated@@82 $generated@@81))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@T) ) (! (= ($generated@@83 $generated@@85 ($generated@@43 $generated@@85 $generated@@84)) $generated@@84)
 :pattern ( ($generated@@43 $generated@@85 $generated@@84))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ) (! (= ($generated@@29 $generated@@33 $generated@@87 ($generated@@34 $generated@@86))  (and ($generated@@29 $generated@@33 $generated@@87 ($generated@@26 $generated@@86)) (or (not (= $generated@@87 $generated@@27)) (not true))))
 :pattern ( ($generated@@29 $generated@@33 $generated@@87 ($generated@@34 $generated@@86)))
 :pattern ( ($generated@@29 $generated@@33 $generated@@87 ($generated@@26 $generated@@86)))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ) (! (= ($generated@@29 $generated@@33 $generated@@89 ($generated@@38 $generated@@88))  (and ($generated@@29 $generated@@33 $generated@@89 ($generated@@39 $generated@@88)) (or (not (= $generated@@89 $generated@@27)) (not true))))
 :pattern ( ($generated@@29 $generated@@33 $generated@@89 ($generated@@38 $generated@@88)))
 :pattern ( ($generated@@29 $generated@@33 $generated@@89 ($generated@@39 $generated@@88)))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@T) ) (!  (=> ($generated@@74 $generated@@90 $generated@@91) (=> ($generated@@32 $generated@@94 $generated@@92 $generated@@93 $generated@@90) ($generated@@32 $generated@@94 $generated@@92 $generated@@93 $generated@@91)))
 :pattern ( ($generated@@74 $generated@@90 $generated@@91) ($generated@@32 $generated@@94 $generated@@92 $generated@@93 $generated@@90))
)))
(assert (forall (($generated@@96 T@U) ) (!  (and (= ($generated@@24 ($generated@@26 $generated@@96)) $generated@@2) (= ($generated@@95 ($generated@@26 $generated@@96)) $generated@@6))
 :pattern ( ($generated@@26 $generated@@96))
)))
(assert (forall (($generated@@97 T@U) ) (!  (and (= ($generated@@24 ($generated@@34 $generated@@97)) $generated@@3) (= ($generated@@95 ($generated@@34 $generated@@97)) $generated@@6))
 :pattern ( ($generated@@34 $generated@@97))
)))
(assert (forall (($generated@@98 T@U) ) (!  (and (= ($generated@@24 ($generated@@38 $generated@@98)) $generated@@4) (= ($generated@@95 ($generated@@38 $generated@@98)) $generated@@7))
 :pattern ( ($generated@@38 $generated@@98))
)))
(assert (forall (($generated@@99 T@U) ) (!  (and (= ($generated@@24 ($generated@@39 $generated@@99)) $generated@@5) (= ($generated@@95 ($generated@@39 $generated@@99)) $generated@@7))
 :pattern ( ($generated@@39 $generated@@99))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@29 $generated@@33 $generated@@101 ($generated@@26 $generated@@100))  (or (= $generated@@101 $generated@@27) (= ($generated@@28 $generated@@101) ($generated@@26 $generated@@100))))
 :pattern ( ($generated@@29 $generated@@33 $generated@@101 ($generated@@26 $generated@@100)))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@29 $generated@@33 $generated@@103 ($generated@@39 $generated@@102))  (or (= $generated@@103 $generated@@27) (= ($generated@@28 $generated@@103) ($generated@@39 $generated@@102))))
 :pattern ( ($generated@@29 $generated@@33 $generated@@103 ($generated@@39 $generated@@102)))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ($generated@@106 T@U) ) (!  (=> (or (not (= $generated@@104 $generated@@106)) (not true)) (=> (and ($generated@@74 $generated@@104 $generated@@105) ($generated@@74 $generated@@105 $generated@@106)) ($generated@@74 $generated@@104 $generated@@106)))
 :pattern ( ($generated@@74 $generated@@104 $generated@@105) ($generated@@74 $generated@@105 $generated@@106))
)))
(assert (forall (($generated@@107 T@U) ) (! (<= 0 ($generated@@25 $generated@@107))
 :pattern ( ($generated@@25 $generated@@107))
)))
(assert (forall (($generated@@109 T@U) ) (! (= ($generated@@108 ($generated@@26 $generated@@109)) $generated@@109)
 :pattern ( ($generated@@26 $generated@@109))
)))
(assert (forall (($generated@@111 T@U) ) (! (= ($generated@@110 ($generated@@34 $generated@@111)) $generated@@111)
 :pattern ( ($generated@@34 $generated@@111))
)))
(assert (forall (($generated@@113 T@U) ) (! (= ($generated@@112 ($generated@@38 $generated@@113)) $generated@@113)
 :pattern ( ($generated@@38 $generated@@113))
)))
(assert (forall (($generated@@115 T@U) ) (! (= ($generated@@114 ($generated@@39 $generated@@115)) $generated@@115)
 :pattern ( ($generated@@39 $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@T) ) (! (= ($generated@@43 $generated@@117 ($generated@@83 $generated@@117 $generated@@116)) $generated@@116)
 :pattern ( ($generated@@83 $generated@@117 $generated@@116))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (!  (=> (and (and ($generated@@118 $generated@@120) (and (or (not (= $generated@@121 $generated@@27)) (not true)) (= ($generated@@28 $generated@@121) ($generated@@26 $generated@@119)))) ($generated@@13 ($generated@@43 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@33 ($generated@@47 $generated@@45 $generated@@46) $generated@@120 $generated@@121) $generated@@1)))) ($generated@@32 $generated@@10 ($generated@@14 ($generated@@25 $generated@@121)) $generated $generated@@120))
 :pattern ( ($generated@@25 $generated@@121) ($generated@@43 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@33 ($generated@@47 $generated@@45 $generated@@46) $generated@@120 $generated@@121) $generated@@1)) ($generated@@26 $generated@@119))
)))
(assert  (and (forall (($generated@@125 T@T) ($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ) (! (= ($generated@@122 $generated@@125 $generated@@126 $generated@@127 ($generated@@124 $generated@@125 $generated@@126 $generated@@127 $generated@@129 $generated@@130 $generated@@131 $generated@@128) $generated@@130 $generated@@131) $generated@@128)
 :weight 0
)) (and (forall (($generated@@132 T@T) ($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (!  (or (= $generated@@137 $generated@@139) (= ($generated@@122 $generated@@132 $generated@@133 $generated@@134 ($generated@@124 $generated@@132 $generated@@133 $generated@@134 $generated@@136 $generated@@137 $generated@@138 $generated@@135) $generated@@139 $generated@@140) ($generated@@122 $generated@@132 $generated@@133 $generated@@134 $generated@@136 $generated@@139 $generated@@140)))
 :weight 0
)) (forall (($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ) (!  (or (= $generated@@147 $generated@@149) (= ($generated@@122 $generated@@141 $generated@@142 $generated@@143 ($generated@@124 $generated@@141 $generated@@142 $generated@@143 $generated@@145 $generated@@146 $generated@@147 $generated@@144) $generated@@148 $generated@@149) ($generated@@122 $generated@@141 $generated@@142 $generated@@143 $generated@@145 $generated@@148 $generated@@149)))
 :weight 0
)))))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (! (= ($generated@@13 ($generated@@122 $generated@@33 $generated@@45 $generated@@9 ($generated@@123 $generated@@150 $generated@@151 $generated@@152 $generated@@153 $generated@@154) $generated@@155 $generated@@156))  (=> (and (or (not (= $generated@@155 $generated@@150)) (not true)) ($generated@@13 ($generated@@43 $generated@@9 ($generated@@44 $generated@@45 $generated@@46 ($generated@@44 $generated@@33 ($generated@@47 $generated@@45 $generated@@46) $generated@@151 $generated@@155) $generated@@152)))) (or (= $generated@@155 $generated@@153) (= $generated@@155 $generated@@154))))
 :pattern ( ($generated@@122 $generated@@33 $generated@@45 $generated@@9 ($generated@@123 $generated@@150 $generated@@151 $generated@@152 $generated@@153 $generated@@154) $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@157 Int) ) (! (= ($generated@@83 $generated@@10 ($generated@@14 ($generated@@78 $generated@@157))) ($generated@@80 $generated@@46 ($generated@@83 $generated@@10 ($generated@@14 $generated@@157))))
 :pattern ( ($generated@@83 $generated@@10 ($generated@@14 ($generated@@78 $generated@@157))))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@T) ) (! (= ($generated@@83 $generated@@159 ($generated@@80 $generated@@159 $generated@@158)) ($generated@@80 $generated@@46 ($generated@@83 $generated@@159 $generated@@158)))
 :pattern ( ($generated@@83 $generated@@159 ($generated@@80 $generated@@159 $generated@@158)))
)))
(assert (forall (($generated@@160 T@U) ($generated@@161 T@U) ) (! ($generated@@32 $generated@@10 $generated@@161 $generated $generated@@160)
 :pattern ( ($generated@@32 $generated@@10 $generated@@161 $generated $generated@@160))
)))
(assert (forall (($generated@@162 T@U) ) (! ($generated@@29 $generated@@10 $generated@@162 $generated)
 :pattern ( ($generated@@29 $generated@@10 $generated@@162 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@163 () Int)
(declare-fun $generated@@164 () T@U)
(declare-fun $generated@@165 () T@U)
(declare-fun $generated@@166 () T@U)
(declare-fun $generated@@167 () T@U)
(declare-fun $generated@@168 (T@U) Bool)
(declare-fun $generated@@169 () Int)
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@170 true))
(let (($generated@@171  (=> (and (< $generated@@163 ($generated@@78 0)) (= (ControlFlow 0 4) 1)) $generated@@170)))
(let (($generated@@172  (=> (<= ($generated@@78 0) $generated@@163) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $generated@@164 $generated@@27)) (not true))) (=> (or (not (= $generated@@164 $generated@@27)) (not true)) (=> (= (ControlFlow 0 2) 1) $generated@@170))))))
(let (($generated@@173  (=> (= $generated@@165 ($generated@@123 $generated@@27 $generated@@166 $generated@@1 $generated@@167 $generated@@164)) (and (=> (= (ControlFlow 0 5) 2) $generated@@172) (=> (= (ControlFlow 0 5) 4) $generated@@171)))))
(let (($generated@@174  (=> (and (and (and ($generated@@118 $generated@@166) ($generated@@168 $generated@@166)) (and ($generated@@29 $generated@@33 $generated@@167 ($generated@@38 $generated)) ($generated@@32 $generated@@33 $generated@@167 ($generated@@38 $generated) $generated@@166))) (and (and ($generated@@29 $generated@@33 $generated@@164 ($generated@@34 $generated)) ($generated@@32 $generated@@33 $generated@@164 ($generated@@34 $generated) $generated@@166)) (and (= 1 $generated@@169) (= (ControlFlow 0 6) 5)))) $generated@@173)))
$generated@@174))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)