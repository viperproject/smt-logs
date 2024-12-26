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
(declare-fun $generated@@14 (T@T) Int)
(declare-fun $generated@@15 () T@T)
(declare-fun $generated@@16 () T@T)
(declare-fun $generated@@17 () T@T)
(declare-fun $generated@@18 (Bool) T@U)
(declare-fun $generated@@19 (T@U) Bool)
(declare-fun $generated@@20 (Int) T@U)
(declare-fun $generated@@21 (T@U) Int)
(declare-fun $generated@@22 (Real) T@U)
(declare-fun $generated@@23 (T@U) Real)
(declare-fun $generated@@30 (T@U) Int)
(declare-fun $generated@@31 (T@U) T@U)
(declare-fun $generated@@32 (T@U) T@U)
(declare-fun $generated@@33 (T@U) Int)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@36 () T@U)
(declare-fun $generated@@37 (T@T T@U T@U) Bool)
(declare-fun $generated@@39 (T@U) Int)
(declare-fun $generated@@41 (T@U T@U) Bool)
(declare-fun $generated@@42 () T@U)
(declare-fun $generated@@44 (T@U) Int)
(declare-fun $generated@@45 () T@U)
(declare-fun $generated@@46 () T@T)
(declare-fun $generated@@48 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@49 () T@U)
(declare-fun $generated@@50 () T@U)
(declare-fun $generated@@53 () T@U)
(declare-fun $generated@@56 () T@U)
(declare-fun $generated@@57 (T@U T@U) T@U)
(declare-fun $generated@@58 (T@U) Bool)
(declare-fun $generated@@59 () T@U)
(declare-fun $generated@@60 (T@T T@U) T@U)
(declare-fun $generated@@61 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@62 () T@T)
(declare-fun $generated@@63 () T@T)
(declare-fun $generated@@64 (T@T T@T) T@T)
(declare-fun $generated@@65 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@66 (T@T) T@T)
(declare-fun $generated@@67 (T@T) T@T)
(declare-fun $generated@@89 (T@U T@U) Bool)
(declare-fun $generated@@93 (Int) Int)
(declare-fun $generated@@95 (T@T T@U) T@U)
(declare-fun $generated@@98 (T@U T@U) Bool)
(declare-fun $generated@@99 (T@U Int) T@U)
(declare-fun $generated@@103 (T@T T@U) T@U)
(declare-fun $generated@@106 () T@T)
(declare-fun $generated@@107 (T@U) T@U)
(declare-fun $generated@@108 (T@U T@U) Bool)
(declare-fun $generated@@112 (T@U) Bool)
(declare-fun $generated@@113 (T@U T@U) Bool)
(declare-fun $generated@@114 (T@U) Bool)
(declare-fun $generated@@115 (T@U) T@U)
(declare-fun $generated@@121 (T@U T@U T@U) Bool)
(declare-fun $generated@@135 () T@T)
(declare-fun $generated@@136 (T@U) T@U)
(declare-fun $generated@@149 (T@U T@U) Bool)
(declare-fun $generated@@157 (T@U) T@U)
(declare-fun $generated@@174 (T@U) T@U)
(declare-fun $generated@@177 (T@U) T@U)
(declare-fun $generated@@186 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@187 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@188 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@226 (T@U) T@U)
(declare-fun $generated@@228 (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@14 $generated@@15) 0) (= ($generated@@14 $generated@@16) 1)) (= ($generated@@14 $generated@@17) 2)) (forall (($generated@@24 Bool) ) (! (= ($generated@@19 ($generated@@18 $generated@@24)) $generated@@24)
 :pattern ( ($generated@@18 $generated@@24))
))) (forall (($generated@@25 T@U) ) (! (= ($generated@@18 ($generated@@19 $generated@@25)) $generated@@25)
 :pattern ( ($generated@@19 $generated@@25))
))) (forall (($generated@@26 Int) ) (! (= ($generated@@21 ($generated@@20 $generated@@26)) $generated@@26)
 :pattern ( ($generated@@20 $generated@@26))
))) (forall (($generated@@27 T@U) ) (! (= ($generated@@20 ($generated@@21 $generated@@27)) $generated@@27)
 :pattern ( ($generated@@21 $generated@@27))
))) (forall (($generated@@28 Real) ) (! (= ($generated@@23 ($generated@@22 $generated@@28)) $generated@@28)
 :pattern ( ($generated@@22 $generated@@28))
))) (forall (($generated@@29 T@U) ) (! (= ($generated@@22 ($generated@@23 $generated@@29)) $generated@@29)
 :pattern ( ($generated@@23 $generated@@29))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7 $generated@@8 $generated@@9 $generated@@10 $generated@@11 $generated@@12 $generated@@13)
)
(assert (= ($generated@@30 $generated@@3) 0))
(assert (= ($generated@@31 $generated) $generated@@0))
(assert (= ($generated@@32 $generated@@3) $generated@@4))
(assert (forall (($generated@@38 T@U) ) (!  (=> (and (or (not (= $generated@@38 $generated@@34)) (not true)) (= ($generated@@35 $generated@@38) $generated@@36)) ($generated@@37 $generated@@16 ($generated@@20 ($generated@@33 $generated@@38)) $generated))
 :pattern ( ($generated@@33 $generated@@38))
)))
(assert (forall (($generated@@40 T@U) ) (!  (=> (and (or (not (= $generated@@40 $generated@@34)) (not true)) (= ($generated@@35 $generated@@40) $generated@@36)) ($generated@@37 $generated@@16 ($generated@@20 ($generated@@39 $generated@@40)) $generated))
 :pattern ( ($generated@@39 $generated@@40))
)))
(assert (forall (($generated@@43 T@U) ) (!  (not ($generated@@41 $generated@@42 $generated@@43))
 :pattern ( ($generated@@41 $generated@@42 $generated@@43))
)))
(assert (= ($generated@@44 $generated@@45) 0))
(assert (= ($generated@@14 $generated@@46) 3))
(assert (forall (($generated@@47 T@U) ) (! (= ($generated@@37 $generated@@46 $generated@@47 $generated@@36)  (or (= $generated@@47 $generated@@34) (= ($generated@@35 $generated@@47) $generated@@36)))
 :pattern ( ($generated@@37 $generated@@46 $generated@@47 $generated@@36))
)))
(assert (forall (($generated@@51 T@U) ($generated@@52 T@U) ) (! (= ($generated@@48 $generated@@46 $generated@@51 $generated@@49 $generated@@52) ($generated@@48 $generated@@46 $generated@@51 $generated@@50 $generated@@52))
 :pattern ( ($generated@@48 $generated@@46 $generated@@51 $generated@@49 $generated@@52))
 :pattern ( ($generated@@48 $generated@@46 $generated@@51 $generated@@50 $generated@@52))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@U) ) (! (= ($generated@@48 $generated@@46 $generated@@54 $generated@@53 $generated@@55) ($generated@@48 $generated@@46 $generated@@54 $generated@@36 $generated@@55))
 :pattern ( ($generated@@48 $generated@@46 $generated@@54 $generated@@53 $generated@@55))
 :pattern ( ($generated@@48 $generated@@46 $generated@@54 $generated@@36 $generated@@55))
)))
(assert (= ($generated@@30 $generated@@56) 0))
(assert (= ($generated@@57 $generated@@8 $generated@@12) $generated@@56))
(assert ($generated@@58 $generated@@56))
(assert (= ($generated@@30 $generated@@59) 0))
(assert (= ($generated@@57 $generated@@8 $generated@@13) $generated@@59))
(assert ($generated@@58 $generated@@59))
(assert  (and (and (and (and (and (and (forall (($generated@@68 T@T) ($generated@@69 T@T) ($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@U) ) (! (= ($generated@@61 $generated@@68 $generated@@69 ($generated@@65 $generated@@68 $generated@@69 $generated@@71 $generated@@72 $generated@@70) $generated@@72) $generated@@70)
 :weight 0
)) (forall (($generated@@73 T@T) ($generated@@74 T@T) ($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ) (!  (or (= $generated@@77 $generated@@78) (= ($generated@@61 $generated@@73 $generated@@74 ($generated@@65 $generated@@73 $generated@@74 $generated@@76 $generated@@77 $generated@@75) $generated@@78) ($generated@@61 $generated@@73 $generated@@74 $generated@@76 $generated@@78)))
 :weight 0
))) (= ($generated@@14 $generated@@62) 4)) (= ($generated@@14 $generated@@63) 5)) (forall (($generated@@79 T@T) ($generated@@80 T@T) ) (= ($generated@@14 ($generated@@64 $generated@@79 $generated@@80)) 6))) (forall (($generated@@81 T@T) ($generated@@82 T@T) ) (! (= ($generated@@66 ($generated@@64 $generated@@81 $generated@@82)) $generated@@81)
 :pattern ( ($generated@@64 $generated@@81 $generated@@82))
))) (forall (($generated@@83 T@T) ($generated@@84 T@T) ) (! (= ($generated@@67 ($generated@@64 $generated@@83 $generated@@84)) $generated@@84)
 :pattern ( ($generated@@64 $generated@@83 $generated@@84))
))))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (! (= ($generated@@48 $generated@@46 $generated@@85 $generated@@50 $generated@@86)  (or (= $generated@@85 $generated@@34) ($generated@@19 ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@86 $generated@@85) $generated@@3)))))
 :pattern ( ($generated@@48 $generated@@46 $generated@@85 $generated@@50 $generated@@86))
)))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ) (! (= ($generated@@48 $generated@@46 $generated@@87 $generated@@36 $generated@@88)  (or (= $generated@@87 $generated@@34) ($generated@@19 ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@88 $generated@@87) $generated@@3)))))
 :pattern ( ($generated@@48 $generated@@46 $generated@@87 $generated@@36 $generated@@88))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (!  (=> ($generated@@89 $generated@@90 $generated@@91) (forall (($generated@@92 T@U) ) (!  (=> ($generated@@19 ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@90 $generated@@92) $generated@@3))) ($generated@@19 ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@91 $generated@@92) $generated@@3))))
 :pattern ( ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@91 $generated@@92) $generated@@3))
)))
 :pattern ( ($generated@@89 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@94 Int) ) (! (= ($generated@@93 $generated@@94) $generated@@94)
 :pattern ( ($generated@@93 $generated@@94))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@T) ) (! (= ($generated@@95 $generated@@97 $generated@@96) $generated@@96)
 :pattern ( ($generated@@95 $generated@@97 $generated@@96))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@98 $generated@@100 $generated@@101)  (and (= ($generated@@44 $generated@@100) ($generated@@44 $generated@@101)) (forall (($generated@@102 Int) ) (!  (=> (and (<= 0 $generated@@102) (< $generated@@102 ($generated@@44 $generated@@100))) (= ($generated@@99 $generated@@100 $generated@@102) ($generated@@99 $generated@@101 $generated@@102)))
 :pattern ( ($generated@@99 $generated@@100 $generated@@102))
 :pattern ( ($generated@@99 $generated@@101 $generated@@102))
))))
 :pattern ( ($generated@@98 $generated@@100 $generated@@101))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@T) ) (! (= ($generated@@103 $generated@@105 ($generated@@60 $generated@@105 $generated@@104)) $generated@@104)
 :pattern ( ($generated@@60 $generated@@105 $generated@@104))
)))
(assert (= ($generated@@14 $generated@@106) 7))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@U) ) (! (= ($generated@@37 $generated@@106 $generated@@109 ($generated@@107 $generated@@110)) (forall (($generated@@111 T@U) ) (!  (=> ($generated@@41 $generated@@109 $generated@@111) ($generated@@108 $generated@@111 $generated@@110))
 :pattern ( ($generated@@41 $generated@@109 $generated@@111))
)))
 :pattern ( ($generated@@37 $generated@@106 $generated@@109 ($generated@@107 $generated@@110)))
)))
(assert ($generated@@58 $generated@@3))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (!  (=> (and (and (and ($generated@@114 $generated@@116) ($generated@@114 $generated@@117)) (and (or (not (= $generated@@118 $generated@@34)) (not true)) ($generated@@37 $generated@@46 $generated@@118 $generated@@53))) (and ($generated@@112 $generated@@116) ($generated@@89 $generated@@116 $generated@@117))) (=> (forall (($generated@@119 T@U) ($generated@@120 T@U) )  (=> (and (or (not (= $generated@@119 $generated@@34)) (not true)) (or (or (= $generated@@119 $generated@@118) ($generated@@41 ($generated@@115 $generated@@118) ($generated@@103 $generated@@46 $generated@@119))) ($generated@@41 ($generated@@60 $generated@@106 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@116 $generated@@118) $generated@@59)) ($generated@@103 $generated@@46 $generated@@119)))) (= ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@116 $generated@@119) $generated@@120) ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@117 $generated@@119) $generated@@120)))) (= ($generated@@113 $generated@@116 $generated@@118) ($generated@@113 $generated@@117 $generated@@118))))
 :pattern ( ($generated@@112 $generated@@116) ($generated@@89 $generated@@116 $generated@@117) ($generated@@113 $generated@@117 $generated@@118))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@T) ) (! (= ($generated@@121 ($generated@@103 $generated@@125 $generated@@122) $generated@@123 $generated@@124) ($generated@@48 $generated@@125 $generated@@122 $generated@@123 $generated@@124))
 :pattern ( ($generated@@121 ($generated@@103 $generated@@125 $generated@@122) $generated@@123 $generated@@124))
)))
(assert (forall (($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ($generated@@129 T@U) ) (!  (=> ($generated@@89 $generated@@126 $generated@@127) (=> ($generated@@121 $generated@@128 $generated@@129 $generated@@126) ($generated@@121 $generated@@128 $generated@@129 $generated@@127)))
 :pattern ( ($generated@@89 $generated@@126 $generated@@127) ($generated@@121 $generated@@128 $generated@@129 $generated@@126))
)))
(assert (forall (($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@T) ) (!  (=> ($generated@@89 $generated@@130 $generated@@131) (=> ($generated@@48 $generated@@134 $generated@@132 $generated@@133 $generated@@130) ($generated@@48 $generated@@134 $generated@@132 $generated@@133 $generated@@131)))
 :pattern ( ($generated@@89 $generated@@130 $generated@@131) ($generated@@48 $generated@@134 $generated@@132 $generated@@133 $generated@@130))
)))
(assert (= ($generated@@14 $generated@@135) 8))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ) (!  (=> (and (and ($generated@@114 $generated@@137) (and (or (not (= $generated@@138 $generated@@34)) (not true)) (= ($generated@@35 $generated@@138) $generated@@36))) ($generated@@19 ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@137 $generated@@138) $generated@@3)))) ($generated@@48 $generated@@135 ($generated@@60 $generated@@135 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@137 $generated@@138) $generated@@56)) ($generated@@136 $generated) $generated@@137))
 :pattern ( ($generated@@60 $generated@@135 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@137 $generated@@138) $generated@@56)))
)))
(assert (forall (($generated@@139 T@U) ) (!  (=> ($generated@@108 $generated@@139 $generated@@50) (and (= ($generated@@103 $generated@@46 ($generated@@60 $generated@@46 $generated@@139)) $generated@@139) ($generated@@37 $generated@@46 ($generated@@60 $generated@@46 $generated@@139) $generated@@50)))
 :pattern ( ($generated@@108 $generated@@139 $generated@@50))
)))
(assert (forall (($generated@@140 T@U) ) (!  (=> ($generated@@108 $generated@@140 $generated@@49) (and (= ($generated@@103 $generated@@46 ($generated@@60 $generated@@46 $generated@@140)) $generated@@140) ($generated@@37 $generated@@46 ($generated@@60 $generated@@46 $generated@@140) $generated@@49)))
 :pattern ( ($generated@@108 $generated@@140 $generated@@49))
)))
(assert (forall (($generated@@141 T@U) ) (!  (=> ($generated@@108 $generated@@141 $generated@@53) (and (= ($generated@@103 $generated@@46 ($generated@@60 $generated@@46 $generated@@141)) $generated@@141) ($generated@@37 $generated@@46 ($generated@@60 $generated@@46 $generated@@141) $generated@@53)))
 :pattern ( ($generated@@108 $generated@@141 $generated@@53))
)))
(assert (forall (($generated@@142 T@U) ) (!  (=> ($generated@@108 $generated@@142 $generated@@36) (and (= ($generated@@103 $generated@@46 ($generated@@60 $generated@@46 $generated@@142)) $generated@@142) ($generated@@37 $generated@@46 ($generated@@60 $generated@@46 $generated@@142) $generated@@36)))
 :pattern ( ($generated@@108 $generated@@142 $generated@@36))
)))
(assert (forall (($generated@@143 T@U) ) (! (= ($generated@@37 $generated@@46 $generated@@143 $generated@@49)  (and ($generated@@37 $generated@@46 $generated@@143 $generated@@50) (or (not (= $generated@@143 $generated@@34)) (not true))))
 :pattern ( ($generated@@37 $generated@@46 $generated@@143 $generated@@49))
 :pattern ( ($generated@@37 $generated@@46 $generated@@143 $generated@@50))
)))
(assert (forall (($generated@@144 T@U) ) (! (= ($generated@@37 $generated@@46 $generated@@144 $generated@@53)  (and ($generated@@37 $generated@@46 $generated@@144 $generated@@36) (or (not (= $generated@@144 $generated@@34)) (not true))))
 :pattern ( ($generated@@37 $generated@@46 $generated@@144 $generated@@53))
 :pattern ( ($generated@@37 $generated@@46 $generated@@144 $generated@@36))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> (and ($generated@@114 $generated@@145) (and (or (not (= $generated@@146 $generated@@34)) (not true)) (= ($generated@@35 $generated@@146) $generated@@36))) ($generated@@37 $generated@@106 ($generated@@60 $generated@@106 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@145 $generated@@146) $generated@@59)) ($generated@@107 $generated@@50)))
 :pattern ( ($generated@@60 $generated@@106 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@145 $generated@@146) $generated@@59)))
)))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ) (!  (=> (and (and ($generated@@114 $generated@@147) (and (or (not (= $generated@@148 $generated@@34)) (not true)) (= ($generated@@35 $generated@@148) $generated@@36))) ($generated@@19 ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@147 $generated@@148) $generated@@3)))) ($generated@@48 $generated@@106 ($generated@@60 $generated@@106 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@147 $generated@@148) $generated@@59)) ($generated@@107 $generated@@50) $generated@@147))
 :pattern ( ($generated@@60 $generated@@106 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@147 $generated@@148) $generated@@59)))
)))
(assert (forall (($generated@@150 T@U) ($generated@@151 T@U) ) (!  (=> ($generated@@149 $generated@@150 $generated@@151) (= $generated@@150 $generated@@151))
 :pattern ( ($generated@@149 $generated@@150 $generated@@151))
)))
(assert (forall (($generated@@152 T@U) ($generated@@153 T@U) ) (!  (=> ($generated@@98 $generated@@152 $generated@@153) (= $generated@@152 $generated@@153))
 :pattern ( ($generated@@98 $generated@@152 $generated@@153))
)))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (!  (=> (or (not (= $generated@@154 $generated@@156)) (not true)) (=> (and ($generated@@89 $generated@@154 $generated@@155) ($generated@@89 $generated@@155 $generated@@156)) ($generated@@89 $generated@@154 $generated@@156)))
 :pattern ( ($generated@@89 $generated@@154 $generated@@155) ($generated@@89 $generated@@155 $generated@@156))
)))
(assert (forall (($generated@@158 T@U) ($generated@@159 T@U) ) (!  (and (= ($generated@@157 ($generated@@57 $generated@@158 $generated@@159)) $generated@@158) (= ($generated@@32 ($generated@@57 $generated@@158 $generated@@159)) $generated@@159))
 :pattern ( ($generated@@57 $generated@@158 $generated@@159))
)))
(assert (forall (($generated@@160 T@U) ) (!  (=> ($generated@@108 $generated@@160 $generated) (and (= ($generated@@103 $generated@@16 ($generated@@60 $generated@@16 $generated@@160)) $generated@@160) ($generated@@37 $generated@@16 ($generated@@60 $generated@@16 $generated@@160) $generated)))
 :pattern ( ($generated@@108 $generated@@160 $generated))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@T) ) (! (= ($generated@@108 ($generated@@103 $generated@@163 $generated@@161) $generated@@162) ($generated@@37 $generated@@163 $generated@@161 $generated@@162))
 :pattern ( ($generated@@108 ($generated@@103 $generated@@163 $generated@@161) $generated@@162))
)))
(assert (forall (($generated@@164 T@U) ) (! (<= 0 ($generated@@44 $generated@@164))
 :pattern ( ($generated@@44 $generated@@164))
)))
(assert (forall (($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (! (= ($generated@@48 $generated@@106 $generated@@165 ($generated@@107 $generated@@166) $generated@@167) (forall (($generated@@168 T@U) ) (!  (=> ($generated@@41 $generated@@165 $generated@@168) ($generated@@121 $generated@@168 $generated@@166 $generated@@167))
 :pattern ( ($generated@@41 $generated@@165 $generated@@168))
)))
 :pattern ( ($generated@@48 $generated@@106 $generated@@165 ($generated@@107 $generated@@166) $generated@@167))
)))
(assert (forall (($generated@@169 T@U) ) (! ($generated@@37 $generated@@46 $generated@@169 $generated@@50)
 :pattern ( ($generated@@37 $generated@@46 $generated@@169 $generated@@50))
)))
(assert (forall (($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ) (! (= ($generated@@48 $generated@@135 $generated@@170 ($generated@@136 $generated@@171) $generated@@172) (forall (($generated@@173 Int) ) (!  (=> (and (<= 0 $generated@@173) (< $generated@@173 ($generated@@44 $generated@@170))) ($generated@@121 ($generated@@99 $generated@@170 $generated@@173) $generated@@171 $generated@@172))
 :pattern ( ($generated@@99 $generated@@170 $generated@@173))
)))
 :pattern ( ($generated@@48 $generated@@135 $generated@@170 ($generated@@136 $generated@@171) $generated@@172))
)))
(assert (forall (($generated@@175 T@U) ) (! (= ($generated@@174 ($generated@@107 $generated@@175)) $generated@@175)
 :pattern ( ($generated@@107 $generated@@175))
)))
(assert (forall (($generated@@176 T@U) ) (! (= ($generated@@31 ($generated@@107 $generated@@176)) $generated@@1)
 :pattern ( ($generated@@107 $generated@@176))
)))
(assert (forall (($generated@@178 T@U) ) (! (= ($generated@@177 ($generated@@136 $generated@@178)) $generated@@178)
 :pattern ( ($generated@@136 $generated@@178))
)))
(assert (forall (($generated@@179 T@U) ) (! (= ($generated@@31 ($generated@@136 $generated@@179)) $generated@@2)
 :pattern ( ($generated@@136 $generated@@179))
)))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@T) ) (! (= ($generated@@60 $generated@@181 ($generated@@103 $generated@@181 $generated@@180)) $generated@@180)
 :pattern ( ($generated@@103 $generated@@181 $generated@@180))
)))
(assert (forall (($generated@@182 T@U) ($generated@@183 T@U) ) (!  (=> (and (and ($generated@@114 $generated@@182) (and (or (not (= $generated@@183 $generated@@34)) (not true)) (= ($generated@@35 $generated@@183) $generated@@36))) ($generated@@19 ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@182 $generated@@183) $generated@@3)))) ($generated@@48 $generated@@16 ($generated@@20 ($generated@@33 $generated@@183)) $generated $generated@@182))
 :pattern ( ($generated@@33 $generated@@183) ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@182 $generated@@183) $generated@@3)))
)))
(assert (forall (($generated@@184 T@U) ($generated@@185 T@U) ) (!  (=> (and (and ($generated@@114 $generated@@184) (and (or (not (= $generated@@185 $generated@@34)) (not true)) (= ($generated@@35 $generated@@185) $generated@@36))) ($generated@@19 ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@184 $generated@@185) $generated@@3)))) ($generated@@48 $generated@@16 ($generated@@20 ($generated@@39 $generated@@185)) $generated $generated@@184))
 :pattern ( ($generated@@39 $generated@@185) ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@184 $generated@@185) $generated@@3)))
)))
(assert  (and (forall (($generated@@189 T@T) ($generated@@190 T@T) ($generated@@191 T@T) ($generated@@192 T@U) ($generated@@193 T@U) ($generated@@194 T@U) ($generated@@195 T@U) ) (! (= ($generated@@186 $generated@@189 $generated@@190 $generated@@191 ($generated@@188 $generated@@189 $generated@@190 $generated@@191 $generated@@193 $generated@@194 $generated@@195 $generated@@192) $generated@@194 $generated@@195) $generated@@192)
 :weight 0
)) (and (forall (($generated@@196 T@T) ($generated@@197 T@T) ($generated@@198 T@T) ($generated@@199 T@U) ($generated@@200 T@U) ($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ) (!  (or (= $generated@@201 $generated@@203) (= ($generated@@186 $generated@@196 $generated@@197 $generated@@198 ($generated@@188 $generated@@196 $generated@@197 $generated@@198 $generated@@200 $generated@@201 $generated@@202 $generated@@199) $generated@@203 $generated@@204) ($generated@@186 $generated@@196 $generated@@197 $generated@@198 $generated@@200 $generated@@203 $generated@@204)))
 :weight 0
)) (forall (($generated@@205 T@T) ($generated@@206 T@T) ($generated@@207 T@T) ($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ($generated@@213 T@U) ) (!  (or (= $generated@@211 $generated@@213) (= ($generated@@186 $generated@@205 $generated@@206 $generated@@207 ($generated@@188 $generated@@205 $generated@@206 $generated@@207 $generated@@209 $generated@@210 $generated@@211 $generated@@208) $generated@@212 $generated@@213) ($generated@@186 $generated@@205 $generated@@206 $generated@@207 $generated@@209 $generated@@212 $generated@@213)))
 :weight 0
)))))
(assert (forall (($generated@@214 T@U) ($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 Bool) ($generated@@218 T@U) ($generated@@219 T@U) ) (! (= ($generated@@19 ($generated@@186 $generated@@46 $generated@@62 $generated@@15 ($generated@@187 $generated@@214 $generated@@215 $generated@@216 $generated@@217) $generated@@218 $generated@@219))  (=> (and (or (not (= $generated@@218 $generated@@214)) (not true)) ($generated@@19 ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@215 $generated@@218) $generated@@216)))) $generated@@217))
 :pattern ( ($generated@@186 $generated@@46 $generated@@62 $generated@@15 ($generated@@187 $generated@@214 $generated@@215 $generated@@216 $generated@@217) $generated@@218 $generated@@219))
)))
(assert (forall (($generated@@220 T@U) ($generated@@221 T@U) ) (!  (=> ($generated@@108 $generated@@220 ($generated@@107 $generated@@221)) (and (= ($generated@@103 $generated@@106 ($generated@@60 $generated@@106 $generated@@220)) $generated@@220) ($generated@@37 $generated@@106 ($generated@@60 $generated@@106 $generated@@220) ($generated@@107 $generated@@221))))
 :pattern ( ($generated@@108 $generated@@220 ($generated@@107 $generated@@221)))
)))
(assert (forall (($generated@@222 T@U) ($generated@@223 T@U) ) (!  (=> ($generated@@108 $generated@@222 ($generated@@136 $generated@@223)) (and (= ($generated@@103 $generated@@135 ($generated@@60 $generated@@135 $generated@@222)) $generated@@222) ($generated@@37 $generated@@135 ($generated@@60 $generated@@135 $generated@@222) ($generated@@136 $generated@@223))))
 :pattern ( ($generated@@108 $generated@@222 ($generated@@136 $generated@@223)))
)))
(assert (forall (($generated@@224 T@U) ($generated@@225 T@U) ) (!  (=> (and ($generated@@114 $generated@@224) (and (or (not (= $generated@@225 $generated@@34)) (not true)) (= ($generated@@35 $generated@@225) $generated@@36))) ($generated@@37 $generated@@135 ($generated@@60 $generated@@135 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@224 $generated@@225) $generated@@56)) ($generated@@136 $generated)))
 :pattern ( ($generated@@60 $generated@@135 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@224 $generated@@225) $generated@@56)))
)))
(assert (= ($generated@@31 $generated@@50) $generated@@5))
(assert (= ($generated@@226 $generated@@50) $generated@@10))
(assert (= ($generated@@31 $generated@@49) $generated@@6))
(assert (= ($generated@@226 $generated@@49) $generated@@10))
(assert (= ($generated@@31 $generated@@53) $generated@@7))
(assert (= ($generated@@226 $generated@@53) $generated@@11))
(assert (= ($generated@@31 $generated@@36) $generated@@9))
(assert (= ($generated@@226 $generated@@36) $generated@@11))
(assert (forall (($generated@@227 T@U) ) (!  (=> (and (or (not (= $generated@@227 $generated@@34)) (not true)) (= ($generated@@35 $generated@@227) $generated@@36)) ($generated@@37 $generated@@106 ($generated@@115 $generated@@227) ($generated@@107 $generated@@50)))
 :pattern ( ($generated@@115 $generated@@227))
)))
(assert (forall (($generated@@229 T@U) ) (!  (=> (and (or (not (= $generated@@229 $generated@@34)) (not true)) (= ($generated@@35 $generated@@229) $generated@@36)) ($generated@@37 $generated@@106 ($generated@@228 $generated@@229) ($generated@@107 $generated@@50)))
 :pattern ( ($generated@@228 $generated@@229))
)))
(assert (forall (($generated@@230 T@U) ($generated@@231 T@U) ) (! (= ($generated@@149 $generated@@230 $generated@@231) (forall (($generated@@232 T@U) ) (! (= ($generated@@41 $generated@@230 $generated@@232) ($generated@@41 $generated@@231 $generated@@232))
 :pattern ( ($generated@@41 $generated@@230 $generated@@232))
 :pattern ( ($generated@@41 $generated@@231 $generated@@232))
)))
 :pattern ( ($generated@@149 $generated@@230 $generated@@231))
)))
(assert (forall (($generated@@233 T@U) ($generated@@234 T@U) ) (!  (=> (and (and ($generated@@114 $generated@@233) (and (or (not (= $generated@@234 $generated@@34)) (not true)) (= ($generated@@35 $generated@@234) $generated@@36))) ($generated@@19 ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@233 $generated@@234) $generated@@3)))) ($generated@@48 $generated@@106 ($generated@@115 $generated@@234) ($generated@@107 $generated@@50) $generated@@233))
 :pattern ( ($generated@@115 $generated@@234) ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@233 $generated@@234) $generated@@3)))
)))
(assert (forall (($generated@@235 T@U) ($generated@@236 T@U) ) (!  (=> (and (and ($generated@@114 $generated@@235) (and (or (not (= $generated@@236 $generated@@34)) (not true)) (= ($generated@@35 $generated@@236) $generated@@36))) ($generated@@19 ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@235 $generated@@236) $generated@@3)))) ($generated@@48 $generated@@106 ($generated@@228 $generated@@236) ($generated@@107 $generated@@50) $generated@@235))
 :pattern ( ($generated@@228 $generated@@236) ($generated@@60 $generated@@15 ($generated@@61 $generated@@62 $generated@@63 ($generated@@61 $generated@@46 ($generated@@64 $generated@@62 $generated@@63) $generated@@235 $generated@@236) $generated@@3)))
)))
(assert (forall (($generated@@237 Int) ) (! (= ($generated@@103 $generated@@16 ($generated@@20 ($generated@@93 $generated@@237))) ($generated@@95 $generated@@63 ($generated@@103 $generated@@16 ($generated@@20 $generated@@237))))
 :pattern ( ($generated@@103 $generated@@16 ($generated@@20 ($generated@@93 $generated@@237))))
)))
(assert (forall (($generated@@238 T@U) ($generated@@239 T@T) ) (! (= ($generated@@103 $generated@@239 ($generated@@95 $generated@@239 $generated@@238)) ($generated@@95 $generated@@63 ($generated@@103 $generated@@239 $generated@@238)))
 :pattern ( ($generated@@103 $generated@@239 ($generated@@95 $generated@@239 $generated@@238)))
)))
(assert (forall (($generated@@240 T@U) ) (!  (=> (= ($generated@@44 $generated@@240) 0) (= $generated@@240 $generated@@45))
 :pattern ( ($generated@@44 $generated@@240))
)))
(assert (forall (($generated@@241 T@U) ($generated@@242 T@U) ) (! ($generated@@48 $generated@@16 $generated@@242 $generated $generated@@241)
 :pattern ( ($generated@@48 $generated@@16 $generated@@242 $generated $generated@@241))
)))
(assert (forall (($generated@@243 T@U) ($generated@@244 T@U) ) (! (= ($generated@@37 $generated@@135 $generated@@243 ($generated@@136 $generated@@244)) (forall (($generated@@245 Int) ) (!  (=> (and (<= 0 $generated@@245) (< $generated@@245 ($generated@@44 $generated@@243))) ($generated@@108 ($generated@@99 $generated@@243 $generated@@245) $generated@@244))
 :pattern ( ($generated@@99 $generated@@243 $generated@@245))
)))
 :pattern ( ($generated@@37 $generated@@135 $generated@@243 ($generated@@136 $generated@@244)))
)))
(assert (forall (($generated@@246 T@U) ) (! ($generated@@37 $generated@@16 $generated@@246 $generated)
 :pattern ( ($generated@@37 $generated@@16 $generated@@246 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)