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
(declare-fun $generated@@29 (T@T T@U T@U) Bool)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@32 () T@U)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@35 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@36 () T@U)
(declare-fun $generated@@39 () T@U)
(declare-fun $generated@@40 (T@U T@U) T@U)
(declare-fun $generated@@41 (T@U) Bool)
(declare-fun $generated@@42 () T@U)
(declare-fun $generated@@43 () T@U)
(declare-fun $generated@@44 (T@T T@U) T@U)
(declare-fun $generated@@45 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@47 () T@T)
(declare-fun $generated@@48 (T@T T@T) T@T)
(declare-fun $generated@@49 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@50 (T@T) T@T)
(declare-fun $generated@@51 (T@T) T@T)
(declare-fun $generated@@71 (T@U T@U) Bool)
(declare-fun $generated@@75 (Int) Int)
(declare-fun $generated@@77 (T@T T@U) T@U)
(declare-fun $generated@@80 (T@T T@U) T@U)
(declare-fun $generated@@83 (T@U) Bool)
(declare-fun $generated@@95 (T@U T@U) Bool)
(declare-fun $generated@@100 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@101 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@102 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@138 (T@U) T@U)
(declare-fun $generated@@153 (T@U) T@U)
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
(assert (= ($generated@@26 $generated@@1) 0))
(assert (= ($generated@@27 $generated) $generated@@0))
(assert (= ($generated@@28 $generated@@1) $generated@@2))
(assert (= ($generated@@10 $generated@@30) 3))
(assert (forall (($generated@@34 T@U) ) (! (= ($generated@@29 $generated@@30 $generated@@34 $generated@@31)  (or (= $generated@@34 $generated@@32) (= ($generated@@33 $generated@@34) $generated@@31)))
 :pattern ( ($generated@@29 $generated@@30 $generated@@34 $generated@@31))
)))
(assert (forall (($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@35 $generated@@30 $generated@@37 $generated@@36 $generated@@38) ($generated@@35 $generated@@30 $generated@@37 $generated@@31 $generated@@38))
 :pattern ( ($generated@@35 $generated@@30 $generated@@37 $generated@@36 $generated@@38))
 :pattern ( ($generated@@35 $generated@@30 $generated@@37 $generated@@31 $generated@@38))
)))
(assert (= ($generated@@26 $generated@@39) 0))
(assert (= ($generated@@40 $generated@@3 $generated@@9) $generated@@39))
(assert ($generated@@41 $generated@@39))
(assert (= ($generated@@26 $generated@@42) 0))
(assert (= ($generated@@40 $generated@@3 $generated@@7) $generated@@42))
(assert  (not ($generated@@41 $generated@@42)))
(assert (= ($generated@@26 $generated@@43) 0))
(assert (= ($generated@@40 $generated@@3 $generated@@8) $generated@@43))
(assert  (not ($generated@@41 $generated@@43)))
(assert  (and (and (and (and (and (and (forall (($generated@@52 T@T) ($generated@@53 T@T) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ) (! (= ($generated@@45 $generated@@52 $generated@@53 ($generated@@49 $generated@@52 $generated@@53 $generated@@55 $generated@@56 $generated@@54) $generated@@56) $generated@@54)
 :weight 0
)) (forall (($generated@@57 T@T) ($generated@@58 T@T) ($generated@@59 T@U) ($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ) (!  (or (= $generated@@61 $generated@@62) (= ($generated@@45 $generated@@57 $generated@@58 ($generated@@49 $generated@@57 $generated@@58 $generated@@60 $generated@@61 $generated@@59) $generated@@62) ($generated@@45 $generated@@57 $generated@@58 $generated@@60 $generated@@62)))
 :weight 0
))) (= ($generated@@10 $generated@@46) 4)) (= ($generated@@10 $generated@@47) 5)) (forall (($generated@@63 T@T) ($generated@@64 T@T) ) (= ($generated@@10 ($generated@@48 $generated@@63 $generated@@64)) 6))) (forall (($generated@@65 T@T) ($generated@@66 T@T) ) (! (= ($generated@@50 ($generated@@48 $generated@@65 $generated@@66)) $generated@@65)
 :pattern ( ($generated@@48 $generated@@65 $generated@@66))
))) (forall (($generated@@67 T@T) ($generated@@68 T@T) ) (! (= ($generated@@51 ($generated@@48 $generated@@67 $generated@@68)) $generated@@68)
 :pattern ( ($generated@@48 $generated@@67 $generated@@68))
))))
(assert (forall (($generated@@69 T@U) ($generated@@70 T@U) ) (! (= ($generated@@35 $generated@@30 $generated@@69 $generated@@31 $generated@@70)  (or (= $generated@@69 $generated@@32) ($generated@@15 ($generated@@44 $generated@@11 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@70 $generated@@69) $generated@@1)))))
 :pattern ( ($generated@@35 $generated@@30 $generated@@69 $generated@@31 $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (!  (=> ($generated@@71 $generated@@72 $generated@@73) (forall (($generated@@74 T@U) ) (!  (=> ($generated@@15 ($generated@@44 $generated@@11 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@72 $generated@@74) $generated@@1))) ($generated@@15 ($generated@@44 $generated@@11 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@73 $generated@@74) $generated@@1))))
 :pattern ( ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@73 $generated@@74) $generated@@1))
)))
 :pattern ( ($generated@@71 $generated@@72 $generated@@73))
)))
(assert (forall (($generated@@76 Int) ) (! (= ($generated@@75 $generated@@76) $generated@@76)
 :pattern ( ($generated@@75 $generated@@76))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@T) ) (! (= ($generated@@77 $generated@@79 $generated@@78) $generated@@78)
 :pattern ( ($generated@@77 $generated@@79 $generated@@78))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@T) ) (! (= ($generated@@80 $generated@@82 ($generated@@44 $generated@@82 $generated@@81)) $generated@@81)
 :pattern ( ($generated@@44 $generated@@82 $generated@@81))
)))
(assert ($generated@@41 $generated@@1))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (!  (=> (and (and ($generated@@83 $generated@@84) (and (or (not (= $generated@@85 $generated@@32)) (not true)) (= ($generated@@33 $generated@@85) $generated@@31))) ($generated@@15 ($generated@@44 $generated@@11 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@84 $generated@@85) $generated@@1)))) ($generated@@35 $generated@@12 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@84 $generated@@85) $generated@@42)) $generated $generated@@84))
 :pattern ( ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@84 $generated@@85) $generated@@42)))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ) (!  (=> (and (and ($generated@@83 $generated@@86) (and (or (not (= $generated@@87 $generated@@32)) (not true)) (= ($generated@@33 $generated@@87) $generated@@31))) ($generated@@15 ($generated@@44 $generated@@11 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@86 $generated@@87) $generated@@1)))) ($generated@@35 $generated@@12 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@86 $generated@@87) $generated@@43)) $generated $generated@@86))
 :pattern ( ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@86 $generated@@87) $generated@@43)))
)))
(assert (forall (($generated@@88 T@U) ($generated@@89 T@U) ) (!  (=> (and (and ($generated@@83 $generated@@88) (and (or (not (= $generated@@89 $generated@@32)) (not true)) (= ($generated@@33 $generated@@89) $generated@@31))) ($generated@@15 ($generated@@44 $generated@@11 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@88 $generated@@89) $generated@@1)))) ($generated@@35 $generated@@12 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@88 $generated@@89) $generated@@39)) $generated $generated@@88))
 :pattern ( ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@88 $generated@@89) $generated@@39)))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@U) ($generated@@94 T@T) ) (!  (=> ($generated@@71 $generated@@90 $generated@@91) (=> ($generated@@35 $generated@@94 $generated@@92 $generated@@93 $generated@@90) ($generated@@35 $generated@@94 $generated@@92 $generated@@93 $generated@@91)))
 :pattern ( ($generated@@71 $generated@@90 $generated@@91) ($generated@@35 $generated@@94 $generated@@92 $generated@@93 $generated@@90))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ) (!  (=> ($generated@@95 $generated@@96 $generated@@97) (and ($generated@@71 $generated@@96 $generated@@97) (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (!  (=> (not ($generated@@41 $generated@@99)) (= ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@96 $generated@@98) $generated@@99) ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@97 $generated@@98) $generated@@99)))
 :pattern ( ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@97 $generated@@98) $generated@@99))
))))
 :pattern ( ($generated@@95 $generated@@96 $generated@@97))
)))
(assert  (and (forall (($generated@@103 T@T) ($generated@@104 T@T) ($generated@@105 T@T) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@100 $generated@@103 $generated@@104 $generated@@105 ($generated@@102 $generated@@103 $generated@@104 $generated@@105 $generated@@107 $generated@@108 $generated@@109 $generated@@106) $generated@@108 $generated@@109) $generated@@106)
 :weight 0
)) (and (forall (($generated@@110 T@T) ($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (!  (or (= $generated@@115 $generated@@117) (= ($generated@@100 $generated@@110 $generated@@111 $generated@@112 ($generated@@102 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@116 $generated@@113) $generated@@117 $generated@@118) ($generated@@100 $generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@117 $generated@@118)))
 :weight 0
)) (forall (($generated@@119 T@T) ($generated@@120 T@T) ($generated@@121 T@T) ($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ) (!  (or (= $generated@@125 $generated@@127) (= ($generated@@100 $generated@@119 $generated@@120 $generated@@121 ($generated@@102 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@124 $generated@@125 $generated@@122) $generated@@126 $generated@@127) ($generated@@100 $generated@@119 $generated@@120 $generated@@121 $generated@@123 $generated@@126 $generated@@127)))
 :weight 0
)))))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@15 ($generated@@100 $generated@@30 $generated@@46 $generated@@11 ($generated@@101 $generated@@128 $generated@@129 $generated@@130 $generated@@131) $generated@@132 $generated@@133))  (=> (and (or (not (= $generated@@132 $generated@@128)) (not true)) ($generated@@15 ($generated@@44 $generated@@11 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@129 $generated@@132) $generated@@130)))) (= $generated@@132 $generated@@131)))
 :pattern ( ($generated@@100 $generated@@30 $generated@@46 $generated@@11 ($generated@@101 $generated@@128 $generated@@129 $generated@@130 $generated@@131) $generated@@132 $generated@@133))
)))
(assert (forall (($generated@@134 T@U) ) (! (= ($generated@@29 $generated@@30 $generated@@134 $generated@@36)  (and ($generated@@29 $generated@@30 $generated@@134 $generated@@31) (or (not (= $generated@@134 $generated@@32)) (not true))))
 :pattern ( ($generated@@29 $generated@@30 $generated@@134 $generated@@36))
 :pattern ( ($generated@@29 $generated@@30 $generated@@134 $generated@@31))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (!  (=> (or (not (= $generated@@135 $generated@@137)) (not true)) (=> (and ($generated@@71 $generated@@135 $generated@@136) ($generated@@71 $generated@@136 $generated@@137)) ($generated@@71 $generated@@135 $generated@@137)))
 :pattern ( ($generated@@71 $generated@@135 $generated@@136) ($generated@@71 $generated@@136 $generated@@137))
)))
(assert (forall (($generated@@139 T@U) ($generated@@140 T@U) ) (!  (and (= ($generated@@138 ($generated@@40 $generated@@139 $generated@@140)) $generated@@139) (= ($generated@@28 ($generated@@40 $generated@@139 $generated@@140)) $generated@@140))
 :pattern ( ($generated@@40 $generated@@139 $generated@@140))
)))
(assert (forall (($generated@@141 T@U) ($generated@@142 T@T) ) (! (= ($generated@@44 $generated@@142 ($generated@@80 $generated@@142 $generated@@141)) $generated@@141)
 :pattern ( ($generated@@80 $generated@@142 $generated@@141))
)))
(assert (forall (($generated@@143 T@U) ($generated@@144 T@U) ) (!  (=> (and ($generated@@83 $generated@@143) (and (or (not (= $generated@@144 $generated@@32)) (not true)) (= ($generated@@33 $generated@@144) $generated@@31))) ($generated@@29 $generated@@12 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@143 $generated@@144) $generated@@42)) $generated))
 :pattern ( ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@143 $generated@@144) $generated@@42)))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> (and ($generated@@83 $generated@@145) (and (or (not (= $generated@@146 $generated@@32)) (not true)) (= ($generated@@33 $generated@@146) $generated@@31))) ($generated@@29 $generated@@12 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@145 $generated@@146) $generated@@43)) $generated))
 :pattern ( ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@145 $generated@@146) $generated@@43)))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ) (!  (=> (and ($generated@@83 $generated@@147) (and (or (not (= $generated@@148 $generated@@32)) (not true)) (= ($generated@@33 $generated@@148) $generated@@31))) ($generated@@29 $generated@@12 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@147 $generated@@148) $generated@@39)) $generated))
 :pattern ( ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@147 $generated@@148) $generated@@39)))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ) (!  (=> ($generated@@83 ($generated@@49 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@149 $generated@@150 ($generated@@49 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@149 $generated@@150) $generated@@151 $generated@@152))) ($generated@@71 $generated@@149 ($generated@@49 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@149 $generated@@150 ($generated@@49 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@149 $generated@@150) $generated@@151 $generated@@152))))
 :pattern ( ($generated@@49 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@149 $generated@@150 ($generated@@49 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@149 $generated@@150) $generated@@151 $generated@@152)))
)))
(assert (= ($generated@@27 $generated@@31) $generated@@4))
(assert (= ($generated@@153 $generated@@31) $generated@@6))
(assert (= ($generated@@27 $generated@@36) $generated@@5))
(assert (= ($generated@@153 $generated@@36) $generated@@6))
(assert (forall (($generated@@154 Int) ) (! (= ($generated@@80 $generated@@12 ($generated@@16 ($generated@@75 $generated@@154))) ($generated@@77 $generated@@47 ($generated@@80 $generated@@12 ($generated@@16 $generated@@154))))
 :pattern ( ($generated@@80 $generated@@12 ($generated@@16 ($generated@@75 $generated@@154))))
)))
(assert (forall (($generated@@155 T@U) ($generated@@156 T@T) ) (! (= ($generated@@80 $generated@@156 ($generated@@77 $generated@@156 $generated@@155)) ($generated@@77 $generated@@47 ($generated@@80 $generated@@156 $generated@@155)))
 :pattern ( ($generated@@80 $generated@@156 ($generated@@77 $generated@@156 $generated@@155)))
)))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@U) ) (! ($generated@@35 $generated@@12 $generated@@158 $generated $generated@@157)
 :pattern ( ($generated@@35 $generated@@12 $generated@@158 $generated $generated@@157))
)))
(assert (forall (($generated@@159 T@U) ) (! ($generated@@29 $generated@@12 $generated@@159 $generated)
 :pattern ( ($generated@@29 $generated@@12 $generated@@159 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@160 () Int)
(declare-fun $generated@@161 () T@U)
(declare-fun $generated@@162 () T@U)
(declare-fun $generated@@163 () Int)
(declare-fun $generated@@164 () T@U)
(declare-fun $generated@@165 () Int)
(declare-fun $generated@@166 () T@U)
(declare-fun $generated@@167 () Int)
(declare-fun $generated@@168 () T@U)
(declare-fun $generated@@169 () Int)
(declare-fun $generated@@170 () Int)
(declare-fun $generated@@171 () Bool)
(declare-fun $generated@@172 (T@U) Bool)
(declare-fun $generated@@173 () T@U)
(declare-fun $generated@@174 () Int)
(declare-fun $generated@@175 () Int)
(declare-fun $generated@@176 () T@U)
(declare-fun $generated@@177 () Int)
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
 (=> (= (ControlFlow 0 0) 18) (let (($generated@@178  (=> (and (< $generated@@160 ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@161 $generated@@162) $generated@@43)))) (= $generated@@163 (- ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@161 $generated@@162) $generated@@43))) $generated@@160))) (and (=> (= (ControlFlow 0 9) (- 0 11)) ($generated@@15 ($generated@@100 $generated@@30 $generated@@46 $generated@@11 $generated@@164 $generated@@162 $generated@@39))) (=> ($generated@@15 ($generated@@100 $generated@@30 $generated@@46 $generated@@11 $generated@@164 $generated@@162 $generated@@39)) (=> (and (and (= $generated@@165 (+ ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@161 $generated@@162) $generated@@39))) 1)) (= $generated@@166 ($generated@@49 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@161 $generated@@162 ($generated@@49 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@161 $generated@@162) $generated@@39 ($generated@@80 $generated@@12 ($generated@@16 $generated@@165)))))) (and ($generated@@83 $generated@@166) (= $generated@@167 (+ $generated@@160 1)))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (<= 0 $generated@@163) (= (- ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@166 $generated@@162) $generated@@43))) $generated@@167) $generated@@163))) (=> (or (<= 0 $generated@@163) (= (- ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@166 $generated@@162) $generated@@43))) $generated@@167) $generated@@163)) (=> (= (ControlFlow 0 9) (- 0 8)) (< (- ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@166 $generated@@162) $generated@@43))) $generated@@167) $generated@@163))))))))))
(let (($generated@@179 true))
(let (($generated@@180 true))
(let (($generated@@181  (and (=> (= (ControlFlow 0 2) (- 0 3)) (= ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@168 $generated@@162) $generated@@42))) $generated@@169)) (=> (= ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@168 $generated@@162) $generated@@42))) $generated@@169) (=> (= (ControlFlow 0 2) (- 0 1)) (= ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@168 $generated@@162) $generated@@39))) $generated@@170))))))
(let (($generated@@182  (=> (<= ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@161 $generated@@162) $generated@@43))) $generated@@160) (=> (and (= $generated@@168 $generated@@161) (= (ControlFlow 0 7) 2)) $generated@@181))))
(let (($generated@@183  (=> $generated@@171 (and (=> (= (ControlFlow 0 12) 7) $generated@@182) (=> (= (ControlFlow 0 12) 9) $generated@@178)))))
(let (($generated@@184  (and (=> (= (ControlFlow 0 13) 6) $generated@@179) (=> (= (ControlFlow 0 13) 12) $generated@@183))))
(let (($generated@@185  (=> (and (and (and ($generated@@83 $generated@@161) ($generated@@172 $generated@@161)) (and (not false) (<= 0 $generated@@160))) (and (and (forall (($generated@@186 T@U) ) (!  (=> (and (or (not (= $generated@@186 $generated@@32)) (not true)) ($generated@@15 ($generated@@44 $generated@@11 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@173 $generated@@186) $generated@@1)))) (or (= ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@161 $generated@@186) ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@173 $generated@@186)) (= $generated@@186 $generated@@162)))
 :pattern ( ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@161 $generated@@186))
)) ($generated@@95 $generated@@173 $generated@@161)) (and (forall (($generated@@187 T@U) ($generated@@188 T@U) ) (!  (=> (and (or (not (= $generated@@187 $generated@@32)) (not true)) ($generated@@15 ($generated@@44 $generated@@11 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@173 $generated@@187) $generated@@1)))) (or (= ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@161 $generated@@187) $generated@@188) ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@173 $generated@@187) $generated@@188)) ($generated@@15 ($generated@@100 $generated@@30 $generated@@46 $generated@@11 $generated@@164 $generated@@187 $generated@@188))))
 :pattern ( ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@161 $generated@@187) $generated@@188))
)) (<= (- ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@161 $generated@@162) $generated@@43))) $generated@@160) $generated@@174)))) (and (=> (= (ControlFlow 0 14) 5) $generated@@180) (=> (= (ControlFlow 0 14) 13) $generated@@184)))))
(let (($generated@@189  (=> (and (< ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@173 $generated@@162) $generated@@39))) 100) (= $generated@@175 ($generated@@75 0))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (forall (($generated@@190 T@U) ($generated@@191 T@U) )  (=> (and (and (or (not (= $generated@@190 $generated@@32)) (not true)) ($generated@@15 ($generated@@44 $generated@@11 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@173 $generated@@190) $generated@@1)))) (= $generated@@190 $generated@@162)) ($generated@@15 ($generated@@100 $generated@@30 $generated@@46 $generated@@11 $generated@@176 $generated@@190 $generated@@191))))) (=> (forall (($generated@@192 T@U) ($generated@@193 T@U) )  (=> (and (and (or (not (= $generated@@192 $generated@@32)) (not true)) ($generated@@15 ($generated@@44 $generated@@11 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@173 $generated@@192) $generated@@1)))) (= $generated@@192 $generated@@162)) ($generated@@15 ($generated@@100 $generated@@30 $generated@@46 $generated@@11 $generated@@176 $generated@@192 $generated@@193)))) (=> (= $generated@@164 ($generated@@101 $generated@@32 $generated@@173 $generated@@1 $generated@@162)) (=> (and (= $generated@@174 (- ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@173 $generated@@162) $generated@@43))) $generated@@175)) (= (ControlFlow 0 15) 14)) $generated@@185)))))))
(let (($generated@@194  (=> (<= 100 ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@173 $generated@@162) $generated@@39)))) (=> (and (= $generated@@168 $generated@@173) (= (ControlFlow 0 4) 2)) $generated@@181))))
(let (($generated@@195  (=> (= $generated@@176 ($generated@@101 $generated@@32 $generated@@173 $generated@@1 $generated@@162)) (=> (and (= $generated@@169 ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@173 $generated@@162) $generated@@42)))) (= $generated@@170 ($generated@@17 ($generated@@44 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@173 $generated@@162) $generated@@39))))) (and (=> (= (ControlFlow 0 17) 15) $generated@@189) (=> (= (ControlFlow 0 17) 4) $generated@@194))))))
(let (($generated@@196  (=> (and ($generated@@83 $generated@@173) ($generated@@172 $generated@@173)) (=> (and (and (or (not (= $generated@@162 $generated@@32)) (not true)) (and ($generated@@29 $generated@@30 $generated@@162 $generated@@36) ($generated@@35 $generated@@30 $generated@@162 $generated@@36 $generated@@173))) (and (= 0 $generated@@177) (= (ControlFlow 0 18) 17))) $generated@@195))))
$generated@@196)))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)