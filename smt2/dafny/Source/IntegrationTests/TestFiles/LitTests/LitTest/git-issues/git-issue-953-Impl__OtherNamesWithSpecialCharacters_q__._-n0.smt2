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
(declare-fun $generated@@16 (T@T) Int)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 () T@T)
(declare-fun $generated@@19 () T@T)
(declare-fun $generated@@20 (Bool) T@U)
(declare-fun $generated@@21 (T@U) Bool)
(declare-fun $generated@@22 (Int) T@U)
(declare-fun $generated@@23 (T@U) Int)
(declare-fun $generated@@24 (Real) T@U)
(declare-fun $generated@@25 (T@U) Real)
(declare-fun $generated@@32 (T@U) Int)
(declare-fun $generated@@33 (T@U) T@U)
(declare-fun $generated@@34 (T@U) T@U)
(declare-fun $generated@@35 (T@U) Bool)
(declare-fun $generated@@36 () T@U)
(declare-fun $generated@@37 (T@U) T@U)
(declare-fun $generated@@38 () T@U)
(declare-fun $generated@@39 (T@T T@U T@U) Bool)
(declare-fun $generated@@40 () T@T)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@42 (T@U) T@U)
(declare-fun $generated@@44 (T@T T@U) T@U)
(declare-fun $generated@@45 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@47 () T@T)
(declare-fun $generated@@48 (T@T T@T) T@T)
(declare-fun $generated@@49 () T@U)
(declare-fun $generated@@50 (T@U) Bool)
(declare-fun $generated@@51 () T@U)
(declare-fun $generated@@52 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@53 (T@T) T@T)
(declare-fun $generated@@54 (T@T) T@T)
(declare-fun $generated@@74 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@75 () T@U)
(declare-fun $generated@@78 () T@U)
(declare-fun $generated@@81 () T@T)
(declare-fun $generated@@82 () T@U)
(declare-fun $generated@@83 (T@U T@U) T@U)
(declare-fun $generated@@84 (T@U) Bool)
(declare-fun $generated@@89 (T@U T@U) Bool)
(declare-fun $generated@@93 (Int) Int)
(declare-fun $generated@@95 (T@T T@U) T@U)
(declare-fun $generated@@98 (T@T T@U) T@U)
(declare-fun $generated@@113 (T@U) T@U)
(declare-fun $generated@@120 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@121 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@122 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@154 (Int Int) Int)
(declare-fun $generated@@162 () T@U)
(declare-fun $generated@@167 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@16 $generated@@17) 0) (= ($generated@@16 $generated@@18) 1)) (= ($generated@@16 $generated@@19) 2)) (forall (($generated@@26 Bool) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 Int) ) (! (= ($generated@@23 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 T@U) ) (! (= ($generated@@22 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))) (forall (($generated@@30 Real) ) (! (= ($generated@@25 ($generated@@24 $generated@@30)) $generated@@30)
 :pattern ( ($generated@@24 $generated@@30))
))) (forall (($generated@@31 T@U) ) (! (= ($generated@@24 ($generated@@25 $generated@@31)) $generated@@31)
 :pattern ( ($generated@@25 $generated@@31))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13 $generated@@14 $generated@@15)
)
(assert (= ($generated@@32 $generated@@1) 0))
(assert (= ($generated@@33 $generated) $generated@@0))
(assert (= ($generated@@34 $generated@@1) $generated@@2))
(assert ($generated@@35 $generated@@36))
(assert (= ($generated@@37 $generated@@38) $generated@@8))
(assert (= ($generated@@16 $generated@@40) 3))
(assert (forall (($generated@@43 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@43 $generated@@36)  (or (= $generated@@43 $generated@@41) (= ($generated@@42 $generated@@43) $generated@@36)))
 :pattern ( ($generated@@39 $generated@@40 $generated@@43 $generated@@36))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@55 T@T) ($generated@@56 T@T) ($generated@@57 T@U) ($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@45 $generated@@55 $generated@@56 ($generated@@52 $generated@@55 $generated@@56 $generated@@58 $generated@@59 $generated@@57) $generated@@59) $generated@@57)
 :weight 0
)) (forall (($generated@@60 T@T) ($generated@@61 T@T) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ) (!  (or (= $generated@@64 $generated@@65) (= ($generated@@45 $generated@@60 $generated@@61 ($generated@@52 $generated@@60 $generated@@61 $generated@@63 $generated@@64 $generated@@62) $generated@@65) ($generated@@45 $generated@@60 $generated@@61 $generated@@63 $generated@@65)))
 :weight 0
))) (= ($generated@@16 $generated@@46) 4)) (= ($generated@@16 $generated@@47) 5)) (forall (($generated@@66 T@T) ($generated@@67 T@T) ) (= ($generated@@16 ($generated@@48 $generated@@66 $generated@@67)) 6))) (forall (($generated@@68 T@T) ($generated@@69 T@T) ) (! (= ($generated@@53 ($generated@@48 $generated@@68 $generated@@69)) $generated@@68)
 :pattern ( ($generated@@48 $generated@@68 $generated@@69))
))) (forall (($generated@@70 T@T) ($generated@@71 T@T) ) (! (= ($generated@@54 ($generated@@48 $generated@@70 $generated@@71)) $generated@@71)
 :pattern ( ($generated@@48 $generated@@70 $generated@@71))
))))
(assert (forall (($generated@@72 T@U) ($generated@@73 T@U) ) (!  (=> (and ($generated@@50 $generated@@72) (and (or (not (= $generated@@73 $generated@@41)) (not true)) ($generated@@39 $generated@@40 $generated@@73 $generated@@51))) ($generated@@39 $generated@@18 ($generated@@44 $generated@@18 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@72 $generated@@73) $generated@@49)) $generated))
 :pattern ( ($generated@@44 $generated@@18 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@72 $generated@@73) $generated@@49)))
)))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@74 $generated@@40 $generated@@76 $generated@@75 $generated@@77) ($generated@@74 $generated@@40 $generated@@76 $generated@@51 $generated@@77))
 :pattern ( ($generated@@74 $generated@@40 $generated@@76 $generated@@75 $generated@@77))
 :pattern ( ($generated@@74 $generated@@40 $generated@@76 $generated@@51 $generated@@77))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@74 $generated@@40 $generated@@79 $generated@@78 $generated@@80) ($generated@@74 $generated@@40 $generated@@79 $generated@@36 $generated@@80))
 :pattern ( ($generated@@74 $generated@@40 $generated@@79 $generated@@78 $generated@@80))
 :pattern ( ($generated@@74 $generated@@40 $generated@@79 $generated@@36 $generated@@80))
)))
(assert (= ($generated@@16 $generated@@81) 7))
(assert ($generated@@39 $generated@@81 $generated@@38 $generated@@82))
(assert (= ($generated@@32 $generated@@49) 0))
(assert (= ($generated@@83 $generated@@9 $generated@@15) $generated@@49))
(assert  (not ($generated@@84 $generated@@49)))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (! (= ($generated@@74 $generated@@40 $generated@@85 $generated@@51 $generated@@86)  (or (= $generated@@85 $generated@@41) ($generated@@21 ($generated@@44 $generated@@17 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@86 $generated@@85) $generated@@1)))))
 :pattern ( ($generated@@74 $generated@@40 $generated@@85 $generated@@51 $generated@@86))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ) (! (= ($generated@@74 $generated@@40 $generated@@87 $generated@@36 $generated@@88)  (or (= $generated@@87 $generated@@41) ($generated@@21 ($generated@@44 $generated@@17 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@88 $generated@@87) $generated@@1)))))
 :pattern ( ($generated@@74 $generated@@40 $generated@@87 $generated@@36 $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> ($generated@@89 $generated@@90 $generated@@91) (forall (($generated@@92 T@U) ) (!  (=> ($generated@@21 ($generated@@44 $generated@@17 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@90 $generated@@92) $generated@@1))) ($generated@@21 ($generated@@44 $generated@@17 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@91 $generated@@92) $generated@@1))))
 :pattern ( ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@91 $generated@@92) $generated@@1))
)))
 :pattern ( ($generated@@89 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@94 Int) ) (! (= ($generated@@93 $generated@@94) $generated@@94)
 :pattern ( ($generated@@93 $generated@@94))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@T) ) (! (= ($generated@@95 $generated@@97 $generated@@96) $generated@@96)
 :pattern ( ($generated@@95 $generated@@97 $generated@@96))
)))
(assert (forall (($generated@@99 T@U) ($generated@@100 T@T) ) (! (= ($generated@@98 $generated@@100 ($generated@@44 $generated@@100 $generated@@99)) $generated@@99)
 :pattern ( ($generated@@44 $generated@@100 $generated@@99))
)))
(assert ($generated@@84 $generated@@1))
(assert (forall (($generated@@101 T@U) ($generated@@102 T@U) ($generated@@103 T@U) ($generated@@104 T@U) ($generated@@105 T@T) ) (!  (=> ($generated@@89 $generated@@101 $generated@@102) (=> ($generated@@74 $generated@@105 $generated@@103 $generated@@104 $generated@@101) ($generated@@74 $generated@@105 $generated@@103 $generated@@104 $generated@@102)))
 :pattern ( ($generated@@89 $generated@@101 $generated@@102) ($generated@@74 $generated@@105 $generated@@103 $generated@@104 $generated@@101))
)))
(assert (forall (($generated@@106 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@106 $generated@@75)  (and ($generated@@39 $generated@@40 $generated@@106 $generated@@51) (or (not (= $generated@@106 $generated@@41)) (not true))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@106 $generated@@75))
 :pattern ( ($generated@@39 $generated@@40 $generated@@106 $generated@@51))
)))
(assert (forall (($generated@@107 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@107 $generated@@78)  (and ($generated@@39 $generated@@40 $generated@@107 $generated@@36) (or (not (= $generated@@107 $generated@@41)) (not true))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@107 $generated@@78))
 :pattern ( ($generated@@39 $generated@@40 $generated@@107 $generated@@36))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ) (!  (=> ($generated@@74 $generated@@40 $generated@@108 $generated@@36 $generated@@109) ($generated@@74 $generated@@40 $generated@@108 $generated@@51 $generated@@109))
 :pattern ( ($generated@@74 $generated@@40 $generated@@108 $generated@@36 $generated@@109))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ($generated@@112 T@U) ) (!  (=> (or (not (= $generated@@110 $generated@@112)) (not true)) (=> (and ($generated@@89 $generated@@110 $generated@@111) ($generated@@89 $generated@@111 $generated@@112)) ($generated@@89 $generated@@110 $generated@@112)))
 :pattern ( ($generated@@89 $generated@@110 $generated@@111) ($generated@@89 $generated@@111 $generated@@112))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ) (!  (and (= ($generated@@113 ($generated@@83 $generated@@114 $generated@@115)) $generated@@114) (= ($generated@@34 ($generated@@83 $generated@@114 $generated@@115)) $generated@@115))
 :pattern ( ($generated@@83 $generated@@114 $generated@@115))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (!  (=> (and (and ($generated@@50 $generated@@116) (and (or (not (= $generated@@117 $generated@@41)) (not true)) ($generated@@39 $generated@@40 $generated@@117 $generated@@51))) ($generated@@21 ($generated@@44 $generated@@17 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@116 $generated@@117) $generated@@1)))) ($generated@@74 $generated@@18 ($generated@@44 $generated@@18 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@116 $generated@@117) $generated@@49)) $generated $generated@@116))
 :pattern ( ($generated@@44 $generated@@18 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@116 $generated@@117) $generated@@49)))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@T) ) (! (= ($generated@@44 $generated@@119 ($generated@@98 $generated@@119 $generated@@118)) $generated@@118)
 :pattern ( ($generated@@98 $generated@@119 $generated@@118))
)))
(assert  (and (forall (($generated@@123 T@T) ($generated@@124 T@T) ($generated@@125 T@T) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ) (! (= ($generated@@120 $generated@@123 $generated@@124 $generated@@125 ($generated@@122 $generated@@123 $generated@@124 $generated@@125 $generated@@127 $generated@@128 $generated@@129 $generated@@126) $generated@@128 $generated@@129) $generated@@126)
 :weight 0
)) (and (forall (($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@T) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ($generated@@138 T@U) ) (!  (or (= $generated@@135 $generated@@137) (= ($generated@@120 $generated@@130 $generated@@131 $generated@@132 ($generated@@122 $generated@@130 $generated@@131 $generated@@132 $generated@@134 $generated@@135 $generated@@136 $generated@@133) $generated@@137 $generated@@138) ($generated@@120 $generated@@130 $generated@@131 $generated@@132 $generated@@134 $generated@@137 $generated@@138)))
 :weight 0
)) (forall (($generated@@139 T@T) ($generated@@140 T@T) ($generated@@141 T@T) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (!  (or (= $generated@@145 $generated@@147) (= ($generated@@120 $generated@@139 $generated@@140 $generated@@141 ($generated@@122 $generated@@139 $generated@@140 $generated@@141 $generated@@143 $generated@@144 $generated@@145 $generated@@142) $generated@@146 $generated@@147) ($generated@@120 $generated@@139 $generated@@140 $generated@@141 $generated@@143 $generated@@146 $generated@@147)))
 :weight 0
)))))
(assert (forall (($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 Bool) ($generated@@152 T@U) ($generated@@153 T@U) ) (! (= ($generated@@21 ($generated@@120 $generated@@40 $generated@@46 $generated@@17 ($generated@@121 $generated@@148 $generated@@149 $generated@@150 $generated@@151) $generated@@152 $generated@@153))  (=> (and (or (not (= $generated@@152 $generated@@148)) (not true)) ($generated@@21 ($generated@@44 $generated@@17 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@149 $generated@@152) $generated@@150)))) $generated@@151))
 :pattern ( ($generated@@120 $generated@@40 $generated@@46 $generated@@17 ($generated@@121 $generated@@148 $generated@@149 $generated@@150 $generated@@151) $generated@@152 $generated@@153))
)))
(assert (forall (($generated@@155 Int) ($generated@@156 Int) ) (! (= ($generated@@154 $generated@@155 $generated@@156) (mod $generated@@155 $generated@@156))
 :pattern ( ($generated@@154 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@157 T@U) ) (!  (=> ($generated@@39 $generated@@40 $generated@@157 $generated@@36) ($generated@@39 $generated@@40 $generated@@157 $generated@@51))
 :pattern ( ($generated@@39 $generated@@40 $generated@@157 $generated@@36))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ) (!  (=> ($generated@@50 ($generated@@52 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@158 $generated@@159 ($generated@@52 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@158 $generated@@159) $generated@@160 $generated@@161))) ($generated@@89 $generated@@158 ($generated@@52 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@158 $generated@@159 ($generated@@52 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@158 $generated@@159) $generated@@160 $generated@@161))))
 :pattern ( ($generated@@52 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@158 $generated@@159 ($generated@@52 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@158 $generated@@159) $generated@@160 $generated@@161)))
)))
(assert (forall (($generated@@163 T@U) ($generated@@164 T@U) ) (!  (=> (and ($generated@@50 $generated@@164) ($generated@@39 $generated@@81 $generated@@163 $generated@@162)) ($generated@@74 $generated@@81 $generated@@163 $generated@@162 $generated@@164))
 :pattern ( ($generated@@74 $generated@@81 $generated@@163 $generated@@162 $generated@@164))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ) (!  (=> (and ($generated@@50 $generated@@166) ($generated@@39 $generated@@81 $generated@@165 $generated@@82)) ($generated@@74 $generated@@81 $generated@@165 $generated@@82 $generated@@166))
 :pattern ( ($generated@@74 $generated@@81 $generated@@165 $generated@@82 $generated@@166))
)))
(assert (= ($generated@@33 $generated@@162) $generated@@3))
(assert (= ($generated@@167 $generated@@162) $generated@@11))
(assert (= ($generated@@33 $generated@@82) $generated@@4))
(assert (= ($generated@@167 $generated@@82) $generated@@12))
(assert (= ($generated@@33 $generated@@78) $generated@@5))
(assert (= ($generated@@167 $generated@@78) $generated@@13))
(assert (= ($generated@@33 $generated@@36) $generated@@6))
(assert (= ($generated@@167 $generated@@36) $generated@@13))
(assert (= ($generated@@33 $generated@@75) $generated@@7))
(assert (= ($generated@@167 $generated@@75) $generated@@14))
(assert (= ($generated@@33 $generated@@51) $generated@@10))
(assert (= ($generated@@167 $generated@@51) $generated@@14))
(assert (forall (($generated@@168 T@U) ) (! (= ($generated@@39 $generated@@40 $generated@@168 $generated@@51)  (or (= $generated@@168 $generated@@41) ($generated@@35 ($generated@@42 $generated@@168))))
 :pattern ( ($generated@@39 $generated@@40 $generated@@168 $generated@@51))
)))
(assert (forall (($generated@@169 Int) ) (! (= ($generated@@98 $generated@@18 ($generated@@22 ($generated@@93 $generated@@169))) ($generated@@95 $generated@@47 ($generated@@98 $generated@@18 ($generated@@22 $generated@@169))))
 :pattern ( ($generated@@98 $generated@@18 ($generated@@22 ($generated@@93 $generated@@169))))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@T) ) (! (= ($generated@@98 $generated@@171 ($generated@@95 $generated@@171 $generated@@170)) ($generated@@95 $generated@@47 ($generated@@98 $generated@@171 $generated@@170)))
 :pattern ( ($generated@@98 $generated@@171 ($generated@@95 $generated@@171 $generated@@170)))
)))
(assert (forall (($generated@@172 T@U) ($generated@@173 T@U) ) (! ($generated@@74 $generated@@18 $generated@@173 $generated $generated@@172)
 :pattern ( ($generated@@74 $generated@@18 $generated@@173 $generated $generated@@172))
)))
(assert (forall (($generated@@174 T@U) ) (! ($generated@@39 $generated@@18 $generated@@174 $generated)
 :pattern ( ($generated@@39 $generated@@18 $generated@@174 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@175 () T@U)
(declare-fun $generated@@176 () T@U)
(declare-fun $generated@@177 () T@U)
(declare-fun $generated@@178 () T@U)
(declare-fun $generated@@179 () T@U)
(declare-fun $generated@@180 () T@U)
(declare-fun $generated@@181 (T@U) Bool)
(declare-fun $generated@@182 () Int)
(declare-fun $generated@@183 () T@U)
(declare-fun $generated@@184 () Int)
(declare-fun $generated@@185 () Int)
(declare-fun $generated@@186 () T@U)
(declare-fun $generated@@187 () T@U)
(declare-fun $generated@@188 () Bool)
(declare-fun $generated@@189 () T@U)
(declare-fun $generated@@190 () Bool)
(declare-fun $generated@@191 () T@U)
(declare-fun $generated@@192 () Int)
(declare-fun $generated@@193 () Int)
(declare-fun $generated@@194 () Int)
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
 (=> (= (ControlFlow 0 0) 10) (let (($generated@@195  (=> (= $generated@@175 ($generated@@121 $generated@@41 $generated@@176 $generated@@1 false)) (=> (and (and (and (and ($generated@@39 $generated@@81 $generated@@177 $generated@@162) ($generated@@74 $generated@@81 $generated@@177 $generated@@162 $generated@@176)) (= $generated@@178 ($generated@@95 $generated@@81 $generated@@38))) (and (or (not (= $generated@@179 $generated@@41)) (not true)) ($generated@@39 $generated@@40 $generated@@179 $generated@@36))) (and (and (not ($generated@@21 ($generated@@44 $generated@@17 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@176 $generated@@179) $generated@@1)))) (= $generated@@180 ($generated@@52 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@176 $generated@@179 ($generated@@52 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@176 $generated@@179) $generated@@1 ($generated@@98 $generated@@17 ($generated@@20 true)))))) (and ($generated@@50 $generated@@180) ($generated@@181 $generated@@180)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= $generated@@179 $generated@@41)) (not true))) (=> (or (not (= $generated@@179 $generated@@41)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($generated@@21 ($generated@@120 $generated@@40 $generated@@46 $generated@@17 $generated@@175 $generated@@179 $generated@@49))) (=> ($generated@@21 ($generated@@120 $generated@@40 $generated@@46 $generated@@17 $generated@@175 $generated@@179 $generated@@49)) (=> (= $generated@@182 ($generated@@93 17)) (=> (and (and (= $generated@@183 ($generated@@52 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@180 $generated@@179 ($generated@@52 $generated@@46 $generated@@47 ($generated@@45 $generated@@40 ($generated@@48 $generated@@46 $generated@@47) $generated@@180 $generated@@179) $generated@@49 ($generated@@98 $generated@@18 ($generated@@22 $generated@@182))))) ($generated@@50 $generated@@183)) (and (= ($generated@@154 $generated@@184 ($generated@@93 3)) ($generated@@93 0)) (= ($generated@@154 $generated@@185 ($generated@@93 5)) ($generated@@93 0)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= $generated@@179 $generated@@41)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= $generated@@179 $generated@@41)) (not true))))))))))))))))))
(let (($generated@@196  (=> (and ($generated@@50 $generated@@176) ($generated@@181 $generated@@176)) (=> (and (and ($generated@@39 $generated@@81 $generated@@186 $generated@@162) ($generated@@74 $generated@@81 $generated@@186 $generated@@162 $generated@@176)) true) (=> (and (and (and (and ($generated@@39 $generated@@81 $generated@@187 $generated@@82) ($generated@@74 $generated@@81 $generated@@187 $generated@@82 $generated@@176)) true) (and (=> $generated@@188 (and ($generated@@39 $generated@@40 $generated@@189 $generated@@78) ($generated@@74 $generated@@40 $generated@@189 $generated@@78 $generated@@176))) true)) (and (and (and (=> $generated@@190 (and ($generated@@39 $generated@@40 $generated@@191 $generated@@75) ($generated@@74 $generated@@40 $generated@@191 $generated@@75 $generated@@176))) true) (and (= ($generated@@154 $generated@@192 ($generated@@93 3)) ($generated@@93 0)) true)) (and (and (= ($generated@@154 $generated@@193 ($generated@@93 5)) ($generated@@93 0)) true) (and (= 1 $generated@@194) (= (ControlFlow 0 10) 2))))) $generated@@195)))))
$generated@@196)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)