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
(declare-fun $generated@@27 (T@U) T@U)
(declare-fun $generated@@28 (T@T T@U T@U) Bool)
(declare-fun $generated@@29 () T@T)
(declare-fun $generated@@30 () T@U)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@34 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@35 () T@U)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@39 (T@U T@U) T@U)
(declare-fun $generated@@40 (T@U) Bool)
(declare-fun $generated@@41 (T@T T@U) T@U)
(declare-fun $generated@@42 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 (T@T T@T) T@T)
(declare-fun $generated@@46 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@47 (T@T) T@T)
(declare-fun $generated@@48 (T@T) T@T)
(declare-fun $generated@@68 (T@U T@U) Bool)
(declare-fun $generated@@72 (Int) Int)
(declare-fun $generated@@74 (T@T T@U) T@U)
(declare-fun $generated@@77 (T@T T@U) T@U)
(declare-fun $generated@@80 () T@T)
(declare-fun $generated@@81 (T@U) T@U)
(declare-fun $generated@@82 (T@U T@U) Bool)
(declare-fun $generated@@83 (T@U T@U) Bool)
(declare-fun $generated@@87 (T@U) Bool)
(declare-fun $generated@@90 (T@U T@U T@U) Bool)
(declare-fun $generated@@110 (T@U) T@U)
(declare-fun $generated@@121 (T@U) T@U)
(declare-fun $generated@@128 (Int Int) Int)
(declare-fun $generated@@137 (T@U) T@U)
(declare-fun $generated@@141 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@142 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@143 (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (= ($generated@@25 $generated@@2) 0))
(assert (= ($generated@@26 $generated) $generated@@0))
(assert (= ($generated@@27 $generated@@2) $generated@@3))
(assert (= ($generated@@9 $generated@@29) 3))
(assert (forall (($generated@@33 T@U) ) (! (= ($generated@@28 $generated@@29 $generated@@33 $generated@@30)  (or (= $generated@@33 $generated@@31) (= ($generated@@32 $generated@@33) $generated@@30)))
 :pattern ( ($generated@@28 $generated@@29 $generated@@33 $generated@@30))
)))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ) (! (= ($generated@@34 $generated@@29 $generated@@36 $generated@@35 $generated@@37) ($generated@@34 $generated@@29 $generated@@36 $generated@@30 $generated@@37))
 :pattern ( ($generated@@34 $generated@@29 $generated@@36 $generated@@35 $generated@@37))
 :pattern ( ($generated@@34 $generated@@29 $generated@@36 $generated@@30 $generated@@37))
)))
(assert (= ($generated@@25 $generated@@38) 0))
(assert (= ($generated@@39 $generated@@4 $generated@@8) $generated@@38))
(assert  (not ($generated@@40 $generated@@38)))
(assert  (and (and (and (and (and (and (forall (($generated@@49 T@T) ($generated@@50 T@T) ($generated@@51 T@U) ($generated@@52 T@U) ($generated@@53 T@U) ) (! (= ($generated@@42 $generated@@49 $generated@@50 ($generated@@46 $generated@@49 $generated@@50 $generated@@52 $generated@@53 $generated@@51) $generated@@53) $generated@@51)
 :weight 0
)) (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (!  (or (= $generated@@58 $generated@@59) (= ($generated@@42 $generated@@54 $generated@@55 ($generated@@46 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@56) $generated@@59) ($generated@@42 $generated@@54 $generated@@55 $generated@@57 $generated@@59)))
 :weight 0
))) (= ($generated@@9 $generated@@43) 4)) (= ($generated@@9 $generated@@44) 5)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ) (= ($generated@@9 ($generated@@45 $generated@@60 $generated@@61)) 6))) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (! (= ($generated@@47 ($generated@@45 $generated@@62 $generated@@63)) $generated@@62)
 :pattern ( ($generated@@45 $generated@@62 $generated@@63))
))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@48 ($generated@@45 $generated@@64 $generated@@65)) $generated@@65)
 :pattern ( ($generated@@45 $generated@@64 $generated@@65))
))))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@U) ) (! (= ($generated@@34 $generated@@29 $generated@@66 $generated@@30 $generated@@67)  (or (= $generated@@66 $generated@@31) ($generated@@14 ($generated@@41 $generated@@10 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@67 $generated@@66) $generated@@2)))))
 :pattern ( ($generated@@34 $generated@@29 $generated@@66 $generated@@30 $generated@@67))
)))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ) (!  (=> ($generated@@68 $generated@@69 $generated@@70) (forall (($generated@@71 T@U) ) (!  (=> ($generated@@14 ($generated@@41 $generated@@10 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@69 $generated@@71) $generated@@2))) ($generated@@14 ($generated@@41 $generated@@10 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@70 $generated@@71) $generated@@2))))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@70 $generated@@71) $generated@@2))
)))
 :pattern ( ($generated@@68 $generated@@69 $generated@@70))
)))
(assert (forall (($generated@@73 Int) ) (! (= ($generated@@72 $generated@@73) $generated@@73)
 :pattern ( ($generated@@72 $generated@@73))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@T) ) (! (= ($generated@@74 $generated@@76 $generated@@75) $generated@@75)
 :pattern ( ($generated@@74 $generated@@76 $generated@@75))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@T) ) (! (= ($generated@@77 $generated@@79 ($generated@@41 $generated@@79 $generated@@78)) $generated@@78)
 :pattern ( ($generated@@41 $generated@@79 $generated@@78))
)))
(assert (= ($generated@@9 $generated@@80) 7))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@28 $generated@@80 $generated@@84 ($generated@@81 $generated@@85)) (forall (($generated@@86 T@U) ) (!  (=> ($generated@@82 $generated@@84 $generated@@86) ($generated@@83 $generated@@86 $generated@@85))
 :pattern ( ($generated@@82 $generated@@84 $generated@@86))
)))
 :pattern ( ($generated@@28 $generated@@80 $generated@@84 ($generated@@81 $generated@@85)))
)))
(assert ($generated@@40 $generated@@2))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ) (!  (=> (and (and ($generated@@87 $generated@@88) (and (or (not (= $generated@@89 $generated@@31)) (not true)) (= ($generated@@32 $generated@@89) $generated@@30))) ($generated@@14 ($generated@@41 $generated@@10 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@88 $generated@@89) $generated@@2)))) ($generated@@34 $generated@@11 ($generated@@41 $generated@@11 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@88 $generated@@89) $generated@@38)) $generated $generated@@88))
 :pattern ( ($generated@@41 $generated@@11 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@88 $generated@@89) $generated@@38)))
)))
(assert (forall (($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@T) ) (! (= ($generated@@90 ($generated@@77 $generated@@94 $generated@@91) $generated@@92 $generated@@93) ($generated@@34 $generated@@94 $generated@@91 $generated@@92 $generated@@93))
 :pattern ( ($generated@@90 ($generated@@77 $generated@@94 $generated@@91) $generated@@92 $generated@@93))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ) (!  (=> ($generated@@68 $generated@@95 $generated@@96) (=> ($generated@@90 $generated@@97 $generated@@98 $generated@@95) ($generated@@90 $generated@@97 $generated@@98 $generated@@96)))
 :pattern ( ($generated@@68 $generated@@95 $generated@@96) ($generated@@90 $generated@@97 $generated@@98 $generated@@95))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@T) ) (!  (=> ($generated@@68 $generated@@99 $generated@@100) (=> ($generated@@34 $generated@@103 $generated@@101 $generated@@102 $generated@@99) ($generated@@34 $generated@@103 $generated@@101 $generated@@102 $generated@@100)))
 :pattern ( ($generated@@68 $generated@@99 $generated@@100) ($generated@@34 $generated@@103 $generated@@101 $generated@@102 $generated@@99))
)))
(assert (forall (($generated@@104 T@U) ) (!  (=> ($generated@@83 $generated@@104 $generated@@30) (and (= ($generated@@77 $generated@@29 ($generated@@41 $generated@@29 $generated@@104)) $generated@@104) ($generated@@28 $generated@@29 ($generated@@41 $generated@@29 $generated@@104) $generated@@30)))
 :pattern ( ($generated@@83 $generated@@104 $generated@@30))
)))
(assert (forall (($generated@@105 T@U) ) (!  (=> ($generated@@83 $generated@@105 $generated@@35) (and (= ($generated@@77 $generated@@29 ($generated@@41 $generated@@29 $generated@@105)) $generated@@105) ($generated@@28 $generated@@29 ($generated@@41 $generated@@29 $generated@@105) $generated@@35)))
 :pattern ( ($generated@@83 $generated@@105 $generated@@35))
)))
(assert (forall (($generated@@106 T@U) ) (! (= ($generated@@28 $generated@@29 $generated@@106 $generated@@35)  (and ($generated@@28 $generated@@29 $generated@@106 $generated@@30) (or (not (= $generated@@106 $generated@@31)) (not true))))
 :pattern ( ($generated@@28 $generated@@29 $generated@@106 $generated@@35))
 :pattern ( ($generated@@28 $generated@@29 $generated@@106 $generated@@30))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (!  (=> (or (not (= $generated@@107 $generated@@109)) (not true)) (=> (and ($generated@@68 $generated@@107 $generated@@108) ($generated@@68 $generated@@108 $generated@@109)) ($generated@@68 $generated@@107 $generated@@109)))
 :pattern ( ($generated@@68 $generated@@107 $generated@@108) ($generated@@68 $generated@@108 $generated@@109))
)))
(assert (forall (($generated@@111 T@U) ($generated@@112 T@U) ) (!  (and (= ($generated@@110 ($generated@@39 $generated@@111 $generated@@112)) $generated@@111) (= ($generated@@27 ($generated@@39 $generated@@111 $generated@@112)) $generated@@112))
 :pattern ( ($generated@@39 $generated@@111 $generated@@112))
)))
(assert (forall (($generated@@113 T@U) ) (!  (=> ($generated@@83 $generated@@113 $generated) (and (= ($generated@@77 $generated@@11 ($generated@@41 $generated@@11 $generated@@113)) $generated@@113) ($generated@@28 $generated@@11 ($generated@@41 $generated@@11 $generated@@113) $generated)))
 :pattern ( ($generated@@83 $generated@@113 $generated))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@T) ) (! (= ($generated@@83 ($generated@@77 $generated@@116 $generated@@114) $generated@@115) ($generated@@28 $generated@@116 $generated@@114 $generated@@115))
 :pattern ( ($generated@@83 ($generated@@77 $generated@@116 $generated@@114) $generated@@115))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@U) ($generated@@119 T@U) ) (! (= ($generated@@34 $generated@@80 $generated@@117 ($generated@@81 $generated@@118) $generated@@119) (forall (($generated@@120 T@U) ) (!  (=> ($generated@@82 $generated@@117 $generated@@120) ($generated@@90 $generated@@120 $generated@@118 $generated@@119))
 :pattern ( ($generated@@82 $generated@@117 $generated@@120))
)))
 :pattern ( ($generated@@34 $generated@@80 $generated@@117 ($generated@@81 $generated@@118) $generated@@119))
)))
(assert (forall (($generated@@122 T@U) ) (! (= ($generated@@121 ($generated@@81 $generated@@122)) $generated@@122)
 :pattern ( ($generated@@81 $generated@@122))
)))
(assert (forall (($generated@@123 T@U) ) (! (= ($generated@@26 ($generated@@81 $generated@@123)) $generated@@1)
 :pattern ( ($generated@@81 $generated@@123))
)))
(assert (forall (($generated@@124 T@U) ($generated@@125 T@T) ) (! (= ($generated@@41 $generated@@125 ($generated@@77 $generated@@125 $generated@@124)) $generated@@124)
 :pattern ( ($generated@@77 $generated@@125 $generated@@124))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ) (!  (=> (and ($generated@@87 $generated@@126) (and (or (not (= $generated@@127 $generated@@31)) (not true)) (= ($generated@@32 $generated@@127) $generated@@30))) ($generated@@28 $generated@@11 ($generated@@41 $generated@@11 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@126 $generated@@127) $generated@@38)) $generated))
 :pattern ( ($generated@@41 $generated@@11 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@126 $generated@@127) $generated@@38)))
)))
(assert (forall (($generated@@129 Int) ($generated@@130 Int) ) (! (= ($generated@@128 $generated@@129 $generated@@130) (* $generated@@129 $generated@@130))
 :pattern ( ($generated@@128 $generated@@129 $generated@@130))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ) (!  (=> ($generated@@83 $generated@@131 ($generated@@81 $generated@@132)) (and (= ($generated@@77 $generated@@80 ($generated@@41 $generated@@80 $generated@@131)) $generated@@131) ($generated@@28 $generated@@80 ($generated@@41 $generated@@80 $generated@@131) ($generated@@81 $generated@@132))))
 :pattern ( ($generated@@83 $generated@@131 ($generated@@81 $generated@@132)))
)))
(assert (forall (($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ) (!  (=> ($generated@@87 ($generated@@46 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@133 $generated@@134 ($generated@@46 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@133 $generated@@134) $generated@@135 $generated@@136))) ($generated@@68 $generated@@133 ($generated@@46 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@133 $generated@@134 ($generated@@46 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@133 $generated@@134) $generated@@135 $generated@@136))))
 :pattern ( ($generated@@46 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@133 $generated@@134 ($generated@@46 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@133 $generated@@134) $generated@@135 $generated@@136)))
)))
(assert (= ($generated@@26 $generated@@30) $generated@@5))
(assert (= ($generated@@137 $generated@@30) $generated@@7))
(assert (= ($generated@@26 $generated@@35) $generated@@6))
(assert (= ($generated@@137 $generated@@35) $generated@@7))
(assert (forall (($generated@@138 Int) ) (! (= ($generated@@77 $generated@@11 ($generated@@15 ($generated@@72 $generated@@138))) ($generated@@74 $generated@@44 ($generated@@77 $generated@@11 ($generated@@15 $generated@@138))))
 :pattern ( ($generated@@77 $generated@@11 ($generated@@15 ($generated@@72 $generated@@138))))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@T) ) (! (= ($generated@@77 $generated@@140 ($generated@@74 $generated@@140 $generated@@139)) ($generated@@74 $generated@@44 ($generated@@77 $generated@@140 $generated@@139)))
 :pattern ( ($generated@@77 $generated@@140 ($generated@@74 $generated@@140 $generated@@139)))
)))
(assert  (and (forall (($generated@@144 T@T) ($generated@@145 T@T) ($generated@@146 T@T) ($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ) (! (= ($generated@@141 $generated@@144 $generated@@145 $generated@@146 ($generated@@143 $generated@@144 $generated@@145 $generated@@146 $generated@@148 $generated@@149 $generated@@150 $generated@@147) $generated@@149 $generated@@150) $generated@@147)
 :weight 0
)) (and (forall (($generated@@151 T@T) ($generated@@152 T@T) ($generated@@153 T@T) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ($generated@@159 T@U) ) (!  (or (= $generated@@156 $generated@@158) (= ($generated@@141 $generated@@151 $generated@@152 $generated@@153 ($generated@@143 $generated@@151 $generated@@152 $generated@@153 $generated@@155 $generated@@156 $generated@@157 $generated@@154) $generated@@158 $generated@@159) ($generated@@141 $generated@@151 $generated@@152 $generated@@153 $generated@@155 $generated@@158 $generated@@159)))
 :weight 0
)) (forall (($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@T) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ) (!  (or (= $generated@@166 $generated@@168) (= ($generated@@141 $generated@@160 $generated@@161 $generated@@162 ($generated@@143 $generated@@160 $generated@@161 $generated@@162 $generated@@164 $generated@@165 $generated@@166 $generated@@163) $generated@@167 $generated@@168) ($generated@@141 $generated@@160 $generated@@161 $generated@@162 $generated@@164 $generated@@167 $generated@@168)))
 :weight 0
)))))
(assert (forall (($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ) (! (= ($generated@@14 ($generated@@141 $generated@@29 $generated@@43 $generated@@10 ($generated@@142 $generated@@169 $generated@@170 $generated@@171 $generated@@172) $generated@@173 $generated@@174))  (=> (and (or (not (= $generated@@173 $generated@@169)) (not true)) ($generated@@14 ($generated@@41 $generated@@10 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@170 $generated@@173) $generated@@171)))) ($generated@@82 $generated@@172 ($generated@@77 $generated@@29 $generated@@173))))
 :pattern ( ($generated@@141 $generated@@29 $generated@@43 $generated@@10 ($generated@@142 $generated@@169 $generated@@170 $generated@@171 $generated@@172) $generated@@173 $generated@@174))
)))
(assert (forall (($generated@@175 T@U) ($generated@@176 T@U) ) (! ($generated@@34 $generated@@11 $generated@@176 $generated $generated@@175)
 :pattern ( ($generated@@34 $generated@@11 $generated@@176 $generated $generated@@175))
)))
(assert (forall (($generated@@177 T@U) ) (! ($generated@@28 $generated@@11 $generated@@177 $generated)
 :pattern ( ($generated@@28 $generated@@11 $generated@@177 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@178 () T@U)
(declare-fun $generated@@179 () T@U)
(declare-fun $generated@@180 () T@U)
(declare-fun $generated@@181 () T@U)
(declare-fun $generated@@182 () T@U)
(declare-fun $generated@@183 () T@U)
(declare-fun $generated@@184 () T@U)
(declare-fun $generated@@185 (T@U) Bool)
(declare-fun $generated@@186 () Int)
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
 (=> (= (ControlFlow 0 0) 15) (let (($generated@@187  (=> (and ($generated@@82 $generated@@178 ($generated@@77 $generated@@29 $generated@@179)) (<= ($generated@@72 2) ($generated@@16 ($generated@@41 $generated@@11 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@180 $generated@@179) $generated@@38))))) (and (=> (= (ControlFlow 0 6) (- 0 9)) (or (not (= $generated@@179 $generated@@31)) (not true))) (and (=> (= (ControlFlow 0 6) (- 0 8)) ($generated@@14 ($generated@@141 $generated@@29 $generated@@43 $generated@@10 $generated@@181 $generated@@179 $generated@@38))) (=> ($generated@@14 ($generated@@141 $generated@@29 $generated@@43 $generated@@10 $generated@@181 $generated@@179 $generated@@38)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (not (= $generated@@179 $generated@@31)) (not true))) (=> (and ($generated@@28 $generated@@29 $generated@@182 $generated@@35) ($generated@@34 $generated@@29 $generated@@182 $generated@@35 $generated@@180)) (=> (and (and ($generated@@82 $generated@@178 ($generated@@77 $generated@@29 $generated@@182)) (<= ($generated@@72 2) ($generated@@16 ($generated@@41 $generated@@11 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@180 $generated@@182) $generated@@38))))) (and (or (not (= $generated@@179 $generated@@182)) (not true)) (= (ControlFlow 0 6) (- 0 5)))) (or (or (or (not (= $generated@@179 $generated@@182)) (not true)) (or (not (= $generated@@38 $generated@@38)) (not true))) (= (+ ($generated@@16 ($generated@@41 $generated@@11 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@180 $generated@@179) $generated@@38))) 1) (+ ($generated@@16 ($generated@@41 $generated@@11 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@180 $generated@@182) $generated@@38))) 1))))))))))))
(let (($generated@@188  (=> (and (not ($generated@@82 $generated@@178 ($generated@@77 $generated@@29 $generated@@179))) (= (ControlFlow 0 12) 6)) $generated@@187)))
(let (($generated@@189  (=> ($generated@@82 $generated@@178 ($generated@@77 $generated@@29 $generated@@179)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (not (= $generated@@179 $generated@@31)) (not true))) (=> (= (ControlFlow 0 10) 6) $generated@@187)))))
(let (($generated@@190  (=> (and ($generated@@28 $generated@@29 $generated@@179 $generated@@35) ($generated@@34 $generated@@29 $generated@@179 $generated@@35 $generated@@180)) (and (=> (= (ControlFlow 0 13) 10) $generated@@189) (=> (= (ControlFlow 0 13) 12) $generated@@188)))))
(let (($generated@@191 true))
(let (($generated@@192  (=> (and ($generated@@82 $generated@@178 ($generated@@77 $generated@@29 $generated@@183)) (= (ControlFlow 0 2) (- 0 1))) ($generated@@14 ($generated@@141 $generated@@29 $generated@@43 $generated@@10 $generated@@181 $generated@@183 $generated@@38)))))
(let (($generated@@193  (=> (and (and (and ($generated@@87 $generated@@184) ($generated@@185 $generated@@184)) ($generated@@68 $generated@@180 $generated@@184)) (and (forall (($generated@@194 T@U) ($generated@@195 T@U) ) (!  (or (= ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@184 $generated@@194) $generated@@195) ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@180 $generated@@194) $generated@@195)) (exists (($generated@@196 T@U) )  (and (and (and ($generated@@28 $generated@@29 $generated@@196 $generated@@35) (and ($generated@@82 $generated@@178 ($generated@@77 $generated@@29 $generated@@196)) (<= ($generated@@72 2) ($generated@@16 ($generated@@41 $generated@@11 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@180 $generated@@196) $generated@@38)))))) (= $generated@@194 $generated@@196)) (= $generated@@195 $generated@@38))))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@184 $generated@@194) $generated@@195))
)) (forall (($generated@@197 T@U) ) (!  (=> (and ($generated@@28 $generated@@29 $generated@@197 $generated@@35) (and (or (not (= $generated@@197 $generated@@31)) (not true)) (and ($generated@@82 $generated@@178 ($generated@@77 $generated@@29 $generated@@197)) (<= ($generated@@72 2) ($generated@@16 ($generated@@41 $generated@@11 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@180 $generated@@197) $generated@@38))))))) (= ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@184 $generated@@197) $generated@@38) ($generated@@77 $generated@@11 ($generated@@15 (+ ($generated@@16 ($generated@@41 $generated@@11 ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@180 $generated@@197) $generated@@38))) 1)))))
 :pattern ( ($generated@@42 $generated@@43 $generated@@44 ($generated@@42 $generated@@29 ($generated@@45 $generated@@43 $generated@@44) $generated@@184 $generated@@197) $generated@@38))
)))) (and (=> (= (ControlFlow 0 4) 2) $generated@@192) (=> (= (ControlFlow 0 4) 3) $generated@@191)))))
(let (($generated@@198  (=> (= $generated@@181 ($generated@@142 $generated@@31 $generated@@180 $generated@@2 $generated@@178)) (and (=> (= (ControlFlow 0 14) 13) $generated@@190) (=> (= (ControlFlow 0 14) 4) $generated@@193)))))
(let (($generated@@199  (=> (and (and (and ($generated@@87 $generated@@180) ($generated@@185 $generated@@180)) (and (or (not (= $generated@@183 $generated@@31)) (not true)) (and ($generated@@28 $generated@@29 $generated@@183 $generated@@35) ($generated@@34 $generated@@29 $generated@@183 $generated@@35 $generated@@180)))) (and (and ($generated@@28 $generated@@80 $generated@@178 ($generated@@81 $generated@@35)) ($generated@@34 $generated@@80 $generated@@178 ($generated@@81 $generated@@35) $generated@@180)) (and (= 1 $generated@@186) (= (ControlFlow 0 15) 14)))) $generated@@198)))
$generated@@199))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)