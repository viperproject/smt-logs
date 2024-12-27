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
(declare-fun $generated@@33 (T@U) Bool)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@35 (T@U T@U) Bool)
(declare-fun $generated@@36 () T@U)
(declare-fun $generated@@38 (T@T T@U T@U) Bool)
(declare-fun $generated@@39 () T@T)
(declare-fun $generated@@40 () T@U)
(declare-fun $generated@@41 (T@U) T@U)
(declare-fun $generated@@43 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@44 () T@U)
(declare-fun $generated@@45 () T@U)
(declare-fun $generated@@48 () T@U)
(declare-fun $generated@@49 () T@U)
(declare-fun $generated@@52 () T@U)
(declare-fun $generated@@55 () T@U)
(declare-fun $generated@@56 (T@U T@U) T@U)
(declare-fun $generated@@57 (T@U) Bool)
(declare-fun $generated@@58 (T@U) Bool)
(declare-fun $generated@@59 (T@U T@U) Bool)
(declare-fun $generated@@60 (T@U T@U T@U) Bool)
(declare-fun $generated@@61 (T@U) Bool)
(declare-fun $generated@@62 (T@T T@U) T@U)
(declare-fun $generated@@63 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@64 () T@T)
(declare-fun $generated@@65 () T@T)
(declare-fun $generated@@66 (T@T T@T) T@T)
(declare-fun $generated@@67 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@68 (T@T) T@T)
(declare-fun $generated@@69 (T@T) T@T)
(declare-fun $generated@@93 (T@U T@U T@U) Bool)
(declare-fun $generated@@109 (T@T T@U) T@U)
(declare-fun $generated@@112 (T@U T@U) Bool)
(declare-fun $generated@@116 (T@T T@U) T@U)
(declare-fun $generated@@119 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@120 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@121 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@156 () Int)
(declare-fun $generated@@157 (T@U T@U T@U) Bool)
(declare-fun $generated@@173 (T@U T@U T@U) Bool)
(declare-fun $generated@@180 (T@U) T@U)
(declare-fun $generated@@189 (T@U) T@U)
(declare-fun $generated@@190 (T@U) Bool)
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
(assert (= ($generated@@30 $generated@@1) 0))
(assert (= ($generated@@31 $generated) $generated@@0))
(assert (= ($generated@@32 $generated@@1) $generated@@2))
(assert ($generated@@33 $generated@@34))
(assert (forall (($generated@@37 T@U) ) (!  (not ($generated@@35 $generated@@36 $generated@@37))
 :pattern ( ($generated@@35 $generated@@36 $generated@@37))
)))
(assert (= ($generated@@14 $generated@@39) 3))
(assert (forall (($generated@@42 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@42 $generated@@34)  (or (= $generated@@42 $generated@@40) (= ($generated@@41 $generated@@42) $generated@@34)))
 :pattern ( ($generated@@38 $generated@@39 $generated@@42 $generated@@34))
)))
(assert (forall (($generated@@46 T@U) ($generated@@47 T@U) ) (! (= ($generated@@43 $generated@@39 $generated@@46 $generated@@44 $generated@@47) ($generated@@43 $generated@@39 $generated@@46 $generated@@45 $generated@@47))
 :pattern ( ($generated@@43 $generated@@39 $generated@@46 $generated@@44 $generated@@47))
 :pattern ( ($generated@@43 $generated@@39 $generated@@46 $generated@@45 $generated@@47))
)))
(assert (forall (($generated@@50 T@U) ($generated@@51 T@U) ) (! (= ($generated@@43 $generated@@39 $generated@@50 $generated@@48 $generated@@51) ($generated@@43 $generated@@39 $generated@@50 $generated@@49 $generated@@51))
 :pattern ( ($generated@@43 $generated@@39 $generated@@50 $generated@@48 $generated@@51))
 :pattern ( ($generated@@43 $generated@@39 $generated@@50 $generated@@49 $generated@@51))
)))
(assert (forall (($generated@@53 T@U) ($generated@@54 T@U) ) (! (= ($generated@@43 $generated@@39 $generated@@53 $generated@@52 $generated@@54) ($generated@@43 $generated@@39 $generated@@53 $generated@@34 $generated@@54))
 :pattern ( ($generated@@43 $generated@@39 $generated@@53 $generated@@52 $generated@@54))
 :pattern ( ($generated@@43 $generated@@39 $generated@@53 $generated@@34 $generated@@54))
)))
(assert (= ($generated@@30 $generated@@55) 0))
(assert (= ($generated@@56 $generated@@8 $generated@@13) $generated@@55))
(assert  (not ($generated@@57 $generated@@55)))
(assert  (and (and (and (and (and (and (forall (($generated@@70 T@T) ($generated@@71 T@T) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ) (! (= ($generated@@63 $generated@@70 $generated@@71 ($generated@@67 $generated@@70 $generated@@71 $generated@@73 $generated@@74 $generated@@72) $generated@@74) $generated@@72)
 :weight 0
)) (forall (($generated@@75 T@T) ($generated@@76 T@T) ($generated@@77 T@U) ($generated@@78 T@U) ($generated@@79 T@U) ($generated@@80 T@U) ) (!  (or (= $generated@@79 $generated@@80) (= ($generated@@63 $generated@@75 $generated@@76 ($generated@@67 $generated@@75 $generated@@76 $generated@@78 $generated@@79 $generated@@77) $generated@@80) ($generated@@63 $generated@@75 $generated@@76 $generated@@78 $generated@@80)))
 :weight 0
))) (= ($generated@@14 $generated@@64) 4)) (= ($generated@@14 $generated@@65) 5)) (forall (($generated@@81 T@T) ($generated@@82 T@T) ) (= ($generated@@14 ($generated@@66 $generated@@81 $generated@@82)) 6))) (forall (($generated@@83 T@T) ($generated@@84 T@T) ) (! (= ($generated@@68 ($generated@@66 $generated@@83 $generated@@84)) $generated@@83)
 :pattern ( ($generated@@66 $generated@@83 $generated@@84))
))) (forall (($generated@@85 T@T) ($generated@@86 T@T) ) (! (= ($generated@@69 ($generated@@66 $generated@@85 $generated@@86)) $generated@@86)
 :pattern ( ($generated@@66 $generated@@85 $generated@@86))
))))
(assert (forall (($generated@@87 T@U) ($generated@@88 T@U) ($generated@@89 T@U) ($generated@@90 T@U) ) (!  (=> (and (and (and ($generated@@61 $generated@@88) ($generated@@61 $generated@@89)) (and (or (not (= $generated@@90 $generated@@40)) (not true)) (and ($generated@@38 $generated@@39 $generated@@90 $generated@@52) ($generated@@43 $generated@@39 $generated@@90 $generated@@52 $generated@@88)))) (and ($generated@@58 $generated@@88) ($generated@@59 $generated@@88 $generated@@89))) (=> (forall (($generated@@91 T@U) ($generated@@92 T@U) )  (=> (and (or (not (= $generated@@91 $generated@@40)) (not true)) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@88 $generated@@91) $generated@@1)))) (= ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@88 $generated@@91) $generated@@92) ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@89 $generated@@91) $generated@@92)))) (= ($generated@@60 $generated@@87 $generated@@88 $generated@@90) ($generated@@60 $generated@@87 $generated@@89 $generated@@90))))
 :pattern ( ($generated@@58 $generated@@88) ($generated@@59 $generated@@88 $generated@@89) ($generated@@60 $generated@@87 $generated@@89 $generated@@90))
)))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@U) ) (!  (=> (and (and (and ($generated@@61 $generated@@95) ($generated@@61 $generated@@96)) (and (or (not (= $generated@@97 $generated@@40)) (not true)) (and ($generated@@38 $generated@@39 $generated@@97 $generated@@52) ($generated@@43 $generated@@39 $generated@@97 $generated@@52 $generated@@95)))) (and ($generated@@58 $generated@@95) ($generated@@59 $generated@@95 $generated@@96))) (=> (forall (($generated@@98 T@U) ($generated@@99 T@U) )  (=> (and (or (not (= $generated@@98 $generated@@40)) (not true)) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@95 $generated@@98) $generated@@1)))) (= ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@95 $generated@@98) $generated@@99) ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@96 $generated@@98) $generated@@99)))) (= ($generated@@93 $generated@@94 $generated@@95 $generated@@97) ($generated@@93 $generated@@94 $generated@@96 $generated@@97))))
 :pattern ( ($generated@@58 $generated@@95) ($generated@@59 $generated@@95 $generated@@96) ($generated@@93 $generated@@94 $generated@@96 $generated@@97))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@43 $generated@@39 $generated@@100 $generated@@45 $generated@@101)  (or (= $generated@@100 $generated@@40) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@101 $generated@@100) $generated@@1)))))
 :pattern ( ($generated@@43 $generated@@39 $generated@@100 $generated@@45 $generated@@101))
)))
(assert (forall (($generated@@102 T@U) ($generated@@103 T@U) ) (! (= ($generated@@43 $generated@@39 $generated@@102 $generated@@49 $generated@@103)  (or (= $generated@@102 $generated@@40) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@103 $generated@@102) $generated@@1)))))
 :pattern ( ($generated@@43 $generated@@39 $generated@@102 $generated@@49 $generated@@103))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@43 $generated@@39 $generated@@104 $generated@@34 $generated@@105)  (or (= $generated@@104 $generated@@40) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@105 $generated@@104) $generated@@1)))))
 :pattern ( ($generated@@43 $generated@@39 $generated@@104 $generated@@34 $generated@@105))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ) (!  (=> ($generated@@59 $generated@@106 $generated@@107) (forall (($generated@@108 T@U) ) (!  (=> ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@106 $generated@@108) $generated@@1))) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@107 $generated@@108) $generated@@1))))
 :pattern ( ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@107 $generated@@108) $generated@@1))
)))
 :pattern ( ($generated@@59 $generated@@106 $generated@@107))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@T) ) (! (= ($generated@@109 $generated@@111 $generated@@110) $generated@@110)
 :pattern ( ($generated@@109 $generated@@111 $generated@@110))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ) (! (= ($generated@@112 $generated@@113 $generated@@114) (forall (($generated@@115 T@U) ) (!  (=> ($generated@@35 $generated@@113 $generated@@115) ($generated@@35 $generated@@114 $generated@@115))
 :pattern ( ($generated@@35 $generated@@113 $generated@@115))
 :pattern ( ($generated@@35 $generated@@114 $generated@@115))
)))
 :pattern ( ($generated@@112 $generated@@113 $generated@@114))
)))
(assert (forall (($generated@@117 T@U) ($generated@@118 T@T) ) (! (= ($generated@@116 $generated@@118 ($generated@@62 $generated@@118 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@62 $generated@@118 $generated@@117))
)))
(assert  (and (forall (($generated@@122 T@T) ($generated@@123 T@T) ($generated@@124 T@T) ($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@U) ) (! (= ($generated@@119 $generated@@122 $generated@@123 $generated@@124 ($generated@@121 $generated@@122 $generated@@123 $generated@@124 $generated@@126 $generated@@127 $generated@@128 $generated@@125) $generated@@127 $generated@@128) $generated@@125)
 :weight 0
)) (and (forall (($generated@@129 T@T) ($generated@@130 T@T) ($generated@@131 T@T) ($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (!  (or (= $generated@@134 $generated@@136) (= ($generated@@119 $generated@@129 $generated@@130 $generated@@131 ($generated@@121 $generated@@129 $generated@@130 $generated@@131 $generated@@133 $generated@@134 $generated@@135 $generated@@132) $generated@@136 $generated@@137) ($generated@@119 $generated@@129 $generated@@130 $generated@@131 $generated@@133 $generated@@136 $generated@@137)))
 :weight 0
)) (forall (($generated@@138 T@T) ($generated@@139 T@T) ($generated@@140 T@T) ($generated@@141 T@U) ($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (!  (or (= $generated@@144 $generated@@146) (= ($generated@@119 $generated@@138 $generated@@139 $generated@@140 ($generated@@121 $generated@@138 $generated@@139 $generated@@140 $generated@@142 $generated@@143 $generated@@144 $generated@@141) $generated@@145 $generated@@146) ($generated@@119 $generated@@138 $generated@@139 $generated@@140 $generated@@142 $generated@@145 $generated@@146)))
 :weight 0
)))))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ($generated@@152 T@U) ($generated@@153 T@U) ) (! (= ($generated@@19 ($generated@@119 $generated@@39 $generated@@64 $generated@@15 ($generated@@120 $generated@@147 $generated@@148 $generated@@149 $generated@@150 $generated@@151) $generated@@152 $generated@@153))  (=> (and (or (not (= $generated@@152 $generated@@147)) (not true)) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@148 $generated@@152) $generated@@149)))) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@150 $generated@@152) $generated@@151)))))
 :pattern ( ($generated@@119 $generated@@39 $generated@@64 $generated@@15 ($generated@@120 $generated@@147 $generated@@148 $generated@@149 $generated@@150 $generated@@151) $generated@@152 $generated@@153))
)))
(assert ($generated@@57 $generated@@1))
(assert (forall (($generated@@154 T@U) ($generated@@155 T@U) ) (!  (=> (and (and ($generated@@61 $generated@@154) (and (or (not (= $generated@@155 $generated@@40)) (not true)) (= ($generated@@41 $generated@@155) $generated@@34))) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@154 $generated@@155) $generated@@1)))) ($generated@@43 $generated@@16 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@154 $generated@@155) $generated@@55)) $generated $generated@@154))
 :pattern ( ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@154 $generated@@155) $generated@@55)))
)))
(assert  (=> (<= 0 $generated@@156) (forall (($generated@@158 T@U) ($generated@@159 T@U) ($generated@@160 T@U) ) (!  (=> (or ($generated@@157 $generated@@158 $generated@@159 $generated@@160) (and (< 0 $generated@@156) (and (and (and ($generated@@61 $generated@@158) ($generated@@61 $generated@@159)) ($generated@@59 $generated@@158 $generated@@159)) (and (or (not (= $generated@@160 $generated@@40)) (not true)) (and ($generated@@38 $generated@@39 $generated@@160 $generated@@52) ($generated@@43 $generated@@39 $generated@@160 $generated@@52 $generated@@158)))))) (= ($generated@@60 $generated@@158 $generated@@159 $generated@@160)  (and true (= ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@158 $generated@@160) $generated@@55))) ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@159 $generated@@160) $generated@@55)))))))
 :pattern ( ($generated@@60 $generated@@158 $generated@@159 $generated@@160) ($generated@@61 $generated@@159))
))))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@T) ) (!  (=> ($generated@@59 $generated@@161 $generated@@162) (=> ($generated@@43 $generated@@165 $generated@@163 $generated@@164 $generated@@161) ($generated@@43 $generated@@165 $generated@@163 $generated@@164 $generated@@162)))
 :pattern ( ($generated@@59 $generated@@161 $generated@@162) ($generated@@43 $generated@@165 $generated@@163 $generated@@164 $generated@@161))
)))
(assert (forall (($generated@@166 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@166 $generated@@44)  (and ($generated@@38 $generated@@39 $generated@@166 $generated@@45) (or (not (= $generated@@166 $generated@@40)) (not true))))
 :pattern ( ($generated@@38 $generated@@39 $generated@@166 $generated@@44))
 :pattern ( ($generated@@38 $generated@@39 $generated@@166 $generated@@45))
)))
(assert (forall (($generated@@167 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@167 $generated@@48)  (and ($generated@@38 $generated@@39 $generated@@167 $generated@@49) (or (not (= $generated@@167 $generated@@40)) (not true))))
 :pattern ( ($generated@@38 $generated@@39 $generated@@167 $generated@@48))
 :pattern ( ($generated@@38 $generated@@39 $generated@@167 $generated@@49))
)))
(assert (forall (($generated@@168 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@168 $generated@@52)  (and ($generated@@38 $generated@@39 $generated@@168 $generated@@34) (or (not (= $generated@@168 $generated@@40)) (not true))))
 :pattern ( ($generated@@38 $generated@@39 $generated@@168 $generated@@52))
 :pattern ( ($generated@@38 $generated@@39 $generated@@168 $generated@@34))
)))
(assert (forall (($generated@@169 T@U) ($generated@@170 T@U) ) (!  (=> ($generated@@43 $generated@@39 $generated@@169 $generated@@49 $generated@@170) ($generated@@43 $generated@@39 $generated@@169 $generated@@45 $generated@@170))
 :pattern ( ($generated@@43 $generated@@39 $generated@@169 $generated@@49 $generated@@170))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ) (!  (=> ($generated@@43 $generated@@39 $generated@@171 $generated@@34 $generated@@172) ($generated@@43 $generated@@39 $generated@@171 $generated@@49 $generated@@172))
 :pattern ( ($generated@@43 $generated@@39 $generated@@171 $generated@@34 $generated@@172))
)))
(assert  (=> (<= 1 $generated@@156) (forall (($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (!  (=> (or ($generated@@173 $generated@@174 $generated@@175 $generated@@176) (and (< 1 $generated@@156) (and (and (and ($generated@@61 $generated@@174) ($generated@@61 $generated@@175)) ($generated@@59 $generated@@174 $generated@@175)) (and (or (not (= $generated@@176 $generated@@40)) (not true)) (and ($generated@@38 $generated@@39 $generated@@176 $generated@@52) ($generated@@43 $generated@@39 $generated@@176 $generated@@52 $generated@@174)))))) (and (=> ($generated@@19 ($generated@@109 $generated@@15 ($generated@@18 true))) ($generated@@157 $generated@@174 $generated@@175 $generated@@176)) (= ($generated@@93 $generated@@174 $generated@@175 $generated@@176)  (and true ($generated@@60 $generated@@174 $generated@@175 $generated@@176)))))
 :pattern ( ($generated@@93 $generated@@174 $generated@@175 $generated@@176) ($generated@@61 $generated@@175))
))))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ) (!  (=> (or (not (= $generated@@177 $generated@@179)) (not true)) (=> (and ($generated@@59 $generated@@177 $generated@@178) ($generated@@59 $generated@@178 $generated@@179)) ($generated@@59 $generated@@177 $generated@@179)))
 :pattern ( ($generated@@59 $generated@@177 $generated@@178) ($generated@@59 $generated@@178 $generated@@179))
)))
(assert (forall (($generated@@181 T@U) ($generated@@182 T@U) ) (!  (and (= ($generated@@180 ($generated@@56 $generated@@181 $generated@@182)) $generated@@181) (= ($generated@@32 ($generated@@56 $generated@@181 $generated@@182)) $generated@@182))
 :pattern ( ($generated@@56 $generated@@181 $generated@@182))
)))
(assert (forall (($generated@@183 T@U) ($generated@@184 T@T) ) (! (= ($generated@@62 $generated@@184 ($generated@@116 $generated@@184 $generated@@183)) $generated@@183)
 :pattern ( ($generated@@116 $generated@@184 $generated@@183))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ) (!  (=> (and ($generated@@61 $generated@@185) (and (or (not (= $generated@@186 $generated@@40)) (not true)) (= ($generated@@41 $generated@@186) $generated@@34))) ($generated@@38 $generated@@16 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@185 $generated@@186) $generated@@55)) $generated))
 :pattern ( ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@185 $generated@@186) $generated@@55)))
)))
(assert (forall (($generated@@187 T@U) ) (!  (=> ($generated@@38 $generated@@39 $generated@@187 $generated@@49) ($generated@@38 $generated@@39 $generated@@187 $generated@@45))
 :pattern ( ($generated@@38 $generated@@39 $generated@@187 $generated@@49))
)))
(assert (forall (($generated@@188 T@U) ) (!  (=> ($generated@@38 $generated@@39 $generated@@188 $generated@@34) ($generated@@38 $generated@@39 $generated@@188 $generated@@49))
 :pattern ( ($generated@@38 $generated@@39 $generated@@188 $generated@@34))
)))
(assert (= ($generated@@31 $generated@@44) $generated@@3))
(assert (= ($generated@@189 $generated@@44) $generated@@10))
(assert (= ($generated@@31 $generated@@52) $generated@@4))
(assert (= ($generated@@189 $generated@@52) $generated@@11))
(assert (= ($generated@@31 $generated@@45) $generated@@5))
(assert (= ($generated@@189 $generated@@45) $generated@@10))
(assert (= ($generated@@31 $generated@@48) $generated@@6))
(assert (= ($generated@@189 $generated@@48) $generated@@12))
(assert (= ($generated@@31 $generated@@49) $generated@@7))
(assert (= ($generated@@189 $generated@@49) $generated@@12))
(assert (= ($generated@@31 $generated@@34) $generated@@9))
(assert (= ($generated@@189 $generated@@34) $generated@@11))
(assert (forall (($generated@@191 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@191 $generated@@45)  (or (= $generated@@191 $generated@@40) ($generated@@190 ($generated@@41 $generated@@191))))
 :pattern ( ($generated@@38 $generated@@39 $generated@@191 $generated@@45))
)))
(assert (forall (($generated@@192 T@U) ) (! (= ($generated@@38 $generated@@39 $generated@@192 $generated@@49)  (or (= $generated@@192 $generated@@40) ($generated@@33 ($generated@@41 $generated@@192))))
 :pattern ( ($generated@@38 $generated@@39 $generated@@192 $generated@@49))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@T) ) (! (= ($generated@@116 $generated@@194 ($generated@@109 $generated@@194 $generated@@193)) ($generated@@109 $generated@@65 ($generated@@116 $generated@@194 $generated@@193)))
 :pattern ( ($generated@@116 $generated@@194 ($generated@@109 $generated@@194 $generated@@193)))
)))
(assert  (=> (<= 1 $generated@@156) (forall (($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 T@U) ) (!  (=> (or ($generated@@173 $generated@@195 $generated@@196 $generated@@197) (and (< 1 $generated@@156) (and (and (and ($generated@@61 $generated@@195) ($generated@@61 $generated@@196)) ($generated@@59 $generated@@195 $generated@@196)) (and (or (not (= $generated@@197 $generated@@40)) (not true)) (and ($generated@@38 $generated@@39 $generated@@197 $generated@@52) ($generated@@43 $generated@@39 $generated@@197 $generated@@52 $generated@@195)))))) (=> ($generated@@93 $generated@@195 $generated@@196 $generated@@197) ($generated@@60 $generated@@195 $generated@@196 $generated@@197)))
 :pattern ( ($generated@@93 $generated@@195 $generated@@196 $generated@@197))
))))
(assert (forall (($generated@@198 T@U) ($generated@@199 T@U) ) (! ($generated@@43 $generated@@16 $generated@@199 $generated $generated@@198)
 :pattern ( ($generated@@43 $generated@@16 $generated@@199 $generated $generated@@198))
)))
(assert (forall (($generated@@200 T@U) ) (! ($generated@@38 $generated@@16 $generated@@200 $generated)
 :pattern ( ($generated@@38 $generated@@16 $generated@@200 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@201 () T@T)
(declare-fun $generated@@202 () T@U)
(declare-fun $generated@@203 () T@U)
(declare-fun $generated@@204 () T@U)
(declare-fun $generated@@205 () T@U)
(declare-fun $generated@@206 () T@U)
(declare-fun $generated@@207 () T@U)
(assert (= ($generated@@14 $generated@@201) 7))
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
 (=> (= (ControlFlow 0 0) 6) (let (($generated@@208  (and (=> (= (ControlFlow 0 2) (- 0 5)) ($generated@@112 ($generated@@109 $generated@@201 $generated@@36) ($generated@@109 $generated@@201 $generated@@36))) (=> ($generated@@112 ($generated@@109 $generated@@201 $generated@@36) ($generated@@109 $generated@@201 $generated@@36)) (=> (= $generated@@202 ($generated@@120 $generated@@40 $generated@@203 $generated@@1 $generated@@203 $generated@@1)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall (($generated@@209 T@U) ($generated@@210 T@U) )  (=> (and (and (or (not (= $generated@@209 $generated@@40)) (not true)) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@203 $generated@@209) $generated@@1)))) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@203 $generated@@209) $generated@@1)))) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@203 $generated@@209) $generated@@1)))))) (=> (forall (($generated@@211 T@U) ($generated@@212 T@U) )  (=> (and (and (or (not (= $generated@@211 $generated@@40)) (not true)) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@203 $generated@@211) $generated@@1)))) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@203 $generated@@211) $generated@@1)))) ($generated@@19 ($generated@@62 $generated@@15 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@203 $generated@@211) $generated@@1))))) (=> (=> ($generated@@93 $generated@@204 $generated@@203 $generated@@205) ($generated@@60 $generated@@204 $generated@@203 $generated@@205)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> ($generated@@93 $generated@@204 $generated@@203 $generated@@205) (=> ($generated@@157 $generated@@204 $generated@@203 $generated@@205) (or ($generated@@60 $generated@@204 $generated@@203 $generated@@205) ($generated@@19 ($generated@@109 $generated@@15 ($generated@@18 true))))))) (=> (=> ($generated@@93 $generated@@204 $generated@@203 $generated@@205) (=> ($generated@@157 $generated@@204 $generated@@203 $generated@@205) (or ($generated@@60 $generated@@204 $generated@@203 $generated@@205) ($generated@@19 ($generated@@109 $generated@@15 ($generated@@18 true)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> ($generated@@93 $generated@@204 $generated@@203 $generated@@205) (=> ($generated@@157 $generated@@204 $generated@@203 $generated@@205) (or ($generated@@60 $generated@@204 $generated@@203 $generated@@205) (= ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@204 $generated@@205) $generated@@55))) ($generated@@21 ($generated@@62 $generated@@16 ($generated@@63 $generated@@64 $generated@@65 ($generated@@63 $generated@@39 ($generated@@66 $generated@@64 $generated@@65) $generated@@203 $generated@@205) $generated@@55))))))))))))))))))
(let (($generated@@213  (=> (and ($generated@@61 $generated@@204) ($generated@@58 $generated@@204)) (=> (and (and (and (or (not (= $generated@@205 $generated@@40)) (not true)) (and ($generated@@38 $generated@@39 $generated@@205 $generated@@52) ($generated@@43 $generated@@39 $generated@@205 $generated@@52 $generated@@206))) (= 1 $generated@@156)) (and (and (= $generated@@207 $generated@@204) (and ($generated@@59 $generated@@207 $generated@@206) ($generated@@61 $generated@@206))) (= (ControlFlow 0 6) 2))) $generated@@208))))
$generated@@213)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)