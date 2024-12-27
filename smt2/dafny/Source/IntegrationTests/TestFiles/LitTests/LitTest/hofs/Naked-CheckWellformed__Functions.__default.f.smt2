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
(declare-fun $generated@@24 () Int)
(declare-fun $generated@@25 (T@U Int) Int)
(declare-fun $generated@@26 (Int) Bool)
(declare-fun $generated@@27 (Int) Int)
(declare-fun $generated@@30 (T@U T@U) Bool)
(declare-fun $generated@@31 () T@U)
(declare-fun $generated@@33 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $generated@@34 () T@U)
(declare-fun $generated@@35 (T@U) T@U)
(declare-fun $generated@@36 (T@U Int) Bool)
(declare-fun $generated@@37 (T@T T@U) T@U)
(declare-fun $generated@@41 (T@T T@U T@U) Bool)
(declare-fun $generated@@42 () T@T)
(declare-fun $generated@@43 (T@U T@U) T@U)
(declare-fun $generated@@44 (T@U T@U) Bool)
(declare-fun $generated@@53 (T@T T@U) T@U)
(declare-fun $generated@@56 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@57 () T@U)
(declare-fun $generated@@58 (T@U) Bool)
(declare-fun $generated@@59 (T@U T@U) Bool)
(declare-fun $generated@@65 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $generated@@66 (T@T T@U) T@U)
(declare-fun $generated@@73 () Bool)
(declare-fun $generated@@89 (T@U) T@U)
(declare-fun $generated@@92 (T@U) T@U)
(declare-fun $generated@@95 (T@U T@U) T@U)
(declare-fun $generated@@96 (T@U) T@U)
(declare-fun $generated@@99 (T@U) T@U)
(declare-fun $generated@@102 (T@U T@U) T@U)
(declare-fun $generated@@103 (T@U) T@U)
(declare-fun $generated@@106 (T@U) T@U)
(declare-fun $generated@@111 (T@U) T@U)
(declare-fun $generated@@122 () Bool)
(declare-fun $generated@@123 () T@U)
(declare-fun $generated@@141 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@142 () T@T)
(declare-fun $generated@@143 () T@T)
(declare-fun $generated@@144 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@145 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@146 () T@T)
(declare-fun $generated@@147 (T@T T@T) T@T)
(declare-fun $generated@@148 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@149 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@150 (T@T) T@T)
(declare-fun $generated@@151 (T@T) T@T)
(declare-fun $generated@@200 (T@U) T@U)
(declare-fun $generated@@201 (T@U) T@U)
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
(assert  (=> (<= 0 $generated@@24) (forall (($generated@@28 T@U) ($generated@@29 Int) ) (!  (=> (or ($generated@@26 $generated@@29) (and (< 0 $generated@@24) (<= ($generated@@27 0) $generated@@29))) (<= ($generated@@27 0) ($generated@@25 $generated@@28 $generated@@29)))
 :pattern ( ($generated@@25 $generated@@28 $generated@@29))
))))
(assert (forall (($generated@@32 T@U) ) (!  (not ($generated@@30 $generated@@31 $generated@@32))
 :pattern ( ($generated@@30 $generated@@31 $generated@@32))
)))
(assert (forall (($generated@@38 T@U) ($generated@@39 T@U) ($generated@@40 T@U) ) (! (= ($generated@@33 $generated@@34 $generated@@34 $generated@@39 ($generated@@35 $generated@@38) $generated@@40) ($generated@@36 $generated@@38 ($generated@@15 ($generated@@37 $generated@@10 $generated@@40))))
 :pattern ( ($generated@@33 $generated@@34 $generated@@34 $generated@@39 ($generated@@35 $generated@@38) $generated@@40))
)))
(assert (= ($generated@@8 $generated@@42) 3))
(assert (forall (($generated@@45 T@U) ($generated@@46 T@U) ($generated@@47 T@U) ($generated@@48 T@U) ($generated@@49 T@U) ) (!  (=> (and (and ($generated@@41 $generated@@42 $generated@@45 ($generated@@43 $generated@@46 $generated@@47)) (forall (($generated@@50 T@U) ) (!  (=> ($generated@@44 $generated@@50 $generated@@48) ($generated@@44 $generated@@50 $generated@@46))
 :pattern ( ($generated@@44 $generated@@50 $generated@@48))
 :pattern ( ($generated@@44 $generated@@50 $generated@@46))
))) (forall (($generated@@51 T@U) ) (!  (=> ($generated@@44 $generated@@51 $generated@@47) ($generated@@44 $generated@@51 $generated@@49))
 :pattern ( ($generated@@44 $generated@@51 $generated@@47))
 :pattern ( ($generated@@44 $generated@@51 $generated@@49))
))) ($generated@@41 $generated@@42 $generated@@45 ($generated@@43 $generated@@48 $generated@@49)))
 :pattern ( ($generated@@41 $generated@@42 $generated@@45 ($generated@@43 $generated@@46 $generated@@47)) ($generated@@41 $generated@@42 $generated@@45 ($generated@@43 $generated@@48 $generated@@49)))
)))
(assert (forall (($generated@@52 Int) ) (! (= ($generated@@27 $generated@@52) $generated@@52)
 :pattern ( ($generated@@27 $generated@@52))
)))
(assert (forall (($generated@@54 T@U) ($generated@@55 T@T) ) (! (= ($generated@@53 $generated@@55 $generated@@54) $generated@@54)
 :pattern ( ($generated@@53 $generated@@55 $generated@@54))
)))
(assert (forall (($generated@@60 T@U) ($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (!  (=> (and ($generated@@58 $generated@@62) (and ($generated@@44 $generated@@64 $generated@@60) ($generated@@41 $generated@@42 $generated@@63 ($generated@@43 $generated@@60 $generated@@61)))) (= ($generated@@59 ($generated@@56 $generated@@60 $generated@@61 $generated@@57 $generated@@63 $generated@@64) $generated@@31) ($generated@@59 ($generated@@56 $generated@@60 $generated@@61 $generated@@62 $generated@@63 $generated@@64) $generated@@31)))
 :pattern ( ($generated@@56 $generated@@60 $generated@@61 $generated@@57 $generated@@63 $generated@@64) ($generated@@58 $generated@@62))
 :pattern ( ($generated@@56 $generated@@60 $generated@@61 $generated@@62 $generated@@63 $generated@@64))
)))
(assert (forall (($generated@@67 T@U) ($generated@@68 T@U) ($generated@@69 T@U) ) (! (= ($generated@@65 $generated@@34 $generated@@34 $generated@@68 ($generated@@35 $generated@@67) $generated@@69) ($generated@@66 $generated@@10 ($generated@@14 ($generated@@25 $generated@@67 ($generated@@15 ($generated@@37 $generated@@10 $generated@@69))))))
 :pattern ( ($generated@@65 $generated@@34 $generated@@34 $generated@@68 ($generated@@35 $generated@@67) $generated@@69))
)))
(assert (forall (($generated@@70 T@U) ($generated@@71 T@T) ) (! (= ($generated@@66 $generated@@71 ($generated@@37 $generated@@71 $generated@@70)) $generated@@70)
 :pattern ( ($generated@@37 $generated@@71 $generated@@70))
)))
(assert (forall (($generated@@72 T@U) ) (! (= ($generated@@41 $generated@@10 $generated@@72 $generated@@34) (<= ($generated@@27 0) ($generated@@15 $generated@@72)))
 :pattern ( ($generated@@41 $generated@@10 $generated@@72 $generated@@34))
)))
(assert ($generated@@58 $generated@@57))
(assert  (=> $generated@@73 ($generated@@13 ($generated@@53 $generated@@9 ($generated@@12 true)))))
(assert (forall (($generated@@74 T@U) ) (!  (=> ($generated@@44 $generated@@74 $generated@@34) (and (= ($generated@@66 $generated@@10 ($generated@@37 $generated@@10 $generated@@74)) $generated@@74) ($generated@@41 $generated@@10 ($generated@@37 $generated@@10 $generated@@74) $generated@@34)))
 :pattern ( ($generated@@44 $generated@@74 $generated@@34))
)))
(assert (forall (($generated@@75 T@U) ($generated@@76 T@U) ($generated@@77 T@U) ($generated@@78 T@U) ) (! (= ($generated@@30 ($generated@@56 $generated@@34 $generated@@34 $generated@@77 ($generated@@35 $generated@@76) $generated@@78) $generated@@75) false)
 :pattern ( ($generated@@30 ($generated@@56 $generated@@34 $generated@@34 $generated@@77 ($generated@@35 $generated@@76) $generated@@78) $generated@@75))
)))
(assert (forall (($generated@@79 T@U) ($generated@@80 T@U) ) (!  (=> ($generated@@59 $generated@@79 $generated@@80) (= $generated@@79 $generated@@80))
 :pattern ( ($generated@@59 $generated@@79 $generated@@80))
)))
(assert (forall (($generated@@81 T@U) ($generated@@82 T@U) ($generated@@83 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@81 ($generated@@43 $generated@@82 $generated@@83)) (forall (($generated@@84 T@U) ($generated@@85 T@U) ) (!  (=> (and (and ($generated@@58 $generated@@84) ($generated@@44 $generated@@85 $generated@@82)) ($generated@@33 $generated@@82 $generated@@83 $generated@@84 $generated@@81 $generated@@85)) ($generated@@44 ($generated@@65 $generated@@82 $generated@@83 $generated@@84 $generated@@81 $generated@@85) $generated@@83))
 :pattern ( ($generated@@65 $generated@@82 $generated@@83 $generated@@84 $generated@@81 $generated@@85))
)))
 :pattern ( ($generated@@41 $generated@@42 $generated@@81 ($generated@@43 $generated@@82 $generated@@83)))
)))
(assert (forall (($generated@@86 T@U) ($generated@@87 T@U) ($generated@@88 T@T) ) (! (= ($generated@@44 ($generated@@66 $generated@@88 $generated@@86) $generated@@87) ($generated@@41 $generated@@88 $generated@@86 $generated@@87))
 :pattern ( ($generated@@44 ($generated@@66 $generated@@88 $generated@@86) $generated@@87))
)))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ) (! (= ($generated@@89 ($generated@@43 $generated@@90 $generated@@91)) $generated@@90)
 :pattern ( ($generated@@43 $generated@@90 $generated@@91))
)))
(assert (forall (($generated@@93 T@U) ($generated@@94 T@U) ) (! (= ($generated@@92 ($generated@@43 $generated@@93 $generated@@94)) $generated@@94)
 :pattern ( ($generated@@43 $generated@@93 $generated@@94))
)))
(assert (forall (($generated@@97 T@U) ($generated@@98 T@U) ) (! (= ($generated@@96 ($generated@@95 $generated@@97 $generated@@98)) $generated@@97)
 :pattern ( ($generated@@95 $generated@@97 $generated@@98))
)))
(assert (forall (($generated@@100 T@U) ($generated@@101 T@U) ) (! (= ($generated@@99 ($generated@@95 $generated@@100 $generated@@101)) $generated@@101)
 :pattern ( ($generated@@95 $generated@@100 $generated@@101))
)))
(assert (forall (($generated@@104 T@U) ($generated@@105 T@U) ) (! (= ($generated@@103 ($generated@@102 $generated@@104 $generated@@105)) $generated@@104)
 :pattern ( ($generated@@102 $generated@@104 $generated@@105))
)))
(assert (forall (($generated@@107 T@U) ($generated@@108 T@U) ) (! (= ($generated@@106 ($generated@@102 $generated@@107 $generated@@108)) $generated@@108)
 :pattern ( ($generated@@102 $generated@@107 $generated@@108))
)))
(assert (forall (($generated@@109 T@U) ($generated@@110 T@T) ) (! (= ($generated@@37 $generated@@110 ($generated@@66 $generated@@110 $generated@@109)) $generated@@109)
 :pattern ( ($generated@@66 $generated@@110 $generated@@109))
)))
(assert (forall (($generated@@112 T@U) ($generated@@113 Int) ) (! (= ($generated@@25 ($generated@@111 $generated@@112) $generated@@113) ($generated@@25 $generated@@112 $generated@@113))
 :pattern ( ($generated@@25 ($generated@@111 $generated@@112) $generated@@113))
)))
(assert (forall (($generated@@114 T@U) ($generated@@115 T@U) ($generated@@116 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@116 ($generated@@102 $generated@@114 $generated@@115))  (and ($generated@@41 $generated@@42 $generated@@116 ($generated@@95 $generated@@114 $generated@@115)) (forall (($generated@@117 T@U) )  (=> ($generated@@44 $generated@@117 $generated@@114) ($generated@@33 $generated@@114 $generated@@115 $generated@@57 $generated@@116 $generated@@117)))))
 :pattern ( ($generated@@41 $generated@@42 $generated@@116 ($generated@@102 $generated@@114 $generated@@115)))
)))
(assert (forall (($generated@@118 T@U) ($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@41 $generated@@42 $generated@@120 ($generated@@95 $generated@@118 $generated@@119))  (and ($generated@@41 $generated@@42 $generated@@120 ($generated@@43 $generated@@118 $generated@@119)) (forall (($generated@@121 T@U) )  (=> ($generated@@44 $generated@@121 $generated@@118) ($generated@@59 ($generated@@56 $generated@@118 $generated@@119 $generated@@57 $generated@@120 $generated@@121) $generated@@31)))))
 :pattern ( ($generated@@41 $generated@@42 $generated@@120 ($generated@@95 $generated@@118 $generated@@119)))
)))
(assert  (=> (<= 0 $generated@@24) (forall (($generated@@124 T@U) ($generated@@125 T@U) ($generated@@126 Int) ) (!  (=> (or ($generated@@26 $generated@@126) (and (< 0 $generated@@24) (and ($generated@@58 $generated@@125) (<= ($generated@@27 0) $generated@@126)))) (and (=> (or (not (= $generated@@126 ($generated@@27 0))) (not true)) $generated@@73) (= ($generated@@25 ($generated@@111 $generated@@124) $generated@@126) (ite (= $generated@@126 ($generated@@27 0)) 0 (ite (let (($generated@@127 $generated@@122))
$generated@@127) ($generated@@15 (let (($generated@@128 ($generated@@35 ($generated@@111 $generated@@123))))
($generated@@37 $generated@@10 ($generated@@65 $generated@@34 $generated@@34 $generated@@125 $generated@@128 ($generated@@66 $generated@@10 ($generated@@14 (- $generated@@126 1))))))) ($generated@@25 $generated@@124 (- $generated@@126 1)))))))
 :pattern ( ($generated@@25 ($generated@@111 $generated@@124) $generated@@126) ($generated@@58 $generated@@125))
))))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 Int) ) (! (= ($generated@@25 $generated@@129 $generated@@131) ($generated@@15 ($generated@@37 $generated@@10 ($generated@@65 $generated@@34 $generated@@34 $generated@@130 ($generated@@35 $generated@@129) ($generated@@66 $generated@@10 ($generated@@14 $generated@@131))))))
 :pattern ( ($generated@@25 $generated@@129 $generated@@131) ($generated@@58 $generated@@130))
)))
(assert (forall (($generated@@132 T@U) ($generated@@133 T@U) ($generated@@134 T@U) ) (!  (=> ($generated@@44 $generated@@134 ($generated@@43 $generated@@132 $generated@@133)) (and (= ($generated@@66 $generated@@42 ($generated@@37 $generated@@42 $generated@@134)) $generated@@134) ($generated@@41 $generated@@42 ($generated@@37 $generated@@42 $generated@@134) ($generated@@43 $generated@@132 $generated@@133))))
 :pattern ( ($generated@@44 $generated@@134 ($generated@@43 $generated@@132 $generated@@133)))
)))
(assert (forall (($generated@@135 T@U) ($generated@@136 T@U) ($generated@@137 T@U) ) (!  (=> ($generated@@44 $generated@@137 ($generated@@95 $generated@@135 $generated@@136)) (and (= ($generated@@66 $generated@@42 ($generated@@37 $generated@@42 $generated@@137)) $generated@@137) ($generated@@41 $generated@@42 ($generated@@37 $generated@@42 $generated@@137) ($generated@@95 $generated@@135 $generated@@136))))
 :pattern ( ($generated@@44 $generated@@137 ($generated@@95 $generated@@135 $generated@@136)))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ($generated@@140 T@U) ) (!  (=> ($generated@@44 $generated@@140 ($generated@@102 $generated@@138 $generated@@139)) (and (= ($generated@@66 $generated@@42 ($generated@@37 $generated@@42 $generated@@140)) $generated@@140) ($generated@@41 $generated@@42 ($generated@@37 $generated@@42 $generated@@140) ($generated@@102 $generated@@138 $generated@@139))))
 :pattern ( ($generated@@44 $generated@@140 ($generated@@102 $generated@@138 $generated@@139)))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall (($generated@@152 T@T) ($generated@@153 T@T) ($generated@@154 T@T) ($generated@@155 T@U) ($generated@@156 T@U) ($generated@@157 T@U) ($generated@@158 T@U) ) (! (= ($generated@@141 $generated@@152 $generated@@153 $generated@@154 ($generated@@148 $generated@@152 $generated@@153 $generated@@154 $generated@@156 $generated@@157 $generated@@158 $generated@@155) $generated@@157 $generated@@158) $generated@@155)
 :weight 0
)) (and (forall (($generated@@159 T@T) ($generated@@160 T@T) ($generated@@161 T@T) ($generated@@162 T@U) ($generated@@163 T@U) ($generated@@164 T@U) ($generated@@165 T@U) ($generated@@166 T@U) ($generated@@167 T@U) ) (!  (or (= $generated@@164 $generated@@166) (= ($generated@@141 $generated@@159 $generated@@160 $generated@@161 ($generated@@148 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@164 $generated@@165 $generated@@162) $generated@@166 $generated@@167) ($generated@@141 $generated@@159 $generated@@160 $generated@@161 $generated@@163 $generated@@166 $generated@@167)))
 :weight 0
)) (forall (($generated@@168 T@T) ($generated@@169 T@T) ($generated@@170 T@T) ($generated@@171 T@U) ($generated@@172 T@U) ($generated@@173 T@U) ($generated@@174 T@U) ($generated@@175 T@U) ($generated@@176 T@U) ) (!  (or (= $generated@@174 $generated@@176) (= ($generated@@141 $generated@@168 $generated@@169 $generated@@170 ($generated@@148 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@173 $generated@@174 $generated@@171) $generated@@175 $generated@@176) ($generated@@141 $generated@@168 $generated@@169 $generated@@170 $generated@@172 $generated@@175 $generated@@176)))
 :weight 0
)))) (= ($generated@@8 $generated@@142) 4)) (= ($generated@@8 $generated@@143) 5)) (forall (($generated@@177 T@T) ($generated@@178 T@T) ($generated@@179 T@U) ($generated@@180 T@U) ($generated@@181 T@U) ) (! (= ($generated@@145 $generated@@177 $generated@@178 ($generated@@149 $generated@@177 $generated@@178 $generated@@180 $generated@@181 $generated@@179) $generated@@181) $generated@@179)
 :weight 0
))) (forall (($generated@@182 T@T) ($generated@@183 T@T) ($generated@@184 T@U) ($generated@@185 T@U) ($generated@@186 T@U) ($generated@@187 T@U) ) (!  (or (= $generated@@186 $generated@@187) (= ($generated@@145 $generated@@182 $generated@@183 ($generated@@149 $generated@@182 $generated@@183 $generated@@185 $generated@@186 $generated@@184) $generated@@187) ($generated@@145 $generated@@182 $generated@@183 $generated@@185 $generated@@187)))
 :weight 0
))) (= ($generated@@8 $generated@@146) 6)) (forall (($generated@@188 T@T) ($generated@@189 T@T) ) (= ($generated@@8 ($generated@@147 $generated@@188 $generated@@189)) 7))) (forall (($generated@@190 T@T) ($generated@@191 T@T) ) (! (= ($generated@@150 ($generated@@147 $generated@@190 $generated@@191)) $generated@@190)
 :pattern ( ($generated@@147 $generated@@190 $generated@@191))
))) (forall (($generated@@192 T@T) ($generated@@193 T@T) ) (! (= ($generated@@151 ($generated@@147 $generated@@192 $generated@@193)) $generated@@193)
 :pattern ( ($generated@@147 $generated@@192 $generated@@193))
))))
(assert (forall (($generated@@194 T@U) ($generated@@195 T@U) ($generated@@196 T@U) ($generated@@197 Bool) ($generated@@198 T@U) ($generated@@199 T@U) ) (! (= ($generated@@13 ($generated@@141 $generated@@142 $generated@@143 $generated@@9 ($generated@@144 $generated@@194 $generated@@195 $generated@@196 $generated@@197) $generated@@198 $generated@@199))  (=> (and (or (not (= $generated@@198 $generated@@194)) (not true)) ($generated@@13 ($generated@@37 $generated@@9 ($generated@@145 $generated@@143 $generated@@146 ($generated@@145 $generated@@142 ($generated@@147 $generated@@143 $generated@@146) $generated@@195 $generated@@198) $generated@@196)))) $generated@@197))
 :pattern ( ($generated@@141 $generated@@142 $generated@@143 $generated@@9 ($generated@@144 $generated@@194 $generated@@195 $generated@@196 $generated@@197) $generated@@198 $generated@@199))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ) (!  (and (= ($generated@@200 ($generated@@43 $generated@@202 $generated@@203)) $generated@@1) (= ($generated@@201 ($generated@@43 $generated@@202 $generated@@203)) $generated@@5))
 :pattern ( ($generated@@43 $generated@@202 $generated@@203))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ) (!  (and (= ($generated@@200 ($generated@@95 $generated@@204 $generated@@205)) $generated@@2) (= ($generated@@201 ($generated@@95 $generated@@204 $generated@@205)) $generated@@6))
 :pattern ( ($generated@@95 $generated@@204 $generated@@205))
)))
(assert (forall (($generated@@206 T@U) ($generated@@207 T@U) ) (!  (and (= ($generated@@200 ($generated@@102 $generated@@206 $generated@@207)) $generated@@3) (= ($generated@@201 ($generated@@102 $generated@@206 $generated@@207)) $generated@@7))
 :pattern ( ($generated@@102 $generated@@206 $generated@@207))
)))
(assert (forall (($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ($generated@@212 T@U) ) (!  (=> (and (and ($generated@@58 $generated@@210) (and ($generated@@44 $generated@@212 $generated@@208) ($generated@@41 $generated@@42 $generated@@211 ($generated@@43 $generated@@208 $generated@@209)))) ($generated@@59 ($generated@@56 $generated@@208 $generated@@209 $generated@@57 $generated@@211 $generated@@212) $generated@@31)) (= ($generated@@33 $generated@@208 $generated@@209 $generated@@57 $generated@@211 $generated@@212) ($generated@@33 $generated@@208 $generated@@209 $generated@@210 $generated@@211 $generated@@212)))
 :pattern ( ($generated@@33 $generated@@208 $generated@@209 $generated@@57 $generated@@211 $generated@@212) ($generated@@58 $generated@@210))
 :pattern ( ($generated@@33 $generated@@208 $generated@@209 $generated@@210 $generated@@211 $generated@@212))
)))
(assert (forall (($generated@@213 T@U) ) (! (= ($generated@@35 ($generated@@111 $generated@@213)) ($generated@@35 $generated@@213))
 :pattern ( ($generated@@35 ($generated@@111 $generated@@213)))
)))
(assert (forall (($generated@@214 T@U) ($generated@@215 T@U) ($generated@@216 Int) ) (!  (=> (and ($generated@@58 $generated@@215) (<= ($generated@@27 0) $generated@@216)) (= ($generated@@36 $generated@@214 $generated@@216) true))
 :pattern ( ($generated@@36 $generated@@214 $generated@@216) ($generated@@58 $generated@@215))
)))
(assert (= ($generated@@200 $generated@@34) $generated@@0))
(assert (= ($generated@@201 $generated@@34) $generated@@4))
(assert (forall (($generated@@217 T@U) ($generated@@218 T@U) ) (! (= ($generated@@59 $generated@@217 $generated@@218) (forall (($generated@@219 T@U) ) (! (= ($generated@@30 $generated@@217 $generated@@219) ($generated@@30 $generated@@218 $generated@@219))
 :pattern ( ($generated@@30 $generated@@217 $generated@@219))
 :pattern ( ($generated@@30 $generated@@218 $generated@@219))
)))
 :pattern ( ($generated@@59 $generated@@217 $generated@@218))
)))
(assert (forall (($generated@@220 Int) ) (! (= ($generated@@66 $generated@@10 ($generated@@14 ($generated@@27 $generated@@220))) ($generated@@53 $generated@@146 ($generated@@66 $generated@@10 ($generated@@14 $generated@@220))))
 :pattern ( ($generated@@66 $generated@@10 ($generated@@14 ($generated@@27 $generated@@220))))
)))
(assert (forall (($generated@@221 T@U) ($generated@@222 T@T) ) (! (= ($generated@@66 $generated@@222 ($generated@@53 $generated@@222 $generated@@221)) ($generated@@53 $generated@@146 ($generated@@66 $generated@@222 $generated@@221)))
 :pattern ( ($generated@@66 $generated@@222 ($generated@@53 $generated@@222 $generated@@221)))
)))
(assert  (=> (<= 0 $generated@@24) (forall (($generated@@223 T@U) ($generated@@224 T@U) ($generated@@225 Int) ) (!  (=> (or ($generated@@26 ($generated@@27 $generated@@225)) (and (< 0 $generated@@24) (and ($generated@@58 $generated@@224) (<= ($generated@@27 0) $generated@@225)))) (and (=> (or (not (= ($generated@@27 $generated@@225) ($generated@@27 0))) (not true)) $generated@@73) (= ($generated@@25 ($generated@@111 $generated@@223) ($generated@@27 $generated@@225)) (ite (= ($generated@@27 $generated@@225) ($generated@@27 0)) 0 (ite (let (($generated@@226 $generated@@122))
$generated@@226) ($generated@@15 (let (($generated@@227 ($generated@@35 ($generated@@111 $generated@@123))))
($generated@@37 $generated@@10 ($generated@@65 $generated@@34 $generated@@34 $generated@@224 $generated@@227 ($generated@@66 $generated@@10 ($generated@@14 ($generated@@27 (- $generated@@225 1)))))))) ($generated@@25 ($generated@@111 $generated@@223) ($generated@@27 (- $generated@@225 1))))))))
 :weight 3
 :pattern ( ($generated@@25 ($generated@@111 $generated@@223) ($generated@@27 $generated@@225)) ($generated@@58 $generated@@224))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@228 () Int)
(declare-fun $generated@@229 () T@U)
(declare-fun $generated@@230 () Bool)
(declare-fun $generated@@231 () T@U)
(declare-fun $generated@@232 () T@U)
(declare-fun $generated@@233 () T@U)
(declare-fun $generated@@234 () T@U)
(declare-fun $generated@@235 (T@U) Bool)
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
 (=> (= (ControlFlow 0 0) 17) (let (($generated@@236  (=> (not (let (($generated@@237 $generated@@122))
$generated@@237)) (and (=> (= (ControlFlow 0 9) (- 0 12)) (or (not (= 0 $generated@@24)) (not true))) (=> (or (not (= 0 $generated@@24)) (not true)) (and (=> (= (ControlFlow 0 9) (- 0 11)) ($generated@@41 $generated@@10 ($generated@@14 (- $generated@@228 1)) $generated@@34)) (=> ($generated@@41 $generated@@10 ($generated@@14 (- $generated@@228 1)) $generated@@34) (and (=> (= (ControlFlow 0 9) (- 0 10)) ($generated@@33 $generated@@34 $generated@@34 $generated@@229 ($generated@@35 ($generated@@111 $generated@@123)) ($generated@@66 $generated@@10 ($generated@@14 (- $generated@@228 1))))) (=> ($generated@@33 $generated@@34 $generated@@34 $generated@@229 ($generated@@35 ($generated@@111 $generated@@123)) ($generated@@66 $generated@@10 ($generated@@14 (- $generated@@228 1)))) (=> (and (and (= $generated@@230 (forall (($generated@@238 T@U) ($generated@@239 T@U) )  (=> (and (and (or (not (= $generated@@238 $generated@@231)) (not true)) ($generated@@13 ($generated@@37 $generated@@9 ($generated@@145 $generated@@143 $generated@@146 ($generated@@145 $generated@@142 ($generated@@147 $generated@@143 $generated@@146) $generated@@229 $generated@@238) $generated)))) ($generated@@30 ($generated@@56 $generated@@34 $generated@@34 $generated@@229 ($generated@@35 ($generated@@111 $generated@@123)) ($generated@@66 $generated@@10 ($generated@@14 (- $generated@@228 1)))) ($generated@@66 $generated@@142 $generated@@238))) ($generated@@13 ($generated@@141 $generated@@142 $generated@@143 $generated@@9 $generated@@232 $generated@@238 $generated@@239))))) (= ($generated@@25 ($generated@@111 $generated@@123) $generated@@228) ($generated@@25 ($generated@@111 $generated@@123) (- $generated@@228 1)))) (and ($generated@@41 $generated@@10 ($generated@@14 ($generated@@25 ($generated@@111 $generated@@123) $generated@@228)) $generated@@34) (= (ControlFlow 0 9) (- 0 8)))) $generated@@230))))))))))
(let (($generated@@240  (=> (let (($generated@@241 $generated@@122))
$generated@@241) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (not (= 0 $generated@@24)) (not true))) (=> (or (not (= 0 $generated@@24)) (not true)) (=> (and (and (= $generated@@233 ($generated@@35 ($generated@@111 $generated@@123))) ($generated@@41 $generated@@42 $generated@@233 ($generated@@102 $generated@@34 $generated@@34))) (and (= $generated@@234 $generated@@233) (= (ControlFlow 0 6) (- 0 5)))) ($generated@@41 $generated@@10 ($generated@@14 (- $generated@@228 1)) $generated@@34)))))))
(let (($generated@@242  (and (=> (= (ControlFlow 0 13) (- 0 14)) ($generated@@13 ($generated@@53 $generated@@9 ($generated@@12 true)))) (=> ($generated@@13 ($generated@@53 $generated@@9 ($generated@@12 true))) (=> $generated@@73 (and (=> (= (ControlFlow 0 13) 6) $generated@@240) (=> (= (ControlFlow 0 13) 9) $generated@@236)))))))
(let (($generated@@243 true))
(let (($generated@@244  (=> (or (not (= $generated@@228 ($generated@@27 0))) (not true)) (and (=> (= (ControlFlow 0 15) 13) $generated@@242) (=> (= (ControlFlow 0 15) 4) $generated@@243)))))
(let (($generated@@245  (=> (and (= $generated@@228 ($generated@@27 0)) (= (ControlFlow 0 3) (- 0 2))) ($generated@@41 $generated@@10 ($generated@@14 ($generated@@27 0)) $generated@@34))))
(let (($generated@@246 true))
(let (($generated@@247  (=> (= $generated@@232 ($generated@@144 $generated@@231 $generated@@229 $generated false)) (and (and (=> (= (ControlFlow 0 16) 1) $generated@@246) (=> (= (ControlFlow 0 16) 3) $generated@@245)) (=> (= (ControlFlow 0 16) 15) $generated@@244)))))
(let (($generated@@248  (=> (and (and (and ($generated@@58 $generated@@229) ($generated@@235 $generated@@229)) (<= ($generated@@27 0) $generated@@228)) (and (= 0 $generated@@24) (= (ControlFlow 0 17) 16))) $generated@@247)))
$generated@@248))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 7))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 9) (- 12))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)