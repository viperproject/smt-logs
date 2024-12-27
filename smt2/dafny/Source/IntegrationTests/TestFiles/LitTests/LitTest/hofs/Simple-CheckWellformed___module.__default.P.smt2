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
(declare-fun $generated@@8 (T@T) Int)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 () T@T)
(declare-fun $generated@@12 (Bool) T@U)
(declare-fun $generated@@13 (T@U) Bool)
(declare-fun $generated@@14 (Int) T@U)
(declare-fun $generated@@15 (T@U) Int)
(declare-fun $generated@@16 (Real) T@U)
(declare-fun $generated@@17 (T@U) Real)
(declare-fun $generated@@24 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@25 (T@T T@U) T@U)
(declare-fun $generated@@26 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@27 (T@U T@U T@U) T@U)
(declare-fun $generated@@33 (T@T T@U) T@U)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@40 (T@U T@U) Bool)
(declare-fun $generated@@41 () T@U)
(declare-fun $generated@@43 (T@T T@U T@U) Bool)
(declare-fun $generated@@44 () T@T)
(declare-fun $generated@@45 (T@U T@U) T@U)
(declare-fun $generated@@46 (T@U T@U) Bool)
(declare-fun $generated@@54 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@55 () T@T)
(declare-fun $generated@@56 () T@U)
(declare-fun $generated@@57 () T@U)
(declare-fun $generated@@60 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@61 (T@U) T@U)
(declare-fun $generated@@62 (T@U T@U T@U) T@U)
(declare-fun $generated@@69 () T@U)
(declare-fun $generated@@70 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@71 () T@T)
(declare-fun $generated@@72 () T@T)
(declare-fun $generated@@73 (T@T T@T) T@T)
(declare-fun $generated@@74 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@75 (T@T) T@T)
(declare-fun $generated@@76 (T@T) T@T)
(declare-fun $generated@@102 () T@U)
(declare-fun $generated@@103 (T@U) Bool)
(declare-fun $generated@@104 (T@U T@U) Bool)
(declare-fun $generated@@110 () Int)
(declare-fun $generated@@111 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@112 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@113 (T@U T@U T@U) Bool)
(declare-fun $generated@@121 () T@T)
(declare-fun $generated@@159 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@160 (T@U T@U) T@U)
(declare-fun $generated@@189 (T@U) T@U)
(declare-fun $generated@@192 (T@U) T@U)
(declare-fun $generated@@196 (T@U) T@U)
(declare-fun $generated@@210 (T@U) T@U)
(declare-fun $generated@@228 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@229 (T@U T@U T@U T@U) T@U)
(declare-fun $generated@@230 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@8 $generated@@9) 0) (= ($generated@@8 $generated@@10) 1)) (= ($generated@@8 $generated@@11) 2)) (forall (($generated@@18 Bool) ) (! (= ($generated@@13 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 T@U) ) (! (= ($generated@@12 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 Int) ) (! (= ($generated@@15 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 T@U) ) (! (= ($generated@@14 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 Real) ) (! (= ($generated@@17 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))) (forall (($generated@@23 T@U) ) (! (= ($generated@@16 ($generated@@17 $generated@@23)) $generated@@23)
 :pattern ( ($generated@@17 $generated@@23))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6 $generated@@7)
)
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ($generated@@31 T@U) ($generated@@32 T@U) ) (! (= ($generated@@24 $generated@@28 $generated@@29 $generated@@31 $generated@@30 $generated@@32) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@26 $generated@@28 $generated $generated@@31 ($generated@@27 $generated@@28 $generated@@29 $generated@@30) $generated@@32))))
 :pattern ( ($generated@@24 $generated@@28 $generated@@29 $generated@@31 $generated@@30 $generated@@32))
)))
(assert (forall (($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ($generated@@37 T@U) ($generated@@38 T@U) ) (! (= ($generated@@26 $generated@@34 $generated $generated@@37 ($generated@@27 $generated@@34 $generated@@35 $generated@@36) $generated@@38) ($generated@@33 $generated@@9 ($generated@@12 ($generated@@24 $generated@@34 $generated@@35 $generated@@37 $generated@@36 $generated@@38))))
 :pattern ( ($generated@@26 $generated@@34 $generated $generated@@37 ($generated@@27 $generated@@34 $generated@@35 $generated@@36) $generated@@38))
)))
(assert (= ($generated@@39 $generated) $generated@@0))
(assert (forall (($generated@@42 T@U) ) (!  (not ($generated@@40 $generated@@41 $generated@@42))
 :pattern ( ($generated@@40 $generated@@41 $generated@@42))
)))
(assert (= ($generated@@8 $generated@@44) 3))
(assert (forall (($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ($generated@@51 T@U) ) (!  (=> (and (and ($generated@@43 $generated@@44 $generated@@47 ($generated@@45 $generated@@48 $generated@@49)) (forall (($generated@@52 T@U) ) (!  (=> ($generated@@46 $generated@@52 $generated@@50) ($generated@@46 $generated@@52 $generated@@48))
 :pattern ( ($generated@@46 $generated@@52 $generated@@50))
 :pattern ( ($generated@@46 $generated@@52 $generated@@48))
))) (forall (($generated@@53 T@U) ) (!  (=> ($generated@@46 $generated@@53 $generated@@49) ($generated@@46 $generated@@53 $generated@@51))
 :pattern ( ($generated@@46 $generated@@53 $generated@@49))
 :pattern ( ($generated@@46 $generated@@53 $generated@@51))
))) ($generated@@43 $generated@@44 $generated@@47 ($generated@@45 $generated@@50 $generated@@51)))
 :pattern ( ($generated@@43 $generated@@44 $generated@@47 ($generated@@45 $generated@@48 $generated@@49)) ($generated@@43 $generated@@44 $generated@@47 ($generated@@45 $generated@@50 $generated@@51)))
)))
(assert (= ($generated@@8 $generated@@55) 4))
(assert (forall (($generated@@58 T@U) ($generated@@59 T@U) ) (! (= ($generated@@54 $generated@@55 $generated@@58 $generated@@56 $generated@@59) ($generated@@54 $generated@@55 $generated@@58 $generated@@57 $generated@@59))
 :pattern ( ($generated@@54 $generated@@55 $generated@@58 $generated@@56 $generated@@59))
 :pattern ( ($generated@@54 $generated@@55 $generated@@58 $generated@@57 $generated@@59))
)))
(assert (forall (($generated@@63 T@U) ($generated@@64 T@U) ($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@U) ) (!  (=> ($generated@@24 $generated@@64 $generated@@65 $generated@@67 $generated@@66 $generated@@68) (= ($generated@@40 ($generated@@60 $generated@@64 ($generated@@61 $generated@@57) $generated@@67 ($generated@@62 $generated@@64 $generated@@65 $generated@@66) $generated@@68) $generated@@63) ($generated@@40 ($generated@@60 $generated@@64 $generated@@65 $generated@@67 $generated@@66 $generated@@68) $generated@@63)))
 :pattern ( ($generated@@40 ($generated@@60 $generated@@64 ($generated@@61 $generated@@57) $generated@@67 ($generated@@62 $generated@@64 $generated@@65 $generated@@66) $generated@@68) $generated@@63))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@77 T@T) ($generated@@78 T@T) ($generated@@79 T@U) ($generated@@80 T@U) ($generated@@81 T@U) ) (! (= ($generated@@70 $generated@@77 $generated@@78 ($generated@@74 $generated@@77 $generated@@78 $generated@@80 $generated@@81 $generated@@79) $generated@@81) $generated@@79)
 :weight 0
)) (forall (($generated@@82 T@T) ($generated@@83 T@T) ($generated@@84 T@U) ($generated@@85 T@U) ($generated@@86 T@U) ($generated@@87 T@U) ) (!  (or (= $generated@@86 $generated@@87) (= ($generated@@70 $generated@@82 $generated@@83 ($generated@@74 $generated@@82 $generated@@83 $generated@@85 $generated@@86 $generated@@84) $generated@@87) ($generated@@70 $generated@@82 $generated@@83 $generated@@85 $generated@@87)))
 :weight 0
))) (= ($generated@@8 $generated@@71) 5)) (= ($generated@@8 $generated@@72) 6)) (forall (($generated@@88 T@T) ($generated@@89 T@T) ) (= ($generated@@8 ($generated@@73 $generated@@88 $generated@@89)) 7))) (forall (($generated@@90 T@T) ($generated@@91 T@T) ) (! (= ($generated@@75 ($generated@@73 $generated@@90 $generated@@91)) $generated@@90)
 :pattern ( ($generated@@73 $generated@@90 $generated@@91))
))) (forall (($generated@@92 T@T) ($generated@@93 T@T) ) (! (= ($generated@@76 ($generated@@73 $generated@@92 $generated@@93)) $generated@@93)
 :pattern ( ($generated@@73 $generated@@92 $generated@@93))
))))
(assert (forall (($generated@@94 T@U) ($generated@@95 T@U) ) (! (= ($generated@@54 $generated@@55 $generated@@94 $generated@@57 $generated@@95)  (or (= $generated@@94 $generated@@69) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@70 $generated@@71 $generated@@72 ($generated@@70 $generated@@55 ($generated@@73 $generated@@71 $generated@@72) $generated@@95 $generated@@94) $generated@@2)))))
 :pattern ( ($generated@@54 $generated@@55 $generated@@94 $generated@@57 $generated@@95))
)))
(assert (forall (($generated@@96 T@U) ($generated@@97 T@U) ($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ($generated@@101 T@U) ) (!  (=> ($generated@@24 $generated@@97 $generated@@98 $generated@@100 $generated@@99 $generated@@101) (= ($generated@@40 ($generated@@60 $generated@@97 $generated $generated@@100 ($generated@@27 $generated@@97 $generated@@98 $generated@@99) $generated@@101) $generated@@96) ($generated@@40 ($generated@@60 $generated@@97 $generated@@98 $generated@@100 $generated@@99 $generated@@101) $generated@@96)))
 :pattern ( ($generated@@40 ($generated@@60 $generated@@97 $generated $generated@@100 ($generated@@27 $generated@@97 $generated@@98 $generated@@99) $generated@@101) $generated@@96))
)))
(assert (forall (($generated@@105 T@U) ($generated@@106 T@U) ($generated@@107 T@U) ($generated@@108 T@U) ($generated@@109 T@U) ) (!  (=> (and ($generated@@103 $generated@@107) (and ($generated@@46 $generated@@109 $generated@@105) ($generated@@43 $generated@@44 $generated@@108 ($generated@@45 $generated@@105 $generated@@106)))) (= ($generated@@104 ($generated@@60 $generated@@105 $generated@@106 $generated@@102 $generated@@108 $generated@@109) $generated@@41) ($generated@@104 ($generated@@60 $generated@@105 $generated@@106 $generated@@107 $generated@@108 $generated@@109) $generated@@41)))
 :pattern ( ($generated@@60 $generated@@105 $generated@@106 $generated@@102 $generated@@108 $generated@@109) ($generated@@103 $generated@@107))
 :pattern ( ($generated@@60 $generated@@105 $generated@@106 $generated@@107 $generated@@108 $generated@@109))
)))
(assert  (=> (<= 0 $generated@@110) (forall (($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ($generated@@117 T@U) ($generated@@118 T@U) ) (!  (=> (or ($generated@@112 $generated@@114 $generated@@115 $generated@@116 $generated@@117 $generated@@118) (and (< 0 $generated@@110) (and (and (and ($generated@@103 $generated@@116) (and ($generated@@43 $generated@@44 $generated@@117 ($generated@@45 $generated@@114 $generated@@115)) ($generated@@54 $generated@@44 $generated@@117 ($generated@@45 $generated@@114 $generated@@115) $generated@@116))) (and ($generated@@46 $generated@@118 $generated@@114) ($generated@@113 $generated@@118 $generated@@114 $generated@@116))) ($generated@@24 $generated@@114 $generated@@115 $generated@@116 $generated@@117 $generated@@118)))) ($generated@@46 ($generated@@111 $generated@@114 $generated@@115 $generated@@116 $generated@@117 $generated@@118) $generated@@115))
 :pattern ( ($generated@@111 $generated@@114 $generated@@115 $generated@@116 $generated@@117 $generated@@118))
))))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@T) ) (! (= ($generated@@33 $generated@@120 ($generated@@25 $generated@@120 $generated@@119)) $generated@@119)
 :pattern ( ($generated@@25 $generated@@120 $generated@@119))
)))
(assert (= ($generated@@8 $generated@@121) 8))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@43 $generated@@121 $generated@@122 ($generated@@61 $generated@@123)) (forall (($generated@@124 T@U) ) (!  (=> ($generated@@40 $generated@@122 $generated@@124) ($generated@@46 $generated@@124 $generated@@123))
 :pattern ( ($generated@@40 $generated@@122 $generated@@124))
)))
 :pattern ( ($generated@@43 $generated@@121 $generated@@122 ($generated@@61 $generated@@123)))
)))
(assert ($generated@@103 $generated@@102))
(assert (forall (($generated@@125 T@U) ($generated@@126 T@U) ($generated@@127 T@U) ($generated@@128 T@T) ) (! (= ($generated@@113 ($generated@@33 $generated@@128 $generated@@125) $generated@@126 $generated@@127) ($generated@@54 $generated@@128 $generated@@125 $generated@@126 $generated@@127))
 :pattern ( ($generated@@113 ($generated@@33 $generated@@128 $generated@@125) $generated@@126 $generated@@127))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ($generated@@133 T@U) ) (! (= ($generated@@24 $generated@@129 $generated $generated@@132 ($generated@@27 $generated@@129 $generated@@130 $generated@@131) $generated@@133) true)
 :pattern ( ($generated@@24 $generated@@129 $generated $generated@@132 ($generated@@27 $generated@@129 $generated@@130 $generated@@131) $generated@@133))
)))
(assert (forall (($generated@@134 T@U) ) (!  (=> ($generated@@46 $generated@@134 $generated@@57) (and (= ($generated@@33 $generated@@55 ($generated@@25 $generated@@55 $generated@@134)) $generated@@134) ($generated@@43 $generated@@55 ($generated@@25 $generated@@55 $generated@@134) $generated@@57)))
 :pattern ( ($generated@@46 $generated@@134 $generated@@57))
)))
(assert (forall (($generated@@135 T@U) ) (!  (=> ($generated@@46 $generated@@135 $generated@@56) (and (= ($generated@@33 $generated@@55 ($generated@@25 $generated@@55 $generated@@135)) $generated@@135) ($generated@@43 $generated@@55 ($generated@@25 $generated@@55 $generated@@135) $generated@@56)))
 :pattern ( ($generated@@46 $generated@@135 $generated@@56))
)))
(assert (forall (($generated@@136 T@U) ) (! (= ($generated@@43 $generated@@55 $generated@@136 $generated@@56)  (and ($generated@@43 $generated@@55 $generated@@136 $generated@@57) (or (not (= $generated@@136 $generated@@69)) (not true))))
 :pattern ( ($generated@@43 $generated@@55 $generated@@136 $generated@@56))
 :pattern ( ($generated@@43 $generated@@55 $generated@@136 $generated@@57))
)))
(assert (forall (($generated@@137 T@U) ($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (!  (=> (and ($generated@@103 $generated@@140) ($generated@@54 $generated@@44 $generated@@137 ($generated@@45 $generated@@138 $generated@@139) $generated@@140)) (forall (($generated@@141 T@U) ) (!  (=> (and ($generated@@113 $generated@@141 $generated@@138 $generated@@140) ($generated@@24 $generated@@138 $generated@@139 $generated@@140 $generated@@137 $generated@@141)) ($generated@@113 ($generated@@26 $generated@@138 $generated@@139 $generated@@140 $generated@@137 $generated@@141) $generated@@139 $generated@@140))
 :pattern ( ($generated@@26 $generated@@138 $generated@@139 $generated@@140 $generated@@137 $generated@@141))
)))
 :pattern ( ($generated@@54 $generated@@44 $generated@@137 ($generated@@45 $generated@@138 $generated@@139) $generated@@140))
)))
(assert  (=> (<= 0 $generated@@110) (forall (($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ($generated@@145 T@U) ($generated@@146 T@U) ) (!  (=> (or ($generated@@112 $generated@@142 $generated@@143 $generated@@144 $generated@@145 $generated@@146) (and (< 0 $generated@@110) (and (and (and ($generated@@103 $generated@@144) (and ($generated@@43 $generated@@44 $generated@@145 ($generated@@45 $generated@@142 $generated@@143)) ($generated@@54 $generated@@44 $generated@@145 ($generated@@45 $generated@@142 $generated@@143) $generated@@144))) (and ($generated@@46 $generated@@146 $generated@@142) ($generated@@113 $generated@@146 $generated@@142 $generated@@144))) ($generated@@24 $generated@@142 $generated@@143 $generated@@144 $generated@@145 $generated@@146)))) ($generated@@113 ($generated@@111 $generated@@142 $generated@@143 $generated@@144 $generated@@145 $generated@@146) $generated@@143 $generated@@144))
 :pattern ( ($generated@@113 ($generated@@111 $generated@@142 $generated@@143 $generated@@144 $generated@@145 $generated@@146) $generated@@143 $generated@@144))
))))
(assert (forall (($generated@@147 T@U) ($generated@@148 T@U) ($generated@@149 T@U) ($generated@@150 T@U) ($generated@@151 T@U) ) (! (= ($generated@@60 $generated@@147 $generated@@148 $generated@@150 $generated@@149 $generated@@151) ($generated@@25 $generated@@121 ($generated@@26 $generated@@147 ($generated@@61 $generated@@57) $generated@@150 ($generated@@62 $generated@@147 $generated@@148 $generated@@149) $generated@@151)))
 :pattern ( ($generated@@60 $generated@@147 $generated@@148 $generated@@150 $generated@@149 $generated@@151))
)))
(assert  (=> (<= 0 $generated@@110) (forall (($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ($generated@@156 T@U) ) (!  (=> (or ($generated@@112 $generated@@152 $generated@@153 $generated@@154 $generated@@155 $generated@@156) (and (< 0 $generated@@110) (and (and (and ($generated@@103 $generated@@154) ($generated@@43 $generated@@44 $generated@@155 ($generated@@45 $generated@@152 $generated@@153))) ($generated@@46 $generated@@156 $generated@@152)) ($generated@@24 $generated@@152 $generated@@153 $generated@@154 $generated@@155 $generated@@156)))) (= ($generated@@111 $generated@@152 $generated@@153 $generated@@154 $generated@@155 $generated@@156) ($generated@@26 $generated@@152 $generated@@153 $generated@@154 $generated@@155 $generated@@156)))
 :pattern ( ($generated@@111 $generated@@152 $generated@@153 $generated@@154 $generated@@155 $generated@@156) ($generated@@103 $generated@@154))
))))
(assert (forall (($generated@@157 T@U) ($generated@@158 T@U) ) (!  (=> ($generated@@104 $generated@@157 $generated@@158) (= $generated@@157 $generated@@158))
 :pattern ( ($generated@@104 $generated@@157 $generated@@158))
)))
(assert (forall (($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ) (! (= ($generated@@111 $generated@@161 $generated@@162 $generated@@163 $generated@@164 $generated@@165) ($generated@@159 ($generated@@45 $generated@@161 $generated@@162) $generated@@161 $generated@@162 $generated@@163 ($generated@@160 $generated@@161 $generated@@162) ($generated@@33 $generated@@44 $generated@@164) $generated@@165))
 :pattern ( ($generated@@111 $generated@@161 $generated@@162 $generated@@163 $generated@@164 $generated@@165))
)))
(assert (forall (($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ) (! (= ($generated@@24 $generated@@166 ($generated@@61 $generated@@57) $generated@@169 ($generated@@62 $generated@@166 $generated@@167 $generated@@168) $generated@@170) ($generated@@24 $generated@@166 $generated@@167 $generated@@169 $generated@@168 $generated@@170))
 :pattern ( ($generated@@24 $generated@@166 ($generated@@61 $generated@@57) $generated@@169 ($generated@@62 $generated@@166 $generated@@167 $generated@@168) $generated@@170))
)))
(assert (forall (($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ) (! (= ($generated@@43 $generated@@44 $generated@@171 ($generated@@45 $generated@@172 $generated@@173)) (forall (($generated@@174 T@U) ($generated@@175 T@U) ) (!  (=> (and (and ($generated@@103 $generated@@174) ($generated@@46 $generated@@175 $generated@@172)) ($generated@@24 $generated@@172 $generated@@173 $generated@@174 $generated@@171 $generated@@175)) ($generated@@46 ($generated@@26 $generated@@172 $generated@@173 $generated@@174 $generated@@171 $generated@@175) $generated@@173))
 :pattern ( ($generated@@26 $generated@@172 $generated@@173 $generated@@174 $generated@@171 $generated@@175))
)))
 :pattern ( ($generated@@43 $generated@@44 $generated@@171 ($generated@@45 $generated@@172 $generated@@173)))
)))
(assert (forall (($generated@@176 T@U) ) (!  (=> ($generated@@46 $generated@@176 $generated) (and (= ($generated@@33 $generated@@9 ($generated@@25 $generated@@9 $generated@@176)) $generated@@176) ($generated@@43 $generated@@9 ($generated@@25 $generated@@9 $generated@@176) $generated)))
 :pattern ( ($generated@@46 $generated@@176 $generated))
)))
(assert (forall (($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@T) ) (! (= ($generated@@46 ($generated@@33 $generated@@179 $generated@@177) $generated@@178) ($generated@@43 $generated@@179 $generated@@177 $generated@@178))
 :pattern ( ($generated@@46 ($generated@@33 $generated@@179 $generated@@177) $generated@@178))
)))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ($generated@@183 T@U) ($generated@@184 T@U) ) (! (= ($generated@@159 ($generated@@45 $generated@@180 $generated@@181) $generated@@180 $generated@@181 $generated@@182 ($generated@@160 $generated@@180 $generated@@181) $generated@@183 $generated@@184) ($generated@@111 $generated@@180 $generated@@181 $generated@@182 ($generated@@25 $generated@@44 $generated@@183) $generated@@184))
 :pattern ( ($generated@@159 ($generated@@45 $generated@@180 $generated@@181) $generated@@180 $generated@@181 $generated@@182 ($generated@@160 $generated@@180 $generated@@181) $generated@@183 $generated@@184))
)))
(assert (forall (($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ) (! (= ($generated@@54 $generated@@121 $generated@@185 ($generated@@61 $generated@@186) $generated@@187) (forall (($generated@@188 T@U) ) (!  (=> ($generated@@40 $generated@@185 $generated@@188) ($generated@@113 $generated@@188 $generated@@186 $generated@@187))
 :pattern ( ($generated@@40 $generated@@185 $generated@@188))
)))
 :pattern ( ($generated@@54 $generated@@121 $generated@@185 ($generated@@61 $generated@@186) $generated@@187))
)))
(assert (forall (($generated@@190 T@U) ($generated@@191 T@U) ) (! (= ($generated@@189 ($generated@@45 $generated@@190 $generated@@191)) $generated@@190)
 :pattern ( ($generated@@45 $generated@@190 $generated@@191))
)))
(assert (forall (($generated@@193 T@U) ($generated@@194 T@U) ) (! (= ($generated@@192 ($generated@@45 $generated@@193 $generated@@194)) $generated@@194)
 :pattern ( ($generated@@45 $generated@@193 $generated@@194))
)))
(assert (forall (($generated@@195 T@U) ) (! ($generated@@43 $generated@@55 $generated@@195 $generated@@57)
 :pattern ( ($generated@@43 $generated@@55 $generated@@195 $generated@@57))
)))
(assert (forall (($generated@@197 T@U) ) (! (= ($generated@@196 ($generated@@61 $generated@@197)) $generated@@197)
 :pattern ( ($generated@@61 $generated@@197))
)))
(assert (forall (($generated@@198 T@U) ) (! (= ($generated@@39 ($generated@@61 $generated@@198)) $generated@@1)
 :pattern ( ($generated@@61 $generated@@198))
)))
(assert (forall (($generated@@199 T@U) ($generated@@200 T@T) ) (! (= ($generated@@25 $generated@@200 ($generated@@33 $generated@@200 $generated@@199)) $generated@@199)
 :pattern ( ($generated@@33 $generated@@200 $generated@@199))
)))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ) (!  (=> ($generated@@103 $generated@@204) (= ($generated@@54 $generated@@44 $generated@@201 ($generated@@45 $generated@@202 $generated@@203) $generated@@204) (forall (($generated@@205 T@U) ) (!  (=> (and (and ($generated@@46 $generated@@205 $generated@@202) ($generated@@113 $generated@@205 $generated@@202 $generated@@204)) ($generated@@24 $generated@@202 $generated@@203 $generated@@204 $generated@@201 $generated@@205)) (forall (($generated@@206 T@U) ) (!  (=> (and (or (not (= $generated@@206 $generated@@69)) (not true)) ($generated@@40 ($generated@@60 $generated@@202 $generated@@203 $generated@@204 $generated@@201 $generated@@205) ($generated@@33 $generated@@55 $generated@@206))) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@70 $generated@@71 $generated@@72 ($generated@@70 $generated@@55 ($generated@@73 $generated@@71 $generated@@72) $generated@@204 $generated@@206) $generated@@2))))
 :pattern ( ($generated@@40 ($generated@@60 $generated@@202 $generated@@203 $generated@@204 $generated@@201 $generated@@205) ($generated@@33 $generated@@55 $generated@@206)))
)))
 :pattern ( ($generated@@26 $generated@@202 $generated@@203 $generated@@204 $generated@@201 $generated@@205))
 :pattern ( ($generated@@60 $generated@@202 $generated@@203 $generated@@204 $generated@@201 $generated@@205))
))))
 :pattern ( ($generated@@54 $generated@@44 $generated@@201 ($generated@@45 $generated@@202 $generated@@203) $generated@@204))
)))
(assert (forall (($generated@@207 T@U) ($generated@@208 T@U) ($generated@@209 T@U) ) (!  (=> ($generated@@46 $generated@@209 ($generated@@45 $generated@@207 $generated@@208)) (and (= ($generated@@33 $generated@@44 ($generated@@25 $generated@@44 $generated@@209)) $generated@@209) ($generated@@43 $generated@@44 ($generated@@25 $generated@@44 $generated@@209) ($generated@@45 $generated@@207 $generated@@208))))
 :pattern ( ($generated@@46 $generated@@209 ($generated@@45 $generated@@207 $generated@@208)))
)))
(assert (forall (($generated@@211 T@U) ($generated@@212 T@U) ) (!  (and (= ($generated@@39 ($generated@@45 $generated@@211 $generated@@212)) $generated@@5) (= ($generated@@210 ($generated@@45 $generated@@211 $generated@@212)) $generated@@7))
 :pattern ( ($generated@@45 $generated@@211 $generated@@212))
)))
(assert (forall (($generated@@213 T@U) ($generated@@214 T@U) ($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 T@U) ) (!  (=> (and (and ($generated@@103 $generated@@215) (and ($generated@@46 $generated@@217 $generated@@213) ($generated@@43 $generated@@44 $generated@@216 ($generated@@45 $generated@@213 $generated@@214)))) ($generated@@104 ($generated@@60 $generated@@213 $generated@@214 $generated@@102 $generated@@216 $generated@@217) $generated@@41)) (= ($generated@@24 $generated@@213 $generated@@214 $generated@@102 $generated@@216 $generated@@217) ($generated@@24 $generated@@213 $generated@@214 $generated@@215 $generated@@216 $generated@@217)))
 :pattern ( ($generated@@24 $generated@@213 $generated@@214 $generated@@102 $generated@@216 $generated@@217) ($generated@@103 $generated@@215))
 :pattern ( ($generated@@24 $generated@@213 $generated@@214 $generated@@215 $generated@@216 $generated@@217))
)))
(assert (forall (($generated@@218 T@U) ($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ($generated@@222 T@U) ) (! (= ($generated@@26 $generated@@218 ($generated@@61 $generated@@57) $generated@@221 ($generated@@62 $generated@@218 $generated@@219 $generated@@220) $generated@@222) ($generated@@33 $generated@@121 ($generated@@60 $generated@@218 $generated@@219 $generated@@221 $generated@@220 $generated@@222)))
 :pattern ( ($generated@@26 $generated@@218 ($generated@@61 $generated@@57) $generated@@221 ($generated@@62 $generated@@218 $generated@@219 $generated@@220) $generated@@222))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 T@U) ) (!  (=> ($generated@@46 $generated@@223 ($generated@@61 $generated@@224)) (and (= ($generated@@33 $generated@@121 ($generated@@25 $generated@@121 $generated@@223)) $generated@@223) ($generated@@43 $generated@@121 ($generated@@25 $generated@@121 $generated@@223) ($generated@@61 $generated@@224))))
 :pattern ( ($generated@@46 $generated@@223 ($generated@@61 $generated@@224)))
)))
(assert (= ($generated@@39 $generated@@57) $generated@@3))
(assert (= ($generated@@210 $generated@@57) $generated@@6))
(assert (= ($generated@@39 $generated@@56) $generated@@4))
(assert (= ($generated@@210 $generated@@56) $generated@@6))
(assert (forall (($generated@@225 T@U) ($generated@@226 T@U) ) (! (= ($generated@@104 $generated@@225 $generated@@226) (forall (($generated@@227 T@U) ) (! (= ($generated@@40 $generated@@225 $generated@@227) ($generated@@40 $generated@@226 $generated@@227))
 :pattern ( ($generated@@40 $generated@@225 $generated@@227))
 :pattern ( ($generated@@40 $generated@@226 $generated@@227))
)))
 :pattern ( ($generated@@104 $generated@@225 $generated@@226))
)))
(assert  (and (forall (($generated@@231 T@T) ($generated@@232 T@T) ($generated@@233 T@T) ($generated@@234 T@U) ($generated@@235 T@U) ($generated@@236 T@U) ($generated@@237 T@U) ) (! (= ($generated@@228 $generated@@231 $generated@@232 $generated@@233 ($generated@@230 $generated@@231 $generated@@232 $generated@@233 $generated@@235 $generated@@236 $generated@@237 $generated@@234) $generated@@236 $generated@@237) $generated@@234)
 :weight 0
)) (and (forall (($generated@@238 T@T) ($generated@@239 T@T) ($generated@@240 T@T) ($generated@@241 T@U) ($generated@@242 T@U) ($generated@@243 T@U) ($generated@@244 T@U) ($generated@@245 T@U) ($generated@@246 T@U) ) (!  (or (= $generated@@243 $generated@@245) (= ($generated@@228 $generated@@238 $generated@@239 $generated@@240 ($generated@@230 $generated@@238 $generated@@239 $generated@@240 $generated@@242 $generated@@243 $generated@@244 $generated@@241) $generated@@245 $generated@@246) ($generated@@228 $generated@@238 $generated@@239 $generated@@240 $generated@@242 $generated@@245 $generated@@246)))
 :weight 0
)) (forall (($generated@@247 T@T) ($generated@@248 T@T) ($generated@@249 T@T) ($generated@@250 T@U) ($generated@@251 T@U) ($generated@@252 T@U) ($generated@@253 T@U) ($generated@@254 T@U) ($generated@@255 T@U) ) (!  (or (= $generated@@253 $generated@@255) (= ($generated@@228 $generated@@247 $generated@@248 $generated@@249 ($generated@@230 $generated@@247 $generated@@248 $generated@@249 $generated@@251 $generated@@252 $generated@@253 $generated@@250) $generated@@254 $generated@@255) ($generated@@228 $generated@@247 $generated@@248 $generated@@249 $generated@@251 $generated@@254 $generated@@255)))
 :weight 0
)))))
(assert (forall (($generated@@256 T@U) ($generated@@257 T@U) ($generated@@258 T@U) ($generated@@259 T@U) ($generated@@260 T@U) ($generated@@261 T@U) ) (! (= ($generated@@13 ($generated@@228 $generated@@55 $generated@@71 $generated@@9 ($generated@@229 $generated@@256 $generated@@257 $generated@@258 $generated@@259) $generated@@260 $generated@@261))  (=> (and (or (not (= $generated@@260 $generated@@256)) (not true)) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@70 $generated@@71 $generated@@72 ($generated@@70 $generated@@55 ($generated@@73 $generated@@71 $generated@@72) $generated@@257 $generated@@260) $generated@@258)))) ($generated@@40 $generated@@259 ($generated@@33 $generated@@55 $generated@@260))))
 :pattern ( ($generated@@228 $generated@@55 $generated@@71 $generated@@9 ($generated@@229 $generated@@256 $generated@@257 $generated@@258 $generated@@259) $generated@@260 $generated@@261))
)))
(assert (forall (($generated@@262 T@U) ($generated@@263 T@U) ) (! ($generated@@54 $generated@@9 $generated@@263 $generated $generated@@262)
 :pattern ( ($generated@@54 $generated@@9 $generated@@263 $generated $generated@@262))
)))
(assert (forall (($generated@@264 T@U) ) (! ($generated@@43 $generated@@9 $generated@@264 $generated)
 :pattern ( ($generated@@43 $generated@@9 $generated@@264 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@265 () T@U)
(declare-fun $generated@@266 () T@U)
(declare-fun $generated@@267 () T@U)
(declare-fun $generated@@268 () T@U)
(declare-fun $generated@@269 () T@U)
(declare-fun $generated@@270 () Bool)
(declare-fun $generated@@271 () T@U)
(declare-fun $generated@@272 () Bool)
(declare-fun $generated@@273 () Bool)
(declare-fun $generated@@274 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 14) (let (($generated@@275  (and (=> (= (ControlFlow 0 3) (- 0 4)) ($generated@@24 $generated@@265 $generated@@266 $generated@@267 $generated@@268 $generated@@269)) (=> ($generated@@24 $generated@@265 $generated@@266 $generated@@267 $generated@@268 $generated@@269) (=> (and (and (= $generated@@270 (forall (($generated@@276 T@U) ($generated@@277 T@U) )  (=> (and (and (or (not (= $generated@@276 $generated@@69)) (not true)) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@70 $generated@@71 $generated@@72 ($generated@@70 $generated@@55 ($generated@@73 $generated@@71 $generated@@72) $generated@@267 $generated@@276) $generated@@2)))) ($generated@@40 ($generated@@60 $generated@@265 $generated@@266 $generated@@267 $generated@@268 $generated@@269) ($generated@@33 $generated@@55 $generated@@276))) ($generated@@13 ($generated@@228 $generated@@55 $generated@@71 $generated@@9 $generated@@271 $generated@@276 $generated@@277))))) (= ($generated@@111 $generated@@265 $generated@@266 $generated@@267 $generated@@268 $generated@@269) ($generated@@26 $generated@@265 $generated@@266 $generated@@267 $generated@@268 $generated@@269))) (and ($generated@@46 ($generated@@111 $generated@@265 $generated@@266 $generated@@267 $generated@@268 $generated@@269) $generated@@266) (= (ControlFlow 0 3) (- 0 2)))) $generated@@270)))))
(let (($generated@@278 true))
(let (($generated@@279  (=> (= $generated@@271 ($generated@@229 $generated@@69 $generated@@267 $generated@@2 ($generated@@60 $generated@@265 $generated@@266 $generated@@267 $generated@@268 $generated@@269))) (and (=> (= (ControlFlow 0 5) (- 0 13)) true) (and (=> (= (ControlFlow 0 5) (- 0 12)) ($generated@@24 $generated@@265 $generated $generated@@267 ($generated@@27 $generated@@265 $generated@@266 $generated@@268) $generated@@269)) (=> ($generated@@24 $generated@@265 $generated $generated@@267 ($generated@@27 $generated@@265 $generated@@266 $generated@@268) $generated@@269) (=> (and (= $generated@@272 (forall (($generated@@280 T@U) ($generated@@281 T@U) )  (=> (and (and (or (not (= $generated@@280 $generated@@69)) (not true)) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@70 $generated@@71 $generated@@72 ($generated@@70 $generated@@55 ($generated@@73 $generated@@71 $generated@@72) $generated@@267 $generated@@280) $generated@@2)))) ($generated@@40 ($generated@@60 $generated@@265 $generated $generated@@267 ($generated@@27 $generated@@265 $generated@@266 $generated@@268) $generated@@269) ($generated@@33 $generated@@55 $generated@@280))) ($generated@@13 ($generated@@228 $generated@@55 $generated@@71 $generated@@9 $generated@@271 $generated@@280 $generated@@281))))) ($generated@@24 $generated@@265 $generated@@266 $generated@@267 $generated@@268 $generated@@269)) (and (=> (= (ControlFlow 0 5) (- 0 11)) $generated@@272) (=> $generated@@272 (and (=> (= (ControlFlow 0 5) (- 0 10)) true) (and (=> (= (ControlFlow 0 5) (- 0 9)) ($generated@@24 $generated@@265 ($generated@@61 $generated@@57) $generated@@267 ($generated@@62 $generated@@265 $generated@@266 $generated@@268) $generated@@269)) (=> ($generated@@24 $generated@@265 ($generated@@61 $generated@@57) $generated@@267 ($generated@@62 $generated@@265 $generated@@266 $generated@@268) $generated@@269) (=> (= $generated@@273 (forall (($generated@@282 T@U) ($generated@@283 T@U) )  (=> (and (and (or (not (= $generated@@282 $generated@@69)) (not true)) ($generated@@13 ($generated@@25 $generated@@9 ($generated@@70 $generated@@71 $generated@@72 ($generated@@70 $generated@@55 ($generated@@73 $generated@@71 $generated@@72) $generated@@267 $generated@@282) $generated@@2)))) ($generated@@40 ($generated@@60 $generated@@265 ($generated@@61 $generated@@57) $generated@@267 ($generated@@62 $generated@@265 $generated@@266 $generated@@268) $generated@@269) ($generated@@33 $generated@@55 $generated@@282))) ($generated@@13 ($generated@@228 $generated@@55 $generated@@71 $generated@@9 $generated@@271 $generated@@282 $generated@@283))))) (and (=> (= (ControlFlow 0 5) (- 0 8)) $generated@@273) (=> $generated@@273 (and (=> (= (ControlFlow 0 5) (- 0 7)) true) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($generated@@24 $generated@@265 ($generated@@61 $generated@@57) $generated@@267 ($generated@@62 $generated@@265 $generated@@266 $generated@@268) $generated@@269)) (=> ($generated@@24 $generated@@265 ($generated@@61 $generated@@57) $generated@@267 ($generated@@62 $generated@@265 $generated@@266 $generated@@268) $generated@@269) (and (=> (= (ControlFlow 0 5) 1) $generated@@278) (=> (= (ControlFlow 0 5) 3) $generated@@275))))))))))))))))))))
(let (($generated@@284  (=> (and ($generated@@103 $generated@@267) ($generated@@274 $generated@@267)) (=> (and (and ($generated@@43 $generated@@44 $generated@@268 ($generated@@45 $generated@@265 $generated@@266)) ($generated@@46 $generated@@269 $generated@@265)) (and (= 0 $generated@@110) (= (ControlFlow 0 14) 5))) $generated@@279))))
$generated@@284)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)