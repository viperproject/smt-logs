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
(declare-fun $generated@@11 () T@U)
(declare-fun $generated@@12 () T@U)
(declare-fun $generated@@13 () T@U)
(declare-fun $generated@@14 () T@U)
(declare-fun $generated@@15 () T@U)
(declare-fun $generated@@16 () T@U)
(declare-fun $generated@@17 () T@U)
(declare-fun $generated@@18 (T@T) Int)
(declare-fun $generated@@19 () T@T)
(declare-fun $generated@@20 () T@T)
(declare-fun $generated@@21 () T@T)
(declare-fun $generated@@22 (Bool) T@U)
(declare-fun $generated@@23 (T@U) Bool)
(declare-fun $generated@@24 (Int) T@U)
(declare-fun $generated@@25 (T@U) Int)
(declare-fun $generated@@26 (Real) T@U)
(declare-fun $generated@@27 (T@U) Real)
(declare-fun $generated@@34 (T@U) Int)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@36 (T@U) T@U)
(declare-fun $generated@@37 (T@U) Bool)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@40 (T@T T@U T@U) Bool)
(declare-fun $generated@@41 () T@T)
(declare-fun $generated@@42 () T@U)
(declare-fun $generated@@43 (T@U) T@U)
(declare-fun $generated@@46 (T@T T@U) T@U)
(declare-fun $generated@@47 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@48 () T@T)
(declare-fun $generated@@49 () T@T)
(declare-fun $generated@@50 (T@T T@T) T@T)
(declare-fun $generated@@51 () T@U)
(declare-fun $generated@@52 (T@U) Bool)
(declare-fun $generated@@53 () T@U)
(declare-fun $generated@@54 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@55 (T@T) T@T)
(declare-fun $generated@@56 (T@T) T@T)
(declare-fun $generated@@76 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@77 () T@U)
(declare-fun $generated@@80 () T@U)
(declare-fun $generated@@83 () T@U)
(declare-fun $generated@@86 () T@U)
(declare-fun $generated@@87 (T@U T@U) T@U)
(declare-fun $generated@@88 (T@U) Bool)
(declare-fun $generated@@89 () T@U)
(declare-fun $generated@@96 (T@U T@U) Bool)
(declare-fun $generated@@100 (Int) Int)
(declare-fun $generated@@102 (T@T T@U) T@U)
(declare-fun $generated@@105 (T@T T@U) T@U)
(declare-fun $generated@@127 (T@U) T@U)
(declare-fun $generated@@138 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@139 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@140 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@178 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@18 $generated@@19) 0) (= ($generated@@18 $generated@@20) 1)) (= ($generated@@18 $generated@@21) 2)) (forall (($generated@@28 Bool) ) (! (= ($generated@@23 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 T@U) ) (! (= ($generated@@22 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))) (forall (($generated@@30 Int) ) (! (= ($generated@@25 ($generated@@24 $generated@@30)) $generated@@30)
 :pattern ( ($generated@@24 $generated@@30))
))) (forall (($generated@@31 T@U) ) (! (= ($generated@@24 ($generated@@25 $generated@@31)) $generated@@31)
 :pattern ( ($generated@@25 $generated@@31))
))) (forall (($generated@@32 Real) ) (! (= ($generated@@27 ($generated@@26 $generated@@32)) $generated@@32)
 :pattern ( ($generated@@26 $generated@@32))
))) (forall (($generated@@33 T@U) ) (! (= ($generated@@26 ($generated@@27 $generated@@33)) $generated@@33)
 :pattern ( ($generated@@27 $generated@@33))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13 $generated@@14 $generated@@15 $generated@@16 $generated@@17)
)
(assert (= ($generated@@34 $generated@@1) 0))
(assert (= ($generated@@35 $generated) $generated@@0))
(assert (= ($generated@@36 $generated@@1) $generated@@2))
(assert ($generated@@37 $generated@@38))
(assert ($generated@@37 $generated@@39))
(assert (= ($generated@@18 $generated@@41) 3))
(assert (forall (($generated@@44 T@U) ) (! (= ($generated@@40 $generated@@41 $generated@@44 $generated@@38)  (or (= $generated@@44 $generated@@42) (= ($generated@@43 $generated@@44) $generated@@38)))
 :pattern ( ($generated@@40 $generated@@41 $generated@@44 $generated@@38))
)))
(assert (forall (($generated@@45 T@U) ) (! (= ($generated@@40 $generated@@41 $generated@@45 $generated@@39)  (or (= $generated@@45 $generated@@42) (= ($generated@@43 $generated@@45) $generated@@39)))
 :pattern ( ($generated@@40 $generated@@41 $generated@@45 $generated@@39))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@57 T@T) ($generated@@58 T@T) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (! (= ($generated@@47 $generated@@57 $generated@@58 ($generated@@54 $generated@@57 $generated@@58 $generated@@60 $generated@@61 $generated@@59) $generated@@61) $generated@@59)
 :weight 0
)) (forall (($generated@@62 T@T) ($generated@@63 T@T) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ) (!  (or (= $generated@@66 $generated@@67) (= ($generated@@47 $generated@@62 $generated@@63 ($generated@@54 $generated@@62 $generated@@63 $generated@@65 $generated@@66 $generated@@64) $generated@@67) ($generated@@47 $generated@@62 $generated@@63 $generated@@65 $generated@@67)))
 :weight 0
))) (= ($generated@@18 $generated@@48) 4)) (= ($generated@@18 $generated@@49) 5)) (forall (($generated@@68 T@T) ($generated@@69 T@T) ) (= ($generated@@18 ($generated@@50 $generated@@68 $generated@@69)) 6))) (forall (($generated@@70 T@T) ($generated@@71 T@T) ) (! (= ($generated@@55 ($generated@@50 $generated@@70 $generated@@71)) $generated@@70)
 :pattern ( ($generated@@50 $generated@@70 $generated@@71))
))) (forall (($generated@@72 T@T) ($generated@@73 T@T) ) (! (= ($generated@@56 ($generated@@50 $generated@@72 $generated@@73)) $generated@@73)
 :pattern ( ($generated@@50 $generated@@72 $generated@@73))
))))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ) (!  (=> (and ($generated@@52 $generated@@74) (and (or (not (= $generated@@75 $generated@@42)) (not true)) ($generated@@40 $generated@@41 $generated@@75 $generated@@53))) ($generated@@40 $generated@@20 ($generated@@46 $generated@@20 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@74 $generated@@75) $generated@@51)) $generated))
 :pattern ( ($generated@@46 $generated@@20 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@74 $generated@@75) $generated@@51)))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@U) ) (! (= ($generated@@76 $generated@@41 $generated@@78 $generated@@77 $generated@@79) ($generated@@76 $generated@@41 $generated@@78 $generated@@53 $generated@@79))
 :pattern ( ($generated@@76 $generated@@41 $generated@@78 $generated@@77 $generated@@79))
 :pattern ( ($generated@@76 $generated@@41 $generated@@78 $generated@@53 $generated@@79))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (! (= ($generated@@76 $generated@@41 $generated@@81 $generated@@80 $generated@@82) ($generated@@76 $generated@@41 $generated@@81 $generated@@38 $generated@@82))
 :pattern ( ($generated@@76 $generated@@41 $generated@@81 $generated@@80 $generated@@82))
 :pattern ( ($generated@@76 $generated@@41 $generated@@81 $generated@@38 $generated@@82))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@76 $generated@@41 $generated@@84 $generated@@83 $generated@@85) ($generated@@76 $generated@@41 $generated@@84 $generated@@39 $generated@@85))
 :pattern ( ($generated@@76 $generated@@41 $generated@@84 $generated@@83 $generated@@85))
 :pattern ( ($generated@@76 $generated@@41 $generated@@84 $generated@@39 $generated@@85))
)))
(assert (= ($generated@@34 $generated@@86) 0))
(assert (= ($generated@@87 $generated@@10 $generated@@15) $generated@@86))
(assert  (not ($generated@@88 $generated@@86)))
(assert (= ($generated@@34 $generated@@51) 0))
(assert (= ($generated@@87 $generated@@8 $generated@@16) $generated@@51))
(assert  (not ($generated@@88 $generated@@51)))
(assert (= ($generated@@34 $generated@@89) 0))
(assert (= ($generated@@87 $generated@@11 $generated@@17) $generated@@89))
(assert  (not ($generated@@88 $generated@@89)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@76 $generated@@41 $generated@@90 $generated@@53 $generated@@91)  (or (= $generated@@90 $generated@@42) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@91 $generated@@90) $generated@@1)))))
 :pattern ( ($generated@@76 $generated@@41 $generated@@90 $generated@@53 $generated@@91))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ) (! (= ($generated@@76 $generated@@41 $generated@@92 $generated@@38 $generated@@93)  (or (= $generated@@92 $generated@@42) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@93 $generated@@92) $generated@@1)))))
 :pattern ( ($generated@@76 $generated@@41 $generated@@92 $generated@@38 $generated@@93))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@76 $generated@@41 $generated@@94 $generated@@39 $generated@@95)  (or (= $generated@@94 $generated@@42) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@95 $generated@@94) $generated@@1)))))
 :pattern ( ($generated@@76 $generated@@41 $generated@@94 $generated@@39 $generated@@95))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ) (!  (=> ($generated@@96 $generated@@97 $generated@@98) (forall (($generated@@99 T@U) ) (!  (=> ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@97 $generated@@99) $generated@@1))) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@98 $generated@@99) $generated@@1))))
 :pattern ( ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@98 $generated@@99) $generated@@1))
)))
 :pattern ( ($generated@@96 $generated@@97 $generated@@98))
)))
(assert (forall (($generated@@101 Int) ) (! (= ($generated@@100 $generated@@101) $generated@@101)
 :pattern ( ($generated@@100 $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@T) ) (! (= ($generated@@102 $generated@@104 $generated@@103) $generated@@103)
 :pattern ( ($generated@@102 $generated@@104 $generated@@103))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@T) ) (! (= ($generated@@105 $generated@@107 ($generated@@46 $generated@@107 $generated@@106)) $generated@@106)
 :pattern ( ($generated@@46 $generated@@107 $generated@@106))
)))
(assert ($generated@@88 $generated@@1))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ) (!  (=> (and (and ($generated@@52 $generated@@108) (and (or (not (= $generated@@109 $generated@@42)) (not true)) (= ($generated@@43 $generated@@109) $generated@@38))) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@108 $generated@@109) $generated@@1)))) ($generated@@76 $generated@@20 ($generated@@46 $generated@@20 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@108 $generated@@109) $generated@@86)) $generated $generated@@108))
 :pattern ( ($generated@@46 $generated@@20 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@108 $generated@@109) $generated@@86)))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (!  (=> (and (and ($generated@@52 $generated@@110) (and (or (not (= $generated@@111 $generated@@42)) (not true)) (= ($generated@@43 $generated@@111) $generated@@39))) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@110 $generated@@111) $generated@@1)))) ($generated@@76 $generated@@20 ($generated@@46 $generated@@20 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@110 $generated@@111) $generated@@89)) $generated $generated@@110))
 :pattern ( ($generated@@46 $generated@@20 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@110 $generated@@111) $generated@@89)))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@T) ) (!  (=> ($generated@@96 $generated@@112 $generated@@113) (=> ($generated@@76 $generated@@116 $generated@@114 $generated@@115 $generated@@112) ($generated@@76 $generated@@116 $generated@@114 $generated@@115 $generated@@113)))
 :pattern ( ($generated@@96 $generated@@112 $generated@@113) ($generated@@76 $generated@@116 $generated@@114 $generated@@115 $generated@@112))
)))
(assert (forall (($generated@@117 T@U) ) (! (= ($generated@@40 $generated@@41 $generated@@117 $generated@@77)  (and ($generated@@40 $generated@@41 $generated@@117 $generated@@53) (or (not (= $generated@@117 $generated@@42)) (not true))))
 :pattern ( ($generated@@40 $generated@@41 $generated@@117 $generated@@77))
 :pattern ( ($generated@@40 $generated@@41 $generated@@117 $generated@@53))
)))
(assert (forall (($generated@@118 T@U) ) (! (= ($generated@@40 $generated@@41 $generated@@118 $generated@@80)  (and ($generated@@40 $generated@@41 $generated@@118 $generated@@38) (or (not (= $generated@@118 $generated@@42)) (not true))))
 :pattern ( ($generated@@40 $generated@@41 $generated@@118 $generated@@80))
 :pattern ( ($generated@@40 $generated@@41 $generated@@118 $generated@@38))
)))
(assert (forall (($generated@@119 T@U) ) (! (= ($generated@@40 $generated@@41 $generated@@119 $generated@@83)  (and ($generated@@40 $generated@@41 $generated@@119 $generated@@39) (or (not (= $generated@@119 $generated@@42)) (not true))))
 :pattern ( ($generated@@40 $generated@@41 $generated@@119 $generated@@83))
 :pattern ( ($generated@@40 $generated@@41 $generated@@119 $generated@@39))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (!  (=> ($generated@@76 $generated@@41 $generated@@120 $generated@@38 $generated@@121) ($generated@@76 $generated@@41 $generated@@120 $generated@@53 $generated@@121))
 :pattern ( ($generated@@76 $generated@@41 $generated@@120 $generated@@38 $generated@@121))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ) (!  (=> ($generated@@76 $generated@@41 $generated@@122 $generated@@39 $generated@@123) ($generated@@76 $generated@@41 $generated@@122 $generated@@53 $generated@@123))
 :pattern ( ($generated@@76 $generated@@41 $generated@@122 $generated@@39 $generated@@123))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ) (!  (=> (or (not (= $generated@@124 $generated@@126)) (not true)) (=> (and ($generated@@96 $generated@@124 $generated@@125) ($generated@@96 $generated@@125 $generated@@126)) ($generated@@96 $generated@@124 $generated@@126)))
 :pattern ( ($generated@@96 $generated@@124 $generated@@125) ($generated@@96 $generated@@125 $generated@@126))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ) (!  (and (= ($generated@@127 ($generated@@87 $generated@@128 $generated@@129)) $generated@@128) (= ($generated@@36 ($generated@@87 $generated@@128 $generated@@129)) $generated@@129))
 :pattern ( ($generated@@87 $generated@@128 $generated@@129))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ) (!  (=> (and (and ($generated@@52 $generated@@130) (and (or (not (= $generated@@131 $generated@@42)) (not true)) ($generated@@40 $generated@@41 $generated@@131 $generated@@53))) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@130 $generated@@131) $generated@@1)))) ($generated@@76 $generated@@20 ($generated@@46 $generated@@20 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@130 $generated@@131) $generated@@51)) $generated $generated@@130))
 :pattern ( ($generated@@46 $generated@@20 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@130 $generated@@131) $generated@@51)))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@T) ) (! (= ($generated@@46 $generated@@133 ($generated@@105 $generated@@133 $generated@@132)) $generated@@132)
 :pattern ( ($generated@@105 $generated@@133 $generated@@132))
)))
(assert (forall (($generated@@134 T@U) ($generated@@135 T@U) ) (!  (=> (and ($generated@@52 $generated@@134) (and (or (not (= $generated@@135 $generated@@42)) (not true)) (= ($generated@@43 $generated@@135) $generated@@38))) ($generated@@40 $generated@@20 ($generated@@46 $generated@@20 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@134 $generated@@135) $generated@@86)) $generated))
 :pattern ( ($generated@@46 $generated@@20 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@134 $generated@@135) $generated@@86)))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (!  (=> (and ($generated@@52 $generated@@136) (and (or (not (= $generated@@137 $generated@@42)) (not true)) (= ($generated@@43 $generated@@137) $generated@@39))) ($generated@@40 $generated@@20 ($generated@@46 $generated@@20 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@136 $generated@@137) $generated@@89)) $generated))
 :pattern ( ($generated@@46 $generated@@20 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@136 $generated@@137) $generated@@89)))
)))
(assert  (and (forall (($generated@@141 T@T) ($generated@@142 T@T) ($generated@@143 T@T) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (! (= ($generated@@138 $generated@@141 $generated@@142 $generated@@143 ($generated@@140 $generated@@141 $generated@@142 $generated@@143 $generated@@145 $generated@@146 $generated@@147 $generated@@144) $generated@@146 $generated@@147) $generated@@144)
 :weight 0
)) (and (forall (($generated@@148 T@T) ($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (!  (or (= $generated@@153 $generated@@155) (= ($generated@@138 $generated@@148 $generated@@149 $generated@@150 ($generated@@140 $generated@@148 $generated@@149 $generated@@150 $generated@@152 $generated@@153 $generated@@154 $generated@@151) $generated@@155 $generated@@156) ($generated@@138 $generated@@148 $generated@@149 $generated@@150 $generated@@152 $generated@@155 $generated@@156)))
 :weight 0
)) (forall (($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ) (!  (or (= $generated@@163 $generated@@165) (= ($generated@@138 $generated@@157 $generated@@158 $generated@@159 ($generated@@140 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@162 $generated@@163 $generated@@160) $generated@@164 $generated@@165) ($generated@@138 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@164 $generated@@165)))
 :weight 0
)))))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 Bool) ($generated@@170 T@U) ($generated@@171 T@U) ) (! (= ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 ($generated@@139 $generated@@166 $generated@@167 $generated@@168 $generated@@169) $generated@@170 $generated@@171))  (=> (and (or (not (= $generated@@170 $generated@@166)) (not true)) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@167 $generated@@170) $generated@@168)))) $generated@@169))
 :pattern ( ($generated@@138 $generated@@41 $generated@@48 $generated@@19 ($generated@@139 $generated@@166 $generated@@167 $generated@@168 $generated@@169) $generated@@170 $generated@@171))
)))
(assert (forall (($generated@@172 T@U) ) (!  (=> ($generated@@40 $generated@@41 $generated@@172 $generated@@38) ($generated@@40 $generated@@41 $generated@@172 $generated@@53))
 :pattern ( ($generated@@40 $generated@@41 $generated@@172 $generated@@38))
)))
(assert (forall (($generated@@173 T@U) ) (!  (=> ($generated@@40 $generated@@41 $generated@@173 $generated@@39) ($generated@@40 $generated@@41 $generated@@173 $generated@@53))
 :pattern ( ($generated@@40 $generated@@41 $generated@@173 $generated@@39))
)))
(assert (forall (($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ) (!  (=> ($generated@@52 ($generated@@54 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@174 $generated@@175 ($generated@@54 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@174 $generated@@175) $generated@@176 $generated@@177))) ($generated@@96 $generated@@174 ($generated@@54 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@174 $generated@@175 ($generated@@54 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@174 $generated@@175) $generated@@176 $generated@@177))))
 :pattern ( ($generated@@54 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@174 $generated@@175 ($generated@@54 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@174 $generated@@175) $generated@@176 $generated@@177)))
)))
(assert (= ($generated@@35 $generated@@77) $generated@@3))
(assert (= ($generated@@178 $generated@@77) $generated@@12))
(assert (= ($generated@@35 $generated@@80) $generated@@4))
(assert (= ($generated@@178 $generated@@80) $generated@@13))
(assert (= ($generated@@35 $generated@@38) $generated@@5))
(assert (= ($generated@@178 $generated@@38) $generated@@13))
(assert (= ($generated@@35 $generated@@83) $generated@@6))
(assert (= ($generated@@178 $generated@@83) $generated@@14))
(assert (= ($generated@@35 $generated@@39) $generated@@7))
(assert (= ($generated@@178 $generated@@39) $generated@@14))
(assert (= ($generated@@35 $generated@@53) $generated@@9))
(assert (= ($generated@@178 $generated@@53) $generated@@12))
(assert (forall (($generated@@179 T@U) ) (! (= ($generated@@40 $generated@@41 $generated@@179 $generated@@53)  (or (= $generated@@179 $generated@@42) ($generated@@37 ($generated@@43 $generated@@179))))
 :pattern ( ($generated@@40 $generated@@41 $generated@@179 $generated@@53))
)))
(assert (forall (($generated@@180 Int) ) (! (= ($generated@@105 $generated@@20 ($generated@@24 ($generated@@100 $generated@@180))) ($generated@@102 $generated@@49 ($generated@@105 $generated@@20 ($generated@@24 $generated@@180))))
 :pattern ( ($generated@@105 $generated@@20 ($generated@@24 ($generated@@100 $generated@@180))))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@T) ) (! (= ($generated@@105 $generated@@182 ($generated@@102 $generated@@182 $generated@@181)) ($generated@@102 $generated@@49 ($generated@@105 $generated@@182 $generated@@181)))
 :pattern ( ($generated@@105 $generated@@182 ($generated@@102 $generated@@182 $generated@@181)))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@U) ) (! ($generated@@76 $generated@@20 $generated@@184 $generated $generated@@183)
 :pattern ( ($generated@@76 $generated@@20 $generated@@184 $generated $generated@@183))
)))
(assert (forall (($generated@@185 T@U) ) (! ($generated@@40 $generated@@20 $generated@@185 $generated)
 :pattern ( ($generated@@40 $generated@@20 $generated@@185 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@186 () T@U)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 () T@U)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 (T@U) Bool)
(declare-fun $generated@@191 () T@U)
(declare-fun $generated@@192 () T@U)
(declare-fun $generated@@193 () Int)
(declare-fun $generated@@194 () Int)
(declare-fun $generated@@195 () T@U)
(declare-fun $generated@@196 () T@U)
(declare-fun $generated@@197 () Int)
(declare-fun $generated@@198 () Int)
(declare-fun $generated@@199 () T@U)
(declare-fun $generated@@200 () T@U)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () Bool)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 () Bool)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 () Int)
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
 (=> (= (ControlFlow 0 0) 20) (let (($generated@@208  (=> (= $generated@@186 ($generated@@139 $generated@@42 $generated@@187 $generated@@1 false)) (=> (and (and (or (not (= $generated@@188 $generated@@42)) (not true)) ($generated@@40 $generated@@41 $generated@@188 $generated@@38)) (and (not ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@187 $generated@@188) $generated@@1)))) (= $generated@@189 ($generated@@54 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@187 $generated@@188 ($generated@@54 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@187 $generated@@188) $generated@@1 ($generated@@105 $generated@@19 ($generated@@22 true))))))) (=> (and (and (and ($generated@@52 $generated@@189) ($generated@@190 $generated@@189)) (and (or (not (= $generated@@191 $generated@@42)) (not true)) ($generated@@40 $generated@@41 $generated@@191 $generated@@39))) (and (and (not ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@189 $generated@@191) $generated@@1)))) (= $generated@@192 ($generated@@54 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@189 $generated@@191 ($generated@@54 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@189 $generated@@191) $generated@@1 ($generated@@105 $generated@@19 ($generated@@22 true)))))) (and ($generated@@52 $generated@@192) ($generated@@190 $generated@@192)))) (and (=> (= (ControlFlow 0 2) (- 0 19)) true) (and (=> (= (ControlFlow 0 2) (- 0 18)) (or (not (= $generated@@188 $generated@@42)) (not true))) (=> (or (not (= $generated@@188 $generated@@42)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 17)) ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 $generated@@186 $generated@@188 $generated@@51))) (=> ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 $generated@@186 $generated@@188 $generated@@51)) (and (=> (= (ControlFlow 0 2) (- 0 16)) true) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= $generated@@188 $generated@@42)) (not true))) (=> (or (not (= $generated@@188 $generated@@42)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 14)) ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 $generated@@186 $generated@@188 $generated@@86))) (=> ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 $generated@@186 $generated@@188 $generated@@86)) (=> (and (= $generated@@193 ($generated@@100 5)) (= $generated@@194 ($generated@@100 6))) (=> (and (and (= $generated@@195 ($generated@@54 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@192 $generated@@188 ($generated@@54 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@192 $generated@@188) $generated@@51 ($generated@@105 $generated@@20 ($generated@@24 $generated@@193))))) ($generated@@52 $generated@@195)) (and (= $generated@@196 ($generated@@54 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@195 $generated@@188 ($generated@@54 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@195 $generated@@188) $generated@@86 ($generated@@105 $generated@@20 ($generated@@24 $generated@@194))))) ($generated@@52 $generated@@196))) (and (=> (= (ControlFlow 0 2) (- 0 13)) true) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= $generated@@191 $generated@@42)) (not true))) (=> (or (not (= $generated@@191 $generated@@42)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 11)) ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 $generated@@186 $generated@@191 $generated@@51))) (=> ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 $generated@@186 $generated@@191 $generated@@51)) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= $generated@@191 $generated@@42)) (not true))) (=> (or (not (= $generated@@191 $generated@@42)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 8)) ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 $generated@@186 $generated@@191 $generated@@89))) (=> ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 $generated@@186 $generated@@191 $generated@@89)) (=> (and (= $generated@@197 ($generated@@100 100)) (= $generated@@198 ($generated@@100 102))) (=> (and (and (= $generated@@199 ($generated@@54 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@196 $generated@@191 ($generated@@54 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@196 $generated@@191) $generated@@51 ($generated@@105 $generated@@20 ($generated@@24 $generated@@197))))) ($generated@@52 $generated@@199)) (and (= $generated@@200 ($generated@@54 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@199 $generated@@191 ($generated@@54 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@199 $generated@@191) $generated@@89 ($generated@@105 $generated@@20 ($generated@@24 $generated@@198))))) ($generated@@52 $generated@@200))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (forall (($generated@@209 T@U) ($generated@@210 T@U) )  (=> (and (and (or (not (= $generated@@209 $generated@@42)) (not true)) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@200 $generated@@209) $generated@@1)))) (= $generated@@209 $generated@@188)) ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 $generated@@186 $generated@@209 $generated@@210))))) (=> (forall (($generated@@211 T@U) ($generated@@212 T@U) )  (=> (and (and (or (not (= $generated@@211 $generated@@42)) (not true)) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@200 $generated@@211) $generated@@1)))) (= $generated@@211 $generated@@188)) ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 $generated@@186 $generated@@211 $generated@@212)))) (=> (and (and ($generated@@52 $generated@@201) ($generated@@190 $generated@@201)) (and (forall (($generated@@213 T@U) ) (!  (=> (and (or (not (= $generated@@213 $generated@@42)) (not true)) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@200 $generated@@213) $generated@@1)))) (or (= ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@201 $generated@@213) ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@200 $generated@@213)) (= $generated@@213 $generated@@188)))
 :pattern ( ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@201 $generated@@213))
)) ($generated@@96 $generated@@200 $generated@@201))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall (($generated@@214 T@U) ($generated@@215 T@U) )  (=> (and (and (or (not (= $generated@@214 $generated@@42)) (not true)) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@201 $generated@@214) $generated@@1)))) (= $generated@@214 $generated@@191)) ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 $generated@@186 $generated@@214 $generated@@215))))) (=> (forall (($generated@@216 T@U) ($generated@@217 T@U) )  (=> (and (and (or (not (= $generated@@216 $generated@@42)) (not true)) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@201 $generated@@216) $generated@@1)))) (= $generated@@216 $generated@@191)) ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 $generated@@186 $generated@@216 $generated@@217)))) (=> (and (and ($generated@@52 $generated@@202) ($generated@@190 $generated@@202)) (and (forall (($generated@@218 T@U) ) (!  (=> (and (or (not (= $generated@@218 $generated@@42)) (not true)) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@201 $generated@@218) $generated@@1)))) (or (= ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@202 $generated@@218) ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@201 $generated@@218)) (= $generated@@218 $generated@@191)))
 :pattern ( ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@202 $generated@@218))
)) ($generated@@96 $generated@@201 $generated@@202))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (forall (($generated@@219 T@U) ($generated@@220 T@U) )  (=> (and (and (or (not (= $generated@@219 $generated@@42)) (not true)) ($generated@@23 ($generated@@46 $generated@@19 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@41 ($generated@@50 $generated@@48 $generated@@49) $generated@@202 $generated@@219) $generated@@1)))) (= $generated@@219 $generated@@188)) ($generated@@23 ($generated@@138 $generated@@41 $generated@@48 $generated@@19 $generated@@186 $generated@@219 $generated@@220)))))))))))))))))))))))))))))))))))))))))))
(let (($generated@@221  (=> (and (and (and ($generated@@52 $generated@@187) ($generated@@190 $generated@@187)) (and (=> $generated@@203 (and ($generated@@40 $generated@@41 $generated@@204 $generated@@80) ($generated@@76 $generated@@41 $generated@@204 $generated@@80 $generated@@187))) true)) (and (and (=> $generated@@205 (and ($generated@@40 $generated@@41 $generated@@206 $generated@@83) ($generated@@76 $generated@@41 $generated@@206 $generated@@83 $generated@@187))) true) (and (= 2 $generated@@207) (= (ControlFlow 0 20) 2)))) $generated@@208)))
$generated@@221)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid