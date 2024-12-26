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
(declare-fun $generated@@10 (T@T) Int)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 () T@T)
(declare-fun $generated@@13 () T@T)
(declare-fun $generated@@14 (Bool) T@U)
(declare-fun $generated@@15 (T@U) Bool)
(declare-fun $generated@@16 (Int) T@U)
(declare-fun $generated@@17 (T@U) Int)
(declare-fun $generated@@18 (Real) T@U)
(declare-fun $generated@@19 (T@U) Real)
(declare-fun $generated@@26 (T@U) Int)
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@U) Bool)
(declare-fun $generated@@30 (T@U T@U) Bool)
(declare-fun $generated@@31 (T@U T@U T@U) Bool)
(declare-fun $generated@@32 (T@U) Bool)
(declare-fun $generated@@33 () T@U)
(declare-fun $generated@@34 (T@T T@U T@U) Bool)
(declare-fun $generated@@35 () T@T)
(declare-fun $generated@@36 () T@U)
(declare-fun $generated@@37 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@38 () T@T)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 (T@T T@T) T@T)
(declare-fun $generated@@41 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@42 (T@T) T@T)
(declare-fun $generated@@43 (T@T) T@T)
(declare-fun $generated@@67 () T@U)
(declare-fun $generated@@68 (T@U) T@U)
(declare-fun $generated@@70 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@73 () T@U)
(declare-fun $generated@@74 (T@U T@U) T@U)
(declare-fun $generated@@75 (T@U) Bool)
(declare-fun $generated@@76 (T@T T@U) T@U)
(declare-fun $generated@@82 (T@T T@U) T@U)
(declare-fun $generated@@85 (T@T T@U) T@U)
(declare-fun $generated@@88 () Int)
(declare-fun $generated@@89 (T@U T@U T@U) Bool)
(declare-fun $generated@@95 (T@U T@U T@U) Bool)
(declare-fun $generated@@96 (T@U T@U T@U) Bool)
(declare-fun $generated@@100 (T@U T@U T@U) Bool)
(declare-fun $generated@@114 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@115 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@116 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@152 (T@U) T@U)
(declare-fun $generated@@163 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@10 $generated@@11) 0) (= ($generated@@10 $generated@@12) 1)) (= ($generated@@10 $generated@@13) 2)) (forall (($generated@@20 Bool) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Int) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 Real) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9)
)
(assert (= ($generated@@26 $generated@@3) 0))
(assert (= ($generated@@27 $generated) $generated@@1))
(assert (= ($generated@@27 $generated@@0) $generated@@2))
(assert (= ($generated@@28 $generated@@3) $generated@@4))
(assert  (and (and (and (and (and (and (and (= ($generated@@10 $generated@@35) 3) (forall (($generated@@44 T@T) ($generated@@45 T@T) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ) (! (= ($generated@@37 $generated@@44 $generated@@45 ($generated@@41 $generated@@44 $generated@@45 $generated@@47 $generated@@48 $generated@@46) $generated@@48) $generated@@46)
 :weight 0
))) (forall (($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ($generated@@54 T@U) ) (!  (or (= $generated@@53 $generated@@54) (= ($generated@@37 $generated@@49 $generated@@50 ($generated@@41 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@51) $generated@@54) ($generated@@37 $generated@@49 $generated@@50 $generated@@52 $generated@@54)))
 :weight 0
))) (= ($generated@@10 $generated@@38) 4)) (= ($generated@@10 $generated@@39) 5)) (forall (($generated@@55 T@T) ($generated@@56 T@T) ) (= ($generated@@10 ($generated@@40 $generated@@55 $generated@@56)) 6))) (forall (($generated@@57 T@T) ($generated@@58 T@T) ) (! (= ($generated@@42 ($generated@@40 $generated@@57 $generated@@58)) $generated@@57)
 :pattern ( ($generated@@40 $generated@@57 $generated@@58))
))) (forall (($generated@@59 T@T) ($generated@@60 T@T) ) (! (= ($generated@@43 ($generated@@40 $generated@@59 $generated@@60)) $generated@@60)
 :pattern ( ($generated@@40 $generated@@59 $generated@@60))
))))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (!  (=> (and (and (and ($generated@@32 $generated@@62) ($generated@@32 $generated@@63)) (and (or (not (= $generated@@64 $generated@@33)) (not true)) ($generated@@34 $generated@@35 $generated@@64 $generated@@36))) (and ($generated@@29 $generated@@62) ($generated@@30 $generated@@62 $generated@@63))) (=> (forall (($generated@@65 T@U) ($generated@@66 T@U) )  (=> (and (or (not (= $generated@@65 $generated@@33)) (not true)) (= $generated@@65 $generated@@64)) (= ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@62 $generated@@65) $generated@@66) ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@63 $generated@@65) $generated@@66)))) (= ($generated@@31 $generated@@61 $generated@@62 $generated@@64) ($generated@@31 $generated@@61 $generated@@63 $generated@@64))))
 :pattern ( ($generated@@29 $generated@@62) ($generated@@30 $generated@@62 $generated@@63) ($generated@@31 $generated@@61 $generated@@63 $generated@@64))
)))
(assert (forall (($generated@@69 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@69 $generated@@67)  (or (= $generated@@69 $generated@@33) (= ($generated@@68 $generated@@69) $generated@@67)))
 :pattern ( ($generated@@34 $generated@@35 $generated@@69 $generated@@67))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@70 $generated@@35 $generated@@71 $generated@@36 $generated@@72) ($generated@@70 $generated@@35 $generated@@71 $generated@@67 $generated@@72))
 :pattern ( ($generated@@70 $generated@@35 $generated@@71 $generated@@36 $generated@@72))
 :pattern ( ($generated@@70 $generated@@35 $generated@@71 $generated@@67 $generated@@72))
)))
(assert (= ($generated@@26 $generated@@73) 0))
(assert (= ($generated@@74 $generated@@5 $generated@@9) $generated@@73))
(assert  (not ($generated@@75 $generated@@73)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ) (! (= ($generated@@70 $generated@@35 $generated@@77 $generated@@67 $generated@@78)  (or (= $generated@@77 $generated@@33) ($generated@@15 ($generated@@76 $generated@@11 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@78 $generated@@77) $generated@@3)))))
 :pattern ( ($generated@@70 $generated@@35 $generated@@77 $generated@@67 $generated@@78))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ) (!  (=> ($generated@@30 $generated@@79 $generated@@80) (forall (($generated@@81 T@U) ) (!  (=> ($generated@@15 ($generated@@76 $generated@@11 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@79 $generated@@81) $generated@@3))) ($generated@@15 ($generated@@76 $generated@@11 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@80 $generated@@81) $generated@@3))))
 :pattern ( ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@80 $generated@@81) $generated@@3))
)))
 :pattern ( ($generated@@30 $generated@@79 $generated@@80))
)))
(assert (forall (($generated@@83 T@U) ($generated@@84 T@T) ) (! (= ($generated@@82 $generated@@84 $generated@@83) $generated@@83)
 :pattern ( ($generated@@82 $generated@@84 $generated@@83))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@85 $generated@@87 ($generated@@76 $generated@@87 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@76 $generated@@87 $generated@@86))
)))
(assert ($generated@@75 $generated@@3))
(assert  (=> (<= 0 $generated@@88) (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ) (!  (=> (or ($generated@@89 $generated@@90 $generated@@91 $generated@@92) (and (< 0 $generated@@88) (and (and (and ($generated@@32 $generated@@90) ($generated@@32 $generated@@91)) ($generated@@30 $generated@@90 $generated@@91)) (and (or (not (= $generated@@92 $generated@@33)) (not true)) (and ($generated@@34 $generated@@35 $generated@@92 $generated@@36) ($generated@@70 $generated@@35 $generated@@92 $generated@@36 $generated@@90)))))) (= ($generated@@31 $generated@@90 $generated@@91 $generated@@92) (<= ($generated@@17 ($generated@@76 $generated@@12 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@90 $generated@@92) $generated@@73))) ($generated@@17 ($generated@@76 $generated@@12 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@91 $generated@@92) $generated@@73))))))
 :pattern ( ($generated@@31 $generated@@90 $generated@@91 $generated@@92) ($generated@@32 $generated@@91))
))))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (!  (=> (and (and ($generated@@32 $generated@@93) (and (or (not (= $generated@@94 $generated@@33)) (not true)) (= ($generated@@68 $generated@@94) $generated@@67))) ($generated@@15 ($generated@@76 $generated@@11 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@93 $generated@@94) $generated@@3)))) ($generated@@70 $generated@@12 ($generated@@76 $generated@@12 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@93 $generated@@94) $generated@@73)) $generated@@0 $generated@@93))
 :pattern ( ($generated@@76 $generated@@12 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@93 $generated@@94) $generated@@73)))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ) (!  (=> ($generated@@96 $generated@@97 $generated@@98 $generated@@99) (= ($generated@@95 $generated@@97 $generated@@98 $generated@@99) ($generated@@31 $generated@@98 $generated@@97 $generated@@99)))
 :pattern ( ($generated@@95 $generated@@97 $generated@@98 $generated@@99))
)))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@T) ) (! (= ($generated@@100 ($generated@@85 $generated@@104 $generated@@101) $generated@@102 $generated@@103) ($generated@@70 $generated@@104 $generated@@101 $generated@@102 $generated@@103))
 :pattern ( ($generated@@100 ($generated@@85 $generated@@104 $generated@@101) $generated@@102 $generated@@103))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ) (!  (=> ($generated@@30 $generated@@105 $generated@@106) (=> ($generated@@100 $generated@@107 $generated@@108 $generated@@105) ($generated@@100 $generated@@107 $generated@@108 $generated@@106)))
 :pattern ( ($generated@@30 $generated@@105 $generated@@106) ($generated@@100 $generated@@107 $generated@@108 $generated@@105))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ($generated@@113 T@T) ) (!  (=> ($generated@@30 $generated@@109 $generated@@110) (=> ($generated@@70 $generated@@113 $generated@@111 $generated@@112 $generated@@109) ($generated@@70 $generated@@113 $generated@@111 $generated@@112 $generated@@110)))
 :pattern ( ($generated@@30 $generated@@109 $generated@@110) ($generated@@70 $generated@@113 $generated@@111 $generated@@112 $generated@@109))
)))
(assert  (and (forall (($generated@@117 T@T) ($generated@@118 T@T) ($generated@@119 T@T) ($generated@@120 T@U) ($generated@@121 T@U) ($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@114 $generated@@117 $generated@@118 $generated@@119 ($generated@@116 $generated@@117 $generated@@118 $generated@@119 $generated@@121 $generated@@122 $generated@@123 $generated@@120) $generated@@122 $generated@@123) $generated@@120)
 :weight 0
)) (and (forall (($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@T) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (!  (or (= $generated@@129 $generated@@131) (= ($generated@@114 $generated@@124 $generated@@125 $generated@@126 ($generated@@116 $generated@@124 $generated@@125 $generated@@126 $generated@@128 $generated@@129 $generated@@130 $generated@@127) $generated@@131 $generated@@132) ($generated@@114 $generated@@124 $generated@@125 $generated@@126 $generated@@128 $generated@@131 $generated@@132)))
 :weight 0
)) (forall (($generated@@133 T@T) ($generated@@134 T@T) ($generated@@135 T@T) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@U) ) (!  (or (= $generated@@139 $generated@@141) (= ($generated@@114 $generated@@133 $generated@@134 $generated@@135 ($generated@@116 $generated@@133 $generated@@134 $generated@@135 $generated@@137 $generated@@138 $generated@@139 $generated@@136) $generated@@140 $generated@@141) ($generated@@114 $generated@@133 $generated@@134 $generated@@135 $generated@@137 $generated@@140 $generated@@141)))
 :weight 0
)))))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (! (= ($generated@@15 ($generated@@114 $generated@@35 $generated@@38 $generated@@11 ($generated@@115 $generated@@142 $generated@@143 $generated@@144 $generated@@145) $generated@@146 $generated@@147))  (=> (and (or (not (= $generated@@146 $generated@@142)) (not true)) ($generated@@15 ($generated@@76 $generated@@11 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@143 $generated@@146) $generated@@144)))) (= $generated@@146 $generated@@145)))
 :pattern ( ($generated@@114 $generated@@35 $generated@@38 $generated@@11 ($generated@@115 $generated@@142 $generated@@143 $generated@@144 $generated@@145) $generated@@146 $generated@@147))
)))
(assert (forall (($generated@@148 T@U) ) (! (= ($generated@@34 $generated@@35 $generated@@148 $generated@@36)  (and ($generated@@34 $generated@@35 $generated@@148 $generated@@67) (or (not (= $generated@@148 $generated@@33)) (not true))))
 :pattern ( ($generated@@34 $generated@@35 $generated@@148 $generated@@36))
 :pattern ( ($generated@@34 $generated@@35 $generated@@148 $generated@@67))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ) (!  (=> (or (not (= $generated@@149 $generated@@151)) (not true)) (=> (and ($generated@@30 $generated@@149 $generated@@150) ($generated@@30 $generated@@150 $generated@@151)) ($generated@@30 $generated@@149 $generated@@151)))
 :pattern ( ($generated@@30 $generated@@149 $generated@@150) ($generated@@30 $generated@@150 $generated@@151))
)))
(assert (forall (($generated@@153 T@U) ($generated@@154 T@U) ) (!  (and (= ($generated@@152 ($generated@@74 $generated@@153 $generated@@154)) $generated@@153) (= ($generated@@28 ($generated@@74 $generated@@153 $generated@@154)) $generated@@154))
 :pattern ( ($generated@@74 $generated@@153 $generated@@154))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@T) ) (! (= ($generated@@76 $generated@@156 ($generated@@85 $generated@@156 $generated@@155)) $generated@@155)
 :pattern ( ($generated@@85 $generated@@156 $generated@@155))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@U) ) (!  (=> (and ($generated@@32 $generated@@157) (and (or (not (= $generated@@158 $generated@@33)) (not true)) (= ($generated@@68 $generated@@158) $generated@@67))) ($generated@@34 $generated@@12 ($generated@@76 $generated@@12 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@157 $generated@@158) $generated@@73)) $generated@@0))
 :pattern ( ($generated@@76 $generated@@12 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@157 $generated@@158) $generated@@73)))
)))
(assert (forall (($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ) (!  (=> ($generated@@32 ($generated@@41 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@159 $generated@@160 ($generated@@41 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@159 $generated@@160) $generated@@161 $generated@@162))) ($generated@@30 $generated@@159 ($generated@@41 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@159 $generated@@160 ($generated@@41 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@159 $generated@@160) $generated@@161 $generated@@162))))
 :pattern ( ($generated@@41 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@159 $generated@@160 ($generated@@41 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@159 $generated@@160) $generated@@161 $generated@@162)))
)))
(assert (= ($generated@@27 $generated@@67) $generated@@6))
(assert (= ($generated@@163 $generated@@67) $generated@@8))
(assert (= ($generated@@27 $generated@@36) $generated@@7))
(assert (= ($generated@@163 $generated@@36) $generated@@8))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@T) ) (! (= ($generated@@85 $generated@@165 ($generated@@82 $generated@@165 $generated@@164)) ($generated@@82 $generated@@39 ($generated@@85 $generated@@165 $generated@@164)))
 :pattern ( ($generated@@85 $generated@@165 ($generated@@82 $generated@@165 $generated@@164)))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ) (! ($generated@@70 $generated@@12 $generated@@167 $generated@@0 $generated@@166)
 :pattern ( ($generated@@70 $generated@@12 $generated@@167 $generated@@0 $generated@@166))
)))
(assert (forall (($generated@@168 T@U) ($generated@@169 T@U) ) (! ($generated@@70 $generated@@11 $generated@@169 $generated $generated@@168)
 :pattern ( ($generated@@70 $generated@@11 $generated@@169 $generated $generated@@168))
)))
(assert (forall (($generated@@170 T@U) ) (! ($generated@@34 $generated@@12 $generated@@170 $generated@@0)
 :pattern ( ($generated@@34 $generated@@12 $generated@@170 $generated@@0))
)))
(assert (forall (($generated@@171 T@U) ) (! ($generated@@34 $generated@@11 $generated@@171 $generated)
 :pattern ( ($generated@@34 $generated@@11 $generated@@171 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@172 () T@U)
(declare-fun $generated@@173 () T@U)
(declare-fun $generated@@174 () T@U)
(declare-fun $generated@@175 () Bool)
(declare-fun $generated@@176 () Bool)
(declare-fun $generated@@177 () T@U)
(declare-fun $generated@@178 () T@U)
(declare-fun $generated@@179 () Int)
(declare-fun $generated@@180 () Int)
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
 (=> (= (ControlFlow 0 0) 9) (let (($generated@@181 true))
(let (($generated@@182  (=> ($generated@@100 ($generated@@85 $generated@@35 $generated@@172) $generated@@67 $generated@@173) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($generated@@70 $generated@@35 $generated@@172 $generated@@36 $generated@@174)) (=> ($generated@@70 $generated@@35 $generated@@172 $generated@@36 $generated@@174) (=> ($generated@@89 $generated@@174 $generated@@173 $generated@@172) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (and ($generated@@34 $generated@@11 ($generated@@82 $generated@@11 ($generated@@14 true)) $generated) (= ($generated@@15 ($generated@@82 $generated@@11 ($generated@@14 true))) ($generated@@31 $generated@@174 $generated@@173 $generated@@172))) (or (and ($generated@@34 $generated@@11 ($generated@@82 $generated@@11 ($generated@@14 false)) $generated) (= ($generated@@15 ($generated@@82 $generated@@11 ($generated@@14 false))) ($generated@@31 $generated@@174 $generated@@173 $generated@@172))) (exists (($generated@@183 Bool) ) (= $generated@@183 ($generated@@31 $generated@@174 $generated@@173 $generated@@172)))))) (=> (or (and ($generated@@34 $generated@@11 ($generated@@82 $generated@@11 ($generated@@14 true)) $generated) (= ($generated@@15 ($generated@@82 $generated@@11 ($generated@@14 true))) ($generated@@31 $generated@@174 $generated@@173 $generated@@172))) (or (and ($generated@@34 $generated@@11 ($generated@@82 $generated@@11 ($generated@@14 false)) $generated) (= ($generated@@15 ($generated@@82 $generated@@11 ($generated@@14 false))) ($generated@@31 $generated@@174 $generated@@173 $generated@@172))) (exists (($generated@@184 Bool) ) (= $generated@@184 ($generated@@31 $generated@@174 $generated@@173 $generated@@172))))) (=> (= $generated@@175 ($generated@@31 $generated@@174 $generated@@173 $generated@@172)) (=> (and (and ($generated@@96 $generated@@173 $generated@@174 $generated@@172) ($generated@@96 $generated@@173 $generated@@174 $generated@@172)) (and (= $generated@@176 (let (($generated@@185 ($generated@@95 $generated@@173 $generated@@174 $generated@@172)))
 (not $generated@@185))) (= (ControlFlow 0 2) (- 0 1)))) $generated@@176))))))))))
(let (($generated@@186  (=> (= $generated@@177 ($generated@@115 $generated@@33 $generated@@178 $generated@@3 $generated@@172)) (and (=> (= (ControlFlow 0 6) (- 0 8)) ($generated@@15 ($generated@@114 $generated@@35 $generated@@38 $generated@@11 $generated@@177 $generated@@172 $generated@@73))) (=> ($generated@@15 ($generated@@114 $generated@@35 $generated@@38 $generated@@11 $generated@@177 $generated@@172 $generated@@73)) (=> (= $generated@@179 (+ ($generated@@17 ($generated@@76 $generated@@12 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@178 $generated@@172) $generated@@73))) 1)) (=> (and (= $generated@@174 ($generated@@41 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@178 $generated@@172 ($generated@@41 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@178 $generated@@172) $generated@@73 ($generated@@85 $generated@@12 ($generated@@16 $generated@@179))))) ($generated@@32 $generated@@174)) (and (=> (= (ControlFlow 0 6) (- 0 7)) ($generated@@15 ($generated@@114 $generated@@35 $generated@@38 $generated@@11 $generated@@177 $generated@@172 $generated@@73))) (=> ($generated@@15 ($generated@@114 $generated@@35 $generated@@38 $generated@@11 $generated@@177 $generated@@172 $generated@@73)) (=> (= $generated@@180 (- ($generated@@17 ($generated@@76 $generated@@12 ($generated@@37 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@174 $generated@@172) $generated@@73))) 1)) (=> (and (= $generated@@173 ($generated@@41 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@174 $generated@@172 ($generated@@41 $generated@@38 $generated@@39 ($generated@@37 $generated@@35 ($generated@@40 $generated@@38 $generated@@39) $generated@@174 $generated@@172) $generated@@73 ($generated@@85 $generated@@12 ($generated@@16 $generated@@180))))) ($generated@@32 $generated@@173)) (and (=> (= (ControlFlow 0 6) 2) $generated@@182) (=> (= (ControlFlow 0 6) 5) $generated@@181)))))))))))))
(let (($generated@@187  (=> (and ($generated@@32 $generated@@178) ($generated@@29 $generated@@178)) (=> (and (and (or (not (= $generated@@172 $generated@@33)) (not true)) (and ($generated@@34 $generated@@35 $generated@@172 $generated@@36) ($generated@@70 $generated@@35 $generated@@172 $generated@@36 $generated@@178))) (and (= 1 $generated@@88) (= (ControlFlow 0 9) 6))) $generated@@186))))
$generated@@187)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid