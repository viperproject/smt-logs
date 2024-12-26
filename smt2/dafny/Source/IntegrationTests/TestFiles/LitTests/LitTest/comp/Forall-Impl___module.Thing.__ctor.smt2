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
(declare-fun $generated@@12 (T@T) Int)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 (Bool) T@U)
(declare-fun $generated@@17 (T@U) Bool)
(declare-fun $generated@@18 (Int) T@U)
(declare-fun $generated@@19 (T@U) Int)
(declare-fun $generated@@20 (Real) T@U)
(declare-fun $generated@@21 (T@U) Real)
(declare-fun $generated@@28 (T@U) Int)
(declare-fun $generated@@29 (T@U) T@U)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 (T@T T@U T@U) Bool)
(declare-fun $generated@@32 () T@T)
(declare-fun $generated@@33 () T@U)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@37 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@42 (T@U T@U) T@U)
(declare-fun $generated@@43 (T@U) Bool)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@45 () T@U)
(declare-fun $generated@@46 (T@T T@U) T@U)
(declare-fun $generated@@47 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@48 () T@T)
(declare-fun $generated@@49 () T@T)
(declare-fun $generated@@50 (T@T T@T) T@T)
(declare-fun $generated@@51 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@52 (T@T) T@T)
(declare-fun $generated@@53 (T@T) T@T)
(declare-fun $generated@@73 (T@U T@U) Bool)
(declare-fun $generated@@77 (T@T T@U) T@U)
(declare-fun $generated@@80 (T@U) Bool)
(declare-fun $generated@@98 (T@U) T@U)
(declare-fun $generated@@107 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@108 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@109 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@145 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@12 $generated@@13) 0) (= ($generated@@12 $generated@@14) 1)) (= ($generated@@12 $generated@@15) 2)) (forall (($generated@@22 Bool) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 Int) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 Real) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11)
)
(assert (= ($generated@@28 $generated@@3) 0))
(assert (= ($generated@@29 $generated) $generated@@1))
(assert (= ($generated@@29 $generated@@0) $generated@@2))
(assert (= ($generated@@30 $generated@@3) $generated@@4))
(assert (= ($generated@@12 $generated@@32) 3))
(assert (forall (($generated@@36 T@U) ) (! (= ($generated@@31 $generated@@32 $generated@@36 $generated@@33)  (or (= $generated@@36 $generated@@34) (= ($generated@@35 $generated@@36) $generated@@33)))
 :pattern ( ($generated@@31 $generated@@32 $generated@@36 $generated@@33))
)))
(assert (forall (($generated@@39 T@U) ($generated@@40 T@U) ) (! (= ($generated@@37 $generated@@32 $generated@@39 $generated@@38 $generated@@40) ($generated@@37 $generated@@32 $generated@@39 $generated@@33 $generated@@40))
 :pattern ( ($generated@@37 $generated@@32 $generated@@39 $generated@@38 $generated@@40))
 :pattern ( ($generated@@37 $generated@@32 $generated@@39 $generated@@33 $generated@@40))
)))
(assert (= ($generated@@28 $generated@@41) 0))
(assert (= ($generated@@42 $generated@@5 $generated@@9) $generated@@41))
(assert  (not ($generated@@43 $generated@@41)))
(assert (= ($generated@@28 $generated@@44) 0))
(assert (= ($generated@@42 $generated@@5 $generated@@10) $generated@@44))
(assert  (not ($generated@@43 $generated@@44)))
(assert (= ($generated@@28 $generated@@45) 0))
(assert (= ($generated@@42 $generated@@5 $generated@@11) $generated@@45))
(assert  (not ($generated@@43 $generated@@45)))
(assert  (and (and (and (and (and (and (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (! (= ($generated@@47 $generated@@54 $generated@@55 ($generated@@51 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@56) $generated@@58) $generated@@56)
 :weight 0
)) (forall (($generated@@59 T@T) ($generated@@60 T@T) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (!  (or (= $generated@@63 $generated@@64) (= ($generated@@47 $generated@@59 $generated@@60 ($generated@@51 $generated@@59 $generated@@60 $generated@@62 $generated@@63 $generated@@61) $generated@@64) ($generated@@47 $generated@@59 $generated@@60 $generated@@62 $generated@@64)))
 :weight 0
))) (= ($generated@@12 $generated@@48) 4)) (= ($generated@@12 $generated@@49) 5)) (forall (($generated@@65 T@T) ($generated@@66 T@T) ) (= ($generated@@12 ($generated@@50 $generated@@65 $generated@@66)) 6))) (forall (($generated@@67 T@T) ($generated@@68 T@T) ) (! (= ($generated@@52 ($generated@@50 $generated@@67 $generated@@68)) $generated@@67)
 :pattern ( ($generated@@50 $generated@@67 $generated@@68))
))) (forall (($generated@@69 T@T) ($generated@@70 T@T) ) (! (= ($generated@@53 ($generated@@50 $generated@@69 $generated@@70)) $generated@@70)
 :pattern ( ($generated@@50 $generated@@69 $generated@@70))
))))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@37 $generated@@32 $generated@@71 $generated@@33 $generated@@72)  (or (= $generated@@71 $generated@@34) ($generated@@17 ($generated@@46 $generated@@13 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@72 $generated@@71) $generated@@3)))))
 :pattern ( ($generated@@37 $generated@@32 $generated@@71 $generated@@33 $generated@@72))
)))
(assert (forall (($generated@@74 T@U) ($generated@@75 T@U) ) (!  (=> ($generated@@73 $generated@@74 $generated@@75) (forall (($generated@@76 T@U) ) (!  (=> ($generated@@17 ($generated@@46 $generated@@13 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@74 $generated@@76) $generated@@3))) ($generated@@17 ($generated@@46 $generated@@13 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@75 $generated@@76) $generated@@3))))
 :pattern ( ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@75 $generated@@76) $generated@@3))
)))
 :pattern ( ($generated@@73 $generated@@74 $generated@@75))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@T) ) (! (= ($generated@@77 $generated@@79 ($generated@@46 $generated@@79 $generated@@78)) $generated@@78)
 :pattern ( ($generated@@46 $generated@@79 $generated@@78))
)))
(assert ($generated@@43 $generated@@3))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ) (!  (=> (and (and ($generated@@80 $generated@@81) (and (or (not (= $generated@@82 $generated@@34)) (not true)) (= ($generated@@35 $generated@@82) $generated@@33))) ($generated@@17 ($generated@@46 $generated@@13 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@81 $generated@@82) $generated@@3)))) ($generated@@37 $generated@@14 ($generated@@46 $generated@@14 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@81 $generated@@82) $generated@@41)) $generated $generated@@81))
 :pattern ( ($generated@@46 $generated@@14 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@81 $generated@@82) $generated@@41)))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@U) ) (!  (=> (and (and ($generated@@80 $generated@@83) (and (or (not (= $generated@@84 $generated@@34)) (not true)) (= ($generated@@35 $generated@@84) $generated@@33))) ($generated@@17 ($generated@@46 $generated@@13 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@83 $generated@@84) $generated@@3)))) ($generated@@37 $generated@@15 ($generated@@46 $generated@@15 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@83 $generated@@84) $generated@@44)) $generated@@0 $generated@@83))
 :pattern ( ($generated@@46 $generated@@15 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@83 $generated@@84) $generated@@44)))
)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@T) ) (!  (=> ($generated@@73 $generated@@85 $generated@@86) (=> ($generated@@37 $generated@@89 $generated@@87 $generated@@88 $generated@@85) ($generated@@37 $generated@@89 $generated@@87 $generated@@88 $generated@@86)))
 :pattern ( ($generated@@73 $generated@@85 $generated@@86) ($generated@@37 $generated@@89 $generated@@87 $generated@@88 $generated@@85))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> (and ($generated@@80 $generated@@90) (and (or (not (= $generated@@91 $generated@@34)) (not true)) (= ($generated@@35 $generated@@91) $generated@@33))) ($generated@@31 $generated@@32 ($generated@@46 $generated@@32 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@90 $generated@@91) $generated@@45)) $generated@@33))
 :pattern ( ($generated@@46 $generated@@32 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@90 $generated@@91) $generated@@45)))
)))
(assert (forall (($generated@@92 T@U) ) (! (= ($generated@@31 $generated@@32 $generated@@92 $generated@@38)  (and ($generated@@31 $generated@@32 $generated@@92 $generated@@33) (or (not (= $generated@@92 $generated@@34)) (not true))))
 :pattern ( ($generated@@31 $generated@@32 $generated@@92 $generated@@38))
 :pattern ( ($generated@@31 $generated@@32 $generated@@92 $generated@@33))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (!  (=> (and (and ($generated@@80 $generated@@93) (and (or (not (= $generated@@94 $generated@@34)) (not true)) (= ($generated@@35 $generated@@94) $generated@@33))) ($generated@@17 ($generated@@46 $generated@@13 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@93 $generated@@94) $generated@@3)))) ($generated@@37 $generated@@32 ($generated@@46 $generated@@32 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@93 $generated@@94) $generated@@45)) $generated@@33 $generated@@93))
 :pattern ( ($generated@@46 $generated@@32 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@93 $generated@@94) $generated@@45)))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (!  (=> (or (not (= $generated@@95 $generated@@97)) (not true)) (=> (and ($generated@@73 $generated@@95 $generated@@96) ($generated@@73 $generated@@96 $generated@@97)) ($generated@@73 $generated@@95 $generated@@97)))
 :pattern ( ($generated@@73 $generated@@95 $generated@@96) ($generated@@73 $generated@@96 $generated@@97))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ) (!  (and (= ($generated@@98 ($generated@@42 $generated@@99 $generated@@100)) $generated@@99) (= ($generated@@30 ($generated@@42 $generated@@99 $generated@@100)) $generated@@100))
 :pattern ( ($generated@@42 $generated@@99 $generated@@100))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@T) ) (! (= ($generated@@46 $generated@@102 ($generated@@77 $generated@@102 $generated@@101)) $generated@@101)
 :pattern ( ($generated@@77 $generated@@102 $generated@@101))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (!  (=> (and ($generated@@80 $generated@@103) (and (or (not (= $generated@@104 $generated@@34)) (not true)) (= ($generated@@35 $generated@@104) $generated@@33))) ($generated@@31 $generated@@14 ($generated@@46 $generated@@14 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@103 $generated@@104) $generated@@41)) $generated))
 :pattern ( ($generated@@46 $generated@@14 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@103 $generated@@104) $generated@@41)))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ) (!  (=> (and ($generated@@80 $generated@@105) (and (or (not (= $generated@@106 $generated@@34)) (not true)) (= ($generated@@35 $generated@@106) $generated@@33))) ($generated@@31 $generated@@15 ($generated@@46 $generated@@15 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@105 $generated@@106) $generated@@44)) $generated@@0))
 :pattern ( ($generated@@46 $generated@@15 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@105 $generated@@106) $generated@@44)))
)))
(assert  (and (forall (($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (! (= ($generated@@107 $generated@@110 $generated@@111 $generated@@112 ($generated@@109 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@116 $generated@@113) $generated@@115 $generated@@116) $generated@@113)
 :weight 0
)) (and (forall (($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (!  (or (= $generated@@122 $generated@@124) (= ($generated@@107 $generated@@117 $generated@@118 $generated@@119 ($generated@@109 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@122 $generated@@123 $generated@@120) $generated@@124 $generated@@125) ($generated@@107 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@124 $generated@@125)))
 :weight 0
)) (forall (($generated@@126 T@T) ($generated@@127 T@T) ($generated@@128 T@T) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (or (= $generated@@132 $generated@@134) (= ($generated@@107 $generated@@126 $generated@@127 $generated@@128 ($generated@@109 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@131 $generated@@132 $generated@@129) $generated@@133 $generated@@134) ($generated@@107 $generated@@126 $generated@@127 $generated@@128 $generated@@130 $generated@@133 $generated@@134)))
 :weight 0
)))))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 Bool) ($generated@@139 T@U) ($generated@@140 T@U) ) (! (= ($generated@@17 ($generated@@107 $generated@@32 $generated@@48 $generated@@13 ($generated@@108 $generated@@135 $generated@@136 $generated@@137 $generated@@138) $generated@@139 $generated@@140))  (=> (and (or (not (= $generated@@139 $generated@@135)) (not true)) ($generated@@17 ($generated@@46 $generated@@13 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@136 $generated@@139) $generated@@137)))) $generated@@138))
 :pattern ( ($generated@@107 $generated@@32 $generated@@48 $generated@@13 ($generated@@108 $generated@@135 $generated@@136 $generated@@137 $generated@@138) $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ) (!  (=> ($generated@@80 ($generated@@51 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@141 $generated@@142 ($generated@@51 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@141 $generated@@142) $generated@@143 $generated@@144))) ($generated@@73 $generated@@141 ($generated@@51 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@141 $generated@@142 ($generated@@51 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@141 $generated@@142) $generated@@143 $generated@@144))))
 :pattern ( ($generated@@51 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@141 $generated@@142 ($generated@@51 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@141 $generated@@142) $generated@@143 $generated@@144)))
)))
(assert (= ($generated@@29 $generated@@33) $generated@@6))
(assert (= ($generated@@145 $generated@@33) $generated@@8))
(assert (= ($generated@@29 $generated@@38) $generated@@7))
(assert (= ($generated@@145 $generated@@38) $generated@@8))
(assert (forall (($generated@@146 T@U) ($generated@@147 T@U) ) (! ($generated@@37 $generated@@14 $generated@@147 $generated $generated@@146)
 :pattern ( ($generated@@37 $generated@@14 $generated@@147 $generated $generated@@146))
)))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ) (! ($generated@@37 $generated@@15 $generated@@149 $generated@@0 $generated@@148)
 :pattern ( ($generated@@37 $generated@@15 $generated@@149 $generated@@0 $generated@@148))
)))
(assert (forall (($generated@@150 T@U) ) (! ($generated@@31 $generated@@14 $generated@@150 $generated)
 :pattern ( ($generated@@31 $generated@@14 $generated@@150 $generated))
)))
(assert (forall (($generated@@151 T@U) ) (! ($generated@@31 $generated@@15 $generated@@151 $generated@@0)
 :pattern ( ($generated@@31 $generated@@15 $generated@@151 $generated@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@152 () T@U)
(declare-fun $generated@@153 () T@U)
(declare-fun $generated@@154 () T@U)
(declare-fun $generated@@155 () Int)
(declare-fun $generated@@156 () Real)
(declare-fun $generated@@157 () T@U)
(declare-fun $generated@@158 () T@U)
(declare-fun $generated@@159 (T@U) Bool)
(declare-fun $generated@@160 () Int)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@161  (=> (= $generated@@152 ($generated@@108 $generated@@34 $generated@@153 $generated@@3 false)) (=> (and (and (and (and (or (not (= $generated@@154 $generated@@34)) (not true)) ($generated@@31 $generated@@32 $generated@@154 $generated@@33)) (not ($generated@@17 ($generated@@46 $generated@@13 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@153 $generated@@154) $generated@@3))))) (and (= ($generated@@19 ($generated@@46 $generated@@14 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@153 $generated@@154) $generated@@41))) $generated@@155) (= ($generated@@21 ($generated@@46 $generated@@15 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@153 $generated@@154) $generated@@44))) $generated@@156))) (and (and (= ($generated@@46 $generated@@32 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@153 $generated@@154) $generated@@45)) $generated@@157) (= $generated@@158 ($generated@@51 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@153 $generated@@154 ($generated@@51 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@153 $generated@@154) $generated@@3 ($generated@@77 $generated@@13 ($generated@@16 true)))))) (and ($generated@@80 $generated@@158) ($generated@@159 $generated@@158)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= ($generated@@19 ($generated@@46 $generated@@14 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@158 $generated@@154) $generated@@41))) $generated@@155)) (=> (= ($generated@@19 ($generated@@46 $generated@@14 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@158 $generated@@154) $generated@@41))) $generated@@155) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= ($generated@@21 ($generated@@46 $generated@@15 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@158 $generated@@154) $generated@@44))) $generated@@156)) (=> (= ($generated@@21 ($generated@@46 $generated@@15 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@158 $generated@@154) $generated@@44))) $generated@@156) (=> (= (ControlFlow 0 2) (- 0 1)) (= ($generated@@46 $generated@@32 ($generated@@47 $generated@@48 $generated@@49 ($generated@@47 $generated@@32 ($generated@@50 $generated@@48 $generated@@49) $generated@@158 $generated@@154) $generated@@45)) $generated@@157))))))))))
(let (($generated@@162  (=> (and ($generated@@80 $generated@@153) ($generated@@159 $generated@@153)) (=> (and (and ($generated@@31 $generated@@32 $generated@@157 $generated@@33) ($generated@@37 $generated@@32 $generated@@157 $generated@@33 $generated@@153)) (and (= 0 $generated@@160) (= (ControlFlow 0 5) 2))) $generated@@161))))
$generated@@162)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)