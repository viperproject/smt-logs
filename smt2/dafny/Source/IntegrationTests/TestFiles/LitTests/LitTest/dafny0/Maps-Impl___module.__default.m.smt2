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
(declare-fun $generated@@7 (T@T) Int)
(declare-fun $generated@@8 () T@T)
(declare-fun $generated@@9 () T@T)
(declare-fun $generated@@10 () T@T)
(declare-fun $generated@@11 (Bool) T@U)
(declare-fun $generated@@12 (T@U) Bool)
(declare-fun $generated@@13 (Int) T@U)
(declare-fun $generated@@14 (T@U) Int)
(declare-fun $generated@@15 (Real) T@U)
(declare-fun $generated@@16 (T@U) Real)
(declare-fun $generated@@23 (T@U) T@U)
(declare-fun $generated@@24 (T@U) Bool)
(declare-fun $generated@@25 (T@T T@U T@U) Bool)
(declare-fun $generated@@26 () T@T)
(declare-fun $generated@@27 (T@U T@U) T@U)
(declare-fun $generated@@31 (T@U T@U) T@U)
(declare-fun $generated@@32 (T@U T@U) Bool)
(declare-fun $generated@@37 (Int) Int)
(declare-fun $generated@@39 (T@T T@U) T@U)
(declare-fun $generated@@42 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@43 (T@U) Bool)
(declare-fun $generated@@44 (T@U T@U T@U) Bool)
(declare-fun $generated@@50 (T@U) T@U)
(declare-fun $generated@@52 (T@T T@U) T@U)
(declare-fun $generated@@53 (T@T T@U) T@U)
(declare-fun $generated@@59 () T@T)
(declare-fun $generated@@60 (T@U) T@U)
(declare-fun $generated@@61 (T@U T@U) Bool)
(declare-fun $generated@@77 (T@U T@U) T@U)
(declare-fun $generated@@78 (T@U) T@U)
(declare-fun $generated@@81 (T@U) T@U)
(declare-fun $generated@@88 (T@U) T@U)
(declare-fun $generated@@91 (T@U) T@U)
(declare-fun $generated@@94 (T@U) T@U)
(declare-fun $generated@@97 (T@U) T@U)
(declare-fun $generated@@100 (T@U) T@U)
(declare-fun $generated@@105 () T@T)
(declare-fun $generated@@106 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@107 () T@T)
(declare-fun $generated@@108 (T@U) T@U)
(declare-fun $generated@@109 (T@U) T@U)
(declare-fun $generated@@110 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@127 (T@U) Int)
(declare-fun $generated@@128 (T@U) Int)
(declare-fun $generated@@133 () T@U)
(declare-fun $generated@@141 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@142 () T@T)
(declare-fun $generated@@143 () T@T)
(declare-fun $generated@@144 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@145 (T@T T@T) T@T)
(declare-fun $generated@@146 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@147 (T@T) T@T)
(declare-fun $generated@@148 (T@T) T@T)
(declare-fun $generated@@186 (T@U) T@U)
(declare-fun $generated@@191 (T@U) T@U)
(declare-fun $generated@@194 (T@U) T@U)
(declare-fun $generated@@200 (T@U T@U T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= ($generated@@7 $generated@@8) 0) (= ($generated@@7 $generated@@9) 1)) (= ($generated@@7 $generated@@10) 2)) (forall (($generated@@17 Bool) ) (! (= ($generated@@12 ($generated@@11 $generated@@17)) $generated@@17)
 :pattern ( ($generated@@11 $generated@@17))
))) (forall (($generated@@18 T@U) ) (! (= ($generated@@11 ($generated@@12 $generated@@18)) $generated@@18)
 :pattern ( ($generated@@12 $generated@@18))
))) (forall (($generated@@19 Int) ) (! (= ($generated@@14 ($generated@@13 $generated@@19)) $generated@@19)
 :pattern ( ($generated@@13 $generated@@19))
))) (forall (($generated@@20 T@U) ) (! (= ($generated@@13 ($generated@@14 $generated@@20)) $generated@@20)
 :pattern ( ($generated@@14 $generated@@20))
))) (forall (($generated@@21 Real) ) (! (= ($generated@@16 ($generated@@15 $generated@@21)) $generated@@21)
 :pattern ( ($generated@@15 $generated@@21))
))) (forall (($generated@@22 T@U) ) (! (= ($generated@@15 ($generated@@16 $generated@@22)) $generated@@22)
 :pattern ( ($generated@@16 $generated@@22))
))))
(assert (distinct $generated $generated@@0 $generated@@1 $generated@@2 $generated@@3 $generated@@4 $generated@@5 $generated@@6)
)
(assert (= ($generated@@23 $generated) $generated@@0))
(assert (= ($generated@@7 $generated@@26) 3))
(assert (forall (($generated@@28 T@U) ($generated@@29 T@U) ($generated@@30 T@U) ) (!  (=> ($generated@@25 $generated@@26 $generated@@30 ($generated@@27 $generated@@28 $generated@@29)) ($generated@@24 $generated@@30))
 :pattern ( ($generated@@24 $generated@@30) ($generated@@25 $generated@@26 $generated@@30 ($generated@@27 $generated@@28 $generated@@29)))
)))
(assert (forall (($generated@@33 T@U) ($generated@@34 T@U) ($generated@@35 T@U) ($generated@@36 T@U) ) (! (= ($generated@@25 $generated@@26 ($generated@@31 $generated@@35 $generated@@36) ($generated@@27 $generated@@33 $generated@@34))  (and ($generated@@32 $generated@@35 $generated@@33) ($generated@@32 $generated@@36 $generated@@34)))
 :pattern ( ($generated@@25 $generated@@26 ($generated@@31 $generated@@35 $generated@@36) ($generated@@27 $generated@@33 $generated@@34)))
)))
(assert (forall (($generated@@38 Int) ) (! (= ($generated@@37 $generated@@38) $generated@@38)
 :pattern ( ($generated@@37 $generated@@38))
)))
(assert (forall (($generated@@40 T@U) ($generated@@41 T@T) ) (! (= ($generated@@39 $generated@@41 $generated@@40) $generated@@40)
 :pattern ( ($generated@@39 $generated@@41 $generated@@40))
)))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ) (!  (=> ($generated@@43 $generated@@49) (= ($generated@@42 $generated@@26 ($generated@@31 $generated@@47 $generated@@48) ($generated@@27 $generated@@45 $generated@@46) $generated@@49)  (and ($generated@@44 $generated@@47 $generated@@45 $generated@@49) ($generated@@44 $generated@@48 $generated@@46 $generated@@49))))
 :pattern ( ($generated@@42 $generated@@26 ($generated@@31 $generated@@47 $generated@@48) ($generated@@27 $generated@@45 $generated@@46) $generated@@49))
)))
(assert (forall (($generated@@51 T@U) ) (! (= ($generated@@24 $generated@@51) (= ($generated@@50 $generated@@51) $generated@@4))
 :pattern ( ($generated@@24 $generated@@51))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@T) ) (! (= ($generated@@53 $generated@@55 ($generated@@52 $generated@@55 $generated@@54)) $generated@@54)
 :pattern ( ($generated@@52 $generated@@55 $generated@@54))
)))
(assert (forall (($generated@@56 T@U) ) (!  (=> ($generated@@24 $generated@@56) (exists (($generated@@57 T@U) ($generated@@58 T@U) ) (= $generated@@56 ($generated@@31 $generated@@57 $generated@@58))))
 :pattern ( ($generated@@24 $generated@@56))
)))
(assert (= ($generated@@7 $generated@@59) 4))
(assert (forall (($generated@@62 T@U) ($generated@@63 T@U) ) (! (= ($generated@@25 $generated@@59 $generated@@62 ($generated@@60 $generated@@63)) (forall (($generated@@64 T@U) ) (!  (=> ($generated@@61 $generated@@62 $generated@@64) ($generated@@32 $generated@@64 $generated@@63))
 :pattern ( ($generated@@61 $generated@@62 $generated@@64))
)))
 :pattern ( ($generated@@25 $generated@@59 $generated@@62 ($generated@@60 $generated@@63)))
)))
(assert (forall (($generated@@65 T@U) ($generated@@66 T@U) ($generated@@67 T@U) ($generated@@68 T@T) ) (! (= ($generated@@44 ($generated@@53 $generated@@68 $generated@@65) $generated@@66 $generated@@67) ($generated@@42 $generated@@68 $generated@@65 $generated@@66 $generated@@67))
 :pattern ( ($generated@@44 ($generated@@53 $generated@@68 $generated@@65) $generated@@66 $generated@@67))
)))
(assert (forall (($generated@@69 T@U) ) (!  (=> ($generated@@32 $generated@@69 $generated) (and (= ($generated@@53 $generated@@9 ($generated@@52 $generated@@9 $generated@@69)) $generated@@69) ($generated@@25 $generated@@9 ($generated@@52 $generated@@9 $generated@@69) $generated)))
 :pattern ( ($generated@@32 $generated@@69 $generated))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@U) ($generated@@72 T@T) ) (! (= ($generated@@32 ($generated@@53 $generated@@72 $generated@@70) $generated@@71) ($generated@@25 $generated@@72 $generated@@70 $generated@@71))
 :pattern ( ($generated@@32 ($generated@@53 $generated@@72 $generated@@70) $generated@@71))
)))
(assert (forall (($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ) (! (= ($generated@@42 $generated@@59 $generated@@73 ($generated@@60 $generated@@74) $generated@@75) (forall (($generated@@76 T@U) ) (!  (=> ($generated@@61 $generated@@73 $generated@@76) ($generated@@44 $generated@@76 $generated@@74 $generated@@75))
 :pattern ( ($generated@@61 $generated@@73 $generated@@76))
)))
 :pattern ( ($generated@@42 $generated@@59 $generated@@73 ($generated@@60 $generated@@74) $generated@@75))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ) (! (= ($generated@@78 ($generated@@77 $generated@@79 $generated@@80)) $generated@@79)
 :pattern ( ($generated@@77 $generated@@79 $generated@@80))
)))
(assert (forall (($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@81 ($generated@@77 $generated@@82 $generated@@83)) $generated@@83)
 :pattern ( ($generated@@77 $generated@@82 $generated@@83))
)))
(assert (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (! (= ($generated@@23 ($generated@@77 $generated@@84 $generated@@85)) $generated@@2)
 :pattern ( ($generated@@77 $generated@@84 $generated@@85))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ) (! (= ($generated@@50 ($generated@@31 $generated@@86 $generated@@87)) $generated@@4)
 :pattern ( ($generated@@31 $generated@@86 $generated@@87))
)))
(assert (forall (($generated@@89 T@U) ($generated@@90 T@U) ) (! (= ($generated@@88 ($generated@@27 $generated@@89 $generated@@90)) $generated@@89)
 :pattern ( ($generated@@27 $generated@@89 $generated@@90))
)))
(assert (forall (($generated@@92 T@U) ($generated@@93 T@U) ) (! (= ($generated@@91 ($generated@@27 $generated@@92 $generated@@93)) $generated@@93)
 :pattern ( ($generated@@27 $generated@@92 $generated@@93))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ) (! (= ($generated@@94 ($generated@@31 $generated@@95 $generated@@96)) $generated@@95)
 :pattern ( ($generated@@31 $generated@@95 $generated@@96))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ) (! (= ($generated@@97 ($generated@@31 $generated@@98 $generated@@99)) $generated@@99)
 :pattern ( ($generated@@31 $generated@@98 $generated@@99))
)))
(assert (forall (($generated@@101 T@U) ) (! (= ($generated@@100 ($generated@@60 $generated@@101)) $generated@@101)
 :pattern ( ($generated@@60 $generated@@101))
)))
(assert (forall (($generated@@102 T@U) ) (! (= ($generated@@23 ($generated@@60 $generated@@102)) $generated@@1)
 :pattern ( ($generated@@60 $generated@@102))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@T) ) (! (= ($generated@@52 $generated@@104 ($generated@@53 $generated@@104 $generated@@103)) $generated@@103)
 :pattern ( ($generated@@53 $generated@@104 $generated@@103))
)))
(assert  (and (and (and (= ($generated@@7 $generated@@105) 5) (forall (($generated@@111 T@T) ($generated@@112 T@T) ($generated@@113 T@U) ($generated@@114 T@U) ($generated@@115 T@U) ) (! (= ($generated@@106 $generated@@111 $generated@@112 ($generated@@110 $generated@@111 $generated@@112 $generated@@114 $generated@@115 $generated@@113) $generated@@115) $generated@@113)
 :weight 0
))) (forall (($generated@@116 T@T) ($generated@@117 T@T) ($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ($generated@@121 T@U) ) (!  (or (= $generated@@120 $generated@@121) (= ($generated@@106 $generated@@116 $generated@@117 ($generated@@110 $generated@@116 $generated@@117 $generated@@119 $generated@@120 $generated@@118) $generated@@121) ($generated@@106 $generated@@116 $generated@@117 $generated@@119 $generated@@121)))
 :weight 0
))) (= ($generated@@7 $generated@@107) 6)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ($generated@@124 T@U) ($generated@@125 T@U) ) (! (= ($generated@@42 $generated@@105 $generated@@122 ($generated@@77 $generated@@123 $generated@@124) $generated@@125) (forall (($generated@@126 T@U) ) (!  (=> ($generated@@61 ($generated@@109 $generated@@122) $generated@@126) (and ($generated@@44 ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 $generated@@122) $generated@@126) $generated@@124 $generated@@125) ($generated@@44 $generated@@126 $generated@@123 $generated@@125)))
 :pattern ( ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 $generated@@122) $generated@@126))
 :pattern ( ($generated@@61 ($generated@@109 $generated@@122) $generated@@126))
)))
 :pattern ( ($generated@@42 $generated@@105 $generated@@122 ($generated@@77 $generated@@123 $generated@@124) $generated@@125))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ) (! (< ($generated@@127 $generated@@129) ($generated@@128 ($generated@@31 $generated@@129 $generated@@130)))
 :pattern ( ($generated@@31 $generated@@129 $generated@@130))
)))
(assert (forall (($generated@@131 T@U) ($generated@@132 T@U) ) (! (< ($generated@@127 $generated@@132) ($generated@@128 ($generated@@31 $generated@@131 $generated@@132)))
 :pattern ( ($generated@@31 $generated@@131 $generated@@132))
)))
(assert (forall (($generated@@134 T@U) ) (!  (not ($generated@@61 ($generated@@109 $generated@@133) $generated@@134))
 :pattern ( ($generated@@61 ($generated@@109 $generated@@133) $generated@@134))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (!  (=> ($generated@@32 $generated@@135 ($generated@@77 $generated@@136 $generated@@137)) (and (= ($generated@@53 $generated@@105 ($generated@@52 $generated@@105 $generated@@135)) $generated@@135) ($generated@@25 $generated@@105 ($generated@@52 $generated@@105 $generated@@135) ($generated@@77 $generated@@136 $generated@@137))))
 :pattern ( ($generated@@32 $generated@@135 ($generated@@77 $generated@@136 $generated@@137)))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (!  (=> ($generated@@32 $generated@@140 ($generated@@27 $generated@@138 $generated@@139)) (and (= ($generated@@53 $generated@@26 ($generated@@52 $generated@@26 $generated@@140)) $generated@@140) ($generated@@25 $generated@@26 ($generated@@52 $generated@@26 $generated@@140) ($generated@@27 $generated@@138 $generated@@139))))
 :pattern ( ($generated@@32 $generated@@140 ($generated@@27 $generated@@138 $generated@@139)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@149 T@T) ($generated@@150 T@T) ($generated@@151 T@T) ($generated@@152 T@U) ($generated@@153 T@U) ($generated@@154 T@U) ($generated@@155 T@U) ) (! (= ($generated@@141 $generated@@149 $generated@@150 $generated@@151 ($generated@@146 $generated@@149 $generated@@150 $generated@@151 $generated@@153 $generated@@154 $generated@@155 $generated@@152) $generated@@154 $generated@@155) $generated@@152)
 :weight 0
)) (and (forall (($generated@@156 T@T) ($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ) (!  (or (= $generated@@161 $generated@@163) (= ($generated@@141 $generated@@156 $generated@@157 $generated@@158 ($generated@@146 $generated@@156 $generated@@157 $generated@@158 $generated@@160 $generated@@161 $generated@@162 $generated@@159) $generated@@163 $generated@@164) ($generated@@141 $generated@@156 $generated@@157 $generated@@158 $generated@@160 $generated@@163 $generated@@164)))
 :weight 0
)) (forall (($generated@@165 T@T) ($generated@@166 T@T) ($generated@@167 T@T) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ) (!  (or (= $generated@@171 $generated@@173) (= ($generated@@141 $generated@@165 $generated@@166 $generated@@167 ($generated@@146 $generated@@165 $generated@@166 $generated@@167 $generated@@169 $generated@@170 $generated@@171 $generated@@168) $generated@@172 $generated@@173) ($generated@@141 $generated@@165 $generated@@166 $generated@@167 $generated@@169 $generated@@172 $generated@@173)))
 :weight 0
)))) (= ($generated@@7 $generated@@142) 7)) (= ($generated@@7 $generated@@143) 8)) (forall (($generated@@174 T@T) ($generated@@175 T@T) ) (= ($generated@@7 ($generated@@145 $generated@@174 $generated@@175)) 9))) (forall (($generated@@176 T@T) ($generated@@177 T@T) ) (! (= ($generated@@147 ($generated@@145 $generated@@176 $generated@@177)) $generated@@176)
 :pattern ( ($generated@@145 $generated@@176 $generated@@177))
))) (forall (($generated@@178 T@T) ($generated@@179 T@T) ) (! (= ($generated@@148 ($generated@@145 $generated@@178 $generated@@179)) $generated@@179)
 :pattern ( ($generated@@145 $generated@@178 $generated@@179))
))))
(assert (forall (($generated@@180 T@U) ($generated@@181 T@U) ($generated@@182 T@U) ($generated@@183 Bool) ($generated@@184 T@U) ($generated@@185 T@U) ) (! (= ($generated@@12 ($generated@@141 $generated@@142 $generated@@143 $generated@@8 ($generated@@144 $generated@@180 $generated@@181 $generated@@182 $generated@@183) $generated@@184 $generated@@185))  (=> (and (or (not (= $generated@@184 $generated@@180)) (not true)) ($generated@@12 ($generated@@52 $generated@@8 ($generated@@106 $generated@@143 $generated@@107 ($generated@@106 $generated@@142 ($generated@@145 $generated@@143 $generated@@107) $generated@@181 $generated@@184) $generated@@182)))) $generated@@183))
 :pattern ( ($generated@@141 $generated@@142 $generated@@143 $generated@@8 ($generated@@144 $generated@@180 $generated@@181 $generated@@182 $generated@@183) $generated@@184 $generated@@185))
)))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@U) ) (!  (and (= ($generated@@23 ($generated@@27 $generated@@187 $generated@@188)) $generated@@5) (= ($generated@@186 ($generated@@27 $generated@@187 $generated@@188)) $generated@@6))
 :pattern ( ($generated@@27 $generated@@187 $generated@@188))
)))
(assert (forall (($generated@@189 T@U) ) (!  (or (= $generated@@189 $generated@@133) (exists (($generated@@190 T@U) ) ($generated@@61 ($generated@@109 $generated@@189) $generated@@190)))
 :pattern ( ($generated@@109 $generated@@189))
)))
(assert (forall (($generated@@192 T@U) ) (!  (or (= $generated@@192 $generated@@133) (exists (($generated@@193 T@U) ) ($generated@@61 ($generated@@191 $generated@@192) $generated@@193)))
 :pattern ( ($generated@@191 $generated@@192))
)))
(assert (forall (($generated@@195 T@U) ($generated@@196 T@U) ) (! (= ($generated@@61 ($generated@@194 $generated@@195) $generated@@196)  (and ($generated@@61 ($generated@@109 $generated@@195) ($generated@@94 ($generated@@52 $generated@@26 $generated@@196))) (= ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 $generated@@195) ($generated@@94 ($generated@@52 $generated@@26 $generated@@196))) ($generated@@97 ($generated@@52 $generated@@26 $generated@@196)))))
 :pattern ( ($generated@@61 ($generated@@194 $generated@@195) $generated@@196))
)))
(assert (forall (($generated@@197 T@U) ($generated@@198 T@U) ) (! (= ($generated@@61 ($generated@@191 $generated@@197) $generated@@198) (exists (($generated@@199 T@U) ) (!  (and ($generated@@61 ($generated@@109 $generated@@197) $generated@@199) (= $generated@@198 ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 $generated@@197) $generated@@199)))
 :pattern ( ($generated@@61 ($generated@@109 $generated@@197) $generated@@199))
 :pattern ( ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 $generated@@197) $generated@@199))
)))
 :pattern ( ($generated@@61 ($generated@@191 $generated@@197) $generated@@198))
)))
(assert (forall (($generated@@201 T@U) ($generated@@202 T@U) ($generated@@203 T@U) ($generated@@204 T@U) ) (!  (and (=> (= $generated@@203 $generated@@202) (and ($generated@@61 ($generated@@109 ($generated@@200 $generated@@201 $generated@@202 $generated@@204)) $generated@@203) (= ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 ($generated@@200 $generated@@201 $generated@@202 $generated@@204)) $generated@@203) $generated@@204))) (=> (or (not (= $generated@@203 $generated@@202)) (not true)) (and (= ($generated@@61 ($generated@@109 ($generated@@200 $generated@@201 $generated@@202 $generated@@204)) $generated@@203) ($generated@@61 ($generated@@109 $generated@@201) $generated@@203)) (= ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 ($generated@@200 $generated@@201 $generated@@202 $generated@@204)) $generated@@203) ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 $generated@@201) $generated@@203)))))
 :pattern ( ($generated@@61 ($generated@@109 ($generated@@200 $generated@@201 $generated@@202 $generated@@204)) $generated@@203))
 :pattern ( ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 ($generated@@200 $generated@@201 $generated@@202 $generated@@204)) $generated@@203))
)))
(assert (forall (($generated@@205 T@U) ) (! (= ($generated@@127 ($generated@@53 $generated@@26 $generated@@205)) ($generated@@128 $generated@@205))
 :pattern ( ($generated@@127 ($generated@@53 $generated@@26 $generated@@205)))
)))
(assert (forall (($generated@@206 T@U) ($generated@@207 T@U) ) (!  (=> ($generated@@32 $generated@@206 ($generated@@60 $generated@@207)) (and (= ($generated@@53 $generated@@59 ($generated@@52 $generated@@59 $generated@@206)) $generated@@206) ($generated@@25 $generated@@59 ($generated@@52 $generated@@59 $generated@@206) ($generated@@60 $generated@@207))))
 :pattern ( ($generated@@32 $generated@@206 ($generated@@60 $generated@@207)))
)))
(assert (forall (($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ) (! (= ($generated@@25 $generated@@105 $generated@@208 ($generated@@77 $generated@@209 $generated@@210)) (forall (($generated@@211 T@U) ) (!  (=> ($generated@@61 ($generated@@109 $generated@@208) $generated@@211) (and ($generated@@32 ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 $generated@@208) $generated@@211) $generated@@210) ($generated@@32 $generated@@211 $generated@@209)))
 :pattern ( ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 $generated@@208) $generated@@211))
 :pattern ( ($generated@@61 ($generated@@109 $generated@@208) $generated@@211))
)))
 :pattern ( ($generated@@25 $generated@@105 $generated@@208 ($generated@@77 $generated@@209 $generated@@210)))
)))
(assert (forall (($generated@@212 T@U) ($generated@@213 T@U) ($generated@@214 T@U) ) (!  (=> (and ($generated@@43 $generated@@214) (and ($generated@@24 $generated@@212) (exists (($generated@@215 T@U) ) (! ($generated@@42 $generated@@26 $generated@@212 ($generated@@27 $generated@@213 $generated@@215) $generated@@214)
 :pattern ( ($generated@@42 $generated@@26 $generated@@212 ($generated@@27 $generated@@213 $generated@@215) $generated@@214))
)))) ($generated@@44 ($generated@@94 $generated@@212) $generated@@213 $generated@@214))
 :pattern ( ($generated@@44 ($generated@@94 $generated@@212) $generated@@213 $generated@@214))
)))
(assert (forall (($generated@@216 T@U) ($generated@@217 T@U) ($generated@@218 T@U) ) (!  (=> (and ($generated@@43 $generated@@218) (and ($generated@@24 $generated@@216) (exists (($generated@@219 T@U) ) (! ($generated@@42 $generated@@26 $generated@@216 ($generated@@27 $generated@@219 $generated@@217) $generated@@218)
 :pattern ( ($generated@@42 $generated@@26 $generated@@216 ($generated@@27 $generated@@219 $generated@@217) $generated@@218))
)))) ($generated@@44 ($generated@@97 $generated@@216) $generated@@217 $generated@@218))
 :pattern ( ($generated@@44 ($generated@@97 $generated@@216) $generated@@217 $generated@@218))
)))
(assert (forall (($generated@@220 T@U) ($generated@@221 T@U) ) (! (= ($generated@@31 ($generated@@39 $generated@@107 $generated@@220) ($generated@@39 $generated@@107 $generated@@221)) ($generated@@39 $generated@@26 ($generated@@31 $generated@@220 $generated@@221)))
 :pattern ( ($generated@@31 ($generated@@39 $generated@@107 $generated@@220) ($generated@@39 $generated@@107 $generated@@221)))
)))
(assert (forall (($generated@@222 Int) ) (! (= ($generated@@53 $generated@@9 ($generated@@13 ($generated@@37 $generated@@222))) ($generated@@39 $generated@@107 ($generated@@53 $generated@@9 ($generated@@13 $generated@@222))))
 :pattern ( ($generated@@53 $generated@@9 ($generated@@13 ($generated@@37 $generated@@222))))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 T@T) ) (! (= ($generated@@53 $generated@@224 ($generated@@39 $generated@@224 $generated@@223)) ($generated@@39 $generated@@107 ($generated@@53 $generated@@224 $generated@@223)))
 :pattern ( ($generated@@53 $generated@@224 ($generated@@39 $generated@@224 $generated@@223)))
)))
(assert (forall (($generated@@225 T@U) ($generated@@226 T@U) ) (! ($generated@@42 $generated@@9 $generated@@226 $generated $generated@@225)
 :pattern ( ($generated@@42 $generated@@9 $generated@@226 $generated $generated@@225))
)))
(assert (forall (($generated@@227 T@U) ) (!  (or (= $generated@@227 $generated@@133) (exists (($generated@@228 T@U) ($generated@@229 T@U) ) ($generated@@61 ($generated@@194 $generated@@227) ($generated@@53 $generated@@26 ($generated@@31 $generated@@228 $generated@@229)))))
 :pattern ( ($generated@@194 $generated@@227))
)))
(assert (forall (($generated@@230 T@U) ($generated@@231 T@U) ($generated@@232 T@U) ) (!  (=> ($generated@@25 $generated@@105 $generated@@230 ($generated@@77 $generated@@231 $generated@@232)) (and (and ($generated@@25 $generated@@59 ($generated@@109 $generated@@230) ($generated@@60 $generated@@231)) ($generated@@25 $generated@@59 ($generated@@191 $generated@@230) ($generated@@60 $generated@@232))) ($generated@@25 $generated@@59 ($generated@@194 $generated@@230) ($generated@@60 ($generated@@27 $generated@@231 $generated@@232)))))
 :pattern ( ($generated@@25 $generated@@105 $generated@@230 ($generated@@77 $generated@@231 $generated@@232)))
)))
(assert (forall (($generated@@233 T@U) ) (! ($generated@@25 $generated@@9 $generated@@233 $generated)
 :pattern ( ($generated@@25 $generated@@9 $generated@@233 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@234 () T@U)
(declare-fun $generated@@235 () T@U)
(declare-fun $generated@@236 () T@U)
(declare-fun $generated@@237 () T@U)
(declare-fun $generated@@238 () T@U)
(declare-fun $generated@@239 (T@U) Bool)
(declare-fun $generated@@240 () T@U)
(declare-fun $generated@@241 () T@U)
(declare-fun $generated@@242 () Int)
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
 (=> (= (ControlFlow 0 0) 5) (let (($generated@@243  (=> (= $generated@@234 ($generated@@144 $generated@@235 $generated@@236 $generated@@3 false)) (=> (and (= $generated@@237 ($generated@@39 $generated@@105 ($generated@@200 $generated@@133 ($generated@@53 $generated@@9 ($generated@@13 ($generated@@37 2))) ($generated@@53 $generated@@9 ($generated@@13 ($generated@@37 3)))))) (= $generated@@238 ($generated@@39 $generated@@105 ($generated@@200 $generated@@133 ($generated@@53 $generated@@9 ($generated@@13 ($generated@@37 3))) ($generated@@53 $generated@@9 ($generated@@13 ($generated@@37 2))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($generated@@61 ($generated@@109 $generated@@238) ($generated@@53 $generated@@9 ($generated@@13 ($generated@@37 3))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($generated@@61 ($generated@@109 $generated@@237) ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 $generated@@238) ($generated@@53 $generated@@9 ($generated@@13 ($generated@@37 3)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (= ($generated@@14 ($generated@@52 $generated@@9 ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 $generated@@237) ($generated@@106 $generated@@107 $generated@@107 ($generated@@108 $generated@@238) ($generated@@53 $generated@@9 ($generated@@13 ($generated@@37 3))))))) ($generated@@37 3)))))))))
(let (($generated@@244  (=> (and ($generated@@43 $generated@@236) ($generated@@239 $generated@@236)) (=> (and (and ($generated@@25 $generated@@105 $generated@@240 ($generated@@77 $generated $generated)) ($generated@@42 $generated@@105 $generated@@240 ($generated@@77 $generated $generated) $generated@@236)) true) (=> (and (and (and ($generated@@25 $generated@@105 $generated@@241 ($generated@@77 $generated $generated)) ($generated@@42 $generated@@105 $generated@@241 ($generated@@77 $generated $generated) $generated@@236)) true) (and (= 0 $generated@@242) (= (ControlFlow 0 5) 2))) $generated@@243)))))
$generated@@244)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)