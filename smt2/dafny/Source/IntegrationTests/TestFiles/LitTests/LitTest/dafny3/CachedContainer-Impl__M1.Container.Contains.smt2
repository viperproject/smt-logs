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
(declare-fun $generated@@27 (T@U) Int)
(declare-fun $generated@@28 (T@U) T@U)
(declare-fun $generated@@29 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@30 () T@T)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@36 () Int)
(declare-fun $generated@@37 (T@U T@U T@U) Bool)
(declare-fun $generated@@38 (T@U T@U T@U) Bool)
(declare-fun $generated@@39 (T@U) Bool)
(declare-fun $generated@@40 () T@U)
(declare-fun $generated@@41 (T@T T@U T@U) Bool)
(declare-fun $generated@@42 (T@U T@U) Bool)
(declare-fun $generated@@43 (T@T T@U) T@U)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@47 () T@T)
(declare-fun $generated@@48 (T@T T@T) T@T)
(declare-fun $generated@@49 () T@U)
(declare-fun $generated@@50 (T@T T@U) T@U)
(declare-fun $generated@@51 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@52 (T@T) T@T)
(declare-fun $generated@@53 (T@T) T@T)
(declare-fun $generated@@74 () T@U)
(declare-fun $generated@@75 () T@U)
(declare-fun $generated@@78 (T@U T@U) T@U)
(declare-fun $generated@@79 (T@U) Bool)
(declare-fun $generated@@80 () T@U)
(declare-fun $generated@@88 (T@U) T@U)
(declare-fun $generated@@89 (T@U T@U) Bool)
(declare-fun $generated@@95 (T@U T@U T@U) Bool)
(declare-fun $generated@@100 (T@U) T@U)
(declare-fun $generated@@101 (T@U) T@U)
(declare-fun $generated@@104 (T@U) T@U)
(declare-fun $generated@@119 (T@U T@U) Bool)
(declare-fun $generated@@122 (T@U) T@U)
(declare-fun $generated@@133 (T@U) T@U)
(declare-fun $generated@@136 (T@U) T@U)
(declare-fun $generated@@138 (T@U) T@U)
(declare-fun $generated@@154 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@155 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@156 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@188 (T@U T@U T@U) Bool)
(declare-fun $generated@@189 (T@U T@U T@U) Bool)
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
(assert (= ($generated@@27 $generated@@0) 0))
(assert (= ($generated@@28 $generated@@0) $generated@@1))
(assert (= ($generated@@11 $generated@@30) 3))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ) (! (= ($generated@@29 $generated@@30 $generated@@34 ($generated@@31 $generated@@33) $generated@@35) ($generated@@29 $generated@@30 $generated@@34 ($generated@@32 $generated@@33) $generated@@35))
 :pattern ( ($generated@@29 $generated@@30 $generated@@34 ($generated@@31 $generated@@33) $generated@@35))
 :pattern ( ($generated@@29 $generated@@30 $generated@@34 ($generated@@32 $generated@@33) $generated@@35))
)))
(assert  (and (and (and (and (and (and (and (= ($generated@@11 $generated@@44) 4) (forall (($generated@@54 T@T) ($generated@@55 T@T) ($generated@@56 T@U) ($generated@@57 T@U) ($generated@@58 T@U) ) (! (= ($generated@@45 $generated@@54 $generated@@55 ($generated@@51 $generated@@54 $generated@@55 $generated@@57 $generated@@58 $generated@@56) $generated@@58) $generated@@56)
 :weight 0
))) (forall (($generated@@59 T@T) ($generated@@60 T@T) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (!  (or (= $generated@@63 $generated@@64) (= ($generated@@45 $generated@@59 $generated@@60 ($generated@@51 $generated@@59 $generated@@60 $generated@@62 $generated@@63 $generated@@61) $generated@@64) ($generated@@45 $generated@@59 $generated@@60 $generated@@62 $generated@@64)))
 :weight 0
))) (= ($generated@@11 $generated@@46) 5)) (= ($generated@@11 $generated@@47) 6)) (forall (($generated@@65 T@T) ($generated@@66 T@T) ) (= ($generated@@11 ($generated@@48 $generated@@65 $generated@@66)) 7))) (forall (($generated@@67 T@T) ($generated@@68 T@T) ) (! (= ($generated@@52 ($generated@@48 $generated@@67 $generated@@68)) $generated@@67)
 :pattern ( ($generated@@48 $generated@@67 $generated@@68))
))) (forall (($generated@@69 T@T) ($generated@@70 T@T) ) (! (= ($generated@@53 ($generated@@48 $generated@@69 $generated@@70)) $generated@@70)
 :pattern ( ($generated@@48 $generated@@69 $generated@@70))
))))
(assert  (=> (<= 1 $generated@@36) (forall (($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ) (!  (=> (or ($generated@@38 $generated@@71 $generated@@72 $generated@@73) (and (< 1 $generated@@36) (and ($generated@@39 $generated@@72) (and (or (not (= $generated@@73 $generated@@40)) (not true)) (and ($generated@@41 $generated@@30 $generated@@73 ($generated@@31 $generated@@71)) ($generated@@29 $generated@@30 $generated@@73 ($generated@@31 $generated@@71) $generated@@72)))))) (=> ($generated@@37 $generated@@71 $generated@@72 $generated@@73) ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@72 $generated@@73) $generated@@49)) ($generated@@50 $generated@@30 $generated@@73))))
 :pattern ( ($generated@@37 $generated@@71 $generated@@72 $generated@@73))
))))
(assert (forall (($generated@@76 T@U) ($generated@@77 T@U) ) (! (= ($generated@@29 $generated@@30 $generated@@76 $generated@@74 $generated@@77) ($generated@@29 $generated@@30 $generated@@76 $generated@@75 $generated@@77))
 :pattern ( ($generated@@29 $generated@@30 $generated@@76 $generated@@74 $generated@@77))
 :pattern ( ($generated@@29 $generated@@30 $generated@@76 $generated@@75 $generated@@77))
)))
(assert (= ($generated@@27 $generated@@49) 0))
(assert (= ($generated@@78 $generated@@4 $generated@@9) $generated@@49))
(assert ($generated@@79 $generated@@49))
(assert (= ($generated@@27 $generated@@80) 0))
(assert (= ($generated@@78 $generated@@4 $generated@@10) $generated@@80))
(assert ($generated@@79 $generated@@80))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@29 $generated@@30 $generated@@82 ($generated@@32 $generated@@81) $generated@@83)  (or (= $generated@@82 $generated@@40) ($generated@@16 ($generated@@43 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@83 $generated@@82) $generated@@0)))))
 :pattern ( ($generated@@29 $generated@@30 $generated@@82 ($generated@@32 $generated@@81) $generated@@83))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@29 $generated@@30 $generated@@84 $generated@@75 $generated@@85)  (or (= $generated@@84 $generated@@40) ($generated@@16 ($generated@@43 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@85 $generated@@84) $generated@@0)))))
 :pattern ( ($generated@@29 $generated@@30 $generated@@84 $generated@@75 $generated@@85))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@T) ) (! (= ($generated@@50 $generated@@87 ($generated@@43 $generated@@87 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@43 $generated@@87 $generated@@86))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@41 $generated@@44 $generated@@90 ($generated@@88 $generated@@91)) (forall (($generated@@92 T@U) ) (!  (=> ($generated@@42 $generated@@90 $generated@@92) ($generated@@89 $generated@@92 $generated@@91))
 :pattern ( ($generated@@42 $generated@@90 $generated@@92))
)))
 :pattern ( ($generated@@41 $generated@@44 $generated@@90 ($generated@@88 $generated@@91)))
)))
(assert ($generated@@79 $generated@@0))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@41 $generated@@30 $generated@@94 ($generated@@31 $generated@@93))  (and ($generated@@41 $generated@@30 $generated@@94 ($generated@@32 $generated@@93)) (or (not (= $generated@@94 $generated@@40)) (not true))))
 :pattern ( ($generated@@41 $generated@@30 $generated@@94 ($generated@@31 $generated@@93)))
 :pattern ( ($generated@@41 $generated@@30 $generated@@94 ($generated@@32 $generated@@93)))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@T) ) (! (= ($generated@@95 ($generated@@50 $generated@@99 $generated@@96) $generated@@97 $generated@@98) ($generated@@29 $generated@@99 $generated@@96 $generated@@97 $generated@@98))
 :pattern ( ($generated@@95 ($generated@@50 $generated@@99 $generated@@96) $generated@@97 $generated@@98))
)))
(assert (forall (($generated@@102 T@U) ) (!  (and (= ($generated@@100 ($generated@@32 $generated@@102)) $generated@@5) (= ($generated@@101 ($generated@@32 $generated@@102)) $generated@@8))
 :pattern ( ($generated@@32 $generated@@102))
)))
(assert (forall (($generated@@103 T@U) ) (!  (and (= ($generated@@100 ($generated@@31 $generated@@103)) $generated@@6) (= ($generated@@101 ($generated@@31 $generated@@103)) $generated@@8))
 :pattern ( ($generated@@31 $generated@@103))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ) (!  (=> (and (and ($generated@@39 $generated@@106) (and (or (not (= $generated@@107 $generated@@40)) (not true)) (= ($generated@@104 $generated@@107) ($generated@@32 $generated@@105)))) ($generated@@16 ($generated@@43 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@106 $generated@@107) $generated@@0)))) ($generated@@29 $generated@@44 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@106 $generated@@107) $generated@@80)) ($generated@@88 $generated@@105) $generated@@106))
 :pattern ( ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@106 $generated@@107) $generated@@80)) ($generated@@32 $generated@@105))
)))
(assert (forall (($generated@@108 T@U) ) (!  (=> ($generated@@89 $generated@@108 $generated@@75) (and (= ($generated@@50 $generated@@30 ($generated@@43 $generated@@30 $generated@@108)) $generated@@108) ($generated@@41 $generated@@30 ($generated@@43 $generated@@30 $generated@@108) $generated@@75)))
 :pattern ( ($generated@@89 $generated@@108 $generated@@75))
)))
(assert (forall (($generated@@109 T@U) ) (!  (=> ($generated@@89 $generated@@109 $generated@@74) (and (= ($generated@@50 $generated@@30 ($generated@@43 $generated@@30 $generated@@109)) $generated@@109) ($generated@@41 $generated@@30 ($generated@@43 $generated@@30 $generated@@109) $generated@@74)))
 :pattern ( ($generated@@89 $generated@@109 $generated@@74))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@41 $generated@@30 $generated@@111 ($generated@@32 $generated@@110))  (or (= $generated@@111 $generated@@40) (= ($generated@@104 $generated@@111) ($generated@@32 $generated@@110))))
 :pattern ( ($generated@@41 $generated@@30 $generated@@111 ($generated@@32 $generated@@110)))
)))
(assert (forall (($generated@@112 T@U) ) (! (= ($generated@@41 $generated@@30 $generated@@112 $generated@@74)  (and ($generated@@41 $generated@@30 $generated@@112 $generated@@75) (or (not (= $generated@@112 $generated@@40)) (not true))))
 :pattern ( ($generated@@41 $generated@@30 $generated@@112 $generated@@74))
 :pattern ( ($generated@@41 $generated@@30 $generated@@112 $generated@@75))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (!  (=> (and ($generated@@39 $generated@@114) (and (or (not (= $generated@@115 $generated@@40)) (not true)) (= ($generated@@104 $generated@@115) ($generated@@32 $generated@@113)))) ($generated@@41 $generated@@44 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@114 $generated@@115) $generated@@49)) ($generated@@88 $generated@@75)))
 :pattern ( ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@114 $generated@@115) $generated@@49)) ($generated@@32 $generated@@113))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (!  (=> (and (and ($generated@@39 $generated@@117) (and (or (not (= $generated@@118 $generated@@40)) (not true)) (= ($generated@@104 $generated@@118) ($generated@@32 $generated@@116)))) ($generated@@16 ($generated@@43 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@117 $generated@@118) $generated@@0)))) ($generated@@29 $generated@@44 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@117 $generated@@118) $generated@@49)) ($generated@@88 $generated@@75) $generated@@117))
 :pattern ( ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@117 $generated@@118) $generated@@49)) ($generated@@32 $generated@@116))
)))
(assert (forall (($generated@@120 T@U) ($generated@@121 T@U) ) (!  (=> ($generated@@119 $generated@@120 $generated@@121) (= $generated@@120 $generated@@121))
 :pattern ( ($generated@@119 $generated@@120 $generated@@121))
)))
(assert (forall (($generated@@123 T@U) ($generated@@124 T@U) ) (!  (and (= ($generated@@122 ($generated@@78 $generated@@123 $generated@@124)) $generated@@123) (= ($generated@@28 ($generated@@78 $generated@@123 $generated@@124)) $generated@@124))
 :pattern ( ($generated@@78 $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@T) ) (! (= ($generated@@89 ($generated@@50 $generated@@127 $generated@@125) $generated@@126) ($generated@@41 $generated@@127 $generated@@125 $generated@@126))
 :pattern ( ($generated@@89 ($generated@@50 $generated@@127 $generated@@125) $generated@@126))
)))
(assert (forall (($generated@@128 T@U) ($generated@@129 T@U) ($generated@@130 T@U) ) (! (= ($generated@@29 $generated@@44 $generated@@128 ($generated@@88 $generated@@129) $generated@@130) (forall (($generated@@131 T@U) ) (!  (=> ($generated@@42 $generated@@128 $generated@@131) ($generated@@95 $generated@@131 $generated@@129 $generated@@130))
 :pattern ( ($generated@@42 $generated@@128 $generated@@131))
)))
 :pattern ( ($generated@@29 $generated@@44 $generated@@128 ($generated@@88 $generated@@129) $generated@@130))
)))
(assert (forall (($generated@@132 T@U) ) (! ($generated@@41 $generated@@30 $generated@@132 $generated@@75)
 :pattern ( ($generated@@41 $generated@@30 $generated@@132 $generated@@75))
)))
(assert (forall (($generated@@134 T@U) ) (! (= ($generated@@133 ($generated@@88 $generated@@134)) $generated@@134)
 :pattern ( ($generated@@88 $generated@@134))
)))
(assert (forall (($generated@@135 T@U) ) (! (= ($generated@@100 ($generated@@88 $generated@@135)) $generated)
 :pattern ( ($generated@@88 $generated@@135))
)))
(assert (forall (($generated@@137 T@U) ) (! (= ($generated@@136 ($generated@@32 $generated@@137)) $generated@@137)
 :pattern ( ($generated@@32 $generated@@137))
)))
(assert (forall (($generated@@139 T@U) ) (! (= ($generated@@138 ($generated@@31 $generated@@139)) $generated@@139)
 :pattern ( ($generated@@31 $generated@@139))
)))
(assert (forall (($generated@@140 T@U) ($generated@@141 T@T) ) (! (= ($generated@@43 $generated@@141 ($generated@@50 $generated@@141 $generated@@140)) $generated@@140)
 :pattern ( ($generated@@50 $generated@@141 $generated@@140))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ) (!  (=> (and ($generated@@39 $generated@@143) (and (or (not (= $generated@@144 $generated@@40)) (not true)) (= ($generated@@104 $generated@@144) ($generated@@32 $generated@@142)))) ($generated@@41 $generated@@44 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@143 $generated@@144) $generated@@80)) ($generated@@88 $generated@@142)))
 :pattern ( ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@143 $generated@@144) $generated@@80)) ($generated@@32 $generated@@142))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> ($generated@@89 $generated@@145 ($generated@@88 $generated@@146)) (and (= ($generated@@50 $generated@@44 ($generated@@43 $generated@@44 $generated@@145)) $generated@@145) ($generated@@41 $generated@@44 ($generated@@43 $generated@@44 $generated@@145) ($generated@@88 $generated@@146))))
 :pattern ( ($generated@@89 $generated@@145 ($generated@@88 $generated@@146)))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ) (!  (=> ($generated@@89 $generated@@148 ($generated@@32 $generated@@147)) (and (= ($generated@@50 $generated@@30 ($generated@@43 $generated@@30 $generated@@148)) $generated@@148) ($generated@@41 $generated@@30 ($generated@@43 $generated@@30 $generated@@148) ($generated@@32 $generated@@147))))
 :pattern ( ($generated@@89 $generated@@148 ($generated@@32 $generated@@147)))
)))
(assert (forall (($generated@@149 T@U) ($generated@@150 T@U) ) (!  (=> ($generated@@89 $generated@@150 ($generated@@31 $generated@@149)) (and (= ($generated@@50 $generated@@30 ($generated@@43 $generated@@30 $generated@@150)) $generated@@150) ($generated@@41 $generated@@30 ($generated@@43 $generated@@30 $generated@@150) ($generated@@31 $generated@@149))))
 :pattern ( ($generated@@89 $generated@@150 ($generated@@31 $generated@@149)))
)))
(assert (= ($generated@@100 $generated@@75) $generated@@2))
(assert (= ($generated@@101 $generated@@75) $generated@@7))
(assert (= ($generated@@100 $generated@@74) $generated@@3))
(assert (= ($generated@@101 $generated@@74) $generated@@7))
(assert (forall (($generated@@151 T@U) ($generated@@152 T@U) ) (! (= ($generated@@119 $generated@@151 $generated@@152) (forall (($generated@@153 T@U) ) (! (= ($generated@@42 $generated@@151 $generated@@153) ($generated@@42 $generated@@152 $generated@@153))
 :pattern ( ($generated@@42 $generated@@151 $generated@@153))
 :pattern ( ($generated@@42 $generated@@152 $generated@@153))
)))
 :pattern ( ($generated@@119 $generated@@151 $generated@@152))
)))
(assert  (and (forall (($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@T) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ) (! (= ($generated@@154 $generated@@157 $generated@@158 $generated@@159 ($generated@@156 $generated@@157 $generated@@158 $generated@@159 $generated@@161 $generated@@162 $generated@@163 $generated@@160) $generated@@162 $generated@@163) $generated@@160)
 :weight 0
)) (and (forall (($generated@@164 T@T) ($generated@@165 T@T) ($generated@@166 T@T) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (!  (or (= $generated@@169 $generated@@171) (= ($generated@@154 $generated@@164 $generated@@165 $generated@@166 ($generated@@156 $generated@@164 $generated@@165 $generated@@166 $generated@@168 $generated@@169 $generated@@170 $generated@@167) $generated@@171 $generated@@172) ($generated@@154 $generated@@164 $generated@@165 $generated@@166 $generated@@168 $generated@@171 $generated@@172)))
 :weight 0
)) (forall (($generated@@173 T@T) ($generated@@174 T@T) ($generated@@175 T@T) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (!  (or (= $generated@@179 $generated@@181) (= ($generated@@154 $generated@@173 $generated@@174 $generated@@175 ($generated@@156 $generated@@173 $generated@@174 $generated@@175 $generated@@177 $generated@@178 $generated@@179 $generated@@176) $generated@@180 $generated@@181) ($generated@@154 $generated@@173 $generated@@174 $generated@@175 $generated@@177 $generated@@180 $generated@@181)))
 :weight 0
)))))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ) (! (= ($generated@@16 ($generated@@154 $generated@@30 $generated@@46 $generated@@12 ($generated@@155 $generated@@182 $generated@@183 $generated@@184 $generated@@185) $generated@@186 $generated@@187))  (=> (and (or (not (= $generated@@186 $generated@@182)) (not true)) ($generated@@16 ($generated@@43 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@183 $generated@@186) $generated@@184)))) ($generated@@42 $generated@@185 ($generated@@50 $generated@@30 $generated@@186))))
 :pattern ( ($generated@@154 $generated@@30 $generated@@46 $generated@@12 ($generated@@155 $generated@@182 $generated@@183 $generated@@184 $generated@@185) $generated@@186 $generated@@187))
)))
(assert  (=> (<= 1 $generated@@36) (forall (($generated@@190 T@U) ($generated@@191 T@U) ($generated@@192 T@U) ) (!  (=> (or ($generated@@38 $generated@@190 $generated@@191 $generated@@192) (and (< 1 $generated@@36) (and ($generated@@39 $generated@@191) (and (or (not (= $generated@@192 $generated@@40)) (not true)) (and ($generated@@41 $generated@@30 $generated@@192 ($generated@@31 $generated@@190)) ($generated@@29 $generated@@30 $generated@@192 ($generated@@31 $generated@@190) $generated@@191)))))) (and (=> ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@191 $generated@@192) $generated@@49)) ($generated@@50 $generated@@30 $generated@@192)) (=> (not ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@191 $generated@@192) $generated@@49)) ($generated@@50 $generated@@30 $generated@@40))) ($generated@@188 $generated@@190 $generated@@191 $generated@@192))) (= ($generated@@37 $generated@@190 $generated@@191 $generated@@192)  (and (and ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@191 $generated@@192) $generated@@49)) ($generated@@50 $generated@@30 $generated@@192)) (not ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@191 $generated@@192) $generated@@49)) ($generated@@50 $generated@@30 $generated@@40)))) ($generated@@189 $generated@@190 $generated@@191 $generated@@192)))))
 :pattern ( ($generated@@37 $generated@@190 $generated@@191 $generated@@192) ($generated@@39 $generated@@191))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@193 () T@U)
(declare-fun $generated@@194 () T@U)
(declare-fun $generated@@195 () T@U)
(declare-fun $generated@@196 () Bool)
(declare-fun $generated@@197 () T@U)
(declare-fun $generated@@198 () Bool)
(declare-fun $generated@@199 () T@U)
(declare-fun $generated@@200 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 11) (let (($generated@@201  (and (=> (= (ControlFlow 0 3) (- 0 8)) (=> ($generated@@38 $generated@@193 $generated@@194 $generated@@195) (or ($generated@@37 $generated@@193 $generated@@194 $generated@@195) ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@195))))) (=> (=> ($generated@@38 $generated@@193 $generated@@194 $generated@@195) (or ($generated@@37 $generated@@193 $generated@@194 $generated@@195) ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@195)))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (=> ($generated@@38 $generated@@193 $generated@@194 $generated@@195) (or ($generated@@37 $generated@@193 $generated@@194 $generated@@195) (not ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@40)))))) (=> (=> ($generated@@38 $generated@@193 $generated@@194 $generated@@195) (or ($generated@@37 $generated@@193 $generated@@194 $generated@@195) (not ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@40))))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (=> ($generated@@38 $generated@@193 $generated@@194 $generated@@195) (or ($generated@@37 $generated@@193 $generated@@194 $generated@@195) ($generated@@189 $generated@@193 $generated@@194 $generated@@195)))) (=> (=> ($generated@@38 $generated@@193 $generated@@194 $generated@@195) (or ($generated@@37 $generated@@193 $generated@@194 $generated@@195) ($generated@@189 $generated@@193 $generated@@194 $generated@@195))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (and (forall (($generated@@202 T@U) ) (!  (=> (and ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@202)) (not ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@202)))) (or (not (= $generated@@202 $generated@@40)) (not true)))
 :pattern (  (or (not (= $generated@@202 $generated@@40)) (not true)))
)) (forall (($generated@@203 T@U) ) (!  (=> (and ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@203)) (not ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@203)))) (not ($generated@@16 ($generated@@43 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@203) $generated@@0)))))
 :pattern ( ($generated@@43 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@203) $generated@@0)))
)))) (=> (and (forall (($generated@@204 T@U) ) (!  (=> (and ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@204)) (not ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@204)))) (or (not (= $generated@@204 $generated@@40)) (not true)))
 :pattern (  (or (not (= $generated@@204 $generated@@40)) (not true)))
)) (forall (($generated@@205 T@U) ) (!  (=> (and ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@205)) (not ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@205)))) (not ($generated@@16 ($generated@@43 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@205) $generated@@0)))))
 :pattern ( ($generated@@43 $generated@@12 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@205) $generated@@0)))
))) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($generated@@119 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@80)) ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@80)))) (=> ($generated@@119 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@80)) ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@80))) (=> (= (ControlFlow 0 3) (- 0 2)) (= $generated@@196 ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@80)) $generated@@197)))))))))))))))
(let (($generated@@206  (=> (= $generated@@198 ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@80)) $generated@@197)) (=> (and (= $generated@@196 $generated@@198) (= (ControlFlow 0 9) 3)) $generated@@201))))
(let (($generated@@207 true))
(let (($generated@@208  (=> (= $generated@@199 ($generated@@155 $generated@@40 $generated@@194 $generated@@0 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)))) (and (=> (= (ControlFlow 0 10) 9) $generated@@206) (=> (= (ControlFlow 0 10) 1) $generated@@207)))))
(let (($generated@@209  (=> (and (and ($generated@@39 $generated@@194) ($generated@@200 $generated@@194)) (and (or (not (= $generated@@195 $generated@@40)) (not true)) (and ($generated@@41 $generated@@30 $generated@@195 ($generated@@31 $generated@@193)) ($generated@@29 $generated@@30 $generated@@195 ($generated@@31 $generated@@193) $generated@@194)))) (=> (and (and (and ($generated@@89 $generated@@197 $generated@@193) ($generated@@95 $generated@@197 $generated@@193 $generated@@194)) (= 2 $generated@@36)) (and (and ($generated@@38 $generated@@193 $generated@@194 $generated@@195) (and ($generated@@37 $generated@@193 $generated@@194 $generated@@195) (and (and ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@195)) (not ($generated@@42 ($generated@@43 $generated@@44 ($generated@@45 $generated@@46 $generated@@47 ($generated@@45 $generated@@30 ($generated@@48 $generated@@46 $generated@@47) $generated@@194 $generated@@195) $generated@@49)) ($generated@@50 $generated@@30 $generated@@40)))) ($generated@@189 $generated@@193 $generated@@194 $generated@@195)))) (= (ControlFlow 0 11) 10))) $generated@@208))))
$generated@@209))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)