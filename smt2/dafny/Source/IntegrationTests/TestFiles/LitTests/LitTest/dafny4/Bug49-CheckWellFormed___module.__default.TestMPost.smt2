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
(declare-fun $generated@@31 () Int)
(declare-fun $generated@@32 (T@U Int) Int)
(declare-fun $generated@@33 (T@T T@U) T@U)
(declare-fun $generated@@34 () T@T)
(declare-fun $generated@@35 (Int) Int)
(declare-fun $generated@@36 (T@U Int) Bool)
(declare-fun $generated@@37 (T@U T@U) T@U)
(declare-fun $generated@@38 (T@U T@U) Bool)
(declare-fun $generated@@39 (T@U) T@U)
(declare-fun $generated@@40 (T@T T@U) T@U)
(declare-fun $generated@@41 (T@T T@U) T@U)
(declare-fun $generated@@42 (T@T T@T T@U T@U) T@U)
(declare-fun $generated@@43 () T@T)
(declare-fun $generated@@44 (T@U) T@U)
(declare-fun $generated@@45 (T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@59 (T@U T@U) T@U)
(declare-fun $generated@@60 (T@U T@U) Bool)
(declare-fun $generated@@68 (T@T T@U T@U T@U) Bool)
(declare-fun $generated@@69 (T@U) Bool)
(declare-fun $generated@@70 (T@U T@U T@U) Bool)
(declare-fun $generated@@76 (T@U) T@U)
(declare-fun $generated@@83 () T@T)
(declare-fun $generated@@84 (T@U) T@U)
(declare-fun $generated@@102 (T@U) T@U)
(declare-fun $generated@@105 (T@U) T@U)
(declare-fun $generated@@112 (T@U) T@U)
(declare-fun $generated@@115 (T@U) T@U)
(declare-fun $generated@@118 (T@U) T@U)
(declare-fun $generated@@121 (T@U) T@U)
(declare-fun $generated@@124 (T@U) T@U)
(declare-fun $generated@@134 (T@U) Int)
(declare-fun $generated@@135 (T@U) Int)
(declare-fun $generated@@140 () T@U)
(declare-fun $generated@@148 (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun $generated@@149 () T@T)
(declare-fun $generated@@150 () T@T)
(declare-fun $generated@@151 (T@U T@U T@U Bool) T@U)
(declare-fun $generated@@152 (T@T T@T) T@T)
(declare-fun $generated@@153 (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $generated@@154 (T@T) T@T)
(declare-fun $generated@@155 (T@T) T@T)
(declare-fun $generated@@193 (T@U) T@U)
(declare-fun $generated@@198 (T@U) T@U)
(declare-fun $generated@@201 (T@U) T@U)
(declare-fun $generated@@207 (T@U T@U T@U) T@U)
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
(assert  (and (and (and (= ($generated@@7 $generated@@34) 4) (forall (($generated@@46 T@T) ($generated@@47 T@T) ($generated@@48 T@U) ($generated@@49 T@U) ($generated@@50 T@U) ) (! (= ($generated@@42 $generated@@46 $generated@@47 ($generated@@45 $generated@@46 $generated@@47 $generated@@49 $generated@@50 $generated@@48) $generated@@50) $generated@@48)
 :weight 0
))) (forall (($generated@@51 T@T) ($generated@@52 T@T) ($generated@@53 T@U) ($generated@@54 T@U) ($generated@@55 T@U) ($generated@@56 T@U) ) (!  (or (= $generated@@55 $generated@@56) (= ($generated@@42 $generated@@51 $generated@@52 ($generated@@45 $generated@@51 $generated@@52 $generated@@54 $generated@@55 $generated@@53) $generated@@56) ($generated@@42 $generated@@51 $generated@@52 $generated@@54 $generated@@56)))
 :weight 0
))) (= ($generated@@7 $generated@@43) 5)))
(assert  (=> (<= 0 $generated@@31) (forall (($generated@@57 T@U) ($generated@@58 Int) ) (!  (=> (or ($generated@@36 ($generated@@33 $generated@@34 $generated@@57) ($generated@@35 $generated@@58)) (and (< 0 $generated@@31) (and ($generated@@25 $generated@@34 $generated@@57 ($generated@@37 $generated $generated)) ($generated@@38 ($generated@@39 $generated@@57) ($generated@@40 $generated@@9 ($generated@@13 $generated@@58)))))) (= ($generated@@32 ($generated@@33 $generated@@34 $generated@@57) ($generated@@35 $generated@@58)) ($generated@@14 ($generated@@41 $generated@@9 ($generated@@42 $generated@@43 $generated@@43 ($generated@@44 ($generated@@33 $generated@@34 $generated@@57)) ($generated@@40 $generated@@9 ($generated@@13 ($generated@@35 $generated@@58))))))))
 :weight 3
 :pattern ( ($generated@@32 ($generated@@33 $generated@@34 $generated@@57) ($generated@@35 $generated@@58)))
))))
(assert (forall (($generated@@61 T@U) ($generated@@62 T@U) ($generated@@63 T@U) ($generated@@64 T@U) ) (! (= ($generated@@25 $generated@@26 ($generated@@59 $generated@@63 $generated@@64) ($generated@@27 $generated@@61 $generated@@62))  (and ($generated@@60 $generated@@63 $generated@@61) ($generated@@60 $generated@@64 $generated@@62)))
 :pattern ( ($generated@@25 $generated@@26 ($generated@@59 $generated@@63 $generated@@64) ($generated@@27 $generated@@61 $generated@@62)))
)))
(assert (forall (($generated@@65 Int) ) (! (= ($generated@@35 $generated@@65) $generated@@65)
 :pattern ( ($generated@@35 $generated@@65))
)))
(assert (forall (($generated@@66 T@U) ($generated@@67 T@T) ) (! (= ($generated@@33 $generated@@67 $generated@@66) $generated@@66)
 :pattern ( ($generated@@33 $generated@@67 $generated@@66))
)))
(assert (forall (($generated@@71 T@U) ($generated@@72 T@U) ($generated@@73 T@U) ($generated@@74 T@U) ($generated@@75 T@U) ) (!  (=> ($generated@@69 $generated@@75) (= ($generated@@68 $generated@@26 ($generated@@59 $generated@@73 $generated@@74) ($generated@@27 $generated@@71 $generated@@72) $generated@@75)  (and ($generated@@70 $generated@@73 $generated@@71 $generated@@75) ($generated@@70 $generated@@74 $generated@@72 $generated@@75))))
 :pattern ( ($generated@@68 $generated@@26 ($generated@@59 $generated@@73 $generated@@74) ($generated@@27 $generated@@71 $generated@@72) $generated@@75))
)))
(assert (forall (($generated@@77 T@U) ) (! (= ($generated@@24 $generated@@77) (= ($generated@@76 $generated@@77) $generated@@4))
 :pattern ( ($generated@@24 $generated@@77))
)))
(assert (forall (($generated@@78 T@U) ($generated@@79 T@T) ) (! (= ($generated@@40 $generated@@79 ($generated@@41 $generated@@79 $generated@@78)) $generated@@78)
 :pattern ( ($generated@@41 $generated@@79 $generated@@78))
)))
(assert (forall (($generated@@80 T@U) ) (!  (=> ($generated@@24 $generated@@80) (exists (($generated@@81 T@U) ($generated@@82 T@U) ) (= $generated@@80 ($generated@@59 $generated@@81 $generated@@82))))
 :pattern ( ($generated@@24 $generated@@80))
)))
(assert (= ($generated@@7 $generated@@83) 6))
(assert (forall (($generated@@85 T@U) ($generated@@86 T@U) ) (! (= ($generated@@25 $generated@@83 $generated@@85 ($generated@@84 $generated@@86)) (forall (($generated@@87 T@U) ) (!  (=> ($generated@@38 $generated@@85 $generated@@87) ($generated@@60 $generated@@87 $generated@@86))
 :pattern ( ($generated@@38 $generated@@85 $generated@@87))
)))
 :pattern ( ($generated@@25 $generated@@83 $generated@@85 ($generated@@84 $generated@@86)))
)))
(assert  (=> (<= 0 $generated@@31) (forall (($generated@@88 T@U) ($generated@@89 Int) ) (!  (=> (or ($generated@@36 $generated@@88 $generated@@89) (and (< 0 $generated@@31) (and ($generated@@25 $generated@@34 $generated@@88 ($generated@@37 $generated $generated)) ($generated@@38 ($generated@@39 $generated@@88) ($generated@@40 $generated@@9 ($generated@@13 $generated@@89)))))) (= ($generated@@32 $generated@@88 $generated@@89) ($generated@@14 ($generated@@41 $generated@@9 ($generated@@42 $generated@@43 $generated@@43 ($generated@@44 $generated@@88) ($generated@@40 $generated@@9 ($generated@@13 $generated@@89)))))))
 :pattern ( ($generated@@32 $generated@@88 $generated@@89))
))))
(assert (forall (($generated@@90 T@U) ($generated@@91 T@U) ($generated@@92 T@U) ($generated@@93 T@T) ) (! (= ($generated@@70 ($generated@@40 $generated@@93 $generated@@90) $generated@@91 $generated@@92) ($generated@@68 $generated@@93 $generated@@90 $generated@@91 $generated@@92))
 :pattern ( ($generated@@70 ($generated@@40 $generated@@93 $generated@@90) $generated@@91 $generated@@92))
)))
(assert (forall (($generated@@94 T@U) ) (!  (=> ($generated@@60 $generated@@94 $generated) (and (= ($generated@@40 $generated@@9 ($generated@@41 $generated@@9 $generated@@94)) $generated@@94) ($generated@@25 $generated@@9 ($generated@@41 $generated@@9 $generated@@94) $generated)))
 :pattern ( ($generated@@60 $generated@@94 $generated))
)))
(assert (forall (($generated@@95 T@U) ($generated@@96 T@U) ($generated@@97 T@T) ) (! (= ($generated@@60 ($generated@@40 $generated@@97 $generated@@95) $generated@@96) ($generated@@25 $generated@@97 $generated@@95 $generated@@96))
 :pattern ( ($generated@@60 ($generated@@40 $generated@@97 $generated@@95) $generated@@96))
)))
(assert (forall (($generated@@98 T@U) ($generated@@99 T@U) ($generated@@100 T@U) ) (! (= ($generated@@68 $generated@@83 $generated@@98 ($generated@@84 $generated@@99) $generated@@100) (forall (($generated@@101 T@U) ) (!  (=> ($generated@@38 $generated@@98 $generated@@101) ($generated@@70 $generated@@101 $generated@@99 $generated@@100))
 :pattern ( ($generated@@38 $generated@@98 $generated@@101))
)))
 :pattern ( ($generated@@68 $generated@@83 $generated@@98 ($generated@@84 $generated@@99) $generated@@100))
)))
(assert (forall (($generated@@103 T@U) ($generated@@104 T@U) ) (! (= ($generated@@102 ($generated@@37 $generated@@103 $generated@@104)) $generated@@103)
 :pattern ( ($generated@@37 $generated@@103 $generated@@104))
)))
(assert (forall (($generated@@106 T@U) ($generated@@107 T@U) ) (! (= ($generated@@105 ($generated@@37 $generated@@106 $generated@@107)) $generated@@107)
 :pattern ( ($generated@@37 $generated@@106 $generated@@107))
)))
(assert (forall (($generated@@108 T@U) ($generated@@109 T@U) ) (! (= ($generated@@23 ($generated@@37 $generated@@108 $generated@@109)) $generated@@2)
 :pattern ( ($generated@@37 $generated@@108 $generated@@109))
)))
(assert (forall (($generated@@110 T@U) ($generated@@111 T@U) ) (! (= ($generated@@76 ($generated@@59 $generated@@110 $generated@@111)) $generated@@4)
 :pattern ( ($generated@@59 $generated@@110 $generated@@111))
)))
(assert (forall (($generated@@113 T@U) ($generated@@114 T@U) ) (! (= ($generated@@112 ($generated@@27 $generated@@113 $generated@@114)) $generated@@113)
 :pattern ( ($generated@@27 $generated@@113 $generated@@114))
)))
(assert (forall (($generated@@116 T@U) ($generated@@117 T@U) ) (! (= ($generated@@115 ($generated@@27 $generated@@116 $generated@@117)) $generated@@117)
 :pattern ( ($generated@@27 $generated@@116 $generated@@117))
)))
(assert (forall (($generated@@119 T@U) ($generated@@120 T@U) ) (! (= ($generated@@118 ($generated@@59 $generated@@119 $generated@@120)) $generated@@119)
 :pattern ( ($generated@@59 $generated@@119 $generated@@120))
)))
(assert (forall (($generated@@122 T@U) ($generated@@123 T@U) ) (! (= ($generated@@121 ($generated@@59 $generated@@122 $generated@@123)) $generated@@123)
 :pattern ( ($generated@@59 $generated@@122 $generated@@123))
)))
(assert (forall (($generated@@125 T@U) ) (! (= ($generated@@124 ($generated@@84 $generated@@125)) $generated@@125)
 :pattern ( ($generated@@84 $generated@@125))
)))
(assert (forall (($generated@@126 T@U) ) (! (= ($generated@@23 ($generated@@84 $generated@@126)) $generated@@1)
 :pattern ( ($generated@@84 $generated@@126))
)))
(assert (forall (($generated@@127 T@U) ($generated@@128 T@T) ) (! (= ($generated@@41 $generated@@128 ($generated@@40 $generated@@128 $generated@@127)) $generated@@127)
 :pattern ( ($generated@@40 $generated@@128 $generated@@127))
)))
(assert (forall (($generated@@129 T@U) ($generated@@130 T@U) ($generated@@131 T@U) ($generated@@132 T@U) ) (! (= ($generated@@68 $generated@@34 $generated@@129 ($generated@@37 $generated@@130 $generated@@131) $generated@@132) (forall (($generated@@133 T@U) ) (!  (=> ($generated@@38 ($generated@@39 $generated@@129) $generated@@133) (and ($generated@@70 ($generated@@42 $generated@@43 $generated@@43 ($generated@@44 $generated@@129) $generated@@133) $generated@@131 $generated@@132) ($generated@@70 $generated@@133 $generated@@130 $generated@@132)))
 :pattern ( ($generated@@42 $generated@@43 $generated@@43 ($generated@@44 $generated@@129) $generated@@133))
 :pattern ( ($generated@@38 ($generated@@39 $generated@@129) $generated@@133))
)))
 :pattern ( ($generated@@68 $generated@@34 $generated@@129 ($generated@@37 $generated@@130 $generated@@131) $generated@@132))
)))
(assert (forall (($generated@@136 T@U) ($generated@@137 T@U) ) (! (< ($generated@@134 $generated@@136) ($generated@@135 ($generated@@59 $generated@@136 $generated@@137)))
 :pattern ( ($generated@@59 $generated@@136 $generated@@137))
)))
(assert (forall (($generated@@138 T@U) ($generated@@139 T@U) ) (! (< ($generated@@134 $generated@@139) ($generated@@135 ($generated@@59 $generated@@138 $generated@@139)))
 :pattern ( ($generated@@59 $generated@@138 $generated@@139))
)))
(assert (forall (($generated@@141 T@U) ) (!  (not ($generated@@38 ($generated@@39 $generated@@140) $generated@@141))
 :pattern ( ($generated@@38 ($generated@@39 $generated@@140) $generated@@141))
)))
(assert (forall (($generated@@142 T@U) ($generated@@143 T@U) ($generated@@144 T@U) ) (!  (=> ($generated@@60 $generated@@142 ($generated@@37 $generated@@143 $generated@@144)) (and (= ($generated@@40 $generated@@34 ($generated@@41 $generated@@34 $generated@@142)) $generated@@142) ($generated@@25 $generated@@34 ($generated@@41 $generated@@34 $generated@@142) ($generated@@37 $generated@@143 $generated@@144))))
 :pattern ( ($generated@@60 $generated@@142 ($generated@@37 $generated@@143 $generated@@144)))
)))
(assert (forall (($generated@@145 T@U) ($generated@@146 T@U) ($generated@@147 T@U) ) (!  (=> ($generated@@60 $generated@@147 ($generated@@27 $generated@@145 $generated@@146)) (and (= ($generated@@40 $generated@@26 ($generated@@41 $generated@@26 $generated@@147)) $generated@@147) ($generated@@25 $generated@@26 ($generated@@41 $generated@@26 $generated@@147) ($generated@@27 $generated@@145 $generated@@146))))
 :pattern ( ($generated@@60 $generated@@147 ($generated@@27 $generated@@145 $generated@@146)))
)))
(assert  (and (and (and (and (and (and (forall (($generated@@156 T@T) ($generated@@157 T@T) ($generated@@158 T@T) ($generated@@159 T@U) ($generated@@160 T@U) ($generated@@161 T@U) ($generated@@162 T@U) ) (! (= ($generated@@148 $generated@@156 $generated@@157 $generated@@158 ($generated@@153 $generated@@156 $generated@@157 $generated@@158 $generated@@160 $generated@@161 $generated@@162 $generated@@159) $generated@@161 $generated@@162) $generated@@159)
 :weight 0
)) (and (forall (($generated@@163 T@T) ($generated@@164 T@T) ($generated@@165 T@T) ($generated@@166 T@U) ($generated@@167 T@U) ($generated@@168 T@U) ($generated@@169 T@U) ($generated@@170 T@U) ($generated@@171 T@U) ) (!  (or (= $generated@@168 $generated@@170) (= ($generated@@148 $generated@@163 $generated@@164 $generated@@165 ($generated@@153 $generated@@163 $generated@@164 $generated@@165 $generated@@167 $generated@@168 $generated@@169 $generated@@166) $generated@@170 $generated@@171) ($generated@@148 $generated@@163 $generated@@164 $generated@@165 $generated@@167 $generated@@170 $generated@@171)))
 :weight 0
)) (forall (($generated@@172 T@T) ($generated@@173 T@T) ($generated@@174 T@T) ($generated@@175 T@U) ($generated@@176 T@U) ($generated@@177 T@U) ($generated@@178 T@U) ($generated@@179 T@U) ($generated@@180 T@U) ) (!  (or (= $generated@@178 $generated@@180) (= ($generated@@148 $generated@@172 $generated@@173 $generated@@174 ($generated@@153 $generated@@172 $generated@@173 $generated@@174 $generated@@176 $generated@@177 $generated@@178 $generated@@175) $generated@@179 $generated@@180) ($generated@@148 $generated@@172 $generated@@173 $generated@@174 $generated@@176 $generated@@179 $generated@@180)))
 :weight 0
)))) (= ($generated@@7 $generated@@149) 7)) (= ($generated@@7 $generated@@150) 8)) (forall (($generated@@181 T@T) ($generated@@182 T@T) ) (= ($generated@@7 ($generated@@152 $generated@@181 $generated@@182)) 9))) (forall (($generated@@183 T@T) ($generated@@184 T@T) ) (! (= ($generated@@154 ($generated@@152 $generated@@183 $generated@@184)) $generated@@183)
 :pattern ( ($generated@@152 $generated@@183 $generated@@184))
))) (forall (($generated@@185 T@T) ($generated@@186 T@T) ) (! (= ($generated@@155 ($generated@@152 $generated@@185 $generated@@186)) $generated@@186)
 :pattern ( ($generated@@152 $generated@@185 $generated@@186))
))))
(assert (forall (($generated@@187 T@U) ($generated@@188 T@U) ($generated@@189 T@U) ($generated@@190 Bool) ($generated@@191 T@U) ($generated@@192 T@U) ) (! (= ($generated@@12 ($generated@@148 $generated@@149 $generated@@150 $generated@@8 ($generated@@151 $generated@@187 $generated@@188 $generated@@189 $generated@@190) $generated@@191 $generated@@192))  (=> (and (or (not (= $generated@@191 $generated@@187)) (not true)) ($generated@@12 ($generated@@41 $generated@@8 ($generated@@42 $generated@@150 $generated@@43 ($generated@@42 $generated@@149 ($generated@@152 $generated@@150 $generated@@43) $generated@@188 $generated@@191) $generated@@189)))) $generated@@190))
 :pattern ( ($generated@@148 $generated@@149 $generated@@150 $generated@@8 ($generated@@151 $generated@@187 $generated@@188 $generated@@189 $generated@@190) $generated@@191 $generated@@192))
)))
(assert (forall (($generated@@194 T@U) ($generated@@195 T@U) ) (!  (and (= ($generated@@23 ($generated@@27 $generated@@194 $generated@@195)) $generated@@5) (= ($generated@@193 ($generated@@27 $generated@@194 $generated@@195)) $generated@@6))
 :pattern ( ($generated@@27 $generated@@194 $generated@@195))
)))
(assert (forall (($generated@@196 T@U) ) (!  (or (= $generated@@196 $generated@@140) (exists (($generated@@197 T@U) ) ($generated@@38 ($generated@@39 $generated@@196) $generated@@197)))
 :pattern ( ($generated@@39 $generated@@196))
)))
(assert (forall (($generated@@199 T@U) ) (!  (or (= $generated@@199 $generated@@140) (exists (($generated@@200 T@U) ) ($generated@@38 ($generated@@198 $generated@@199) $generated@@200)))
 :pattern ( ($generated@@198 $generated@@199))
)))
(assert (forall (($generated@@202 T@U) ($generated@@203 T@U) ) (! (= ($generated@@38 ($generated@@201 $generated@@202) $generated@@203)  (and ($generated@@38 ($generated@@39 $generated@@202) ($generated@@118 ($generated@@41 $generated@@26 $generated@@203))) (= ($generated@@42 $generated@@43 $generated@@43 ($generated@@44 $generated@@202) ($generated@@118 ($generated@@41 $generated@@26 $generated@@203))) ($generated@@121 ($generated@@41 $generated@@26 $generated@@203)))))
 :pattern ( ($generated@@38 ($generated@@201 $generated@@202) $generated@@203))
)))
(assert (forall (($generated@@204 T@U) ($generated@@205 T@U) ) (! (= ($generated@@38 ($generated@@198 $generated@@204) $generated@@205) (exists (($generated@@206 T@U) ) (!  (and ($generated@@38 ($generated@@39 $generated@@204) $generated@@206) (= $generated@@205 ($generated@@42 $generated@@43 $generated@@43 ($generated@@44 $generated@@204) $generated@@206)))
 :pattern ( ($generated@@38 ($generated@@39 $generated@@204) $generated@@206))
 :pattern ( ($generated@@42 $generated@@43 $generated@@43 ($generated@@44 $generated@@204) $generated@@206))
)))
 :pattern ( ($generated@@38 ($generated@@198 $generated@@204) $generated@@205))
)))
(assert (forall (($generated@@208 T@U) ($generated@@209 T@U) ($generated@@210 T@U) ($generated@@211 T@U) ) (!  (and (=> (= $generated@@210 $generated@@209) (and ($generated@@38 ($generated@@39 ($generated@@207 $generated@@208 $generated@@209 $generated@@211)) $generated@@210) (= ($generated@@42 $generated@@43 $generated@@43 ($generated@@44 ($generated@@207 $generated@@208 $generated@@209 $generated@@211)) $generated@@210) $generated@@211))) (=> (or (not (= $generated@@210 $generated@@209)) (not true)) (and (= ($generated@@38 ($generated@@39 ($generated@@207 $generated@@208 $generated@@209 $generated@@211)) $generated@@210) ($generated@@38 ($generated@@39 $generated@@208) $generated@@210)) (= ($generated@@42 $generated@@43 $generated@@43 ($generated@@44 ($generated@@207 $generated@@208 $generated@@209 $generated@@211)) $generated@@210) ($generated@@42 $generated@@43 $generated@@43 ($generated@@44 $generated@@208) $generated@@210)))))
 :pattern ( ($generated@@38 ($generated@@39 ($generated@@207 $generated@@208 $generated@@209 $generated@@211)) $generated@@210))
 :pattern ( ($generated@@42 $generated@@43 $generated@@43 ($generated@@44 ($generated@@207 $generated@@208 $generated@@209 $generated@@211)) $generated@@210))
)))
(assert (forall (($generated@@212 T@U) ) (! (= ($generated@@134 ($generated@@40 $generated@@26 $generated@@212)) ($generated@@135 $generated@@212))
 :pattern ( ($generated@@134 ($generated@@40 $generated@@26 $generated@@212)))
)))
(assert (forall (($generated@@213 T@U) ($generated@@214 T@U) ) (!  (=> ($generated@@60 $generated@@213 ($generated@@84 $generated@@214)) (and (= ($generated@@40 $generated@@83 ($generated@@41 $generated@@83 $generated@@213)) $generated@@213) ($generated@@25 $generated@@83 ($generated@@41 $generated@@83 $generated@@213) ($generated@@84 $generated@@214))))
 :pattern ( ($generated@@60 $generated@@213 ($generated@@84 $generated@@214)))
)))
(assert (forall (($generated@@215 T@U) ($generated@@216 T@U) ($generated@@217 T@U) ) (! (= ($generated@@25 $generated@@34 $generated@@215 ($generated@@37 $generated@@216 $generated@@217)) (forall (($generated@@218 T@U) ) (!  (=> ($generated@@38 ($generated@@39 $generated@@215) $generated@@218) (and ($generated@@60 ($generated@@42 $generated@@43 $generated@@43 ($generated@@44 $generated@@215) $generated@@218) $generated@@217) ($generated@@60 $generated@@218 $generated@@216)))
 :pattern ( ($generated@@42 $generated@@43 $generated@@43 ($generated@@44 $generated@@215) $generated@@218))
 :pattern ( ($generated@@38 ($generated@@39 $generated@@215) $generated@@218))
)))
 :pattern ( ($generated@@25 $generated@@34 $generated@@215 ($generated@@37 $generated@@216 $generated@@217)))
)))
(assert (forall (($generated@@219 T@U) ($generated@@220 T@U) ($generated@@221 T@U) ) (!  (=> (and ($generated@@69 $generated@@221) (and ($generated@@24 $generated@@219) (exists (($generated@@222 T@U) ) (! ($generated@@68 $generated@@26 $generated@@219 ($generated@@27 $generated@@220 $generated@@222) $generated@@221)
 :pattern ( ($generated@@68 $generated@@26 $generated@@219 ($generated@@27 $generated@@220 $generated@@222) $generated@@221))
)))) ($generated@@70 ($generated@@118 $generated@@219) $generated@@220 $generated@@221))
 :pattern ( ($generated@@70 ($generated@@118 $generated@@219) $generated@@220 $generated@@221))
)))
(assert (forall (($generated@@223 T@U) ($generated@@224 T@U) ($generated@@225 T@U) ) (!  (=> (and ($generated@@69 $generated@@225) (and ($generated@@24 $generated@@223) (exists (($generated@@226 T@U) ) (! ($generated@@68 $generated@@26 $generated@@223 ($generated@@27 $generated@@226 $generated@@224) $generated@@225)
 :pattern ( ($generated@@68 $generated@@26 $generated@@223 ($generated@@27 $generated@@226 $generated@@224) $generated@@225))
)))) ($generated@@70 ($generated@@121 $generated@@223) $generated@@224 $generated@@225))
 :pattern ( ($generated@@70 ($generated@@121 $generated@@223) $generated@@224 $generated@@225))
)))
(assert (forall (($generated@@227 T@U) ($generated@@228 T@U) ) (! (= ($generated@@59 ($generated@@33 $generated@@43 $generated@@227) ($generated@@33 $generated@@43 $generated@@228)) ($generated@@33 $generated@@26 ($generated@@59 $generated@@227 $generated@@228)))
 :pattern ( ($generated@@59 ($generated@@33 $generated@@43 $generated@@227) ($generated@@33 $generated@@43 $generated@@228)))
)))
(assert (forall (($generated@@229 Int) ) (! (= ($generated@@40 $generated@@9 ($generated@@13 ($generated@@35 $generated@@229))) ($generated@@33 $generated@@43 ($generated@@40 $generated@@9 ($generated@@13 $generated@@229))))
 :pattern ( ($generated@@40 $generated@@9 ($generated@@13 ($generated@@35 $generated@@229))))
)))
(assert (forall (($generated@@230 T@U) ($generated@@231 T@T) ) (! (= ($generated@@40 $generated@@231 ($generated@@33 $generated@@231 $generated@@230)) ($generated@@33 $generated@@43 ($generated@@40 $generated@@231 $generated@@230)))
 :pattern ( ($generated@@40 $generated@@231 ($generated@@33 $generated@@231 $generated@@230)))
)))
(assert (forall (($generated@@232 T@U) ($generated@@233 T@U) ) (! ($generated@@68 $generated@@9 $generated@@233 $generated $generated@@232)
 :pattern ( ($generated@@68 $generated@@9 $generated@@233 $generated $generated@@232))
)))
(assert (forall (($generated@@234 T@U) ) (!  (or (= $generated@@234 $generated@@140) (exists (($generated@@235 T@U) ($generated@@236 T@U) ) ($generated@@38 ($generated@@201 $generated@@234) ($generated@@40 $generated@@26 ($generated@@59 $generated@@235 $generated@@236)))))
 :pattern ( ($generated@@201 $generated@@234))
)))
(assert (forall (($generated@@237 T@U) ($generated@@238 T@U) ($generated@@239 T@U) ) (!  (=> ($generated@@25 $generated@@34 $generated@@237 ($generated@@37 $generated@@238 $generated@@239)) (and (and ($generated@@25 $generated@@83 ($generated@@39 $generated@@237) ($generated@@84 $generated@@238)) ($generated@@25 $generated@@83 ($generated@@198 $generated@@237) ($generated@@84 $generated@@239))) ($generated@@25 $generated@@83 ($generated@@201 $generated@@237) ($generated@@84 ($generated@@27 $generated@@238 $generated@@239)))))
 :pattern ( ($generated@@25 $generated@@34 $generated@@237 ($generated@@37 $generated@@238 $generated@@239)))
)))
(assert (forall (($generated@@240 T@U) ) (! ($generated@@25 $generated@@9 $generated@@240 $generated)
 :pattern ( ($generated@@25 $generated@@9 $generated@@240 $generated))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $generated@@241 () T@U)
(declare-fun $generated@@242 () T@U)
(declare-fun $generated@@243 () T@U)
(declare-fun $generated@@244 () T@U)
(declare-fun $generated@@245 (T@U) Bool)
(declare-fun $generated@@246 () T@U)
(declare-fun $generated@@247 () Int)
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
 (=> (= (ControlFlow 0 0) 3) (let (($generated@@248  (=> (= $generated@@241 ($generated@@151 $generated@@242 $generated@@243 $generated@@3 false)) (=> (and (and (and ($generated@@69 $generated@@244) ($generated@@245 $generated@@244)) (and (= $generated@@243 $generated@@244) (= $generated@@246 ($generated@@33 $generated@@34 ($generated@@207 $generated@@140 ($generated@@40 $generated@@9 ($generated@@13 ($generated@@35 5))) ($generated@@40 $generated@@9 ($generated@@13 ($generated@@35 6)))))))) (and (and ($generated@@68 $generated@@34 $generated@@246 ($generated@@37 $generated $generated) $generated@@244) (= $generated@@247 ($generated@@35 5))) (and ($generated@@68 $generated@@9 ($generated@@13 $generated@@247) $generated $generated@@244) (= (ControlFlow 0 2) (- 0 1))))) ($generated@@38 ($generated@@39 $generated@@246) ($generated@@40 $generated@@9 ($generated@@13 $generated@@247)))))))
(let (($generated@@249  (=> (and (and ($generated@@69 $generated@@243) ($generated@@245 $generated@@243)) (and (= 1 $generated@@31) (= (ControlFlow 0 3) 2))) $generated@@248)))
$generated@@249)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)