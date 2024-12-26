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
(declare-fun $generated@@13 (T@T) Int)
(declare-fun $generated@@14 () T@T)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 () T@T)
(declare-fun $generated@@17 (Bool) T@U)
(declare-fun $generated@@18 (T@U) Bool)
(declare-fun $generated@@19 (Int) T@U)
(declare-fun $generated@@20 (T@U) Int)
(declare-fun $generated@@21 (Real) T@U)
(declare-fun $generated@@22 (T@U) Real)
(declare-fun $generated@@29 (T@U) Int)
(declare-fun $generated@@30 (T@U) T@U)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@33 () T@T)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@39 (T@T T@U) T@U)
(declare-fun $generated@@40 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@41 () T@T)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 (T@T T@T) T@T)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@45 (T@U) Bool)
(declare-fun $generated@@46 () T@U)
(declare-fun $generated@@47 (T@T T@U T@U) Bool)
(declare-fun $generated@@48 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@49 (T@T) T@T)
(declare-fun $generated@@50 (T@T) T@T)
(declare-fun $generated@@71 () T@U)
(declare-fun $generated@@75 () T@U)
(declare-fun $generated@@76 () T@U)
(declare-fun $generated@@82 (T@U T@U) T@U)
(declare-fun $generated@@83 (T@U) Bool)
(declare-fun $generated@@86 (T@U T@U) Bool)
(declare-fun $generated@@87 (T@U T@U) Bool)
(declare-fun $generated@@91 (T@T T@U) T@U)
(declare-fun $generated@@94 () T@T)
(declare-fun $generated@@95 (T@U) T@U)
(declare-fun $generated@@96 (T@U T@U) Bool)
(declare-fun $generated@@100 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@101 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@102 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@137 (T@U T@U T@U) Bool)
(declare-fun $generated@@142 (T@U) T@U)
(declare-fun $generated@@148 () Int)
(declare-fun $generated@@149 (T@U T@U) T@U)
(declare-fun $generated@@152 (T@U T@U T@U) Bool)
(declare-fun $generated@@153 (T@U T@U T@U) Bool)
(declare-fun $generated@@157 (T@U) T@U)
(declare-fun $generated@@175 (T@U) T@U)
(declare-fun $generated@@178 (T@U) T@U)
(declare-fun $generated@@180 (T@U) T@U)
(declare-fun $generated@@184 (T@U T@U) Bool)
(declare-fun $generated@@185 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@13 $generated@@14) 0) (= ($generated@@13 $generated@@15) 1)) (= ($generated@@13 $generated@@16) 2)) (forall (($generated@@23 Bool) ) (! (= ($generated@@18 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))) (forall (($generated@@24 T@U) ) (! (= ($generated@@17 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 Int) ) (! (= ($generated@@20 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 T@U) ) (! (= ($generated@@19 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 Real) ) (! (= ($generated@@22 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 T@U) ) (! (= ($generated@@21 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12)
)
(assert (= ($generated@@29 $generated@@2) 0))
(assert (= ($generated@@30 $generated) $generated@@0))
(assert (= ($generated@@31 $generated@@2) $generated@@3))
(assert (= ($generated@@13 $generated@@33) 3))
(assert (forall (($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@32 $generated@@33 $generated@@37 ($generated@@34 $generated@@36) $generated@@38) ($generated@@32 $generated@@33 $generated@@37 ($generated@@35 $generated@@36) $generated@@38))
 :pattern ( ($generated@@32 $generated@@33 $generated@@37 ($generated@@34 $generated@@36) $generated@@38))
 :pattern ( ($generated@@32 $generated@@33 $generated@@37 ($generated@@35 $generated@@36) $generated@@38))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@51 T@T) ($generated@@52 T@T) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@40 $generated@@51 $generated@@52 ($generated@@48 $generated@@51 $generated@@52 $generated@@54 $generated@@55 $generated@@53) $generated@@55) $generated@@53)
 :weight 0
)) (forall (($generated@@56 T@T) ($generated@@57 T@T) ($generated@@58 T@U) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ) (!  (or (= $generated@@60 $generated@@61) (= ($generated@@40 $generated@@56 $generated@@57 ($generated@@48 $generated@@56 $generated@@57 $generated@@59 $generated@@60 $generated@@58) $generated@@61) ($generated@@40 $generated@@56 $generated@@57 $generated@@59 $generated@@61)))
 :weight 0
))) (= ($generated@@13 $generated@@41) 4)) (= ($generated@@13 $generated@@42) 5)) (forall (($generated@@62 T@T) ($generated@@63 T@T) ) (= ($generated@@13 ($generated@@43 $generated@@62 $generated@@63)) 6))) (forall (($generated@@64 T@T) ($generated@@65 T@T) ) (! (= ($generated@@49 ($generated@@43 $generated@@64 $generated@@65)) $generated@@64)
 :pattern ( ($generated@@43 $generated@@64 $generated@@65))
))) (forall (($generated@@66 T@T) ($generated@@67 T@T) ) (! (= ($generated@@50 ($generated@@43 $generated@@66 $generated@@67)) $generated@@67)
 :pattern ( ($generated@@43 $generated@@66 $generated@@67))
))))
(assert (forall (($generated@@68 T@U) ($generated@@69 T@U) ($generated@@70 T@U) ) (!  (=> (and ($generated@@45 $generated@@69) (and (or (not (= $generated@@70 $generated@@46)) (not true)) ($generated@@47 $generated@@33 $generated@@70 ($generated@@35 $generated@@68)))) ($generated@@47 $generated@@14 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@69 $generated@@70) $generated@@44)) $generated))
 :pattern ( ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@69 $generated@@70) $generated@@44)) ($generated@@35 $generated@@68))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ) (!  (=> (and ($generated@@45 $generated@@73) (and (or (not (= $generated@@74 $generated@@46)) (not true)) ($generated@@47 $generated@@33 $generated@@74 ($generated@@35 $generated@@72)))) ($generated@@47 $generated@@14 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@73 $generated@@74) $generated@@71)) $generated))
 :pattern ( ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@73 $generated@@74) $generated@@71)) ($generated@@35 $generated@@72))
)))
(assert (forall (($generated@@77 T@U) ($generated@@78 T@U) ) (! (= ($generated@@32 $generated@@33 $generated@@77 $generated@@75 $generated@@78) ($generated@@32 $generated@@33 $generated@@77 $generated@@76 $generated@@78))
 :pattern ( ($generated@@32 $generated@@33 $generated@@77 $generated@@75 $generated@@78))
 :pattern ( ($generated@@32 $generated@@33 $generated@@77 $generated@@76 $generated@@78))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@32 $generated@@33 $generated@@80 ($generated@@35 $generated@@79) $generated@@81)  (or (= $generated@@80 $generated@@46) ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@81 $generated@@80) $generated@@2)))))
 :pattern ( ($generated@@32 $generated@@33 $generated@@80 ($generated@@35 $generated@@79) $generated@@81))
)))
(assert (= ($generated@@29 $generated@@44) 0))
(assert (= ($generated@@82 $generated@@6 $generated@@11) $generated@@44))
(assert  (not ($generated@@83 $generated@@44)))
(assert (= ($generated@@29 $generated@@71) 0))
(assert (= ($generated@@82 $generated@@6 $generated@@12) $generated@@71))
(assert  (not ($generated@@83 $generated@@71)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@32 $generated@@33 $generated@@84 $generated@@76 $generated@@85)  (or (= $generated@@84 $generated@@46) ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@85 $generated@@84) $generated@@2)))))
 :pattern ( ($generated@@32 $generated@@33 $generated@@84 $generated@@76 $generated@@85))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ) (! (= ($generated@@86 $generated@@88 $generated@@89) (forall (($generated@@90 T@U) ) (!  (=> ($generated@@87 $generated@@88 $generated@@90) ($generated@@87 $generated@@89 $generated@@90))
 :pattern ( ($generated@@87 $generated@@88 $generated@@90))
 :pattern ( ($generated@@87 $generated@@89 $generated@@90))
)))
 :pattern ( ($generated@@86 $generated@@88 $generated@@89))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@T) ) (! (= ($generated@@91 $generated@@93 ($generated@@39 $generated@@93 $generated@@92)) $generated@@92)
 :pattern ( ($generated@@39 $generated@@93 $generated@@92))
)))
(assert (= ($generated@@13 $generated@@94) 7))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@47 $generated@@94 $generated@@97 ($generated@@95 $generated@@98)) (forall (($generated@@99 T@U) ) (!  (=> ($generated@@87 $generated@@97 $generated@@99) ($generated@@96 $generated@@99 $generated@@98))
 :pattern ( ($generated@@87 $generated@@97 $generated@@99))
)))
 :pattern ( ($generated@@47 $generated@@94 $generated@@97 ($generated@@95 $generated@@98)))
)))
(assert  (and (forall (($generated@@103 T@T) ($generated@@104 T@T) ($generated@@105 T@T) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@100 $generated@@103 $generated@@104 $generated@@105 ($generated@@102 $generated@@103 $generated@@104 $generated@@105 $generated@@107 $generated@@108 $generated@@109 $generated@@106) $generated@@108 $generated@@109) $generated@@106)
 :weight 0
)) (and (forall (($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (!  (or (= $generated@@115 $generated@@117) (= ($generated@@100 $generated@@110 $generated@@111 $generated@@112 ($generated@@102 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@116 $generated@@113) $generated@@117 $generated@@118) ($generated@@100 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@117 $generated@@118)))
 :weight 0
)) (forall (($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@T) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (!  (or (= $generated@@125 $generated@@127) (= ($generated@@100 $generated@@119 $generated@@120 $generated@@121 ($generated@@102 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@124 $generated@@125 $generated@@122) $generated@@126 $generated@@127) ($generated@@100 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@126 $generated@@127)))
 :weight 0
)))))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (! (= ($generated@@18 ($generated@@100 $generated@@33 $generated@@41 $generated@@14 ($generated@@101 $generated@@128 $generated@@129 $generated@@130 $generated@@131 $generated@@132) $generated@@133 $generated@@134))  (=> (and (or (not (= $generated@@133 $generated@@128)) (not true)) ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@129 $generated@@133) $generated@@130)))) (or (= $generated@@133 $generated@@131) ($generated@@87 $generated@@132 ($generated@@91 $generated@@33 $generated@@133)))))
 :pattern ( ($generated@@100 $generated@@33 $generated@@41 $generated@@14 ($generated@@101 $generated@@128 $generated@@129 $generated@@130 $generated@@131 $generated@@132) $generated@@133 $generated@@134))
)))
(assert ($generated@@83 $generated@@2))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ) (! (= ($generated@@47 $generated@@33 $generated@@136 ($generated@@34 $generated@@135))  (and ($generated@@47 $generated@@33 $generated@@136 ($generated@@35 $generated@@135)) (or (not (= $generated@@136 $generated@@46)) (not true))))
 :pattern ( ($generated@@47 $generated@@33 $generated@@136 ($generated@@34 $generated@@135)))
 :pattern ( ($generated@@47 $generated@@33 $generated@@136 ($generated@@35 $generated@@135)))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ($generated@@141 T@T) ) (! (= ($generated@@137 ($generated@@91 $generated@@141 $generated@@138) $generated@@139 $generated@@140) ($generated@@32 $generated@@141 $generated@@138 $generated@@139 $generated@@140))
 :pattern ( ($generated@@137 ($generated@@91 $generated@@141 $generated@@138) $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@143 T@U) ) (!  (and (= ($generated@@30 ($generated@@35 $generated@@143)) $generated@@7) (= ($generated@@142 ($generated@@35 $generated@@143)) $generated@@10))
 :pattern ( ($generated@@35 $generated@@143))
)))
(assert (forall (($generated@@144 T@U) ) (!  (and (= ($generated@@30 ($generated@@34 $generated@@144)) $generated@@8) (= ($generated@@142 ($generated@@34 $generated@@144)) $generated@@10))
 :pattern ( ($generated@@34 $generated@@144))
)))
(assert (forall (($generated@@145 T@U) ) (!  (=> ($generated@@96 $generated@@145 $generated@@76) (and (= ($generated@@91 $generated@@33 ($generated@@39 $generated@@33 $generated@@145)) $generated@@145) ($generated@@47 $generated@@33 ($generated@@39 $generated@@33 $generated@@145) $generated@@76)))
 :pattern ( ($generated@@96 $generated@@145 $generated@@76))
)))
(assert (forall (($generated@@146 T@U) ) (!  (=> ($generated@@96 $generated@@146 $generated@@75) (and (= ($generated@@91 $generated@@33 ($generated@@39 $generated@@33 $generated@@146)) $generated@@146) ($generated@@47 $generated@@33 ($generated@@39 $generated@@33 $generated@@146) $generated@@75)))
 :pattern ( ($generated@@96 $generated@@146 $generated@@75))
)))
(assert (forall (($generated@@147 T@U) ) (! (= ($generated@@47 $generated@@33 $generated@@147 $generated@@75)  (and ($generated@@47 $generated@@33 $generated@@147 $generated@@76) (or (not (= $generated@@147 $generated@@46)) (not true))))
 :pattern ( ($generated@@47 $generated@@33 $generated@@147 $generated@@75))
 :pattern ( ($generated@@47 $generated@@33 $generated@@147 $generated@@76))
)))
(assert  (=> (< 0 $generated@@148) (forall (($generated@@150 T@U) ($generated@@151 T@U) ) (!  (=> (and (or (not (= $generated@@151 $generated@@46)) (not true)) ($generated@@47 $generated@@33 $generated@@151 ($generated@@35 $generated@@150))) ($generated@@47 $generated@@94 ($generated@@149 $generated@@150 $generated@@151) ($generated@@95 $generated@@75)))
 :pattern ( ($generated@@149 $generated@@150 $generated@@151))
))))
(assert  (=> (<= 2 $generated@@148) (forall (($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (!  (=> (or ($generated@@153 $generated@@154 $generated@@155 $generated@@156) (and (< 2 $generated@@148) (and (and ($generated@@45 $generated@@155) (and (or (not (= $generated@@156 $generated@@46)) (not true)) (and ($generated@@47 $generated@@33 $generated@@156 ($generated@@34 $generated@@154)) ($generated@@32 $generated@@33 $generated@@156 ($generated@@34 $generated@@154) $generated@@155)))) (or (or ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@155 $generated@@156) $generated@@44))) ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@155 $generated@@156) $generated@@71)))) (and (not ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@155 $generated@@156) $generated@@44)))) (not ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@155 $generated@@156) $generated@@71))))))))) (=> ($generated@@152 $generated@@154 $generated@@155 $generated@@156) ($generated@@87 ($generated@@149 $generated@@154 $generated@@156) ($generated@@91 $generated@@33 $generated@@156))))
 :pattern ( ($generated@@152 $generated@@154 $generated@@155 $generated@@156))
))))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ) (!  (and (= ($generated@@157 ($generated@@82 $generated@@158 $generated@@159)) $generated@@158) (= ($generated@@31 ($generated@@82 $generated@@158 $generated@@159)) $generated@@159))
 :pattern ( ($generated@@82 $generated@@158 $generated@@159))
)))
(assert (forall (($generated@@160 T@U) ) (!  (=> ($generated@@96 $generated@@160 $generated) (and (= ($generated@@91 $generated@@14 ($generated@@39 $generated@@14 $generated@@160)) $generated@@160) ($generated@@47 $generated@@14 ($generated@@39 $generated@@14 $generated@@160) $generated)))
 :pattern ( ($generated@@96 $generated@@160 $generated))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@T) ) (! (= ($generated@@96 ($generated@@91 $generated@@163 $generated@@161) $generated@@162) ($generated@@47 $generated@@163 $generated@@161 $generated@@162))
 :pattern ( ($generated@@96 ($generated@@91 $generated@@163 $generated@@161) $generated@@162))
)))
(assert (forall (($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> (and (and ($generated@@45 $generated@@165) (and (or (not (= $generated@@166 $generated@@46)) (not true)) ($generated@@47 $generated@@33 $generated@@166 ($generated@@35 $generated@@164)))) ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@165 $generated@@166) $generated@@2)))) ($generated@@32 $generated@@14 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@165 $generated@@166) $generated@@44)) $generated $generated@@165))
 :pattern ( ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@165 $generated@@166) $generated@@44)) ($generated@@35 $generated@@164))
)))
(assert (forall (($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ) (!  (=> (and (and ($generated@@45 $generated@@168) (and (or (not (= $generated@@169 $generated@@46)) (not true)) ($generated@@47 $generated@@33 $generated@@169 ($generated@@35 $generated@@167)))) ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@168 $generated@@169) $generated@@2)))) ($generated@@32 $generated@@14 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@168 $generated@@169) $generated@@71)) $generated $generated@@168))
 :pattern ( ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@168 $generated@@169) $generated@@71)) ($generated@@35 $generated@@167))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (! (= ($generated@@32 $generated@@94 $generated@@170 ($generated@@95 $generated@@171) $generated@@172) (forall (($generated@@173 T@U) ) (!  (=> ($generated@@87 $generated@@170 $generated@@173) ($generated@@137 $generated@@173 $generated@@171 $generated@@172))
 :pattern ( ($generated@@87 $generated@@170 $generated@@173))
)))
 :pattern ( ($generated@@32 $generated@@94 $generated@@170 ($generated@@95 $generated@@171) $generated@@172))
)))
(assert (forall (($generated@@174 T@U) ) (! ($generated@@47 $generated@@33 $generated@@174 $generated@@76)
 :pattern ( ($generated@@47 $generated@@33 $generated@@174 $generated@@76))
)))
(assert (forall (($generated@@176 T@U) ) (! (= ($generated@@175 ($generated@@95 $generated@@176)) $generated@@176)
 :pattern ( ($generated@@95 $generated@@176))
)))
(assert (forall (($generated@@177 T@U) ) (! (= ($generated@@30 ($generated@@95 $generated@@177)) $generated@@1)
 :pattern ( ($generated@@95 $generated@@177))
)))
(assert (forall (($generated@@179 T@U) ) (! (= ($generated@@178 ($generated@@35 $generated@@179)) $generated@@179)
 :pattern ( ($generated@@35 $generated@@179))
)))
(assert (forall (($generated@@181 T@U) ) (! (= ($generated@@180 ($generated@@34 $generated@@181)) $generated@@181)
 :pattern ( ($generated@@34 $generated@@181))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@T) ) (! (= ($generated@@39 $generated@@183 ($generated@@91 $generated@@183 $generated@@182)) $generated@@182)
 :pattern ( ($generated@@91 $generated@@183 $generated@@182))
)))
(assert (forall (($generated@@186 T@U) ($generated@@187 T@U) ) (! (= ($generated@@47 $generated@@33 $generated@@187 ($generated@@35 $generated@@186))  (or (= $generated@@187 $generated@@46) ($generated@@184 ($generated@@185 $generated@@187) $generated@@186)))
 :pattern ( ($generated@@47 $generated@@33 $generated@@187 ($generated@@35 $generated@@186)))
)))
(assert (forall (($generated@@188 T@U) ($generated@@189 T@U) ) (!  (=> ($generated@@96 $generated@@188 ($generated@@95 $generated@@189)) (and (= ($generated@@91 $generated@@94 ($generated@@39 $generated@@94 $generated@@188)) $generated@@188) ($generated@@47 $generated@@94 ($generated@@39 $generated@@94 $generated@@188) ($generated@@95 $generated@@189))))
 :pattern ( ($generated@@96 $generated@@188 ($generated@@95 $generated@@189)))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ) (!  (=> ($generated@@96 $generated@@191 ($generated@@35 $generated@@190)) (and (= ($generated@@91 $generated@@33 ($generated@@39 $generated@@33 $generated@@191)) $generated@@191) ($generated@@47 $generated@@33 ($generated@@39 $generated@@33 $generated@@191) ($generated@@35 $generated@@190))))
 :pattern ( ($generated@@96 $generated@@191 ($generated@@35 $generated@@190)))
)))
(assert (forall (($generated@@192 T@U) ($generated@@193 T@U) ) (!  (=> ($generated@@96 $generated@@193 ($generated@@34 $generated@@192)) (and (= ($generated@@91 $generated@@33 ($generated@@39 $generated@@33 $generated@@193)) $generated@@193) ($generated@@47 $generated@@33 ($generated@@39 $generated@@33 $generated@@193) ($generated@@34 $generated@@192))))
 :pattern ( ($generated@@96 $generated@@193 ($generated@@34 $generated@@192)))
)))
(assert (= ($generated@@30 $generated@@76) $generated@@4))
(assert (= ($generated@@142 $generated@@76) $generated@@9))
(assert (= ($generated@@30 $generated@@75) $generated@@5))
(assert (= ($generated@@142 $generated@@75) $generated@@9))
(assert  (=> (< 0 $generated@@148) (forall (($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ) (!  (=> (and (and ($generated@@45 $generated@@195) (and (or (not (= $generated@@196 $generated@@46)) (not true)) ($generated@@47 $generated@@33 $generated@@196 ($generated@@35 $generated@@194)))) ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@195 $generated@@196) $generated@@2)))) ($generated@@32 $generated@@94 ($generated@@149 $generated@@194 $generated@@196) ($generated@@95 $generated@@75) $generated@@195))
 :pattern ( ($generated@@149 $generated@@194 $generated@@196) ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@195 $generated@@196) $generated@@2)))
))))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ) (! ($generated@@32 $generated@@14 $generated@@198 $generated $generated@@197)
 :pattern ( ($generated@@32 $generated@@14 $generated@@198 $generated $generated@@197))
)))
(assert (forall (($generated@@199 T@U) ) (! ($generated@@47 $generated@@14 $generated@@199 $generated)
 :pattern ( ($generated@@47 $generated@@14 $generated@@199 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@200 () T@U)
(declare-fun $generated@@201 () T@U)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () Bool)
(declare-fun $generated@@204 () Bool)
(declare-fun $generated@@205 () Bool)
(declare-fun $generated@@206 () Bool)
(declare-fun $generated@@207 () Bool)
(declare-fun $generated@@208 () Bool)
(declare-fun $generated@@209 () Bool)
(declare-fun $generated@@210 () T@U)
(declare-fun $generated@@211 () Bool)
(declare-fun $generated@@212 () Bool)
(declare-fun $generated@@213 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 19) (let (($generated@@214 true))
(let (($generated@@215  (=> (and (=> ($generated@@152 $generated@@200 $generated@@201 $generated@@202) ($generated@@87 ($generated@@149 $generated@@200 $generated@@202) ($generated@@91 $generated@@33 $generated@@202))) (= (ControlFlow 0 6) 2)) $generated@@214)))
(let (($generated@@216  (=> ($generated@@137 ($generated@@91 $generated@@33 $generated@@202) ($generated@@35 $generated@@200) $generated@@201) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (or ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@44))) ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@71)))) (and (not ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@44)))) (not ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@71))))))) (=> (or (or ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@44))) ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@71)))) (and (not ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@44)))) (not ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@71)))))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (= $generated@@202 $generated@@202) (and ($generated@@86 ($generated@@149 $generated@@200 $generated@@202) ($generated@@149 $generated@@200 $generated@@202)) (not ($generated@@86 ($generated@@149 $generated@@200 $generated@@202) ($generated@@149 $generated@@200 $generated@@202)))))) (=> (or (= $generated@@202 $generated@@202) (and ($generated@@86 ($generated@@149 $generated@@200 $generated@@202) ($generated@@149 $generated@@200 $generated@@202)) (not ($generated@@86 ($generated@@149 $generated@@200 $generated@@202) ($generated@@149 $generated@@200 $generated@@202))))) (=> (and (and (or (= $generated@@202 $generated@@202) ($generated@@153 $generated@@200 $generated@@201 $generated@@202)) ($generated@@152 $generated@@200 $generated@@201 $generated@@202)) (and ($generated@@87 ($generated@@149 $generated@@200 $generated@@202) ($generated@@91 $generated@@33 $generated@@202)) (= (ControlFlow 0 3) 2))) $generated@@214))))))))
(let (($generated@@217 true))
(let (($generated@@218  (and (=> (= (ControlFlow 0 7) (- 0 11)) $generated@@203) (=> $generated@@203 (and (=> (= (ControlFlow 0 7) (- 0 10)) $generated@@204) (=> $generated@@204 (and (=> (= (ControlFlow 0 7) (- 0 9)) $generated@@205) (=> $generated@@205 (and (=> (= (ControlFlow 0 7) (- 0 8)) $generated@@206) (=> $generated@@206 (and (and (=> (= (ControlFlow 0 7) 1) $generated@@217) (=> (= (ControlFlow 0 7) 3) $generated@@216)) (=> (= (ControlFlow 0 7) 6) $generated@@215))))))))))))
(let (($generated@@219  (=> (and (and (and (not ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@44)))) (not ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@71))))) (= $generated@@204 true)) (and (and (= $generated@@205 $generated@@207) (= $generated@@206 $generated@@208)) (and (= $generated@@203 true) (= (ControlFlow 0 14) 7)))) $generated@@218)))
(let (($generated@@220  (=> ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@44))) (=> (and (= $generated@@208 true) (= (ControlFlow 0 16) 14)) $generated@@219))))
(let (($generated@@221  (=> (and (and (not ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@44)))) (= $generated@@209 ($generated@@18 ($generated@@100 $generated@@33 $generated@@41 $generated@@14 $generated@@210 $generated@@202 $generated@@71)))) (and (= $generated@@208 $generated@@209) (= (ControlFlow 0 15) 14))) $generated@@219)))
(let (($generated@@222  (=> (and (not (or ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@44))) ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@71))))) (= $generated@@207 ($generated@@18 ($generated@@100 $generated@@33 $generated@@41 $generated@@14 $generated@@210 $generated@@202 $generated@@44)))) (and (=> (= (ControlFlow 0 17) 15) $generated@@221) (=> (= (ControlFlow 0 17) 16) $generated@@220)))))
(let (($generated@@223  (=> (and (and (and (not ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@44)))) (= $generated@@211 ($generated@@18 ($generated@@100 $generated@@33 $generated@@41 $generated@@14 $generated@@210 $generated@@202 $generated@@71)))) (and ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@71))) (= $generated@@204 $generated@@211))) (and (and (= $generated@@205 true) (= $generated@@206 true)) (and (= $generated@@203 true) (= (ControlFlow 0 13) 7)))) $generated@@218)))
(let (($generated@@224  (=> (= $generated@@212 ($generated@@18 ($generated@@100 $generated@@33 $generated@@41 $generated@@14 $generated@@210 $generated@@202 $generated@@44))) (=> (and ($generated@@18 ($generated@@39 $generated@@14 ($generated@@40 $generated@@41 $generated@@42 ($generated@@40 $generated@@33 ($generated@@43 $generated@@41 $generated@@42) $generated@@201 $generated@@202) $generated@@44))) (= $generated@@204 true)) (=> (and (and (= $generated@@205 true) (= $generated@@206 true)) (and (= $generated@@203 $generated@@212) (= (ControlFlow 0 12) 7))) $generated@@218)))))
(let (($generated@@225  (=> (= $generated@@210 ($generated@@101 $generated@@46 $generated@@201 $generated@@2 $generated@@202 ($generated@@149 $generated@@200 $generated@@202))) (and (and (=> (= (ControlFlow 0 18) 17) $generated@@222) (=> (= (ControlFlow 0 18) 12) $generated@@224)) (=> (= (ControlFlow 0 18) 13) $generated@@223)))))
(let (($generated@@226  (=> (and ($generated@@45 $generated@@201) ($generated@@213 $generated@@201)) (=> (and (and (or (not (= $generated@@202 $generated@@46)) (not true)) (and ($generated@@47 $generated@@33 $generated@@202 ($generated@@34 $generated@@200)) ($generated@@32 $generated@@33 $generated@@202 ($generated@@34 $generated@@200) $generated@@201))) (and (= 2 $generated@@148) (= (ControlFlow 0 19) 18))) $generated@@225))))
$generated@@226))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)